.class Lcom/android/internal/telephony/cat/CloseChannelParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mChannelId:I

.field mCloseChannelMode:Lcom/android/internal/telephony/cat/CloseChannelMode;

.field mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;ILcom/android/internal/telephony/cat/CloseChannelMode;Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 0
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "channelId"    # I
    .param p3, "closeChannelMode"    # Lcom/android/internal/telephony/cat/CloseChannelMode;
    .param p4, "textMessage"    # Lcom/android/internal/telephony/cat/TextMessage;

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 418
    iput p2, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mChannelId:I

    .line 419
    iput-object p3, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mCloseChannelMode:Lcom/android/internal/telephony/cat/CloseChannelMode;

    .line 420
    iput-object p4, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    .line 421
    return-void
.end method
