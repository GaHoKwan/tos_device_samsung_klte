.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
.super Ljava/lang/Object;
.source "CurrentPositionRequestRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Position"
.end annotation


# instance fields
.field private accuracy:F

.field private altitude:D

.field private distance:D

.field private latitude:D

.field private longitude:D

.field private satelliteCount:I

.field private speed:F

.field private type:I

.field private utcTime:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;I)I
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->type:I

    return p1
.end method

.method static synthetic access$102(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;[I)[I
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
    .param p1, "x1"    # [I

    .prologue
    .line 45
    iput-object p1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->utcTime:[I

    return-object p1
.end method

.method static synthetic access$202(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;D)D
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
    .param p1, "x1"    # D

    .prologue
    .line 45
    iput-wide p1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->latitude:D

    return-wide p1
.end method

.method static synthetic access$302(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;D)D
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
    .param p1, "x1"    # D

    .prologue
    .line 45
    iput-wide p1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->longitude:D

    return-wide p1
.end method

.method static synthetic access$402(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;D)D
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
    .param p1, "x1"    # D

    .prologue
    .line 45
    iput-wide p1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->altitude:D

    return-wide p1
.end method

.method static synthetic access$502(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;D)D
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
    .param p1, "x1"    # D

    .prologue
    .line 45
    iput-wide p1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->distance:D

    return-wide p1
.end method

.method static synthetic access$602(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;F)F
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
    .param p1, "x1"    # F

    .prologue
    .line 45
    iput p1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->speed:F

    return p1
.end method

.method static synthetic access$702(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;F)F
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
    .param p1, "x1"    # F

    .prologue
    .line 45
    iput p1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->accuracy:F

    return p1
.end method

.method static synthetic access$802(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;I)I
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->satelliteCount:I

    return p1
.end method


# virtual methods
.method public getAccuracy()F
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->accuracy:F

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->altitude:D

    return-wide v0
.end method

.method public getDistance()D
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->distance:D

    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->longitude:D

    return-wide v0
.end method

.method public getSatelliteCount()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->satelliteCount:I

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->speed:F

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->type:I

    return v0
.end method

.method public getUtcTime()[I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->utcTime:[I

    return-object v0
.end method
