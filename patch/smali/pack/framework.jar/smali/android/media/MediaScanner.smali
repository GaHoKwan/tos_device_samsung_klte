.class public Landroid/media/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaScanner$1;,
        Landroid/media/MediaScanner$WplHandler;,
        Landroid/media/MediaScanner$MediaBulkDeleter;,
        Landroid/media/MediaScanner$MyMediaScannerClient;,
        Landroid/media/MediaScanner$FileParsingTime;,
        Landroid/media/MediaScanner$PlaylistEntry;,
        Landroid/media/MediaScanner$FileEntry;
    }
.end annotation


# static fields
.field private static final ALARMS_DIR:Ljava/lang/String; = "/alarms/"

.field private static final DATE_MODIFIED_PLAYLISTS_COLUMN_INDEX:I = 0x2

.field private static final DB_FILES_NUMBER_CACHING_LIMITATION:I = 0x1b58

.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final DOWNLOAD_DIR:Ljava/lang/String; = "/download/"

.field private static final ENABLE_BULK_INSERTS:Z = true

.field private static final FILES_PRESCAN_DATE_MODIFIED_COLUMN_INDEX:I = 0x3

.field private static final FILES_PRESCAN_FORMAT_COLUMN_INDEX:I = 0x2

.field private static final FILES_PRESCAN_ID_COLUMN_INDEX:I = 0x0

.field private static final FILES_PRESCAN_PATH_COLUMN_INDEX:I = 0x1

.field private static final FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

.field private static final ID3_GENRES:[Ljava/lang/String;

.field private static final ID_PLAYLISTS_COLUMN_INDEX:I = 0x0

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final ID_PROJECTION_COUNT:[Ljava/lang/String;

.field private static final MUSIC_DIR:Ljava/lang/String; = "/music/"

.field private static final NOTIFICATIONS_DIR:Ljava/lang/String; = "/notifications/"

.field private static final PATH_PLAYLISTS_COLUMN_INDEX:I = 0x1

.field private static final PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

.field private static final PODCAST_DIR:Ljava/lang/String; = "/podcasts/"

.field private static final RINGTONES_DIR:Ljava/lang/String; = "/ringtones/"

.field private static final TAG:Ljava/lang/String; = "MediaScanner"

.field private static ejectedPath:Ljava/lang/String;

.field private static mExternalStorageSdPath:Ljava/lang/String;

.field private static storageManager:Landroid/os/storage/StorageManager;

.field private static syncEjectedPath:Ljava/lang/Object;


# instance fields
.field private beforePrescanCount:I

.field private contentsCount:I

.field private final isLogEnabled:Z

.field private mAudioUri:Landroid/net/Uri;

.field private final mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mCaseInsensitivePaths:Z

.field private final mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

.field private mContext:Landroid/content/Context;

.field private mDefaultAlarmAlertFilename:Ljava/lang/String;

.field private mDefaultAlarmSet:Z

.field private mDefaultNotificationFilename:Ljava/lang/String;

.field private mDefaultNotificationSet:Z

.field private mDefaultRingtoneFilename:Ljava/lang/String;

.field private mDefaultRingtoneSet:Z

.field private mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private final mExternalIsEmulated:Z

.field private mExternalStoragePath:Ljava/lang/String;

.field private mFileCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaScanner$FileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFileParsingStat:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaScanner$FileParsingTime;",
            ">;"
        }
    .end annotation
.end field

.field private mFilesUri:Landroid/net/Uri;

.field private mFilesUriNoNotify:Landroid/net/Uri;

.field private mImagesUri:Landroid/net/Uri;

.field private mInternalStoragePath:Ljava/lang/String;

.field private mMediaInserter:Landroid/media/MediaInserter;

.field private mMediaProvider:Landroid/content/IContentProvider;

.field private mMtpObjectHandle:I

.field private mNativeContext:I

.field private mOriginalCount:I

.field private mPackageName:Ljava/lang/String;

.field private mPlayLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaScanner$FileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaScanner$PlaylistEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistsUri:Landroid/net/Uri;

.field private mProcessGenres:Z

.field private mProcessPlaylists:Z

.field private mSecretBoxIsMounted:Z

.field private mSecretBoxPath:Ljava/lang/String;

.field private mThumbsUri:Landroid/net/Uri;

.field private mTotalBitmapDecodingTime:J

.field private mTotalBulkInserterTime:J

.field private mTotalCheckedDirectories:J

.field private mTotalCheckedFiles:J

.field private mTotalDeadThumbnailTime:J

.field private mTotalExifExtractingTime:J

.field private mTotalInserted:J

.field private mTotalMakeEntryTime:J

.field private mTotalParsingTime:J

.field private mTotalSefExtractingTime:J

.field private mTotalUpdated:J

.field private mVideoUri:Landroid/net/Uri;

.field private mWasEmptyPriorToScan:Z

.field private useHashMap:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 132
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Landroid/media/MediaScanner;->native_init()V

    .line 141
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    const-string v1, "format"

    aput-object v1, v0, v7

    const-string v1, "date_modified"

    aput-object v1, v0, v8

    sput-object v0, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    .line 148
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    .line 152
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "COUNT(%s)"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/MediaScanner;->ID_PROJECTION_COUNT:[Ljava/lang/String;

    .line 159
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "playlist_id"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/MediaScanner;->PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

    .line 174
    const/16 v0, 0x94

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Blues"

    aput-object v1, v0, v4

    const-string v1, "Classic Rock"

    aput-object v1, v0, v5

    const-string v1, "Country"

    aput-object v1, v0, v7

    const-string v1, "Dance"

    aput-object v1, v0, v8

    const/4 v1, 0x4

    const-string v2, "Disco"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Funk"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Grunge"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Hip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Metal"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Oldies"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Other"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "R&B"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Alternative"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Ska"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Death Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Pranks"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Euro-Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Ambient"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Trip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Jazz+Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Instrumental"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Acid"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Game"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Sound Clip"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Gospel"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Noise"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "AlternRock"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Space"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Meditative"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Instrumental Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Instrumental Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Ethnic"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Gothic"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Darkwave"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Techno-Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Pop-Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Eurodance"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Dream"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Southern Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Comedy"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Cult"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Top 40"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Christian Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Pop/Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Jungle"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "Native American"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Cabaret"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "New Wave"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Psychadelic"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "Rave"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "Showtunes"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "Trailer"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Lo-Fi"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "Tribal"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Acid Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Acid Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Polka"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "Retro"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Musical"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Rock & Roll"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Hard Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Folk-Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "National Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "Swing"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "Fast Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "Bebob"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Revival"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "Celtic"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Bluegrass"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Avantgarde"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Gothic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Progressive Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "Psychedelic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Symphonic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Slow Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "Big Band"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Chorus"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Acoustic"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "Humour"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Speech"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "Chanson"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Opera"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Chamber Music"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Sonata"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Symphony"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Booty Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "Primus"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Porn Groove"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "Satire"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Slow Jam"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Club"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "Tango"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "Samba"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "Folklore"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Power Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "Rhythmic Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "Freestyle"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Duet"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "Punk Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Drum Solo"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "A capella"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "Euro-House"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Dance Hall"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "Goa"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "Drum & Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "Club-House"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "Hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "Terror"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "Britpop"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    aput-object v6, v0, v1

    const/16 v1, 0x86

    const-string v2, "Polsk Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "Beat"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "Christian Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "Heavy Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "Black Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "Crossover"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Contemporary Christian"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "Christian Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "Merengue"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "Salsa"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "Thrash Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "Anime"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "JPop"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "Synthpop"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    .line 346
    sput-object v6, Landroid/media/MediaScanner;->mExternalStorageSdPath:Ljava/lang/String;

    .line 459
    sput-object v6, Landroid/media/MediaScanner;->storageManager:Landroid/os/storage/StorageManager;

    .line 461
    sput-object v6, Landroid/media/MediaScanner;->ejectedPath:Ljava/lang/String;

    .line 462
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/MediaScanner;->syncEjectedPath:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-boolean v0, p0, Landroid/media/MediaScanner;->isLogEnabled:Z

    .line 343
    iput-object v3, p0, Landroid/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;

    .line 344
    iput-object v3, p0, Landroid/media/MediaScanner;->mInternalStoragePath:Ljava/lang/String;

    .line 345
    iput-object v3, p0, Landroid/media/MediaScanner;->mSecretBoxPath:Ljava/lang/String;

    .line 349
    iput-boolean v0, p0, Landroid/media/MediaScanner;->useHashMap:Z

    .line 350
    iput v0, p0, Landroid/media/MediaScanner;->contentsCount:I

    .line 361
    iput-boolean v0, p0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    .line 385
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    .line 444
    iput-wide v1, p0, Landroid/media/MediaScanner;->mTotalMakeEntryTime:J

    .line 445
    iput-wide v1, p0, Landroid/media/MediaScanner;->mTotalParsingTime:J

    .line 446
    iput-wide v1, p0, Landroid/media/MediaScanner;->mTotalBitmapDecodingTime:J

    .line 447
    iput-wide v1, p0, Landroid/media/MediaScanner;->mTotalExifExtractingTime:J

    .line 448
    iput-wide v1, p0, Landroid/media/MediaScanner;->mTotalSefExtractingTime:J

    .line 449
    iput-wide v1, p0, Landroid/media/MediaScanner;->mTotalBulkInserterTime:J

    .line 450
    iput-wide v1, p0, Landroid/media/MediaScanner;->mTotalDeadThumbnailTime:J

    .line 451
    iput-wide v1, p0, Landroid/media/MediaScanner;->mTotalCheckedFiles:J

    .line 452
    iput-wide v1, p0, Landroid/media/MediaScanner;->mTotalCheckedDirectories:J

    .line 453
    iput-wide v1, p0, Landroid/media/MediaScanner;->mTotalInserted:J

    .line 454
    iput-wide v1, p0, Landroid/media/MediaScanner;->mTotalUpdated:J

    .line 458
    iput-object v3, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 540
    new-instance v0, Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-direct {v0, p0, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$1;)V

    iput-object v0, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    .line 465
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_setup()V

    .line 466
    iput-object p1, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    .line 467
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    .line 468
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 469
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 471
    invoke-direct {p0}, Landroid/media/MediaScanner;->setDefaultRingtoneFileNames()V

    .line 473
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;

    .line 474
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mInternalStoragePath:Ljava/lang/String;

    .line 475
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->getSecretBoxDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mSecretBoxPath:Ljava/lang/String;

    .line 476
    sget-object v0, Landroid/media/MediaScanner;->mExternalStorageSdPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 477
    invoke-static {p1}, Landroid/media/MediaScanner;->setExternalStorageSdPath(Landroid/content/Context;)V

    .line 478
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor set externalStorageSdPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/media/MediaScanner;->mExternalStorageSdPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/MediaScanner;->mExternalIsEmulated:Z

    .line 481
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->isSecretBoxMounted(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/MediaScanner;->mSecretBoxIsMounted:Z

    .line 483
    return-void
.end method

.method private SettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "URIsetting"    # Landroid/net/Uri;
    .param p3, "URIInternalMedia"    # Landroid/net/Uri;
    .param p4, "settingString"    # Ljava/lang/String;
    .param p5, "defaultMediaName"    # Ljava/lang/String;

    .prologue
    .line 2653
    const/4 v8, 0x0

    .line 2654
    .local v8, "existingSettingValue":Ljava/lang/String;
    const/4 v9, 0x0

    .line 2655
    .local v9, "resultMediaCursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 2656
    .local v10, "resultSettingCursor":Landroid/database/Cursor;
    const-wide/16 v11, 0x0

    .line 2658
    .local v11, "rowId":J
    invoke-static/range {p5 .. p5}, Landroid/media/MediaScanner;->encodeStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2659
    .local v13, "str":Ljava/lang/String;
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "system "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    const/4 v13, 0x0

    .line 2662
    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2663
    if-eqz v10, :cond_3

    .line 2664
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 2666
    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_data like \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2667
    if-eqz v9, :cond_1

    .line 2668
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 2670
    const/4 v7, 0x0

    .line 2671
    .local v7, "bResult":Z
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2672
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 2673
    move-object/from16 v0, p3

    invoke-static {v0, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 2674
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Write again. Default "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]  Result is ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEBUG_MEDIASCANNER_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_AGAIN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaScanner : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v0, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2682
    .end local v7    # "bResult":Z
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2690
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2694
    :goto_2
    return-void

    .line 2680
    :cond_0
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning! getCount() of Cursor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in internal DB is ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2684
    :cond_1
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning! Cursor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in internal DB is null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2688
    :cond_2
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OK. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already exist in setting DB."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2692
    :cond_3
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning! Cursor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in setting DB is null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method static synthetic access$100(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1008(Landroid/media/MediaScanner;)J
    .locals 4
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    iget-wide v0, p0, Landroid/media/MediaScanner;->mTotalCheckedFiles:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/media/MediaScanner;->mTotalCheckedFiles:J

    return-wide v0
.end method

.method static synthetic access$1100(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/media/MediaScanner;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    iget v0, p0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    return v0
.end method

.method static synthetic access$1300(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mExternalIsEmulated:Z

    return v0
.end method

.method static synthetic access$1400(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/media/MediaScannerClient;

    .prologue
    .line 129
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    return-void
.end method

.method static synthetic access$1614(Landroid/media/MediaScanner;J)J
    .locals 2
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # J

    .prologue
    .line 129
    iget-wide v0, p0, Landroid/media/MediaScanner;->mTotalParsingTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/media/MediaScanner;->mTotalParsingTime:J

    return-wide v0
.end method

.method static synthetic access$1714(Landroid/media/MediaScanner;J)J
    .locals 2
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # J

    .prologue
    .line 129
    iget-wide v0, p0, Landroid/media/MediaScanner;->mTotalBitmapDecodingTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/media/MediaScanner;->mTotalBitmapDecodingTime:J

    return-wide v0
.end method

.method static synthetic access$1800(Landroid/media/MediaScanner;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    return v0
.end method

.method static synthetic access$200(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    invoke-direct {p0}, Landroid/media/MediaScanner;->isDrmEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mSecretBoxIsMounted:Z

    return v0
.end method

.method static synthetic access$2300(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/media/MediaScanner;->mSecretBoxPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2414(Landroid/media/MediaScanner;J)J
    .locals 2
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # J

    .prologue
    .line 129
    iget-wide v0, p0, Landroid/media/MediaScanner;->mTotalExifExtractingTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/media/MediaScanner;->mTotalExifExtractingTime:J

    return-wide v0
.end method

.method static synthetic access$2514(Landroid/media/MediaScanner;J)J
    .locals 2
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # J

    .prologue
    .line 129
    iget-wide v0, p0, Landroid/media/MediaScanner;->mTotalSefExtractingTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/media/MediaScanner;->mTotalSefExtractingTime:J

    return-wide v0
.end method

.method static synthetic access$2600(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    iget-boolean v0, p0, Landroid/media/MediaScanner;->useHashMap:Z

    return v0
.end method

.method static synthetic access$3000(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    return v0
.end method

.method static synthetic access$3100(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return v0
.end method

.method static synthetic access$3102(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return p1
.end method

.method static synthetic access$3200(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return v0
.end method

.method static synthetic access$3302(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return p1
.end method

.method static synthetic access$3400(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return v0
.end method

.method static synthetic access$3502(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return p1
.end method

.method static synthetic access$3600(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    return-object v0
.end method

.method static synthetic access$3908(Landroid/media/MediaScanner;)J
    .locals 4
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    iget-wide v0, p0, Landroid/media/MediaScanner;->mTotalInserted:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/media/MediaScanner;->mTotalInserted:J

    return-wide v0
.end method

.method static synthetic access$400(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    return v0
.end method

.method static synthetic access$4014(Landroid/media/MediaScanner;J)J
    .locals 2
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # J

    .prologue
    .line 129
    iget-wide v0, p0, Landroid/media/MediaScanner;->mTotalBulkInserterTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/media/MediaScanner;->mTotalBulkInserterTime:J

    return-wide v0
.end method

.method static synthetic access$4108(Landroid/media/MediaScanner;)J
    .locals 4
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    iget-wide v0, p0, Landroid/media/MediaScanner;->mTotalUpdated:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/media/MediaScanner;->mTotalUpdated:J

    return-wide v0
.end method

.method static synthetic access$4200(Landroid/media/MediaScanner;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4300(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method static synthetic access$4302(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Landroid/drm/DrmManagerClient;

    .prologue
    .line 129
    iput-object p1, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object p1
.end method

.method static synthetic access$4400()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Landroid/media/MediaScanner;->syncEjectedPath:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Landroid/media/MediaScanner;->ejectedPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4700(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/media/MediaScanner;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$614(Landroid/media/MediaScanner;J)J
    .locals 2
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # J

    .prologue
    .line 129
    iget-wide v0, p0, Landroid/media/MediaScanner;->mTotalMakeEntryTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/media/MediaScanner;->mTotalMakeEntryTime:J

    return-wide v0
.end method

.method static synthetic access$700(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    return v0
.end method

.method static synthetic access$800(Landroid/media/MediaScanner;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$908(Landroid/media/MediaScanner;)J
    .locals 4
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 129
    iget-wide v0, p0, Landroid/media/MediaScanner;->mTotalCheckedDirectories:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/media/MediaScanner;->mTotalCheckedDirectories:J

    return-wide v0
.end method

.method private cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2295
    new-instance v1, Landroid/media/MediaScanner$PlaylistEntry;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Landroid/media/MediaScanner$PlaylistEntry;-><init>(Landroid/media/MediaScanner$1;)V

    .line 2297
    .local v1, "entry":Landroid/media/MediaScanner$PlaylistEntry;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2298
    .local v2, "entryLength":I
    :goto_0
    if-lez v2, :cond_0

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2301
    :cond_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 2316
    :goto_1
    return-void

    .line 2302
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2306
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2307
    .local v0, "ch1":C
    const/16 v5, 0x2f

    if-eq v0, v5, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_4

    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_4

    :cond_3
    move v3, v4

    .line 2310
    .local v3, "fullPath":Z
    :cond_4
    if-nez v3, :cond_5

    .line 2311
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2312
    :cond_5
    iput-object p1, v1, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    .line 2315
    iget-object v4, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static encodeStringResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 486
    if-nez p0, :cond_0

    const/4 v12, 0x0

    .line 509
    :goto_0
    return-object v12

    .line 488
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 489
    .local v10, "bytes":[B
    const/16 v8, 0x10

    .local v8, "b4":I
    const/16 v6, 0x8

    .local v6, "b3":I
    const/4 v4, 0x2

    .local v4, "b1":I
    const/4 v2, 0x1

    .line 490
    .local v2, "b0":I
    const/16 v3, 0xfe

    .local v3, "b0mask":I
    const/16 v5, 0xfd

    .local v5, "b1mask":I
    const/16 v7, 0xf7

    .local v7, "b3mask":I
    const/16 v9, 0xef

    .line 493
    .local v9, "b4mask":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    array-length v12, v12

    if-ge v11, v12, :cond_5

    .line 494
    aget-byte v0, v10, v11

    .local v0, "a":I
    move v1, v0

    .line 496
    .local v1, "b":I
    and-int v12, v0, v4

    if-eqz v12, :cond_1

    or-int/2addr v1, v2

    .line 498
    :goto_2
    and-int v12, v0, v2

    if-eqz v12, :cond_2

    or-int/2addr v1, v4

    .line 501
    :goto_3
    and-int v12, v0, v8

    if-eqz v12, :cond_3

    or-int/2addr v1, v6

    .line 503
    :goto_4
    and-int v12, v0, v6

    if-eqz v12, :cond_4

    or-int/2addr v1, v8

    .line 506
    :goto_5
    int-to-byte v12, v1

    aput-byte v12, v10, v11

    .line 493
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 497
    :cond_1
    and-int/2addr v1, v3

    goto :goto_2

    .line 499
    :cond_2
    and-int/2addr v1, v5

    goto :goto_3

    .line 502
    :cond_3
    and-int/2addr v1, v7

    goto :goto_4

    .line 504
    :cond_4
    and-int/2addr v1, v9

    goto :goto_5

    .line 509
    .end local v0    # "a":I
    .end local v1    # "b":I
    :cond_5
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v10}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private getSecretBoxDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 586
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/secretmode/SecretModeManager;->getSecretDir(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 593
    .local v1, "secretDir":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 587
    .end local v1    # "secretDir":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 588
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    .line 592
    .restart local v1    # "secretDir":Ljava/lang/String;
    goto :goto_0

    .line 590
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    .end local v1    # "secretDir":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 591
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const/4 v1, 0x0

    .restart local v1    # "secretDir":Ljava/lang/String;
    goto :goto_0
.end method

.method private inScanDirectory(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "directories"    # [Ljava/lang/String;

    .prologue
    .line 1800
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1801
    aget-object v0, p2, v1

    .line 1802
    .local v0, "directory":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1803
    const/4 v2, 0x1

    .line 1806
    .end local v0    # "directory":Ljava/lang/String;
    :goto_1
    return v2

    .line 1800
    .restart local v0    # "directory":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1806
    .end local v0    # "directory":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static native initMutex()V
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 4
    .param p1, "volumeName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1931
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1933
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    .line 1934
    invoke-static {p1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    .line 1935
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    .line 1936
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    .line 1937
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    .line 1938
    iget-object v0, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "nonotify"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mFilesUriNoNotify:Landroid/net/Uri;

    .line 1940
    const-string v0, "internal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1942
    iput-boolean v3, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    .line 1943
    iput-boolean v3, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    .line 1944
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    .line 1946
    iput-boolean v3, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    .line 1948
    :cond_0
    return-void
.end method

.method private isDrmEnabled()Z
    .locals 1

    .prologue
    .line 562
    const/4 v0, 0x1

    return v0
.end method

.method private static isNoMediaFile(Ljava/lang/String;)Z
    .locals 10
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0xa

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 2104
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2105
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v4

    .line 2134
    :cond_0
    :goto_0
    return v1

    .line 2110
    :cond_1
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 2111
    .local v7, "lastSlash":I
    if-ltz v7, :cond_3

    add-int/lit8 v0, v7, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 2113
    add-int/lit8 v0, v7, 0x1

    const-string v2, "._"

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v2, v4, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2120
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x4

    const-string v3, ".jpg"

    const/4 v5, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2121
    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArt_{"

    move-object v0, p0

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArt."

    const/16 v5, 0x9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v7

    add-int/lit8 v8, v0, -0x1

    .line 2126
    .local v8, "length":I
    const/16 v0, 0x11

    if-ne v8, v0, :cond_2

    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArtSmall"

    const/16 v5, 0xd

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    if-ne v8, v9, :cond_3

    add-int/lit8 v2, v7, 0x1

    const-string v3, "Folder"

    const/4 v5, 0x6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .end local v8    # "length":I
    :cond_3
    move v1, v4

    .line 2134
    goto :goto_0
.end method

.method public static isNoMediaPath(Ljava/lang/String;)Z
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2138
    if-nez p0, :cond_0

    .line 2158
    :goto_0
    return v3

    .line 2141
    :cond_0
    const-string v5, "/."

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_1

    move v3, v4

    goto :goto_0

    .line 2145
    :cond_1
    const/4 v1, 0x1

    .line 2146
    .local v1, "offset":I
    :goto_1
    if-ltz v1, :cond_3

    .line 2147
    const/16 v5, 0x2f

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 2148
    .local v2, "slashIndex":I
    if-le v2, v1, :cond_2

    .line 2149
    add-int/lit8 v2, v2, 0x1

    .line 2150
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".nomedia"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2151
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 2153
    goto :goto_0

    .line 2156
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    move v1, v2

    .line 2157
    goto :goto_1

    .line 2158
    .end local v2    # "slashIndex":I
    :cond_3
    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0
.end method

.method private isSecretBoxMounted(Landroid/content/Context;)Z
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 573
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/secretmode/SecretModeManager;->isSecretDirMounted(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/MediaScanner;->mSecretBoxIsMounted:Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    .line 580
    :goto_0
    iget-boolean v1, p0, Landroid/media/MediaScanner;->mSecretBoxIsMounted:Z

    return v1

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mSecretBoxIsMounted:Z

    goto :goto_0

    .line 577
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_1
    move-exception v0

    .line 578
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mSecretBoxIsMounted:Z

    goto :goto_0
.end method

.method private matchEntries(JLjava/lang/String;)Z
    .locals 7
    .param p1, "rowId"    # J
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    const v6, 0x7fffffff

    .line 2271
    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2272
    .local v3, "len":I
    const/4 v0, 0x1

    .line 2273
    .local v0, "done":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 2274
    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaScanner$PlaylistEntry;

    .line 2275
    .local v1, "entry":Landroid/media/MediaScanner$PlaylistEntry;
    iget v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-ne v5, v6, :cond_1

    .line 2273
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2278
    :cond_1
    const/4 v0, 0x0

    .line 2279
    iget-object v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2280
    iput-wide p1, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    .line 2281
    iput v6, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    goto :goto_1

    .line 2285
    :cond_2
    iget-object v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    invoke-direct {p0, p3, v5}, Landroid/media/MediaScanner;->matchPaths(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 2286
    .local v4, "matchLength":I
    iget v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-le v4, v5, :cond_0

    .line 2287
    iput-wide p1, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    .line 2288
    iput v4, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    goto :goto_1

    .line 2291
    .end local v1    # "entry":Landroid/media/MediaScanner$PlaylistEntry;
    .end local v4    # "matchLength":I
    :cond_3
    return v0
.end method

.method private matchPaths(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p1, "path1"    # Ljava/lang/String;
    .param p2, "path2"    # Ljava/lang/String;

    .prologue
    .line 2244
    const/4 v10, 0x0

    .line 2245
    .local v10, "result":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 2246
    .local v8, "end1":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    .line 2248
    .local v9, "end2":I
    :goto_0
    if-lez v8, :cond_0

    if-lez v9, :cond_0

    .line 2249
    const/16 v0, 0x2f

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v11

    .line 2250
    .local v11, "slash1":I
    const/16 v0, 0x2f

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v12

    .line 2251
    .local v12, "slash2":I
    const/16 v0, 0x5c

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    .line 2252
    .local v6, "backSlash1":I
    const/16 v0, 0x5c

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v7

    .line 2253
    .local v7, "backSlash2":I
    if-le v11, v6, :cond_1

    move v2, v11

    .line 2254
    .local v2, "start1":I
    :goto_1
    if-le v12, v7, :cond_2

    move v4, v12

    .line 2255
    .local v4, "start2":I
    :goto_2
    if-gez v2, :cond_3

    const/4 v2, 0x0

    .line 2256
    :goto_3
    if-gez v4, :cond_4

    const/4 v4, 0x0

    .line 2257
    :goto_4
    sub-int v5, v8, v2

    .line 2258
    .local v5, "length":I
    sub-int v0, v9, v4

    if-eq v0, v5, :cond_5

    .line 2266
    .end local v2    # "start1":I
    .end local v4    # "start2":I
    .end local v5    # "length":I
    .end local v6    # "backSlash1":I
    .end local v7    # "backSlash2":I
    .end local v11    # "slash1":I
    .end local v12    # "slash2":I
    :cond_0
    return v10

    .restart local v6    # "backSlash1":I
    .restart local v7    # "backSlash2":I
    .restart local v11    # "slash1":I
    .restart local v12    # "slash2":I
    :cond_1
    move v2, v6

    .line 2253
    goto :goto_1

    .restart local v2    # "start1":I
    :cond_2
    move v4, v7

    .line 2254
    goto :goto_2

    .line 2255
    .restart local v4    # "start2":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2256
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2259
    .restart local v5    # "length":I
    :cond_5
    const/4 v1, 0x1

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2260
    add-int/lit8 v10, v10, 0x1

    .line 2261
    add-int/lit8 v8, v2, -0x1

    .line 2262
    add-int/lit8 v9, v4, -0x1

    .line 2264
    goto :goto_0
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup()V
.end method

.method public static native notifyUnmount(Ljava/lang/String;)V
.end method

.method private postscan([Ljava/lang/String;)V
    .locals 5
    .param p1, "directories"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1914
    iget-boolean v2, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    if-eqz v2, :cond_0

    .line 1915
    invoke-direct {p0}, Landroid/media/MediaScanner;->processPlayLists()V

    .line 1918
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1919
    .local v0, "start":J
    iget v2, p0, Landroid/media/MediaScanner;->mOriginalCount:I

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/media/MediaScanner;->beforePrescanCount:I

    iget v3, p0, Landroid/media/MediaScanner;->mOriginalCount:I

    if-le v2, v3, :cond_2

    :cond_1
    iget-object v2, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    const-string v3, "external"

    invoke-static {v3}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1920
    invoke-direct {p0}, Landroid/media/MediaScanner;->pruneDeadThumbnailFiles()V

    .line 1921
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Landroid/media/MediaScanner;->mTotalDeadThumbnailTime:J

    .line 1924
    iput-object v4, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 1925
    iget-object v2, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1926
    :cond_3
    iput-object v4, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    .line 1927
    iput-object v4, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1928
    return-void
.end method

.method private prescan(Ljava/lang/String;Z)I
    .locals 35
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "prescanFiles"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1619
    const/16 v20, 0x0

    .line 1620
    .local v20, "c":Landroid/database/Cursor;
    const/16 v34, 0x0

    .line 1621
    .local v34, "where":Ljava/lang/String;
    const/16 v33, 0x0

    .line 1623
    .local v33, "selectionArgs":[Ljava/lang/String;
    sget-object v3, Landroid/media/MediaScanner;->syncEjectedPath:Ljava/lang/Object;

    monitor-enter v3

    .line 1624
    const/4 v2, 0x0

    :try_start_0
    sput-object v2, Landroid/media/MediaScanner;->ejectedPath:Ljava/lang/String;

    .line 1625
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1626
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    if-nez v2, :cond_7

    .line 1627
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    .line 1631
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    if-nez v2, :cond_8

    .line 1632
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    .line 1637
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    if-nez v2, :cond_9

    .line 1638
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 1643
    :goto_2
    if-eqz p1, :cond_a

    .line 1645
    const-string v34, "_id>? AND _data=?"

    .line 1647
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v33, v0

    .end local v33    # "selectionArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v33, v2

    const/4 v2, 0x1

    aput-object p1, v33, v2

    .line 1653
    .restart local v33    # "selectionArgs":[Ljava/lang/String;
    :goto_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/MediaScanner;->beforePrescanCount:I

    .line 1654
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    sget-object v5, Landroid/media/MediaScanner;->ID_PROJECTION_COUNT:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v20

    .line 1655
    if-eqz v20, :cond_0

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1656
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/MediaScanner;->beforePrescanCount:I

    .line 1657
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1664
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v19

    .line 1665
    .local v19, "builder":Landroid/net/Uri$Builder;
    const-string v2, "deletedata"

    const-string v3, "false"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1666
    new-instance v22, Landroid/media/MediaScanner$MediaBulkDeleter;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3, v11, v12}, Landroid/media/MediaScanner$MediaBulkDeleter;-><init>(Landroid/content/IContentProvider;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1667
    .local v22, "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    new-instance v24, Landroid/media/MediaScanner$MediaBulkDeleter;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    sget-object v12, Landroid/media/MediaScanner;->mExternalStorageSdPath:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v0, v2, v3, v11, v12}, Landroid/media/MediaScanner$MediaBulkDeleter;-><init>(Landroid/content/IContentProvider;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1671
    .local v24, "externalDeleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    if-eqz p2, :cond_4

    .line 1672
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v5, Landroid/media/MediaScanner;->ID_PROJECTION_COUNT:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v20

    .line 1673
    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1674
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/MediaScanner;->contentsCount:I

    .line 1676
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/MediaScanner;->contentsCount:I

    const/16 v3, 0x1b58

    if-ge v2, v3, :cond_b

    .line 1677
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/MediaScanner;->useHashMap:Z

    .line 1682
    :goto_4
    const-string v2, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Prescan. DB items number : "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v11, v0, Landroid/media/MediaScanner;->contentsCount:I

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, " DB_FILES_NUMBER_CACHING_LIMITATION : "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v11, 0x1b58

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, "  Caching mode : "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/media/MediaScanner;->useHashMap:Z

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1684
    const/16 v20, 0x0

    .line 1690
    :cond_1
    const-wide/high16 v28, -0x8000000000000000L

    .line 1691
    .local v28, "lastId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    const-string v11, "1000"

    invoke-virtual {v2, v3, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 1692
    .local v4, "limitUri":Landroid/net/Uri;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    .line 1695
    :cond_2
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v28

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v33, v2

    .line 1696
    if-eqz v20, :cond_3

    .line 1697
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1698
    const/16 v20, 0x0

    .line 1700
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    sget-object v5, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const-string v8, "_id"

    const/4 v9, 0x0

    move-object/from16 v6, v34

    move-object/from16 v7, v33

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v20

    .line 1702
    if-nez v20, :cond_d

    .line 1766
    .end local v4    # "limitUri":Landroid/net/Uri;
    .end local v28    # "lastId":J
    :cond_4
    if-eqz v20, :cond_5

    .line 1767
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1769
    :cond_5
    invoke-virtual/range {v22 .. v22}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1770
    invoke-virtual/range {v24 .. v24}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1774
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 1775
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    sget-object v14, Landroid/media/MediaScanner;->ID_PROJECTION_COUNT:[Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-interface/range {v11 .. v18}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v20

    .line 1776
    if-eqz v20, :cond_6

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1777
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 1778
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1781
    :cond_6
    invoke-virtual/range {v22 .. v22}, Landroid/media/MediaScanner$MediaBulkDeleter;->getTotalDeletedNumber()I

    move-result v2

    invoke-virtual/range {v24 .. v24}, Landroid/media/MediaScanner$MediaBulkDeleter;->getTotalDeletedNumber()I

    move-result v3

    add-int v21, v2, v3

    .line 1782
    .local v21, "deletedNumber":I
    const/16 v22, 0x0

    .line 1783
    const/16 v24, 0x0

    .line 1785
    sget-object v3, Landroid/media/MediaScanner;->syncEjectedPath:Ljava/lang/Object;

    monitor-enter v3

    .line 1786
    const/4 v2, 0x0

    :try_start_2
    sput-object v2, Landroid/media/MediaScanner;->ejectedPath:Ljava/lang/String;

    .line 1787
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1789
    return v21

    .line 1625
    .end local v19    # "builder":Landroid/net/Uri$Builder;
    .end local v21    # "deletedNumber":I
    .end local v22    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .end local v24    # "externalDeleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 1629
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    .line 1634
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_1

    .line 1640
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_2

    .line 1649
    :cond_a
    const-string v34, "_id>?"

    .line 1650
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v33, v0

    .end local v33    # "selectionArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v33, v2

    .restart local v33    # "selectionArgs":[Ljava/lang/String;
    goto/16 :goto_3

    .line 1680
    .restart local v19    # "builder":Landroid/net/Uri$Builder;
    .restart local v22    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .restart local v24    # "externalDeleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    :cond_b
    const/4 v2, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/MediaScanner;->useHashMap:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_4

    .line 1766
    :catchall_1
    move-exception v2

    if-eqz v20, :cond_c

    .line 1767
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1769
    :cond_c
    invoke-virtual/range {v22 .. v22}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1770
    invoke-virtual/range {v24 .. v24}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    throw v2

    .line 1706
    .restart local v4    # "limitUri":Landroid/net/Uri;
    .restart local v28    # "lastId":J
    :cond_d
    :try_start_5
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v31

    .line 1708
    .local v31, "num":I
    if-eqz v31, :cond_4

    .line 1711
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    .line 1712
    :cond_e
    :goto_5
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1713
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1714
    .local v6, "rowId":J
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1715
    .local v8, "path":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 1716
    .local v26, "format":I
    const/4 v2, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1717
    .local v9, "lastModified":J
    move-wide/from16 v28, v6

    .line 1722
    if-eqz v8, :cond_e

    const-string v2, "/"

    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v2

    if-eqz v2, :cond_e

    .line 1723
    const/16 v23, 0x0

    .line 1725
    .local v23, "exists":Z
    :try_start_6
    sget-object v2, Landroid/media/MediaScanner;->ejectedPath:Ljava/lang/String;

    if-eqz v2, :cond_f

    sget-object v2, Landroid/media/MediaScanner;->ejectedPath:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_6
    .catch Llibcore/io/ErrnoException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v2

    if-eqz v2, :cond_f

    const/16 v23, 0x0

    .line 1729
    :goto_6
    if-nez v23, :cond_12

    :try_start_7
    invoke-static/range {v26 .. v26}, Landroid/mtp/MtpConstants;->isAbstractObject(I)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1734
    invoke-static {v8}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v30

    .line 1735
    .local v30, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v30, :cond_10

    const/16 v25, 0x0

    .line 1737
    .local v25, "fileType":I
    :goto_7
    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1738
    sget-object v2, Landroid/media/MediaScanner;->mExternalStorageSdPath:Ljava/lang/String;

    if-eqz v2, :cond_11

    sget-object v2, Landroid/media/MediaScanner;->mExternalStorageSdPath:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1739
    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Landroid/media/MediaScanner$MediaBulkDeleter;->delete(J)V

    .line 1742
    :goto_8
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/.nomedia"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1743
    invoke-virtual/range {v22 .. v22}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1744
    invoke-virtual/range {v24 .. v24}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1745
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v32

    .line 1746
    .local v32, "parent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    const-string v11, "unhide"

    const/4 v12, 0x0

    move-object/from16 v0, v32

    invoke-interface {v2, v3, v11, v0, v12}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_5

    .line 1726
    .end local v25    # "fileType":I
    .end local v30    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .end local v32    # "parent":Ljava/lang/String;
    :cond_f
    :try_start_8
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v3, Llibcore/io/OsConstants;->F_OK:I

    invoke-interface {v2, v8, v3}, Llibcore/io/Os;->access(Ljava/lang/String;I)Z
    :try_end_8
    .catch Llibcore/io/ErrnoException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v23

    goto :goto_6

    .line 1735
    .restart local v30    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    :cond_10
    :try_start_9
    move-object/from16 v0, v30

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move/from16 v25, v0

    goto :goto_7

    .line 1740
    .restart local v25    # "fileType":I
    :cond_11
    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Landroid/media/MediaScanner$MediaBulkDeleter;->delete(J)V

    goto :goto_8

    .line 1751
    .end local v25    # "fileType":I
    .end local v30    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/media/MediaScanner;->useHashMap:Z

    if-eqz v2, :cond_e

    .line 1752
    move-object/from16 v27, v8

    .line 1753
    .local v27, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    if-eqz v2, :cond_13

    .line 1754
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    .line 1756
    :cond_13
    new-instance v5, Landroid/media/MediaScanner$FileEntry;

    invoke-direct/range {v5 .. v10}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;J)V

    .line 1757
    .local v5, "entry":Landroid/media/MediaScanner$FileEntry;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_5

    .line 1787
    .end local v4    # "limitUri":Landroid/net/Uri;
    .end local v5    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v6    # "rowId":J
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "lastModified":J
    .end local v23    # "exists":Z
    .end local v26    # "format":I
    .end local v27    # "key":Ljava/lang/String;
    .end local v28    # "lastId":J
    .end local v31    # "num":I
    .restart local v21    # "deletedNumber":I
    :catchall_2
    move-exception v2

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v2

    .line 1727
    .end local v21    # "deletedNumber":I
    .restart local v4    # "limitUri":Landroid/net/Uri;
    .restart local v6    # "rowId":J
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v9    # "lastModified":J
    .restart local v23    # "exists":Z
    .restart local v26    # "format":I
    .restart local v28    # "lastId":J
    .restart local v31    # "num":I
    :catch_0
    move-exception v2

    goto/16 :goto_6
.end method

.method private printToMediaProviderDBLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1951
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1952
    .local v2, "val":Landroid/content/ContentValues;
    const-string v3, "title"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    invoke-static {p2}, Landroid/provider/MediaStore;->getMediaProviderDbLogUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1956
    .local v1, "logUri":Landroid/net/Uri;
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "media"

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1957
    iget-object v3, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v4, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, v1, v2}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1961
    iput-object v5, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1963
    :goto_0
    return-void

    .line 1958
    :catch_0
    move-exception v0

    .line 1959
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "MediaScanner"

    const-string v4, "RemoteException in printToMediaProviderDBLog()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1961
    iput-object v5, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    iput-object v5, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    throw v3
.end method

.method private processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    .locals 11
    .param p1, "fileList"    # Landroid/database/Cursor;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "playlistUri"    # Landroid/net/Uri;

    .prologue
    .line 2319
    const/4 v8, -0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2320
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2321
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 2322
    .local v6, "rowId":J
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2323
    .local v0, "data":Ljava/lang/String;
    invoke-direct {p0, v6, v7, v0}, Landroid/media/MediaScanner;->matchEntries(JLjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2328
    .end local v0    # "data":Ljava/lang/String;
    .end local v6    # "rowId":J
    :cond_1
    iget-object v8, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2329
    .local v5, "len":I
    const/4 v4, 0x0

    .line 2330
    .local v4, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 2331
    iget-object v8, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaScanner$PlaylistEntry;

    .line 2332
    .local v2, "entry":Landroid/media/MediaScanner$PlaylistEntry;
    iget v8, v2, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-lez v8, :cond_2

    .line 2334
    :try_start_0
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 2335
    const-string v8, "play_order"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2336
    const-string v8, "audio_id"

    iget-wide v9, v2, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2337
    iget-object v8, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v9, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    invoke-interface {v8, v9, p3, p2}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2338
    add-int/lit8 v4, v4, 0x1

    .line 2330
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2339
    :catch_0
    move-exception v1

    .line 2340
    .local v1, "e":Landroid/os/RemoteException;
    const-string v8, "MediaScanner"

    const-string v9, "RemoteException in MediaScanner.processCachedPlaylist()"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2346
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "entry":Landroid/media/MediaScanner$PlaylistEntry;
    :goto_1
    return-void

    .line 2345
    :cond_3
    iget-object v8, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method private native processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private native processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    .prologue
    .line 2350
    const/4 v3, 0x0

    .line 2352
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2353
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2354
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x2000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2356
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 2357
    .local v2, "line":Ljava/lang/String;
    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2358
    :goto_0
    if-eqz v2, :cond_1

    .line 2360
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-eq v5, v6, :cond_0

    .line 2361
    invoke-direct {p0, v2, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2363
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2366
    :cond_1
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v4

    .line 2372
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_2
    if-eqz v3, :cond_3

    .line 2373
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2378
    .end local v1    # "f":Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    .line 2374
    .restart local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2375
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "MediaScanner"

    const-string v6, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2368
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "f":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 2369
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v5, "MediaScanner"

    const-string v6, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2372
    if-eqz v3, :cond_3

    .line 2373
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 2374
    :catch_2
    move-exception v0

    .line 2375
    const-string v5, "MediaScanner"

    const-string v6, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2371
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 2372
    :goto_3
    if-eqz v3, :cond_4

    .line 2373
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2376
    :cond_4
    :goto_4
    throw v5

    .line 2374
    :catch_3
    move-exception v0

    .line 2375
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "MediaScanner"

    const-string v7, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2371
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 2368
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    .locals 20
    .param p1, "entry"    # Landroid/media/MediaScanner$FileEntry;
    .param p2, "fileList"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2478
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 2479
    .local v17, "path":Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2480
    .local v5, "values":Landroid/content/ContentValues;
    const/16 v2, 0x2f

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 2481
    .local v14, "lastSlash":I
    if-gez v14, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad path "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2483
    :cond_0
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    move-wide/from16 v18, v0

    .line 2486
    .local v18, "rowId":J
    const-string v2, "name"

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2487
    .local v16, "name":Ljava/lang/String;
    if-nez v16, :cond_1

    .line 2488
    const-string v2, "title"

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2489
    if-nez v16, :cond_1

    .line 2491
    const/16 v2, 0x2e

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 2492
    .local v13, "lastDot":I
    if-gez v13, :cond_3

    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 2497
    .end local v13    # "lastDot":I
    :cond_1
    :goto_0
    const-string v2, "name"

    move-object/from16 v0, v16

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2498
    const-string v2, "date_modified"

    move-object/from16 v0, p1

    iget-wide v6, v0, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2500
    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-nez v2, :cond_4

    .line 2501
    const-string v2, "_data"

    move-object/from16 v0, v17

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2502
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    invoke-interface {v2, v3, v6, v5}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 2503
    .local v4, "uri":Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    .line 2504
    const-string v2, "members"

    invoke-static {v4, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 2514
    .local v9, "membersUri":Landroid/net/Uri;
    :goto_1
    const/4 v2, 0x0

    add-int/lit8 v3, v14, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 2515
    .local v8, "playListDirectory":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v15

    .line 2516
    .local v15, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v15, :cond_5

    const/4 v12, 0x0

    .line 2518
    .local v12, "fileType":I
    :goto_2
    const/16 v2, 0x29

    if-ne v12, v2, :cond_6

    move-object/from16 v6, p0

    move-object/from16 v7, v17

    move-object v10, v5

    move-object/from16 v11, p2

    .line 2519
    invoke-direct/range {v6 .. v11}, Landroid/media/MediaScanner;->processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    .line 2525
    :cond_2
    :goto_3
    return-void

    .line 2492
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v8    # "playListDirectory":Ljava/lang/String;
    .end local v9    # "membersUri":Landroid/net/Uri;
    .end local v12    # "fileType":I
    .end local v15    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .restart local v13    # "lastDot":I
    :cond_3
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    goto :goto_0

    .line 2506
    .end local v13    # "lastDot":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    move-wide/from16 v0, v18

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 2507
    .restart local v4    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2510
    const-string v2, "members"

    invoke-static {v4, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 2511
    .restart local v9    # "membersUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v2, v3, v9, v6, v7}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 2516
    .restart local v8    # "playListDirectory":Ljava/lang/String;
    .restart local v15    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    :cond_5
    iget v12, v15, Landroid/media/MediaFile$MediaFileType;->fileType:I

    goto :goto_2

    .line 2520
    .restart local v12    # "fileType":I
    :cond_6
    const/16 v2, 0x2a

    if-ne v12, v2, :cond_7

    move-object/from16 v6, p0

    move-object/from16 v7, v17

    move-object v10, v5

    move-object/from16 v11, p2

    .line 2521
    invoke-direct/range {v6 .. v11}, Landroid/media/MediaScanner;->processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    goto :goto_3

    .line 2522
    :cond_7
    const/16 v2, 0x2b

    if-ne v12, v2, :cond_2

    move-object/from16 v6, p0

    move-object/from16 v7, v17

    move-object v10, v5

    move-object/from16 v11, p2

    .line 2523
    invoke-direct/range {v6 .. v11}, Landroid/media/MediaScanner;->processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    goto :goto_3
.end method

.method private processPlayLists()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2528
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 2529
    .local v10, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaScanner$FileEntry;>;"
    const/4 v9, 0x0

    .line 2533
    .local v9, "fileList":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v3, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const-string v4, "media_type=2"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 2535
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2536
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/MediaScanner$FileEntry;

    .line 2538
    .local v8, "entry":Landroid/media/MediaScanner$FileEntry;
    iget-boolean v0, v8, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-eqz v0, :cond_0

    .line 2539
    if-eqz v9, :cond_0

    invoke-direct {p0, v8, v9}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2542
    .end local v8    # "entry":Landroid/media/MediaScanner$FileEntry;
    :catch_0
    move-exception v0

    .line 2544
    if-eqz v9, :cond_1

    .line 2545
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2548
    :cond_1
    :goto_1
    return-void

    .line 2544
    :cond_2
    if-eqz v9, :cond_1

    .line 2545
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2544
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    .line 2545
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    .prologue
    .line 2382
    const/4 v4, 0x0

    .line 2384
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2385
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2386
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x2000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2388
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 2389
    .local v3, "line":Ljava/lang/String;
    iget-object v6, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2390
    :goto_0
    if-eqz v3, :cond_1

    .line 2392
    const-string v6, "File"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2393
    const/16 v6, 0x3d

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2394
    .local v1, "equals":I
    if-lez v1, :cond_0

    .line 2395
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2398
    .end local v1    # "equals":I
    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2401
    :cond_1
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v5

    .line 2407
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_2
    if-eqz v4, :cond_3

    .line 2408
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2413
    .end local v2    # "f":Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    .line 2409
    .restart local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2410
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "MediaScanner"

    const-string v7, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2403
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "f":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 2404
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v6, "MediaScanner"

    const-string v7, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2407
    if-eqz v4, :cond_3

    .line 2408
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 2409
    :catch_2
    move-exception v0

    .line 2410
    const-string v6, "MediaScanner"

    const-string v7, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2406
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 2407
    :goto_3
    if-eqz v4, :cond_4

    .line 2408
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2411
    :cond_4
    :goto_4
    throw v6

    .line 2409
    :catch_3
    move-exception v0

    .line 2410
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "MediaScanner"

    const-string v8, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2406
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 2403
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    .prologue
    .line 2451
    const/4 v2, 0x0

    .line 2453
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2454
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2455
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2457
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v4, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2458
    const-string v4, "UTF-8"

    invoke-static {v4}, Landroid/util/Xml;->findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;

    move-result-object v4

    new-instance v5, Landroid/media/MediaScanner$WplHandler;

    invoke-direct {v5, p0, p2, p3, p5}, Landroid/media/MediaScanner$WplHandler;-><init>(Landroid/media/MediaScanner;Ljava/lang/String;Landroid/net/Uri;Landroid/database/Cursor;)V

    invoke-virtual {v5}, Landroid/media/MediaScanner$WplHandler;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 2461
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 2469
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :cond_0
    if-eqz v2, :cond_1

    .line 2470
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2475
    .end local v1    # "f":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 2471
    .restart local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2472
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "MediaScanner"

    const-string v5, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2463
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "f":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 2464
    .local v0, "e":Lorg/xml/sax/SAXException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2469
    if-eqz v2, :cond_1

    .line 2470
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 2471
    :catch_2
    move-exception v0

    .line 2472
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "MediaScanner"

    const-string v5, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2465
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 2466
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2469
    if-eqz v2, :cond_1

    .line 2470
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 2471
    :catch_4
    move-exception v0

    .line 2472
    const-string v4, "MediaScanner"

    const-string v5, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2468
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 2469
    :goto_3
    if-eqz v2, :cond_2

    .line 2470
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 2473
    :cond_2
    :goto_4
    throw v4

    .line 2471
    :catch_5
    move-exception v0

    .line 2472
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "MediaScanner"

    const-string v6, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2468
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 2465
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 2463
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private pruneDeadThumbnailFiles()V
    .locals 18

    .prologue
    .line 1810
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 1811
    .local v12, "existingFiles":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/.thumbnails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1812
    .local v10, "directory":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v14

    .line 1813
    .local v14, "files":[Ljava/lang/String;
    if-nez v14, :cond_0

    .line 1814
    const/4 v1, 0x0

    new-array v14, v1, [Ljava/lang/String;

    .line 1816
    :cond_0
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    array-length v1, v14

    move/from16 v0, v16

    if-ge v0, v1, :cond_1

    .line 1817
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v14, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1818
    .local v15, "fullPathString":Ljava/lang/String;
    invoke-virtual {v12, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1816
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1822
    .end local v15    # "fullPathString":Ljava/lang/String;
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_data"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 1829
    .local v9, "c":Landroid/database/Cursor;
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pruneDeadThumbnailFiles... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1832
    :cond_2
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1833
    .restart local v15    # "fullPathString":Ljava/lang/String;
    invoke-virtual {v12, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1834
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1837
    .end local v15    # "fullPathString":Ljava/lang/String;
    :cond_3
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1841
    .local v13, "fileToDelete":Ljava/lang/String;
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1842
    :catch_0
    move-exception v11

    .line 1843
    .local v11, "ex":Ljava/lang/SecurityException;
    :try_start_2
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SeecurityException occured during delete : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1851
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v11    # "ex":Ljava/lang/SecurityException;
    .end local v13    # "fileToDelete":Ljava/lang/String;
    .end local v17    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v1

    .line 1854
    :cond_4
    :goto_2
    return-void

    .line 1847
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v17    # "i$":Ljava/util/Iterator;
    :cond_5
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/pruneDeadThumbnailFiles... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    if-eqz v9, :cond_4

    .line 1849
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method private setDefaultRingtoneFileNames()V
    .locals 1

    .prologue
    .line 532
    const-string v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    .line 534
    const-string v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    .line 536
    const-string v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    .line 538
    return-void
.end method

.method private static setExternalStorageSdPath(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 514
    sget-object v3, Landroid/media/MediaScanner;->storageManager:Landroid/os/storage/StorageManager;

    if-nez v3, :cond_0

    .line 515
    const-string v3, "storage"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    sput-object v3, Landroid/media/MediaScanner;->storageManager:Landroid/os/storage/StorageManager;

    .line 516
    sget-object v3, Landroid/media/MediaScanner;->storageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 517
    .local v1, "storageVolumes":[Landroid/os/storage/StorageVolume;
    if-eqz v1, :cond_2

    .line 518
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 519
    aget-object v2, v1, v0

    .line 520
    .local v2, "volume":Landroid/os/storage/StorageVolume;
    const-string v3, "sd"

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 521
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/media/MediaScanner;->mExternalStorageSdPath:Ljava/lang/String;

    .line 529
    .end local v0    # "i":I
    .end local v1    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    :cond_0
    :goto_1
    return-void

    .line 518
    .restart local v0    # "i":I
    .restart local v1    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    .restart local v2    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 526
    .end local v0    # "i":I
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    :cond_2
    const-string v3, "MediaScanner"

    const-string v4, "The storageVolumes is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static terminateBulkDeleter(Ljava/lang/String;)V
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 1793
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TerminateBulkDeleter is called for path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    sget-object v1, Landroid/media/MediaScanner;->syncEjectedPath:Ljava/lang/Object;

    monitor-enter v1

    .line 1795
    :try_start_0
    sput-object p0, Landroid/media/MediaScanner;->ejectedPath:Ljava/lang/String;

    .line 1796
    monitor-exit v1

    .line 1797
    return-void

    .line 1796
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public checkDefaultSounds(Ljava/lang/String;)V
    .locals 21
    .param p1, "volumeName"    # Ljava/lang/String;

    .prologue
    .line 2586
    const-string v1, "MediaScanner"

    const-string v5, "checkDefaultSounds"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    invoke-static/range {p1 .. p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2589
    .local v4, "URIdefaultSound":Landroid/net/Uri;
    sget-object v3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 2590
    .local v3, "URIsetting":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2592
    .local v2, "cr":Landroid/content/ContentResolver;
    if-nez v2, :cond_1

    .line 2593
    const-string v1, "MediaScanner"

    const-string v5, "Context resolver is null!!!"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    :cond_0
    return-void

    .line 2597
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->setDefaultRingtoneFileNames()V

    .line 2600
    const-string v5, "alarm_alert"

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/media/MediaScanner;->SettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 2603
    const-string v5, "notification_sound"

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/media/MediaScanner;->SettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 2606
    const-string v5, "ringtone"

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/media/MediaScanner;->SettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 2616
    const-string v1, "CTC"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "CHM"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2618
    :cond_2
    const-string v11, "com.android.settings"

    .line 2619
    .local v11, "AUTHORITY":Ljava/lang/String;
    const-string v12, "profile"

    .line 2620
    .local v12, "PROFILE_TABLE":Ljava/lang/String;
    const-string v1, "content://com.android.settings/profile"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 2622
    .local v6, "PROFILE_CONTENT_URI":Landroid/net/Uri;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    const/4 v1, 0x5

    move/from16 v0, v17

    if-ge v0, v1, :cond_0

    .line 2623
    const/4 v7, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v5, v17, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v2

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 2624
    .local v14, "cursor":Landroid/database/Cursor;
    if-eqz v14, :cond_6

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2625
    const-string v1, "profile_ringtone"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2626
    .local v18, "ringtone":Ljava/lang/String;
    const-string v1, "profile_gsm_ringtone"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 2627
    .local v16, "gsmRingtone":Ljava/lang/String;
    const-string v1, "profile_video_ringtone"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 2628
    .local v20, "videoRingtone":Ljava/lang/String;
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 2629
    .local v19, "ringtoneValues":Landroid/content/ContentValues;
    const-string v1, "ringtone"

    invoke-static {v2, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2631
    .local v15, "defaultRing":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2632
    const-string v1, "profile_ringtone"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2634
    :cond_3
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2635
    const-string v1, "profile_gsm_ringtone"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2637
    :cond_4
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2638
    const-string v1, "profile_video_ringtone"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2640
    :cond_5
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-eqz v1, :cond_6

    .line 2641
    add-int/lit8 v1, v17, 0x1

    int-to-long v7, v1

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 2642
    .local v13, "_uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v19

    .line 2645
    .end local v13    # "_uri":Landroid/net/Uri;
    .end local v15    # "defaultRing":Ljava/lang/String;
    .end local v16    # "gsmRingtone":Ljava/lang/String;
    .end local v18    # "ringtone":Ljava/lang/String;
    .end local v19    # "ringtoneValues":Landroid/content/ContentValues;
    .end local v20    # "videoRingtone":Ljava/lang/String;
    :cond_6
    if-eqz v14, :cond_7

    .line 2646
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2622
    :cond_7
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0
.end method

.method public native extractAlbumArt(Ljava/io/FileDescriptor;)[B
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 2574
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_0

    .line 2575
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    .line 2576
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 2579
    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2580
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    .line 2581
    return-void
.end method

.method makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;
    .locals 14
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    .line 2221
    const/4 v12, 0x0

    .line 2223
    .local v12, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v4, "_data=?"

    .line 2224
    .local v4, "where":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    .line 2225
    .local v5, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/MediaScanner;->mFilesUriNoNotify:Landroid/net/Uri;

    sget-object v3, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v12

    .line 2227
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2228
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 2230
    .local v7, "rowId":J
    const/4 v0, 0x3

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2231
    .local v10, "lastModified":J
    new-instance v6, Landroid/media/MediaScanner$FileEntry;

    move-object v9, p1

    invoke-direct/range {v6 .. v11}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2235
    if-eqz v12, :cond_0

    .line 2236
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2239
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "rowId":J
    .end local v10    # "lastModified":J
    :cond_0
    :goto_0
    return-object v6

    .line 2235
    .restart local v4    # "where":Ljava/lang/String;
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    :cond_1
    if-eqz v12, :cond_2

    .line 2236
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    :cond_2
    :goto_1
    move-object v6, v13

    .line 2239
    goto :goto_0

    .line 2233
    :catch_0
    move-exception v0

    .line 2235
    if-eqz v12, :cond_2

    .line 2236
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2235
    :catchall_0
    move-exception v0

    if-eqz v12, :cond_3

    .line 2236
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 2568
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    .line 2569
    return-void
.end method

.method public scanDirectories([Ljava/lang/String;Ljava/lang/String;)V
    .locals 37
    .param p1, "directories"    # [Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;

    .prologue
    .line 1967
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 1968
    .local v30, "start":J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1969
    const/16 v33, 0x0

    const/16 v34, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)I

    move-result v33

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v22, v0

    .line 1970
    .local v22, "prescanBulkDeleted":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 1974
    .local v20, "prescan":J
    new-instance v33, Landroid/media/MediaInserter;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x64

    invoke-direct/range {v33 .. v36}, Landroid/media/MediaInserter;-><init>(Landroid/content/IContentProvider;Ljava/lang/String;I)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 1977
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    if-ge v14, v0, :cond_3

    .line 1978
    sget-object v33, Landroid/media/MediaScanner;->mExternalStorageSdPath:Ljava/lang/String;

    if-eqz v33, :cond_0

    aget-object v33, p1, v14

    sget-object v34, Landroid/media/MediaScanner;->mExternalStorageSdPath:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_1

    :cond_0
    aget-object v33, p1, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_1

    aget-object v33, p1, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mInternalStoragePath:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_2

    .line 1979
    :cond_1
    const-string v33, "MediaScanner"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "processDirectory :  "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    aget-object v35, p1, v14

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    aget-object v33, p1, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 1983
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1984
    .local v5, "bulkInserterTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/media/MediaInserter;->flushAll()V

    .line 1985
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalBulkInserterTime:J

    move-wide/from16 v33, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v35

    sub-long v35, v35, v5

    add-long v33, v33, v35

    move-wide/from16 v0, v33

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner;->mTotalBulkInserterTime:J

    .line 1977
    .end local v5    # "bulkInserterTime":J
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 1989
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mSecretBoxIsMounted:Z

    move/from16 v33, v0

    if-eqz v33, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mSecretBoxPath:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_4

    .line 1990
    const-string v33, "MediaScanner"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "processDirectory force:  secretbox:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mSecretBoxPath:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mSecretBoxPath:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 1995
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1996
    .restart local v5    # "bulkInserterTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/media/MediaInserter;->flushAll()V

    .line 1997
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalBulkInserterTime:J

    move-wide/from16 v33, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v35

    sub-long v35, v35, v5

    add-long v33, v33, v35

    move-wide/from16 v0, v33

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner;->mTotalBulkInserterTime:J

    .line 2002
    .end local v5    # "bulkInserterTime":J
    :cond_4
    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 2005
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 2006
    .local v26, "scan":J
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner;->postscan([Ljava/lang/String;)V

    .line 2007
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2009
    .local v10, "end":J
    const-wide/16 v16, 0x0

    .line 2010
    .local v16, "makeEntryPercentage":J
    const-wide/16 v18, 0x0

    .line 2011
    .local v18, "parsingPercentage":J
    const-wide/16 v7, 0x0

    .line 2012
    .local v7, "bulkInsertingPercentage":J
    const-wide/16 v3, 0x0

    .line 2013
    .local v3, "bitmapDecodingPercentage":J
    const-wide/16 v12, 0x0

    .line 2014
    .local v12, "exifExtractingPercentage":J
    const-wide/16 v28, 0x0

    .line 2016
    .local v28, "sefExtractingPercentage":J
    sub-long v33, v26, v20

    const-wide/16 v35, 0x0

    cmp-long v33, v33, v35

    if-eqz v33, :cond_5

    .line 2017
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalMakeEntryTime:J

    move-wide/from16 v33, v0

    const-wide/16 v35, 0x64

    mul-long v33, v33, v35

    sub-long v35, v26, v20

    div-long v16, v33, v35

    .line 2018
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalParsingTime:J

    move-wide/from16 v33, v0

    const-wide/16 v35, 0x64

    mul-long v33, v33, v35

    sub-long v35, v26, v20

    div-long v18, v33, v35

    .line 2019
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalBitmapDecodingTime:J

    move-wide/from16 v33, v0

    const-wide/16 v35, 0x64

    mul-long v33, v33, v35

    sub-long v35, v26, v20

    div-long v3, v33, v35

    .line 2020
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalExifExtractingTime:J

    move-wide/from16 v33, v0

    const-wide/16 v35, 0x64

    mul-long v33, v33, v35

    sub-long v35, v26, v20

    div-long v12, v33, v35

    .line 2021
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalSefExtractingTime:J

    move-wide/from16 v33, v0

    const-wide/16 v35, 0x64

    mul-long v33, v33, v35

    sub-long v35, v26, v20

    div-long v28, v33, v35

    .line 2022
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalBulkInserterTime:J

    move-wide/from16 v33, v0

    const-wide/16 v35, 0x64

    mul-long v33, v33, v35

    sub-long v35, v26, v20

    div-long v7, v33, v35

    .line 2025
    :cond_5
    const-string v33, "MediaScanner"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, " prescan time: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sub-long v35, v20, v30

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "ms (DB items: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->contentsCount:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ")\n"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    const-string v33, "MediaScanner"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "    scan time: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sub-long v35, v26, v20

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "ms (Caching mode: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->useHashMap:Z

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "), (makeEntry time: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalMakeEntryTime:J

    move-wide/from16 v35, v0

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "ms ~"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "%),  (parsing time: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalParsingTime:J

    move-wide/from16 v35, v0

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "ms ~"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "%),  (bitmapDecoding time: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalBitmapDecodingTime:J

    move-wide/from16 v35, v0

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "ms ~"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "%), (exifExtracting time : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalExifExtractingTime:J

    move-wide/from16 v35, v0

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "ms ~"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "%), (sefExtracting time : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalSefExtractingTime:J

    move-wide/from16 v35, v0

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "ms ~"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "%), (bulkInserter time : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalBulkInserterTime:J

    move-wide/from16 v35, v0

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "ms ~"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "%)\n"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    const-string v33, "MediaScanner"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "postscan time: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sub-long v35, v10, v26

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "ms (bulkDeleter : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "), (delete DeadThumbnail time : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalDeadThumbnailTime:J

    move-wide/from16 v35, v0

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "ms)\n"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    const-string v33, "MediaScanner"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "   total time: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sub-long v35, v10, v30

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "ms\n"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    const-string v33, "MediaScanner"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "checked files: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalCheckedFiles:J

    move-wide/from16 v35, v0

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "  directories : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalCheckedDirectories:J

    move-wide/from16 v35, v0

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "  (I: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalInserted:J

    move-wide/from16 v35, v0

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", U: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalUpdated:J

    move-wide/from16 v35, v0

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ")\n"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Volume:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "/Current DB items:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->contentsCount:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "/Checked files:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalCheckedFiles:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "/Directories:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalCheckedDirectories:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " (I:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalInserted:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "/U:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalUpdated:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "/D:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ")"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 2034
    .local v24, "result":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->printToMediaProviderDBLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    new-instance v25, Ljava/lang/StringBuffer;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    .line 2037
    .local v25, "sb":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 2039
    .local v15, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaScanner$FileParsingTime;>;"
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_7

    .line 2040
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/media/MediaScanner$FileParsingTime;

    .line 2041
    .local v32, "time":Landroid/media/MediaScanner$FileParsingTime;
    invoke-virtual/range {v32 .. v32}, Landroid/media/MediaScanner$FileParsingTime;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 2064
    .end local v3    # "bitmapDecodingPercentage":J
    .end local v7    # "bulkInsertingPercentage":J
    .end local v10    # "end":J
    .end local v12    # "exifExtractingPercentage":J
    .end local v14    # "i":I
    .end local v15    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaScanner$FileParsingTime;>;"
    .end local v16    # "makeEntryPercentage":J
    .end local v18    # "parsingPercentage":J
    .end local v20    # "prescan":J
    .end local v22    # "prescanBulkDeleted":J
    .end local v24    # "result":Ljava/lang/String;
    .end local v25    # "sb":Ljava/lang/StringBuffer;
    .end local v26    # "scan":J
    .end local v28    # "sefExtractingPercentage":J
    .end local v30    # "start":J
    .end local v32    # "time":Landroid/media/MediaScanner$FileParsingTime;
    :catch_0
    move-exception v9

    .line 2066
    .local v9, "e":Landroid/database/SQLException;
    const-string v33, "MediaScanner"

    const-string v34, "SQLException in MediaScanner.scan()"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2073
    .end local v9    # "e":Landroid/database/SQLException;
    :cond_6
    :goto_2
    return-void

    .line 2045
    .restart local v3    # "bitmapDecodingPercentage":J
    .restart local v7    # "bulkInsertingPercentage":J
    .restart local v10    # "end":J
    .restart local v12    # "exifExtractingPercentage":J
    .restart local v14    # "i":I
    .restart local v15    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaScanner$FileParsingTime;>;"
    .restart local v16    # "makeEntryPercentage":J
    .restart local v18    # "parsingPercentage":J
    .restart local v20    # "prescan":J
    .restart local v22    # "prescanBulkDeleted":J
    .restart local v24    # "result":Ljava/lang/String;
    .restart local v25    # "sb":Ljava/lang/StringBuffer;
    .restart local v26    # "scan":J
    .restart local v28    # "sefExtractingPercentage":J
    .restart local v30    # "start":J
    :cond_7
    if-eqz v25, :cond_8

    :try_start_1
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->length()I

    move-result v33

    if-lez v33, :cond_8

    .line 2046
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->printToMediaProviderDBLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalParsingTime:J

    move-wide/from16 v33, v0

    const-wide/16 v35, 0x0

    cmp-long v33, v33, v35

    if-nez v33, :cond_9

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalBitmapDecodingTime:J

    move-wide/from16 v33, v0

    const-wide/16 v35, 0x0

    cmp-long v33, v33, v35

    if-nez v33, :cond_9

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalExifExtractingTime:J

    move-wide/from16 v33, v0

    const-wide/16 v35, 0x0

    cmp-long v33, v33, v35

    if-eqz v33, :cond_a

    :cond_9
    const-string v33, "MediaScanner"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, " parsing stat: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    :cond_a
    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    .line 2051
    const-wide/16 v33, 0x0

    move-wide/from16 v0, v33

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner;->mTotalParsingTime:J

    .line 2052
    const-wide/16 v33, 0x0

    move-wide/from16 v0, v33

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner;->mTotalBitmapDecodingTime:J

    .line 2053
    const-wide/16 v33, 0x0

    move-wide/from16 v0, v33

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner;->mTotalExifExtractingTime:J

    .line 2054
    const-wide/16 v33, 0x0

    move-wide/from16 v0, v33

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner;->mTotalBulkInserterTime:J

    .line 2055
    const-wide/16 v33, 0x0

    move-wide/from16 v0, v33

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner;->mTotalCheckedFiles:J

    .line 2056
    const-wide/16 v33, 0x0

    move-wide/from16 v0, v33

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner;->mTotalCheckedDirectories:J

    .line 2057
    const-wide/16 v33, 0x0

    move-wide/from16 v0, v33

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner;->mTotalInserted:J

    .line 2058
    const-wide/16 v33, 0x0

    move-wide/from16 v0, v33

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner;->mTotalUpdated:J

    .line 2059
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/media/MediaScanner;->useHashMap:Z

    .line 2060
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->contentsCount:I

    .line 2062
    const/16 v33, 0x0

    aget-object v33, p1, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mInternalStoragePath:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/media/MediaScanner;->checkDefaultSounds(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_2

    .line 2067
    .end local v3    # "bitmapDecodingPercentage":J
    .end local v7    # "bulkInsertingPercentage":J
    .end local v10    # "end":J
    .end local v12    # "exifExtractingPercentage":J
    .end local v14    # "i":I
    .end local v15    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaScanner$FileParsingTime;>;"
    .end local v16    # "makeEntryPercentage":J
    .end local v18    # "parsingPercentage":J
    .end local v20    # "prescan":J
    .end local v22    # "prescanBulkDeleted":J
    .end local v24    # "result":Ljava/lang/String;
    .end local v25    # "sb":Ljava/lang/StringBuffer;
    .end local v26    # "scan":J
    .end local v28    # "sefExtractingPercentage":J
    .end local v30    # "start":J
    :catch_1
    move-exception v9

    .line 2069
    .local v9, "e":Ljava/lang/UnsupportedOperationException;
    const-string v33, "MediaScanner"

    const-string v34, "UnsupportedOperationException in MediaScanner.scan()"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 2070
    .end local v9    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v9

    .line 2071
    .local v9, "e":Landroid/os/RemoteException;
    const-string v33, "MediaScanner"

    const-string v34, "RemoteException in MediaScanner.scan()"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2
.end method

.method public scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 25
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "objectHandle"    # I
    .param p4, "format"    # I

    .prologue
    .line 2162
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 2163
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v24

    .line 2164
    .local v24, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v24, :cond_1

    const/16 v23, 0x0

    .line 2165
    .local v23, "fileType":I
    :goto_0
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2166
    .local v21, "file":Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    const-wide/16 v9, 0x3e8

    div-long v12, v3, v9

    .line 2168
    .local v12, "lastModifiedSeconds":J
    invoke-static/range {v23 .. v23}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static/range {v23 .. v23}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static/range {v23 .. v23}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static/range {v23 .. v23}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static/range {v23 .. v23}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2173
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2174
    .local v6, "values":Landroid/content/ContentValues;
    const-string v3, "_size"

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2175
    const-string v3, "date_modified"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2177
    const/4 v3, 0x1

    :try_start_0
    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    .line 2178
    .local v8, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v7, "_id=?"

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2215
    .end local v6    # "values":Landroid/content/ContentValues;
    .end local v8    # "whereArgs":[Ljava/lang/String;
    .end local v12    # "lastModifiedSeconds":J
    :cond_0
    :goto_1
    return-void

    .line 2164
    .end local v21    # "file":Ljava/io/File;
    .end local v23    # "fileType":I
    :cond_1
    move-object/from16 v0, v24

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move/from16 v23, v0

    goto :goto_0

    .line 2180
    .restart local v6    # "values":Landroid/content/ContentValues;
    .restart local v12    # "lastModifiedSeconds":J
    .restart local v21    # "file":Ljava/io/File;
    .restart local v23    # "fileType":I
    :catch_0
    move-exception v19

    .line 2181
    .local v19, "e":Landroid/os/RemoteException;
    const-string v3, "MediaScanner"

    const-string v4, "RemoteException in scanMtpFile"

    move-object/from16 v0, v19

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2186
    .end local v6    # "values":Landroid/content/ContentValues;
    .end local v19    # "e":Landroid/os/RemoteException;
    :cond_2
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 2187
    const/16 v22, 0x0

    .line 2189
    .local v22, "fileList":Landroid/database/Cursor;
    :try_start_1
    invoke-static/range {v23 .. v23}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2191
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)I

    .line 2193
    invoke-virtual/range {p0 .. p1}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    move-result-object v20

    .line 2194
    .local v20, "entry":Landroid/media/MediaScanner$FileEntry;
    if-eqz v20, :cond_3

    .line 2195
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v12, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    .end local v12    # "lastModifiedSeconds":J
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v9 .. v16}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v22

    .line 2197
    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2210
    .end local v20    # "entry":Landroid/media/MediaScanner$FileEntry;
    :cond_3
    :goto_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 2211
    if-eqz v22, :cond_0

    .line 2212
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2201
    .restart local v12    # "lastModifiedSeconds":J
    :cond_4
    const/4 v3, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)I

    .line 2204
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v0, v24

    iget-object v11, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v14

    const/16 v3, 0x3001

    move/from16 v0, p4

    if-ne v0, v3, :cond_5

    const/16 v16, 0x1

    :goto_3
    const/16 v17, 0x1

    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v18

    move-object/from16 v10, p1

    invoke-virtual/range {v9 .. v18}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 2207
    .end local v12    # "lastModifiedSeconds":J
    :catch_1
    move-exception v19

    .line 2208
    .restart local v19    # "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "MediaScanner"

    const-string v4, "RemoteException in MediaScanner.scanFile()"

    move-object/from16 v0, v19

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2210
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 2211
    if-eqz v22, :cond_0

    .line 2212
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 2204
    .end local v19    # "e":Landroid/os/RemoteException;
    .restart local v12    # "lastModifiedSeconds":J
    :cond_5
    const/16 v16, 0x0

    goto :goto_3

    .line 2210
    .end local v12    # "lastModifiedSeconds":J
    :catchall_0
    move-exception v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 2211
    if-eqz v22, :cond_6

    .line 2212
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v3
.end method

.method public scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 13
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 2079
    :try_start_0
    invoke-static {p1}, Landroid/media/MediaScanner;->encodeStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2080
    .local v12, "str":Ljava/lang/String;
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scanSingleFile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    const/4 v12, 0x0

    .line 2083
    invoke-direct {p0, p2}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 2084
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)I

    .line 2086
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2087
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2088
    const/4 v0, 0x0

    .line 2099
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "str":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2092
    .restart local v11    # "file":Ljava/io/File;
    .restart local v12    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v5, 0x3e8

    div-long v3, v0, v5

    .line 2095
    .local v3, "lastModifiedSeconds":J
    iget-object v0, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v9

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-virtual/range {v0 .. v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 2097
    .end local v3    # "lastModifiedSeconds":J
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "str":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 2098
    .local v10, "e":Landroid/os/RemoteException;
    const-string v0, "MediaScanner"

    const-string v1, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2099
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native setLocale(Ljava/lang/String;)V
.end method
