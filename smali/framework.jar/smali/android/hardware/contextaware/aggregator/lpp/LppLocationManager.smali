.class Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;
.super Ljava/lang/Object;
.source "LppLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$1;,
        Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$FindGps;,
        Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$MainLocationListener;,
        Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$GpsNmeaListener;,
        Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;,
        Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;,
        Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;,
        Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;,
        Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;
    }
.end annotation


# static fields
.field private static final CHECK_GPS_WIFI_AVAILABILITY:I = 0x28

.field private static final FIRST_TIME_GPS_TIMEOUT:I = 0x28

.field private static final GPSBATCH_ENTRY_COUNT:I = 0x4

.field private static final GPS_BATCH_REQ_TIMEOUT:I = 0x5

.field private static final INDOOR_ENTRY_NO_GPS_COUNT:I = 0x3

.field private static final LOC_VALID_ACCURACY_GPS:I = 0x10

.field private static final LOC_VALID_ACCURACY_NW:I = 0x28

.field private static final LOC_VALID_TIME_GPS:I = 0x3

.field private static final NLP_TIMEOUT:I = 0x4

.field private static final OUTDOOR_ENTRY_GPS_COUNT:I = 0x3

.field private static final OUTDOOR_EXIT_ACCURACY:I = 0x32

.field private static final PASSIVE_INACTIVE_TIME:I = 0x14

.field public static final PASSIVE_LOC_ACC_VALIDITY:F = 32.0f

.field private static final PASSIVE_LOC_DIST_VALIDITY:D = 10.0

.field private static final PASSIVE_LOC_VALIDITY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LppLocationManager"

.field static final vals:[Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;


# instance fields
.field count:I

.field private mContext:Landroid/content/Context;

.field private final mFindGps:Landroid/location/LocationListener;

.field private final mGpsNmeaLnr:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$GpsNmeaListener;

.field private final mGpsStatusLnr:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;

.field private mGpsTimeout:J

.field private mLastLoc:Landroid/location/Location;

.field private final mListLoc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final mListPassiveLoc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;

.field private mLocLnr:Landroid/location/LocationListener;

.field private mLocMgr:Landroid/location/LocationManager;

.field private mLocMostAccGps:Landroid/location/Location;

.field private mLocNw:Landroid/location/Location;

.field private mLppResolution:I

.field private mPassiveSM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

.field private mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

.field private mTimeRequest:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->values()[Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    move-result-object v0

    sput-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->vals:[Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$FindGps;

    invoke-direct {v0, p0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$FindGps;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$1;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mFindGps:Landroid/location/LocationListener;

    .line 53
    iput-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    .line 54
    iput-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;

    .line 55
    iput-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocNw:Landroid/location/Location;

    .line 56
    iput-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mContext:Landroid/content/Context;

    .line 57
    iput v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLppResolution:I

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListPassiveLoc:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListLoc:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;

    invoke-direct {v0, p0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$1;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mGpsStatusLnr:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;

    .line 64
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$GpsNmeaListener;

    invoke-direct {v0, p0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$GpsNmeaListener;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$1;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mGpsNmeaLnr:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$GpsNmeaListener;

    .line 66
    iput-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    .line 67
    iput-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    .line 1450
    iput v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->count:I

    .line 1562
    return-void
.end method

.method static synthetic access$1100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    .prologue
    .line 29
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListener:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    .prologue
    .line 29
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mFindGps:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    .prologue
    .line 29
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMgr:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/LocationManager;)Landroid/location/LocationManager;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;
    .param p1, "x1"    # Landroid/location/LocationManager;

    .prologue
    .line 29
    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMgr:Landroid/location/LocationManager;

    return-object p1
.end method

.method static synthetic access$1500(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    .prologue
    .line 29
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$1502(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 29
    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$1600(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    .prologue
    .line 29
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocNw:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$1602(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 29
    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocNw:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$1700(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    .prologue
    .line 29
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    .prologue
    .line 29
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocLnr:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$1902(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;J)J
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;
    .param p1, "x1"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mTimeRequest:J

    return-wide p1
.end method

.method static synthetic access$2100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)J
    .locals 2
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    .prologue
    .line 29
    iget-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mGpsTimeout:J

    return-wide v0
.end method

.method static synthetic access$2200(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    .prologue
    .line 29
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListLoc:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    .prologue
    .line 29
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    .prologue
    .line 29
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mGpsStatusLnr:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;

    return-object v0
.end method

.method static synthetic access$4900(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    .prologue
    .line 29
    iget v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLppResolution:I

    return v0
.end method

.method static synthetic access$5600(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    .prologue
    .line 29
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    return-object v0
.end method

.method static synthetic access$5900(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    .prologue
    .line 29
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListPassiveLoc:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    .prologue
    .line 29
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$8302(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 29
    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$8400(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->locValidCheckNw(Landroid/location/Location;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8500(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->locValidCheckGps(Landroid/location/Location;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8600(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->setMostAccLocGps(Landroid/location/Location;)V

    return-void
.end method

.method private locValidCheckGps(Landroid/location/Location;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;
    .locals 6
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 1610
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mTimeRequest:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1611
    const-string v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time is not enough - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mTimeRequest:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    sget-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->INVALID_TIME:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    .line 1619
    :goto_0
    return-object v0

    .line 1615
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 1616
    const-string v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GPS: Accuracy is not good:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    sget-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->INVALID_ACC:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    goto :goto_0

    .line 1619
    :cond_1
    sget-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->VALID:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    goto :goto_0
.end method

.method private locValidCheckNw(Landroid/location/Location;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;
    .locals 3
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 1624
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x42200000    # 40.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1625
    const-string v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "N/W: Accuracy is not good:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    sget-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->INVALID_ACC:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    .line 1628
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->VALID:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    goto :goto_0
.end method

.method private setMostAccLocGps(Landroid/location/Location;)V
    .locals 2
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 1597
    const-string v0, "LppLocationManager"

    const-string v1, "setMostAccLoc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;

    if-nez v0, :cond_1

    .line 1600
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;

    .line 1605
    :cond_0
    :goto_0
    return-void

    .line 1602
    :cond_1
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1603
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto :goto_0
.end method

.method public static validPassDist(DDDD)Z
    .locals 25
    .param p0, "lat1"    # D
    .param p2, "lon1"    # D
    .param p4, "lat2"    # D
    .param p6, "lon2"    # D

    .prologue
    .line 1396
    const-string v19, "LppLocationManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "validDistance lat1:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " lat2:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " lon1:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " lon2:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    const-wide v3, 0x40b8e30000000000L    # 6371.0

    .line 1398
    .local v3, "R":D
    sub-double v19, p4, p0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    .line 1399
    .local v11, "dLat":D
    sub-double v19, p6, p2

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    .line 1400
    .local v13, "dLon":D
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v15

    .line 1401
    .local v15, "latR1":D
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v17

    .line 1403
    .local v17, "latR2":D
    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    div-double v19, v11, v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    div-double v21, v11, v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    div-double v21, v13, v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    div-double v23, v13, v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    mul-double v21, v21, v23

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    mul-double v21, v21, v23

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    mul-double v21, v21, v23

    add-double v5, v19, v21

    .line 1405
    .local v5, "a":D
    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    sub-double v23, v23, v5

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v23

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v21

    mul-double v7, v19, v21

    .line 1406
    .local v7, "c":D
    mul-double v19, v3, v7

    const-wide v21, 0x408f400000000000L    # 1000.0

    mul-double v9, v19, v21

    .line 1408
    .local v9, "d":D
    const-wide/high16 v19, 0x4024000000000000L    # 10.0

    cmpg-double v19, v9, v19

    if-gez v19, :cond_0

    .line 1409
    const-string v19, "LppLocationManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "distance not valid:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    const/16 v19, 0x0

    .line 1413
    :goto_0
    return v19

    .line 1412
    :cond_0
    const-string v19, "LppLocationManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "distance valid:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    const/16 v19, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getLastHeight()D
    .locals 2

    .prologue
    .line 1646
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 1647
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    .line 1649
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getLastLoc()Landroid/location/Location;
    .locals 1

    .prologue
    .line 1653
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    return-object v0
.end method

.method public getLastLocLat()D
    .locals 2

    .prologue
    .line 1632
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 1633
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 1635
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getLastLocLon()D
    .locals 2

    .prologue
    .line 1639
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 1640
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    .line 1642
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public locRequest(I)V
    .locals 5
    .param p1, "movingStatus"    # I

    .prologue
    .line 1453
    const-string v1, "LppLocationManager"

    const-string v2, "LocRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    iget v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->count:I

    .line 1461
    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    if-eqz v1, :cond_0

    .line 1464
    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->getLastLoc()Landroid/location/Location;
    invoke-static {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$8100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/Location;

    move-result-object v0

    .line 1465
    .local v0, "loc":Landroid/location/Location;
    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xbb8

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->getState()Lcom/android/internal/util/IState;
    invoke-static {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$8200(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mGpsBatch:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$5000(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 1468
    const-string v1, "LppLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "passive loc found!: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListLoc:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1470
    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListLoc:Ljava/util/ArrayList;

    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1471
    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListener:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListLoc:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;->locUpdate(Ljava/util/ArrayList;)V

    .line 1486
    .end local v0    # "loc":Landroid/location/Location;
    :cond_0
    :goto_0
    return-void

    .line 1475
    .restart local v0    # "loc":Landroid/location/Location;
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 1476
    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->STATIONARY:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessage(I)V

    .line 1483
    :cond_2
    :goto_1
    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_REQ:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessage(I)V

    .line 1484
    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    sget-object v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_REQ:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->sendMessage(I)V

    goto :goto_0

    .line 1477
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 1478
    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->WALK:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessage(I)V

    goto :goto_1

    .line 1479
    :cond_4
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 1480
    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->VEHICLE:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessage(I)V

    goto :goto_1
.end method

.method public sendStatus()V
    .locals 0

    .prologue
    .line 1669
    return-void
.end method

.method public sendStatus(Ljava/lang/String;)V
    .locals 1
    .param p1, "strDisp"    # Ljava/lang/String;

    .prologue
    .line 1672
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListener:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;

    invoke-interface {v0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;->status(Ljava/lang/String;)V

    .line 1673
    return-void
.end method

.method public setLppResolution(I)V
    .locals 0
    .param p1, "res"    # I

    .prologue
    .line 146
    iput p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLppResolution:I

    .line 147
    return-void
.end method

.method public start(Landroid/hardware/contextaware/aggregator/lpp/LppConfig;Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;)V
    .locals 2
    .param p1, "config"    # Landroid/hardware/contextaware/aggregator/lpp/LppConfig;
    .param p2, "mLMLnr"    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;

    .prologue
    .line 102
    const-string v0, "LppLocationManager"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-nez p1, :cond_0

    .line 105
    const-string v0, "LppLocationManager"

    const-string v1, "config null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mContext:Landroid/content/Context;

    .line 111
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 112
    const-string v0, "LppLocationManager"

    const-string v1, "context null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMgr:Landroid/location/LocationManager;

    .line 117
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMgr:Landroid/location/LocationManager;

    if-nez v0, :cond_2

    .line 118
    const-string v0, "LppLocationManager"

    const-string v1, "mLocMgr is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_2
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$MainLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$MainLocationListener;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$1;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocLnr:Landroid/location/LocationListener;

    .line 122
    iput-object p2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListener:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;

    .line 123
    iget v0, p1, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSKeepOn_Timer:I

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mGpsTimeout:J

    .line 125
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    const-string v1, "LppLocationManager"

    invoke-direct {v0, p0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    .line 126
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    invoke-virtual {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->start()V

    .line 127
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->START:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessage(I)V

    .line 129
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    const-string v1, "LppLocationManager"

    invoke-direct {v0, p0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    .line 130
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-virtual {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->start()V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 134
    const-string v0, "LppLocationManager"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->STOP:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessage(I)V

    .line 140
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->exit()V
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$400(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)V

    .line 143
    :cond_1
    return-void
.end method
