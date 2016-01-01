.class public Lcom/carrieriq/iqagent/client/metrics/gs/GS03;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "GS03.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwCallId:I

.field public dwErrCode:I

.field public wTermCode:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "GS03"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/gs/GS03;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS03;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    sget v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS03;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 17
    return-void
.end method

.method public constructor <init>(IIS)V
    .locals 1
    .param p1, "callId"    # I
    .param p2, "errCode"    # I
    .param p3, "termCode"    # S

    .prologue
    .line 21
    sget v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS03;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 22
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
    .line 26
    const/4 v0, -0x1

    return v0
.end method
