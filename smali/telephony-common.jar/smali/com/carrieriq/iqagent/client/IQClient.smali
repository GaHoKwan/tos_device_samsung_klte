.class public Lcom/carrieriq/iqagent/client/IQClient;
.super Ljava/lang/Object;
.source "IQClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkSMS(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 10
    const/4 v0, 0x0

    return v0
.end method

.method public checkWAPPush([B)Z
    .locals 1
    .param p1, "b"    # [B

    .prologue
    .line 6
    const/4 v0, 0x0

    return v0
.end method

.method public submitMetric(IJ[BII)I
    .locals 1
    .param p1, "metricID"    # I
    .param p2, "timestamp"    # J
    .param p4, "payloadBytes"    # [B
    .param p5, "payloadOffs"    # I
    .param p6, "payloadLen"    # I

    .prologue
    .line 18
    const/4 v0, -0x1

    return v0
.end method

.method public submitMetric(Lcom/carrieriq/iqagent/client/Metric;)I
    .locals 1
    .param p1, "metric"    # Lcom/carrieriq/iqagent/client/Metric;

    .prologue
    .line 14
    const/4 v0, -0x1

    return v0
.end method
