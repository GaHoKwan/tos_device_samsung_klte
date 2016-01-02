.class public Lcom/carrieriq/iqagent/client/metrics/ui/UI31;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "UI31.java"


# static fields
.field public static final EXIT_APP_INIT_ABNORMAL:B = 0x1t

.field public static final EXIT_NORMAL:B = 0x0t

.field public static final EXIT_SYS_INIT_ABNORMAL:B = 0x2t

.field public static final EXIT_UNKNOWN:B = 0x3t

.field public static final ID:I


# instance fields
.field public dwRunAppID:I

.field public ucExitType:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "UI31"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/ui/UI31;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI31;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI31;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 21
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
    .line 24
    const/4 v0, -0x1

    return v0
.end method
