.class Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;
.super Ljava/lang/Object;
.source "GsmInboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GsmSmsDuplicateFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;
    }
.end annotation


# instance fields
.field private final FILTER_SIZE:I

.field mHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V
    .locals 1

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->this$0:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->FILTER_SIZE:I

    .line 506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    .line 507
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;Lcom/android/internal/telephony/SmsMessageBase;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;
    .param p1, "x1"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->getSmsFingerprint(Lcom/android/internal/telephony/SmsMessageBase;)[B

    move-result-object v0

    return-object v0
.end method

.method private getSmsFingerprint(Lcom/android/internal/telephony/SmsMessageBase;)[B
    .locals 6
    .param p1, "msg"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/4 v5, 0x0

    .line 525
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 527
    .local v1, "output":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v2

    .line 528
    .local v2, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    if-eqz v2, :cond_0

    .line 529
    invoke-static {v2}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v3

    if-eqz v3, :cond_0

    .line 530
    invoke-static {v2}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v0

    .line 531
    .local v0, "hdr":[B
    array-length v3, v0

    invoke-virtual {v1, v0, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 535
    .end local v0    # "hdr":[B
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 537
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public addMessage(Lcom/android/internal/telephony/SmsMessageBase;)V
    .locals 2
    .param p1, "msg"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 511
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;-><init>(Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;Lcom/android/internal/telephony/SmsMessageBase;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    return-void
.end method

.method public isDuplicated(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 13
    .param p1, "src"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 541
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v5

    .line 551
    .local v5, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_8

    .line 552
    const/4 v0, 0x0

    .local v0, "addrMatched":Z
    const/4 v1, 0x0

    .local v1, "bodyMatched":Z
    const/4 v6, 0x0

    .line 553
    .local v6, "timeMatched":Z
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;

    .line 554
    .local v4, "rec":Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;
    iget-object v3, v4, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;->mSms:Lcom/android/internal/telephony/SmsMessageBase;

    .line 556
    .local v3, "msg":Lcom/android/internal/telephony/SmsMessageBase;
    invoke-virtual {v3}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 557
    invoke-virtual {v3}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 562
    :goto_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v9

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-nez v9, :cond_3

    move v6, v7

    .line 565
    :goto_2
    if-eqz v5, :cond_4

    iget-object v9, v5, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-nez v9, :cond_0

    iget-object v9, v5, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-eqz v9, :cond_4

    .line 566
    :cond_0
    iget-object v9, v4, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;->mFingerprint:[B

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->getSmsFingerprint(Lcom/android/internal/telephony/SmsMessageBase;)[B

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 575
    :goto_3
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    if-eqz v6, :cond_7

    .line 585
    .end local v0    # "addrMatched":Z
    .end local v1    # "bodyMatched":Z
    .end local v3    # "msg":Lcom/android/internal/telephony/SmsMessageBase;
    .end local v4    # "rec":Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;
    .end local v6    # "timeMatched":Z
    :goto_4
    return v7

    .line 559
    .restart local v0    # "addrMatched":Z
    .restart local v1    # "bodyMatched":Z
    .restart local v3    # "msg":Lcom/android/internal/telephony/SmsMessageBase;
    .restart local v4    # "rec":Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;
    .restart local v6    # "timeMatched":Z
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    move v0, v7

    :goto_5
    goto :goto_1

    :cond_2
    move v0, v8

    goto :goto_5

    :cond_3
    move v6, v8

    .line 562
    goto :goto_2

    .line 568
    :cond_4
    invoke-virtual {v3}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 569
    invoke-virtual {v3}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3

    .line 571
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_6

    move v1, v7

    :goto_6
    goto :goto_3

    :cond_6
    move v1, v8

    goto :goto_6

    .line 551
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "addrMatched":Z
    .end local v1    # "bodyMatched":Z
    .end local v3    # "msg":Lcom/android/internal/telephony/SmsMessageBase;
    .end local v4    # "rec":Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;
    .end local v6    # "timeMatched":Z
    :cond_8
    move v7, v8

    .line 585
    goto :goto_4
.end method
