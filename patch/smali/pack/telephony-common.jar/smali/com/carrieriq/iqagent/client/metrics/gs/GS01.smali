.class public Lcom/carrieriq/iqagent/client/metrics/gs/GS01;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "GS01.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwCallId:I

.field public szNumber:Ljava/lang/String;

.field public ucCallAttr:B

.field public ucCallState:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "GS01"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 18
    return-void
.end method

.method public constructor <init>(IBLjava/lang/String;)V
    .locals 1
    .param p1, "callId"    # I
    .param p2, "callState"    # B
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 33
    sget v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 34
    return-void
.end method


# virtual methods
.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "out"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 38
    const/4 v0, -0x1

    return v0
.end method

.method public setOriginated()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public setTerminated()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public setVideo()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public setVoice()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method
