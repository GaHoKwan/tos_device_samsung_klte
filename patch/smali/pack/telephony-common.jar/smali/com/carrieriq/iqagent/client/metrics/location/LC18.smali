.class public Lcom/carrieriq/iqagent/client/metrics/location/LC18;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "LC18.java"


# static fields
.field public static final ID:I


# instance fields
.field public lAltitude:I

.field public lHeading:I

.field public lLatitude:I

.field public lLongitude:I

.field public lUncertiantyAint:I

.field public lUncertiantyAltitude:I

.field public lUncertiantyAngle:I

.field public lUncertiantyPerpendicular:I

.field public lVelocityHorizontal:I

.field public lVelocityVertical:I

.field public ucFieldsValid:B

.field public ucGpsRequestType:B

.field public ucGpsResult:B

.field public ucGpsSource:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "LC18"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/location/LC18;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/location/LC18;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    sget v0, Lcom/carrieriq/iqagent/client/metrics/location/LC18;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 28
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "out"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, -0x1

    return v0
.end method

.method public setAltitude(D)V
    .locals 0
    .param p1, "meters"    # D

    .prologue
    .line 40
    return-void
.end method

.method public setBearing(F)V
    .locals 0
    .param p1, "degrees"    # F

    .prologue
    .line 46
    return-void
.end method

.method public setLatitude(D)V
    .locals 0
    .param p1, "degrees"    # D

    .prologue
    .line 34
    return-void
.end method

.method public setLongitude(D)V
    .locals 0
    .param p1, "degrees"    # D

    .prologue
    .line 37
    return-void
.end method

.method public setVelocity(F)V
    .locals 0
    .param p1, "meters_per_sec"    # F

    .prologue
    .line 43
    return-void
.end method
