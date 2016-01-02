.class public Lcom/carrieriq/iqagent/client/metrics/location/LC30;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "LC30.java"


# static fields
.field public static final ID:I

.field public static IQ_LOC_METHOD_ALT:B

.field public static IQ_LOC_METHOD_CELLULAR:B

.field public static IQ_LOC_METHOD_UNKNOWN:B

.field public static IQ_LOC_METHOD_WIFI:B

.field public static IQ_LOC_RESULTS_IN_USE:B

.field public static IQ_LOC_RESULTS_SUCCESS:B

.field public static IQ_LOC_RESULTS_UNAVAILABLE:B

.field public static IQ_LOC_RESULTS_UNKNOWN:B

.field public static IQ_LOC_RESULTS_USER_DENIED:B

.field public static IQ_LOC_RESULTS_USER_UNAUTHORIZED:B


# instance fields
.field public lLatitude:I

.field public lLongitude:I

.field public tTimestamp:J

.field public ucMethod:B

.field public ucResultsValid:B

.field public wAccuracy:S


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 9
    const-string v0, "LC30"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/location/LC30;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/location/LC30;->ID:I

    .line 18
    sput-byte v1, Lcom/carrieriq/iqagent/client/metrics/location/LC30;->IQ_LOC_METHOD_UNKNOWN:B

    .line 19
    sput-byte v2, Lcom/carrieriq/iqagent/client/metrics/location/LC30;->IQ_LOC_METHOD_CELLULAR:B

    .line 20
    sput-byte v3, Lcom/carrieriq/iqagent/client/metrics/location/LC30;->IQ_LOC_METHOD_WIFI:B

    .line 21
    sput-byte v4, Lcom/carrieriq/iqagent/client/metrics/location/LC30;->IQ_LOC_METHOD_ALT:B

    .line 23
    sput-byte v1, Lcom/carrieriq/iqagent/client/metrics/location/LC30;->IQ_LOC_RESULTS_UNKNOWN:B

    .line 24
    sput-byte v2, Lcom/carrieriq/iqagent/client/metrics/location/LC30;->IQ_LOC_RESULTS_SUCCESS:B

    .line 25
    sput-byte v3, Lcom/carrieriq/iqagent/client/metrics/location/LC30;->IQ_LOC_RESULTS_UNAVAILABLE:B

    .line 26
    sput-byte v4, Lcom/carrieriq/iqagent/client/metrics/location/LC30;->IQ_LOC_RESULTS_IN_USE:B

    .line 27
    const/4 v0, 0x4

    sput-byte v0, Lcom/carrieriq/iqagent/client/metrics/location/LC30;->IQ_LOC_RESULTS_USER_DENIED:B

    .line 28
    const/4 v0, 0x5

    sput-byte v0, Lcom/carrieriq/iqagent/client/metrics/location/LC30;->IQ_LOC_RESULTS_USER_UNAUTHORIZED:B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    sget v0, Lcom/carrieriq/iqagent/client/metrics/location/LC30;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 32
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 35
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
    .line 59
    const/4 v0, -0x1

    return v0
.end method

.method public setAccuracy(S)V
    .locals 0
    .param p1, "meters"    # S

    .prologue
    .line 44
    return-void
.end method

.method public setGPSTimeStamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .prologue
    .line 47
    return-void
.end method

.method public setLatitude(D)V
    .locals 0
    .param p1, "degrees"    # D

    .prologue
    .line 38
    return-void
.end method

.method public setLongitude(D)V
    .locals 0
    .param p1, "degrees"    # D

    .prologue
    .line 41
    return-void
.end method

.method public setMethod(B)V
    .locals 0
    .param p1, "method"    # B

    .prologue
    .line 56
    return-void
.end method

.method public setResults(B)V
    .locals 0
    .param p1, "results"    # B

    .prologue
    .line 50
    return-void
.end method

.method public setUnixTimeStamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .prologue
    .line 53
    return-void
.end method
