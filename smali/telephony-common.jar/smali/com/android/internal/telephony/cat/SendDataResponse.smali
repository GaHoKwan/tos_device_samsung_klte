.class Lcom/android/internal/telephony/cat/SendDataResponse;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field emptySpaceInTxBuf:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "emptySpaceInTxBuf"    # I

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 515
    iput p1, p0, Lcom/android/internal/telephony/cat/SendDataResponse;->emptySpaceInTxBuf:I

    .line 516
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 3
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 503
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    or-int/lit16 v0, v1, 0x80

    .line 504
    .local v0, "tag":I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 505
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 506
    iget v1, p0, Lcom/android/internal/telephony/cat/SendDataResponse;->emptySpaceInTxBuf:I

    if-gez v1, :cond_0

    .line 507
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/cat/SendDataResponse;->emptySpaceInTxBuf:I

    .line 509
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/cat/SendDataResponse;->emptySpaceInTxBuf:I

    const/16 v2, 0xfe

    if-le v1, v2, :cond_1

    .line 510
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/cat/SendDataResponse;->emptySpaceInTxBuf:I

    .line 512
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/cat/SendDataResponse;->emptySpaceInTxBuf:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 513
    return-void
.end method
