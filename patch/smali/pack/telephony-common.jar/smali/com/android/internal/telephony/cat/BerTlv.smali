.class Lcom/android/internal/telephony/cat/BerTlv;
.super Ljava/lang/Object;
.source "BerTlv.java"


# static fields
.field public static final BER_EVENT_DOWNLOAD_TAG:I = 0xd6

.field public static final BER_MENU_SELECTION_TAG:I = 0xd3

.field public static final BER_PROACTIVE_COMMAND_TAG:I = 0xd0

.field public static final BER_SMS_PP_DATA_DOWNLOAD_TAG:I = 0xd1

.field public static final BER_UNKNOWN_TAG:I


# instance fields
.field private mCompTlvs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;"
        }
    .end annotation
.end field

.field private mLengthValid:Z

.field private mTag:I


# direct methods
.method private constructor <init>(ILjava/util/List;Z)V
    .locals 1
    .param p1, "tag"    # I
    .param p3, "lengthValid"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mTag:I

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mCompTlvs:Ljava/util/List;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mLengthValid:Z

    .line 42
    iput p1, p0, Lcom/android/internal/telephony/cat/BerTlv;->mTag:I

    .line 43
    iput-object p2, p0, Lcom/android/internal/telephony/cat/BerTlv;->mCompTlvs:Ljava/util/List;

    .line 44
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/BerTlv;->mLengthValid:Z

    .line 45
    return-void
.end method

.method public static decode([B)Lcom/android/internal/telephony/cat/BerTlv;
    .locals 18
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v2, 0x0

    .line 83
    .local v2, "curIndex":I
    move-object/from16 v0, p0

    array-length v5, v0

    .line 84
    .local v5, "endIndex":I
    const/4 v10, 0x0

    .line 85
    .local v10, "length":I
    const/4 v7, 0x1

    .line 89
    .local v7, "isLengthValid":Z
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "curIndex":I
    .local v3, "curIndex":I
    :try_start_0
    aget-byte v14, p0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_0 .. :try_end_0} :catch_2

    and-int/lit16 v11, v14, 0xff

    .line 90
    .local v11, "tag":I
    const/16 v14, 0xd0

    if-ne v11, v14, :cond_3

    .line 92
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "curIndex":I
    .restart local v2    # "curIndex":I
    :try_start_1
    aget-byte v14, p0, v3
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_1 .. :try_end_1} :catch_3

    and-int/lit16 v12, v14, 0xff

    .line 93
    .local v12, "temp":I
    const/16 v14, 0x80

    if-ge v12, v14, :cond_0

    .line 94
    move v10, v12

    .line 127
    .end local v12    # "temp":I
    :goto_0
    sub-int v14, v5, v2

    if-ge v14, v10, :cond_4

    .line 128
    new-instance v14, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v15, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Command had extra data endIndex="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " curIndex="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " length="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v14

    .line 95
    .restart local v12    # "temp":I
    :cond_0
    const/16 v14, 0x81

    if-ne v12, v14, :cond_2

    .line 96
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "curIndex":I
    .restart local v3    # "curIndex":I
    :try_start_2
    aget-byte v14, p0, v2

    and-int/lit16 v12, v14, 0xff

    .line 97
    const/16 v14, 0x80

    if-ge v12, v14, :cond_1

    .line 98
    new-instance v14, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v15, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "length < 0x80 length="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " curIndex="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " endIndex="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v14
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_2 .. :try_end_2} :catch_2

    .line 118
    .end local v11    # "tag":I
    .end local v12    # "temp":I
    :catch_0
    move-exception v4

    move v2, v3

    .line 119
    .end local v3    # "curIndex":I
    .restart local v2    # "curIndex":I
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_1
    new-instance v14, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v15, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "IndexOutOfBoundsException  curIndex="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " endIndex="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v14

    .line 104
    .end local v2    # "curIndex":I
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v3    # "curIndex":I
    .restart local v11    # "tag":I
    .restart local v12    # "temp":I
    :cond_1
    move v10, v12

    move v2, v3

    .end local v3    # "curIndex":I
    .restart local v2    # "curIndex":I
    goto/16 :goto_0

    .line 106
    :cond_2
    :try_start_3
    new-instance v14, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v15, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Expected first byte to be length or a length tag and < 0x81 byte= "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " curIndex="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " endIndex="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v14
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_3 .. :try_end_3} :catch_3

    .line 118
    .end local v12    # "temp":I
    :catch_1
    move-exception v4

    goto :goto_1

    .line 113
    .end local v2    # "curIndex":I
    .restart local v3    # "curIndex":I
    :cond_3
    :try_start_4
    sget-object v14, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v14}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v14

    and-int/lit16 v15, v11, -0x81

    if-ne v14, v15, :cond_9

    .line 114
    const/4 v11, 0x0

    .line 115
    const/4 v2, 0x0

    .end local v3    # "curIndex":I
    .restart local v2    # "curIndex":I
    goto/16 :goto_0

    .line 122
    .end local v2    # "curIndex":I
    .end local v11    # "tag":I
    .restart local v3    # "curIndex":I
    :catch_2
    move-exception v4

    move v2, v3

    .line 123
    .end local v3    # "curIndex":I
    .restart local v2    # "curIndex":I
    .local v4, "e":Lcom/android/internal/telephony/cat/ResultException;
    :goto_2
    new-instance v14, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v15, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultException;->explanation()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v14

    .line 133
    .end local v4    # "e":Lcom/android/internal/telephony/cat/ResultException;
    .restart local v11    # "tag":I
    :cond_4
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->decodeMany([BI)Ljava/util/List;

    move-result-object v1

    .line 136
    .local v1, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/16 v14, 0xd0

    if-ne v11, v14, :cond_8

    .line 137
    const/4 v13, 0x0

    .line 138
    .local v13, "totalLength":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 139
    .local v8, "item":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v9

    .line 140
    .local v9, "itemLength":I
    const/16 v14, 0x80

    if-lt v9, v14, :cond_5

    const/16 v14, 0xff

    if-gt v9, v14, :cond_5

    .line 141
    add-int/lit8 v14, v9, 0x3

    add-int/2addr v13, v14

    goto :goto_3

    .line 142
    :cond_5
    if-ltz v9, :cond_6

    const/16 v14, 0x80

    if-ge v9, v14, :cond_6

    .line 143
    add-int/lit8 v14, v9, 0x2

    add-int/2addr v13, v14

    goto :goto_3

    .line 145
    :cond_6
    const/4 v7, 0x0

    .line 157
    .end local v8    # "item":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .end local v9    # "itemLength":I
    :cond_7
    if-eq v10, v13, :cond_8

    .line 158
    const/4 v7, 0x0

    .line 162
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v13    # "totalLength":I
    :cond_8
    new-instance v14, Lcom/android/internal/telephony/cat/BerTlv;

    invoke-direct {v14, v11, v1, v7}, Lcom/android/internal/telephony/cat/BerTlv;-><init>(ILjava/util/List;Z)V

    return-object v14

    .line 122
    .end local v1    # "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :catch_3
    move-exception v4

    goto :goto_2

    .end local v2    # "curIndex":I
    .restart local v3    # "curIndex":I
    :cond_9
    move v2, v3

    .end local v3    # "curIndex":I
    .restart local v2    # "curIndex":I
    goto/16 :goto_0
.end method


# virtual methods
.method public getComprehensionTlvs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mCompTlvs:Ljava/util/List;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mTag:I

    return v0
.end method

.method public isLengthValid()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mLengthValid:Z

    return v0
.end method
