.class public Landroid/hardware/contextaware/aggregator/lpp/ApdrData;
.super Ljava/lang/Object;
.source "ApdrData.java"


# instance fields
.field public StepCount:D

.field public TimeNoMove:J

.field public acc:[D

.field public apdrDevicePosition:I

.field public apdrForwardingVector:D

.field public apdrHeading:D

.field public att:[D

.field public bearing:D

.field public carryPos:I

.field public gyro:[D

.field public mag:[D

.field public movingStatus:I

.field public stepFlag:D

.field public stepLength:D

.field public systemtime:J

.field public utctime:J


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x3

    const-wide/16 v2, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-array v1, v4, [D

    iput-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->acc:[D

    .line 14
    new-array v1, v4, [D

    iput-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->gyro:[D

    .line 15
    const/4 v1, 0x4

    new-array v1, v1, [D

    iput-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->mag:[D

    .line 16
    new-array v1, v4, [D

    iput-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->att:[D

    .line 17
    const/4 v1, 0x2

    iput v1, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    .line 29
    iput-wide v2, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->bearing:D

    .line 30
    iput-wide v2, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->StepCount:D

    .line 31
    iput-wide v5, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->TimeNoMove:J

    .line 32
    iput-wide v2, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->stepFlag:D

    .line 33
    iput-wide v2, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->stepLength:D

    .line 34
    iput-wide v5, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->systemtime:J

    .line 35
    iput-wide v5, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->utctime:J

    .line 36
    const/4 v0, 0x0

    .local v0, "inx":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 37
    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->acc:[D

    aput-wide v2, v1, v0

    .line 38
    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->gyro:[D

    aput-wide v2, v1, v0

    .line 39
    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->mag:[D

    aput-wide v2, v1, v0

    .line 40
    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->att:[D

    aput-wide v2, v1, v0

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->mag:[D

    aput-wide v2, v1, v4

    .line 43
    iput-wide v2, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->apdrForwardingVector:D

    .line 44
    iput-wide v2, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->apdrHeading:D

    .line 45
    const/4 v1, 0x1

    iput v1, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->apdrDevicePosition:I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/ApdrData;)V
    .locals 2
    .param p1, "aPDR_data"    # Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    .prologue
    const/4 v1, 0x3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-array v0, v1, [D

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->acc:[D

    .line 14
    new-array v0, v1, [D

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->gyro:[D

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [D

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->mag:[D

    .line 16
    new-array v0, v1, [D

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->att:[D

    .line 17
    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    .line 49
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->set(Landroid/hardware/contextaware/aggregator/lpp/ApdrData;)V

    .line 50
    return-void
.end method


# virtual methods
.method public set(Landroid/hardware/contextaware/aggregator/lpp/ApdrData;)V
    .locals 5
    .param p1, "aPDR_data"    # Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    .prologue
    const/4 v4, 0x3

    .line 53
    iget-wide v1, p1, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->bearing:D

    iput-wide v1, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->bearing:D

    .line 54
    iget-wide v1, p1, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->StepCount:D

    iput-wide v1, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->StepCount:D

    .line 55
    iget-wide v1, p1, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->TimeNoMove:J

    iput-wide v1, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->TimeNoMove:J

    .line 56
    iget-wide v1, p1, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->stepFlag:D

    iput-wide v1, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->stepFlag:D

    .line 57
    iget-wide v1, p1, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->stepLength:D

    iput-wide v1, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->stepLength:D

    .line 58
    iget-wide v1, p1, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->systemtime:J

    iput-wide v1, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->systemtime:J

    .line 59
    iget-wide v1, p1, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->utctime:J

    iput-wide v1, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->utctime:J

    .line 60
    const/4 v0, 0x0

    .local v0, "inx":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 61
    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->acc:[D

    iget-object v2, p1, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->acc:[D

    aget-wide v2, v2, v0

    aput-wide v2, v1, v0

    .line 62
    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->gyro:[D

    iget-object v2, p1, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->gyro:[D

    aget-wide v2, v2, v0

    aput-wide v2, v1, v0

    .line 63
    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->mag:[D

    iget-object v2, p1, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->mag:[D

    aget-wide v2, v2, v0

    aput-wide v2, v1, v0

    .line 64
    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->att:[D

    iget-object v2, p1, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->att:[D

    aget-wide v2, v2, v0

    aput-wide v2, v1, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->mag:[D

    iget-object v2, p1, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->mag:[D

    aget-wide v2, v2, v4

    aput-wide v2, v1, v4

    .line 67
    iget v1, p1, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    iput v1, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    .line 68
    iget-wide v1, p1, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->apdrForwardingVector:D

    iput-wide v1, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->apdrForwardingVector:D

    .line 69
    iget-wide v1, p1, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->apdrHeading:D

    iput-wide v1, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->apdrHeading:D

    .line 70
    iget v1, p1, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->apdrDevicePosition:I

    iput v1, p0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->apdrDevicePosition:I

    .line 71
    return-void
.end method
