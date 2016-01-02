.class public Lcom/carrieriq/iqagent/client/metrics/mg/MG01;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "MG01.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwSmsId:I

.field public szRecipient:Ljava/lang/String;

.field public szSMSC:Ljava/lang/String;

.field public wNumFrags:S

.field public wSize:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "MG01"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/mg/MG01;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/mg/MG01;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    sget v0, Lcom/carrieriq/iqagent/client/metrics/mg/MG01;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 20
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
    .line 23
    const/4 v0, -0x1

    return v0
.end method
