.class public Landroid/hardware/contextaware/aggregator/lpp/LppLocation;
.super Ljava/lang/Object;
.source "LppLocation.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field public Capturedtime:J

.field private Updated:Z

.field private loc:Landroid/location/Location;

.field private mOrgHei:D

.field private mOrgLat:D

.field private mOrgLon:D

.field private mPosECEF_X:D

.field private mPosECEF_Y:D

.field private mPosECEF_Z:D

.field private mPosEast:D

.field private mPosNorth:D

.field private mPosUp:D

.field private movingStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "LppLocation"

    sput-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const-wide/16 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    .line 15
    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    .line 16
    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    .line 26
    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->movingStatus:I

    .line 44
    new-instance v0, Landroid/location/Location;

    const-string v1, "NOPROVIDER"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    .line 45
    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V
    .locals 2
    .param p1, "l"    # Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    .prologue
    const-wide/16 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    .line 15
    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    .line 16
    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->movingStatus:I

    .line 49
    new-instance v0, Landroid/location/Location;

    iget-object v1, p1, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    .line 50
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 7
    .param p1, "l"    # Landroid/location/Location;

    .prologue
    const/4 v2, 0x1

    const-wide/16 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    .line 15
    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    .line 16
    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    .line 26
    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->movingStatus:I

    .line 32
    if-eqz p1, :cond_0

    .line 33
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    .line 34
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    .line 35
    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 36
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    .line 41
    :goto_0
    return-void

    .line 38
    :cond_0
    new-instance v0, Landroid/location/Location;

    const-string v1, "NOPROVIDER"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    .line 39
    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    goto :goto_0
.end method

.method private CalCoordinate()V
    .locals 9

    .prologue
    const/4 v4, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 163
    iput-boolean v6, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 165
    new-array v2, v4, [D

    .line 166
    .local v2, "llh":[D
    new-array v3, v4, [D

    .line 169
    .local v3, "orgllh":[D
    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    aput-wide v4, v2, v6

    .line 170
    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    aput-wide v4, v2, v7

    .line 171
    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    aput-wide v4, v2, v8

    .line 172
    iget-wide v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    aput-wide v4, v3, v6

    .line 173
    iget-wide v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    aput-wide v4, v3, v7

    .line 174
    iget-wide v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    aput-wide v4, v3, v8

    .line 176
    invoke-static {v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->llh2enu([D[D)[D

    move-result-object v1

    .line 177
    .local v1, "enu":[D
    aget-wide v4, v1, v6

    iput-wide v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosEast:D

    .line 178
    aget-wide v4, v1, v7

    iput-wide v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosNorth:D

    .line 179
    aget-wide v4, v1, v8

    iput-wide v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosUp:D

    .line 181
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->llh2xyz([D)[D

    move-result-object v0

    .line 182
    .local v0, "XYZ":[D
    aget-wide v4, v0, v6

    iput-wide v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosECEF_X:D

    .line 183
    aget-wide v4, v0, v7

    iput-wide v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosECEF_Y:D

    .line 184
    aget-wide v4, v0, v8

    iput-wide v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosECEF_Z:D

    .line 186
    return-void
.end method


# virtual methods
.method public PosPropation(DD)V
    .locals 11
    .param p1, "bearing"    # D
    .param p3, "stepLength"    # D

    .prologue
    .line 190
    iget-boolean v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v7, :cond_0

    .line 191
    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    .line 193
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 194
    .local v0, "HeadVec_E":D
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 197
    .local v2, "HeadVec_N":D
    iget-wide v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosEast:D

    mul-double v9, v0, p3

    add-double/2addr v7, v9

    iput-wide v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosEast:D

    .line 198
    iget-wide v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosNorth:D

    mul-double v9, v2, p3

    add-double/2addr v7, v9

    iput-wide v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosNorth:D

    .line 201
    const/4 v7, 0x3

    new-array v6, v7, [D

    .line 202
    .local v6, "orgllh":[D
    const/4 v7, 0x3

    new-array v4, v7, [D

    .line 204
    .local v4, "enu":[D
    const/4 v7, 0x0

    iget-wide v8, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosEast:D

    aput-wide v8, v4, v7

    .line 205
    const/4 v7, 0x1

    iget-wide v8, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosNorth:D

    aput-wide v8, v4, v7

    .line 206
    const/4 v7, 0x2

    iget-wide v8, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosUp:D

    aput-wide v8, v4, v7

    .line 207
    const/4 v7, 0x0

    iget-wide v8, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 208
    const/4 v7, 0x1

    iget-wide v8, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 209
    const/4 v7, 0x2

    iget-wide v8, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    aput-wide v8, v6, v7

    .line 211
    invoke-static {v4, v6}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->enu2llh([D[D)[D

    move-result-object v5

    .line 212
    .local v5, "llh":[D
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    const/4 v8, 0x0

    aget-wide v8, v5, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/location/Location;->setLatitude(D)V

    .line 213
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    const/4 v8, 0x1

    aget-wide v8, v5, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    .line 214
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    const/4 v8, 0x2

    aget-wide v8, v5, v8

    invoke-virtual {v7, v8, v9}, Landroid/location/Location;->setAltitude(D)V

    .line 216
    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    .line 219
    return-void
.end method

.method public distanceTo(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)D
    .locals 10
    .param p1, "lppLoc2"    # Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    .prologue
    .line 267
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v6

    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double v0, v2, v4

    .line 270
    .local v0, "squreDist":D
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    return-wide v2
.end method

.method public getAccuracy()F
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLoc()Landroid/location/Location;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMovingStatus()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->movingStatus:I

    return v0
.end method

.method public getOriginAltitude()D
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    return-wide v0
.end method

.method public getOriginLat()D
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    return-wide v0
.end method

.method public getOriginLon()D
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    return-wide v0
.end method

.method public getPosECEF_X()D
    .locals 2

    .prologue
    .line 145
    iget-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v0, :cond_0

    .line 146
    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    .line 147
    :cond_0
    iget-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosECEF_X:D

    return-wide v0
.end method

.method public getPosECEF_Y()D
    .locals 2

    .prologue
    .line 151
    iget-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    .line 153
    :cond_0
    iget-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosECEF_Y:D

    return-wide v0
.end method

.method public getPosECEF_Z()D
    .locals 2

    .prologue
    .line 157
    iget-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v0, :cond_0

    .line 158
    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    .line 159
    :cond_0
    iget-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosECEF_Z:D

    return-wide v0
.end method

.method public getPosEastLocal()D
    .locals 2

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    .line 129
    :cond_0
    iget-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosEast:D

    return-wide v0
.end method

.method public getPosNorthLocal()D
    .locals 2

    .prologue
    .line 133
    iget-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    .line 135
    :cond_0
    iget-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosNorth:D

    return-wide v0
.end method

.method public getPosUpLocal()D
    .locals 2

    .prologue
    .line 139
    iget-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    .line 141
    :cond_0
    iget-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosUp:D

    return-wide v0
.end method

.method public getSystemTime()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public set(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V
    .locals 7
    .param p1, "lpploc"    # Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    .prologue
    .line 119
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    iget-object v1, p1, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0, v1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 120
    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getOriginLat()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getOriginLon()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getOriginAltitude()D

    move-result-wide v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    .line 121
    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getSystemTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    .line 122
    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getMovingStatus()I

    move-result v0

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->movingStatus:I

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 124
    return-void
.end method

.method public set(Landroid/location/Location;)V
    .locals 2
    .param p1, "l"    # Landroid/location/Location;

    .prologue
    .line 107
    if-nez p1, :cond_0

    .line 115
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 111
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    .line 112
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setSystemTime()V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    goto :goto_0
.end method

.method public setAltitude(D)V
    .locals 1
    .param p1, "d"    # D

    .prologue
    .line 262
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setAltitude(D)V

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 264
    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "d"    # D

    .prologue
    .line 252
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 254
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "d"    # D

    .prologue
    .line 257
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setLongitude(D)V

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 259
    return-void
.end method

.method public setMovingStatus(I)V
    .locals 0
    .param p1, "MS"    # I

    .prologue
    .line 240
    iput p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->movingStatus:I

    .line 241
    return-void
.end method

.method public setOrigin(DDD)V
    .locals 1
    .param p1, "OrgLat"    # D
    .param p3, "OrgLon"    # D
    .param p5, "OrgHeight"    # D

    .prologue
    .line 76
    iput-wide p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    .line 77
    iput-wide p3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    .line 78
    iput-wide p5, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 80
    return-void
.end method

.method public setSystemTime()V
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    .line 99
    return-void
.end method

.method public setSystemTime(J)V
    .locals 7
    .param p1, "systemtime"    # J

    .prologue
    .line 223
    iget-wide v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 224
    sget-object v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->TAG:Ljava/lang/String;

    const-string v3, "setSystemTime() - Abnormal method calling"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-wide v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    sub-long v2, p1, v2

    long-to-double v0, v2

    .line 228
    .local v0, "timediff":D
    const-wide v2, 0x430c6bf526340000L    # 1.0E15

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1

    .line 229
    sget-object v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "systemtime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "     Capturedtime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    sget-object v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSystemTime() - systemtime overflow or propagation error timediff"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 233
    :cond_1
    iput-wide p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    .line 234
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    const-wide v5, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr v5, v0

    double-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setTime(J)V

    goto :goto_0
.end method
