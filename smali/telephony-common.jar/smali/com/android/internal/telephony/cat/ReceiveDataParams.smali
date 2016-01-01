.class Lcom/android/internal/telephony/cat/ReceiveDataParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mChannelDataLength:B

.field mChannelId:I

.field mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;IBLcom/android/internal/telephony/cat/TextMessage;)V
    .locals 0
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "channelId"    # I
    .param p3, "channelDataLength"    # B
    .param p4, "textMessage"    # Lcom/android/internal/telephony/cat/TextMessage;

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 431
    iput p2, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelId:I

    .line 432
    iput-byte p3, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelDataLength:B

    .line 433
    iput-object p4, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    .line 434
    return-void
.end method
