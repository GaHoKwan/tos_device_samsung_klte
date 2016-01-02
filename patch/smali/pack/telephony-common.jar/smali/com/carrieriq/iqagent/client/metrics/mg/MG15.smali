.class public Lcom/carrieriq/iqagent/client/metrics/mg/MG15;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "MG15.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwContentType:I

.field public dwErrorCode:I

.field public szLocationUrl:Ljava/lang/String;

.field public szMmsMsgId:Ljava/lang/String;

.field public szMmsTransId:Ljava/lang/String;

.field public wMmsVersion:S

.field public wResultCode:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "MG15"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/mg/MG15;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/mg/MG15;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    sget v0, Lcom/carrieriq/iqagent/client/metrics/mg/MG15;->ID:I

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
    .line 25
    const/4 v0, -0x1

    return v0
.end method
