.class public Lcom/carrieriq/iqagent/client/metrics/hw/HW0E;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "HW0E.java"


# static fields
.field public static final ID:I


# instance fields
.field public ucBatteryEvent:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "HW0E"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/hw/HW0E;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/hw/HW0E;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    sget v0, Lcom/carrieriq/iqagent/client/metrics/hw/HW0E;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 15
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1
    .param p1, "event"    # B

    .prologue
    .line 18
    sget v0, Lcom/carrieriq/iqagent/client/metrics/hw/HW0E;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 19
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
    .line 22
    const/4 v0, -0x1

    return v0
.end method
