.class abstract Lcom/android/internal/telephony/cat/ValueParser;
.super Ljava/lang/Object;
.source "ValueParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/ValueParser$CodingException;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    return-void
.end method

.method static retrieveAddress(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 338
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 339
    .local v3, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v1

    .line 340
    .local v1, "length":I
    if-eqz v1, :cond_0

    .line 342
    :try_start_0
    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->SetupCallbcdToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 348
    :goto_0
    return-object v4

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4

    .line 348
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 10
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 301
    if-eqz p0, :cond_2

    .line 302
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 303
    .local v3, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .line 304
    .local v5, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v1

    .line 305
    .local v1, "length":I
    if-eqz v1, :cond_1

    .line 307
    :try_start_0
    invoke-static {v3, v5, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 330
    .end local v1    # "length":I
    .end local v3    # "rawValue":[B
    .end local v5    # "valueIndex":I
    :cond_0
    :goto_0
    return-object v6

    .line 309
    .restart local v1    # "length":I
    .restart local v3    # "rawValue":[B
    .restart local v5    # "valueIndex":I
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v6

    .line 313
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    const-string v7, "ValueParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Alpha Id length="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 322
    .end local v1    # "length":I
    .end local v3    # "rawValue":[B
    .end local v5    # "valueIndex":I
    :cond_2
    const/4 v2, 0x0

    .line 323
    .local v2, "noAlphaUsrCnf":Z
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 325
    .local v4, "resource":Landroid/content/res/Resources;
    const v7, 0x1110067

    :try_start_1
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 330
    :goto_1
    if-nez v2, :cond_0

    const-string v6, "Default Message"

    goto :goto_0

    .line 327
    :catch_1
    move-exception v0

    .line 328
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static retrieveBearerDescription(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/BearerDescription;
    .locals 10
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 930
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 931
    .local v3, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 932
    .local v4, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v2

    .line 934
    .local v2, "length":I
    new-instance v0, Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/BearerDescription;-><init>()V

    .line 936
    .local v0, "bearerDesc":Lcom/android/internal/telephony/cat/BearerDescription;
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "valueIndex":I
    .local v5, "valueIndex":I
    :try_start_0
    aget-byte v7, v3, v4

    iput-byte v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerType:B

    .line 937
    const-string v7, "ValueParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "retrieveBearerDescription: Bearer Type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-byte v9, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerType:B

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    iget-byte v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerType:B

    packed-switch v7, :pswitch_data_0

    .line 982
    :pswitch_0
    const-string v7, "ValueParser"

    const-string v8, "retrieveBearerDescription: Bearer Type not Supported"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    const-string v7, "ValueParser"

    const-string v8, "retrieveBearerDescription: BearerDescription is not among the five"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 994
    .end local v0    # "bearerDesc":Lcom/android/internal/telephony/cat/BearerDescription;
    .end local v5    # "valueIndex":I
    .restart local v4    # "valueIndex":I
    :goto_0
    return-object v0

    .line 940
    .end local v4    # "valueIndex":I
    .restart local v0    # "bearerDesc":Lcom/android/internal/telephony/cat/BearerDescription;
    .restart local v5    # "valueIndex":I
    :pswitch_1
    new-instance v7, Lcom/android/internal/telephony/cat/BearerCSD;

    invoke-direct {v7}, Lcom/android/internal/telephony/cat/BearerCSD;-><init>()V

    iput-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/cat/BearerCSD;

    .line 941
    iget-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/cat/BearerCSD;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "valueIndex":I
    .restart local v4    # "valueIndex":I
    :try_start_1
    aget-byte v8, v3, v5

    iput v8, v7, Lcom/android/internal/telephony/cat/BearerCSD;->dataRate:I

    .line 942
    iget-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/cat/BearerCSD;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    :try_start_2
    aget-byte v8, v3, v4

    iput v8, v7, Lcom/android/internal/telephony/cat/BearerCSD;->bearerService:I

    .line 943
    iget-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/cat/BearerCSD;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "valueIndex":I
    .restart local v4    # "valueIndex":I
    :try_start_3
    aget-byte v8, v3, v5

    iput v8, v7, Lcom/android/internal/telephony/cat/BearerCSD;->connectionElement:I

    .line 944
    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;

    .line 945
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerDefault:Z

    .line 946
    const-string v7, "ValueParser"

    const-string v8, "retrieveBearerDescription: Bearer Type = CSD"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 988
    :catch_0
    move-exception v1

    .line 989
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_1
    const-string v6, "ValueParser"

    const-string v7, "ResultException: retrieveBearerDescription"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v6

    .line 949
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v4    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    :pswitch_2
    :try_start_4
    new-instance v7, Lcom/android/internal/telephony/cat/BearerGPRS;

    invoke-direct {v7}, Lcom/android/internal/telephony/cat/BearerGPRS;-><init>()V

    iput-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;

    .line 950
    iget-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "valueIndex":I
    .restart local v4    # "valueIndex":I
    :try_start_5
    aget-byte v8, v3, v5

    iput v8, v7, Lcom/android/internal/telephony/cat/BearerGPRS;->precedenceClass:I

    .line 951
    iget-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    :try_start_6
    aget-byte v8, v3, v4

    iput v8, v7, Lcom/android/internal/telephony/cat/BearerGPRS;->delayClass:I

    .line 952
    iget-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "valueIndex":I
    .restart local v4    # "valueIndex":I
    :try_start_7
    aget-byte v8, v3, v5

    iput v8, v7, Lcom/android/internal/telephony/cat/BearerGPRS;->reliabilityClass:I

    .line 953
    iget-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    :try_start_8
    aget-byte v8, v3, v4

    iput v8, v7, Lcom/android/internal/telephony/cat/BearerGPRS;->peakThroughputClass:I

    .line 954
    iget-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "valueIndex":I
    .restart local v4    # "valueIndex":I
    :try_start_9
    aget-byte v8, v3, v5

    iput v8, v7, Lcom/android/internal/telephony/cat/BearerGPRS;->meanThroughputClass:I

    .line 955
    iget-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    :try_start_a
    aget-byte v8, v3, v4

    iput v8, v7, Lcom/android/internal/telephony/cat/BearerGPRS;->packetDataProtocolType:I

    .line 956
    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/cat/BearerCSD;

    .line 957
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerDefault:Z

    .line 958
    const-string v7, "ValueParser"

    const-string v8, "retrieveBearerDescription: Bearer Type = GPRS"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 959
    .end local v5    # "valueIndex":I
    .restart local v4    # "valueIndex":I
    goto/16 :goto_0

    .line 961
    .end local v4    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    :pswitch_3
    const/4 v7, 0x3

    iput-byte v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerType:B

    .line 962
    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;

    .line 963
    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/cat/BearerCSD;

    .line 964
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerDefault:Z

    .line 965
    const-string v7, "ValueParser"

    const-string v8, "retrieveBearerDescription: Bearer Type = Default"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 966
    .end local v5    # "valueIndex":I
    .restart local v4    # "valueIndex":I
    goto/16 :goto_0

    .line 968
    .end local v4    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    :pswitch_4
    const/16 v7, 0xb

    iput-byte v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerType:B

    .line 969
    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;

    .line 970
    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/cat/BearerCSD;

    .line 971
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerDefault:Z

    .line 972
    const-string v7, "ValueParser"

    const-string v8, "retrieveBearerDescription: Bearer Type = BEARER_E_UTRAN"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 973
    .end local v5    # "valueIndex":I
    .restart local v4    # "valueIndex":I
    goto/16 :goto_0

    .line 975
    .end local v4    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    :pswitch_5
    const/16 v7, 0x8

    iput-byte v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerType:B

    .line 976
    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;

    .line 977
    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/cat/BearerCSD;

    .line 978
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerDefault:Z

    .line 979
    const-string v7, "ValueParser"

    const-string v8, "retrieveBearerDescription: Bearer Type = BEARER_CDMA"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    move v4, v5

    .line 980
    .end local v5    # "valueIndex":I
    .restart local v4    # "valueIndex":I
    goto/16 :goto_0

    .line 991
    .end local v4    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    :catch_1
    move-exception v1

    move v4, v5

    .line 992
    .end local v5    # "valueIndex":I
    .local v1, "e":Ljava/lang/Exception;
    .restart local v4    # "valueIndex":I
    :goto_2
    const-string v7, "ValueParser"

    const-string v8, "Unknown ResultException in retrieveBearerDescription: "

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 994
    goto/16 :goto_0

    .line 991
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    goto :goto_2

    .line 988
    .end local v4    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    :catch_3
    move-exception v1

    move v4, v5

    .end local v5    # "valueIndex":I
    .restart local v4    # "valueIndex":I
    goto/16 :goto_1

    .line 938
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method static retrieveBufferSize(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I
    .locals 10
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 1008
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 1009
    .local v3, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 1010
    .local v6, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v2

    .line 1011
    .local v2, "length":I
    const-string v7, "ValueParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "retrieveBufferSize: valueIndex , Length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    :try_start_0
    aget-byte v7, v3, v6

    and-int/lit16 v1, v7, 0xff

    .line 1014
    .local v1, "firstByte":I
    add-int/lit8 v7, v6, 0x1

    aget-byte v7, v3, v7

    and-int/lit16 v5, v7, 0xff

    .line 1015
    .local v5, "secondByte":I
    shl-int/lit8 v7, v1, 0x8

    or-int v4, v7, v5

    .line 1016
    .local v4, "resultByte":I
    const-string v7, "ValueParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "retrieveBufferSize: buffer size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1025
    .end local v1    # "firstByte":I
    .end local v4    # "resultByte":I
    .end local v5    # "secondByte":I
    :goto_0
    return v4

    .line 1019
    :catch_0
    move-exception v0

    .line 1020
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "ValueParser"

    const-string v8, "ResultException: retrieveBufferSize"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7

    .line 1022
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 1023
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "ValueParser"

    const-string v8, "Unknown ResultException in retrieveBufferSize: "

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    const/4 v4, -0x1

    goto :goto_0
.end method

.method static retrieveChannelData(Lcom/android/internal/telephony/cat/ComprehensionTlv;)[B
    .locals 10
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 1194
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 1195
    .local v3, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .line 1196
    .local v5, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v2

    .line 1198
    .local v2, "length":I
    const-string v7, "ValueParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "retrieveChannelData : value Index , length "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    :try_start_0
    const-string v7, "ValueParser"

    const-string v8, "retrieveChannelData: beginning Byte array copy"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    new-array v4, v2, [B

    .line 1202
    .local v4, "tempChannelData":[B
    const/4 v1, 0x0

    .local v1, "i":I
    move v6, v5

    .end local v5    # "valueIndex":I
    .local v6, "valueIndex":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1203
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    aget-byte v7, v3, v6

    aput-byte v7, v4, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1202
    add-int/lit8 v1, v1, 0x1

    move v6, v5

    .end local v5    # "valueIndex":I
    .restart local v6    # "valueIndex":I
    goto :goto_0

    .line 1206
    :cond_0
    :try_start_1
    const-string v7, "ValueParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "retrieveChannelData: tempChannelData = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Byte Array Copy Complete"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move v5, v6

    .line 1214
    .end local v1    # "i":I
    .end local v4    # "tempChannelData":[B
    .end local v6    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    :goto_1
    return-object v4

    .line 1208
    :catch_0
    move-exception v0

    .line 1209
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_2
    const-string v7, "ValueParser"

    const-string v8, "ResultException: retrieveChannelData"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7

    .line 1211
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 1212
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    const-string v7, "ValueParser"

    const-string v8, "Unknown ResultException in retrieveChannelData: "

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    const/4 v4, 0x0

    goto :goto_1

    .line 1211
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "valueIndex":I
    .restart local v1    # "i":I
    .restart local v4    # "tempChannelData":[B
    .restart local v6    # "valueIndex":I
    :catch_2
    move-exception v0

    move v5, v6

    .end local v6    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    goto :goto_3

    .line 1208
    .end local v5    # "valueIndex":I
    .restart local v6    # "valueIndex":I
    :catch_3
    move-exception v0

    move v5, v6

    .end local v6    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    goto :goto_2
.end method

.method static retrieveChannelDataLength(Lcom/android/internal/telephony/cat/ComprehensionTlv;)B
    .locals 7
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 1169
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 1170
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 1171
    .local v3, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v1

    .line 1172
    .local v1, "length":I
    const-string v4, "ValueParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "retrieveChannelDataLength: valueIndex , Length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    :try_start_0
    aget-byte v4, v2, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1181
    :goto_0
    return v4

    .line 1175
    :catch_0
    move-exception v0

    .line 1176
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "ValueParser"

    const-string v5, " ResultException: retrieveChannelDataLength"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4

    .line 1178
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 1179
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "ValueParser"

    const-string v5, "Unknown ResultException in retrieveChannelDataLength: "

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static retrieveCommandDetails(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/CommandDetails;
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CommandDetails;-><init>()V

    .line 66
    .local v0, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 67
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 69
    .local v3, "valueIndex":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->isComprehensionRequired()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    .line 70
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    .line 71
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 72
    add-int/lit8 v4, v3, 0x2

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    return-object v0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveDTMFstring(Lcom/android/internal/telephony/cat/ComprehensionTlv;)[B
    .locals 8
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 409
    .local v3, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 410
    .local v4, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v2

    .line 412
    .local v2, "length":I
    if-eqz v2, :cond_1

    .line 413
    add-int/lit8 v6, v2, 0x1

    new-array v0, v6, [B

    .line 414
    .local v0, "dtmfString":[B
    const/4 v6, 0x0

    int-to-byte v7, v2

    aput-byte v7, v0, v6

    .line 415
    const/4 v1, 0x0

    .local v1, "i":I
    move v5, v4

    .end local v4    # "valueIndex":I
    .local v5, "valueIndex":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 416
    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "valueIndex":I
    .restart local v4    # "valueIndex":I
    aget-byte v7, v3, v5

    aput-byte v7, v0, v6

    .line 415
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    .end local v4    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    goto :goto_0

    :cond_0
    move v4, v5

    .line 420
    .end local v0    # "dtmfString":[B
    .end local v1    # "i":I
    .end local v5    # "valueIndex":I
    .restart local v4    # "valueIndex":I
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static retrieveDataDestinationAddress(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/DataDestinationAddress;
    .locals 13
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1069
    new-instance v1, Lcom/android/internal/telephony/cat/DataDestinationAddress;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/DataDestinationAddress;-><init>()V

    .line 1070
    .local v1, "dataDestinationAddress":Lcom/android/internal/telephony/cat/DataDestinationAddress;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 1071
    .local v5, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .line 1072
    .local v7, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .line 1073
    .local v4, "length":I
    const-string v10, "ValueParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "retrieveDataDestinationAddress: valueIndex , Length = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " , "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    if-gtz v4, :cond_0

    .line 1075
    const-string v10, "ValueParser"

    const-string v11, "retrieveDataDestinationAddress: Length is 00. Supply Dynamic IP"

    invoke-static {v10, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v9

    .line 1103
    .end local v1    # "dataDestinationAddress":Lcom/android/internal/telephony/cat/DataDestinationAddress;
    :goto_0
    return-object v1

    .line 1079
    .restart local v1    # "dataDestinationAddress":Lcom/android/internal/telephony/cat/DataDestinationAddress;
    :cond_0
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "valueIndex":I
    .local v8, "valueIndex":I
    :try_start_0
    aget-byte v10, v5, v7

    iput-byte v10, v1, Lcom/android/internal/telephony/cat/DataDestinationAddress;->addressType:B

    .line 1080
    const-string v10, "ValueParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "retrieveDataDestinationAddress: Address Type = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-byte v12, v1, Lcom/android/internal/telephony/cat/DataDestinationAddress;->addressType:B

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " beginning Byte array copy"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    new-array v6, v4, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1083
    .local v6, "tempDataDestAddress":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 1084
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "valueIndex":I
    .restart local v7    # "valueIndex":I
    :try_start_1
    aget-byte v10, v5, v8

    aput-byte v10, v6, v3

    .line 1085
    const-string v10, "ValueParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-byte v12, v6, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1083
    add-int/lit8 v3, v3, 0x1

    move v8, v7

    .end local v7    # "valueIndex":I
    .restart local v8    # "valueIndex":I
    goto :goto_1

    .line 1087
    :cond_1
    :try_start_2
    const-string v10, "ValueParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "retrieveDataDestinationAddress: tempDataDestAddress = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Byte array copy complete"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    invoke-static {v6}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 1090
    .local v0, "add":Ljava/net/InetAddress;
    const-string v10, "ValueParser"

    const-string v11, "retrieveDataDestinationAddress : InetAddress retrieved "

    invoke-static {v10, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v10

    iput-object v10, v1, Lcom/android/internal/telephony/cat/DataDestinationAddress;->address:[B
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v7, v8

    .line 1093
    .end local v8    # "valueIndex":I
    .restart local v7    # "valueIndex":I
    goto/16 :goto_0

    .line 1094
    .end local v0    # "add":Ljava/net/InetAddress;
    .end local v3    # "i":I
    .end local v6    # "tempDataDestAddress":[B
    .end local v7    # "valueIndex":I
    .restart local v8    # "valueIndex":I
    :catch_0
    move-exception v2

    move v7, v8

    .line 1095
    .end local v8    # "valueIndex":I
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v7    # "valueIndex":I
    :goto_2
    const-string v9, "ValueParser"

    const-string v10, " ResultException: retrieveDataDestinationAddress - IndexOutOfBoundsException"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    new-instance v9, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v9

    .line 1097
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v7    # "valueIndex":I
    .restart local v8    # "valueIndex":I
    :catch_1
    move-exception v2

    move v7, v8

    .line 1098
    .end local v8    # "valueIndex":I
    .local v2, "e":Ljava/net/UnknownHostException;
    .restart local v7    # "valueIndex":I
    :goto_3
    const-string v9, "ValueParser"

    const-string v10, " ResultException: retrieveDataDestinationAddress - UnknownHostException"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    new-instance v9, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v9

    .line 1100
    .end local v2    # "e":Ljava/net/UnknownHostException;
    .end local v7    # "valueIndex":I
    .restart local v8    # "valueIndex":I
    :catch_2
    move-exception v2

    move v7, v8

    .line 1101
    .end local v8    # "valueIndex":I
    .local v2, "e":Ljava/lang/Exception;
    .restart local v7    # "valueIndex":I
    :goto_4
    const-string v10, "ValueParser"

    const-string v11, "Unknown ResultException in retrieveDataDestinationAddress: "

    invoke-static {v10, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v9

    .line 1103
    goto/16 :goto_0

    .line 1100
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "i":I
    .restart local v6    # "tempDataDestAddress":[B
    :catch_3
    move-exception v2

    goto :goto_4

    .line 1097
    :catch_4
    move-exception v2

    goto :goto_3

    .line 1094
    :catch_5
    move-exception v2

    goto :goto_2
.end method

.method static retrieveDeviceIdentities(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/DeviceIdentities;
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lcom/android/internal/telephony/cat/DeviceIdentities;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/DeviceIdentities;-><init>()V

    .line 91
    .local v0, "devIds":Lcom/android/internal/telephony/cat/DeviceIdentities;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 92
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 94
    .local v3, "valueIndex":I
    :try_start_0
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cat/DeviceIdentities;->sourceId:I

    .line 95
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cat/DeviceIdentities;->destinationId:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    return-object v0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;
    .locals 7
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v2, 0x0

    .line 112
    .local v2, "timeInterval":I
    sget-object v3, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    .line 114
    .local v3, "timeUnit":Lcom/android/internal/telephony/cat/Duration$TimeUnit;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 115
    .local v1, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 118
    .local v4, "valueIndex":I
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->values()[Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    move-result-object v5

    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xff

    aget-object v3, v5, v6

    .line 119
    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v1, v5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v5, 0xff

    .line 123
    new-instance v5, Lcom/android/internal/telephony/cat/Duration;

    invoke-direct {v5, v2, v3}, Lcom/android/internal/telephony/cat/Duration;-><init>(ILcom/android/internal/telephony/cat/Duration$TimeUnit;)V

    return-object v5

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v5
.end method

.method static retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;
    .locals 7
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 186
    new-instance v1, Lcom/android/internal/telephony/cat/IconId;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/IconId;-><init>()V

    .line 188
    .local v1, "id":Lcom/android/internal/telephony/cat/IconId;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 189
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 191
    .local v3, "valueIndex":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "valueIndex":I
    .local v4, "valueIndex":I
    :try_start_0
    aget-byte v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    .line 192
    aget-byte v5, v2, v4

    and-int/lit16 v5, v5, 0xff

    iput v5, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    return-object v1

    .line 191
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v5
.end method

.method static retrieveItem(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Item;
    .locals 10
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 134
    const/4 v2, 0x0

    .line 136
    .local v2, "item":Lcom/android/internal/telephony/cat/Item;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 137
    .local v4, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .line 138
    .local v7, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v3

    .line 140
    .local v3, "length":I
    if-eqz v3, :cond_0

    .line 141
    add-int/lit8 v6, v3, -0x1

    .line 144
    .local v6, "textLen":I
    :try_start_0
    aget-byte v8, v4, v7

    and-int/lit16 v1, v8, 0xff

    .line 145
    .local v1, "id":I
    add-int/lit8 v8, v7, 0x1

    invoke-static {v4, v8, v6}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, "text":Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/cat/Item;

    .end local v2    # "item":Lcom/android/internal/telephony/cat/Item;
    invoke-direct {v2, v1, v5}, Lcom/android/internal/telephony/cat/Item;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v1    # "id":I
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "textLen":I
    .restart local v2    # "item":Lcom/android/internal/telephony/cat/Item;
    :cond_0
    return-object v2

    .line 148
    .end local v2    # "item":Lcom/android/internal/telephony/cat/Item;
    .restart local v6    # "textLen":I
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v8
.end method

.method static retrieveItemId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 164
    const/4 v1, 0x0

    .line 166
    .local v1, "id":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 167
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 170
    .local v3, "valueIndex":I
    :try_start_0
    aget-byte v4, v2, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v1, v4, 0xff

    .line 175
    return v1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveItemsIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/ItemsIconId;
    .locals 10
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 210
    const-string v8, "ValueParser"

    const-string v9, "retrieveItemsIconId:"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v1, Lcom/android/internal/telephony/cat/ItemsIconId;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/ItemsIconId;-><init>()V

    .line 213
    .local v1, "id":Lcom/android/internal/telephony/cat/ItemsIconId;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 214
    .local v5, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 215
    .local v6, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .line 216
    .local v4, "numOfItems":I
    new-array v8, v4, [I

    iput-object v8, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    .line 220
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "valueIndex":I
    .local v7, "valueIndex":I
    :try_start_0
    aget-byte v8, v5, v6

    and-int/lit16 v8, v8, 0xff

    if-nez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->selfExplanatory:Z

    .line 222
    const/4 v2, 0x0

    .local v2, "index":I
    move v3, v2

    .end local v2    # "index":I
    .local v3, "index":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 223
    iget-object v8, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "valueIndex":I
    .restart local v6    # "valueIndex":I
    :try_start_1
    aget-byte v9, v5, v7

    aput v9, v8, v3
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    move v7, v6

    .end local v6    # "valueIndex":I
    .restart local v7    # "valueIndex":I
    goto :goto_1

    .line 220
    .end local v3    # "index":I
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    move v6, v7

    .line 226
    .end local v7    # "valueIndex":I
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v6    # "valueIndex":I
    :goto_2
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v8

    .line 228
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v6    # "valueIndex":I
    .restart local v3    # "index":I
    .restart local v7    # "valueIndex":I
    :cond_1
    return-object v1

    .line 225
    .end local v3    # "index":I
    .end local v7    # "valueIndex":I
    .restart local v2    # "index":I
    .restart local v6    # "valueIndex":I
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static retrieveLanguage(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 4
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 910
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 911
    .local v1, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 912
    .local v2, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v0

    .line 913
    .local v0, "length":I
    if-eqz v0, :cond_0

    .line 914
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v2, v0}, Ljava/lang/String;-><init>([BII)V

    .line 916
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static retrieveNetworkAccessName(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 14
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 1117
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 1118
    .local v5, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v8

    .line 1119
    .local v8, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v4

    .line 1121
    .local v4, "length":I
    const-string v11, "ValueParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "retrieveNetworkAccessName: valueIndex , Length = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    :try_start_0
    new-array v7, v4, [B

    .line 1124
    .local v7, "tempNetworkAccessName":[B
    const-string v11, "ValueParser"

    const-string v12, "retrieveNetworkAccessName: beginning Byte array copy"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    const/4 v2, 0x0

    .line 1128
    .local v2, "idx":I
    aget-byte v9, v5, v8

    .line 1129
    .local v9, "wordLen":I
    add-int/lit8 v10, v9, 0x1

    .line 1131
    .local v10, "wordLenIdx":I
    const/4 v1, 0x1

    .local v1, "i":I
    move v3, v2

    .end local v2    # "idx":I
    .local v3, "idx":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 1132
    if-ne v1, v10, :cond_0

    .line 1133
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "idx":I
    .restart local v2    # "idx":I
    const/16 v11, 0x2e

    aput-byte v11, v7, v3

    .line 1135
    add-int v11, v8, v1

    aget-byte v9, v5, v11

    .line 1136
    add-int/lit8 v11, v9, 0x1

    add-int/2addr v10, v11

    .line 1131
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "idx":I
    .restart local v3    # "idx":I
    goto :goto_0

    .line 1138
    :cond_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "idx":I
    .restart local v2    # "idx":I
    add-int v11, v8, v1

    aget-byte v11, v5, v11

    aput-byte v11, v7, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 1146
    .end local v1    # "i":I
    .end local v2    # "idx":I
    .end local v7    # "tempNetworkAccessName":[B
    .end local v9    # "wordLen":I
    .end local v10    # "wordLenIdx":I
    :catch_0
    move-exception v0

    .line 1147
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v11, "ValueParser"

    const-string v12, " ResultException: retrieveNetworkAccessName - IndexOutOfBoundsException"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    new-instance v11, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v12, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v11, v12}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v11

    .line 1141
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v1    # "i":I
    .restart local v3    # "idx":I
    .restart local v7    # "tempNetworkAccessName":[B
    .restart local v9    # "wordLen":I
    .restart local v10    # "wordLenIdx":I
    :cond_1
    :try_start_1
    const-string v11, "ValueParser"

    const-string v12, "retrieveNetworkAccessName: array copy complete"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    new-instance v6, Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "UTF-8"

    invoke-direct {v6, v7, v11, v3, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1144
    .local v6, "tempName":Ljava/lang/String;
    const-string v11, "ValueParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "retrieveNetworkAccessName: tempName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1156
    .end local v1    # "i":I
    .end local v3    # "idx":I
    .end local v6    # "tempName":Ljava/lang/String;
    .end local v7    # "tempNetworkAccessName":[B
    .end local v9    # "wordLen":I
    .end local v10    # "wordLenIdx":I
    :goto_2
    return-object v6

    .line 1149
    :catch_1
    move-exception v0

    .line 1150
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v11, "ValueParser"

    const-string v12, " ResultException: retrieveNetworkAccessName - UnsupportedEncodingException"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    new-instance v11, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v12, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v11, v12}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v11

    .line 1152
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v0

    .line 1153
    .local v0, "e":Ljava/lang/Exception;
    const-string v11, "ValueParser"

    const-string v12, "Unknown ResultException in retrieveNetworkAccessName: "

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    const/4 v6, 0x0

    goto :goto_2
.end method

.method static retrieveSMSCaddress(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 8
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 474
    .local v3, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .line 476
    .local v5, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v2

    .line 478
    .local v2, "length":I
    add-int/lit8 v6, v2, 0x1

    new-array v4, v6, [B

    .line 481
    .local v4, "rawValueSmscaddress":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v6, v2, 0x1

    if-ge v1, v6, :cond_0

    .line 482
    add-int/lit8 v6, v5, -0x1

    add-int/2addr v6, v1

    :try_start_0
    aget-byte v6, v3, v6

    aput-byte v6, v4, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v6

    .line 487
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    if-eqz v2, :cond_1

    .line 488
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 490
    :cond_1
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v6
.end method

.method static retrieveSMSTPDU(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;
    .locals 36
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .param p1, "ispacking_req"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v28

    .line 504
    .local v28, "rawValue":[B
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v32

    .line 505
    .local v32, "valueIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v18

    .line 506
    .local v18, "length":I
    const/4 v9, 0x0

    .line 507
    .local v9, "destaddlen":I
    const/16 v27, 0x0

    .line 510
    .local v27, "rawPdu":[B
    add-int/lit8 v33, v32, 0x2

    aget-byte v33, v28, v33

    rem-int/lit8 v33, v33, 0x2

    if-nez v33, :cond_0

    .line 511
    add-int/lit8 v33, v32, 0x2

    aget-byte v33, v28, v33

    div-int/lit8 v9, v33, 0x2

    .line 515
    :goto_0
    add-int/lit8 v33, v9, 0x6

    move/from16 v0, v18

    move/from16 v1, v33

    if-ne v0, v1, :cond_1

    .line 516
    add-int/lit8 v33, v18, 0x1

    move/from16 v0, v33

    new-array v0, v0, [B

    move-object/from16 v27, v0

    .line 522
    :goto_1
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    move/from16 v0, v18

    if-ge v14, v0, :cond_2

    .line 523
    add-int v33, v32, v14

    :try_start_0
    aget-byte v33, v28, v33

    aput-byte v33, v27, v14
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 513
    .end local v14    # "i":I
    :cond_0
    add-int/lit8 v33, v32, 0x2

    aget-byte v33, v28, v33

    add-int/lit8 v33, v33, 0x1

    div-int/lit8 v9, v33, 0x2

    goto :goto_0

    .line 518
    :cond_1
    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v27, v0

    goto :goto_1

    .line 525
    .restart local v14    # "i":I
    :catch_0
    move-exception v11

    .line 526
    .local v11, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v33, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v34, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v33 .. v34}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v33

    .line 530
    .end local v11    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    const/16 v25, 0x0

    .line 531
    .local v25, "packingUserDataIndex":I
    const/16 v26, 0x0

    .line 532
    .local v26, "packingUserDatalen":I
    const/4 v5, 0x0

    .line 533
    .local v5, "adjustedUserDatalen":I
    const/16 v19, 0x0

    .line 534
    .local v19, "lengthtoCheck":I
    const/16 v31, 0x0

    .line 535
    .local v31, "tpvpvalue":I
    const/16 v30, 0x0

    .line 536
    .local v30, "tpvplength":I
    const/4 v10, 0x0

    .line 537
    .local v10, "destaddrlen":I
    const/4 v8, 0x0

    .line 539
    .local v8, "dcs":I
    const-string v33, "ValueParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "rawtpvp:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const/16 v35, 0x0

    aget-byte v35, v27, v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const/16 v33, 0x0

    aget-byte v33, v27, v33

    and-int/lit8 v31, v33, 0x18

    .line 543
    const-string v33, "ValueParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "tpvpvalue:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    if-nez v31, :cond_5

    .line 546
    const/16 v30, 0x0

    .line 555
    :cond_3
    :goto_3
    const/16 v33, 0x2

    aget-byte v33, v27, v33

    rem-int/lit8 v33, v33, 0x2

    if-nez v33, :cond_8

    .line 556
    const/16 v33, 0x2

    aget-byte v33, v27, v33

    div-int/lit8 v10, v33, 0x2

    .line 560
    :goto_4
    add-int/lit8 v33, v10, 0x3

    add-int/lit8 v33, v33, 0x1

    add-int/lit8 v33, v33, 0x1

    add-int v33, v33, v30

    add-int/lit8 v25, v33, 0x1

    .line 562
    add-int/lit8 v33, v30, 0x1

    sub-int v33, v25, v33

    :try_start_1
    aget-byte v8, v27, v33
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 566
    const-string v33, "ValueParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "SEND SMS DCS = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string v33, "gsm.sim.operator.numeric"

    const-string v34, ""

    invoke-static/range {v33 .. v34}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 571
    .local v3, "MCCMNC":Ljava/lang/String;
    const-string v33, "ro.csc.sales_code"

    const-string v34, ""

    invoke-static/range {v33 .. v34}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 573
    .local v4, "SALES_CODE":Ljava/lang/String;
    const/16 v33, 0x1

    move/from16 v0, p1

    move/from16 v1, v33

    if-ne v0, v1, :cond_11

    and-int/lit16 v0, v8, 0xf4

    move/from16 v33, v0

    const/16 v34, 0xf0

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_4

    const-string v33, "XXV"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_4

    const-string v33, "GLB"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_4

    const-string v33, "SMA"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_4

    const-string v33, "XTC"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_4

    const-string v33, "XTE"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_4

    const-string v33, "404"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_4

    const-string v33, "510"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_4

    const-string v33, "520"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_4

    const-string v33, "405"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_4

    const-string v33, "51503"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_4

    const-string v33, "28602"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_4

    const-string v33, "20620"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_11

    .line 577
    :cond_4
    :try_start_2
    aget-byte v33, v27, v25
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    move/from16 v0, v33

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    .line 582
    add-int/lit8 v33, v25, 0x1

    sub-int v19, v18, v33

    .line 584
    const-string v33, "ValueParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "length to be checked:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    move/from16 v0, v19

    move/from16 v1, v26

    if-lt v0, v1, :cond_c

    .line 588
    const-string v33, "ValueParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "TPUDL_packingUserDatalen:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const/16 v29, 0x0

    .line 590
    .local v29, "shorten":I
    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 593
    .local v23, "packinUserData":[B
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_5
    move/from16 v0, v26

    if-ge v15, v0, :cond_9

    .line 594
    add-int/lit8 v33, v25, 0x1

    add-int v33, v33, v15

    :try_start_3
    aget-byte v33, v27, v33

    aput-byte v33, v23, v15
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    .line 593
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 547
    .end local v3    # "MCCMNC":Ljava/lang/String;
    .end local v4    # "SALES_CODE":Ljava/lang/String;
    .end local v15    # "j":I
    .end local v23    # "packinUserData":[B
    .end local v29    # "shorten":I
    :cond_5
    const/16 v33, 0x10

    move/from16 v0, v31

    move/from16 v1, v33

    if-ne v0, v1, :cond_6

    .line 548
    const/16 v30, 0x1

    goto/16 :goto_3

    .line 549
    :cond_6
    const/16 v33, 0x8

    move/from16 v0, v31

    move/from16 v1, v33

    if-ne v0, v1, :cond_7

    .line 550
    const/16 v30, 0x7

    goto/16 :goto_3

    .line 551
    :cond_7
    const/16 v33, 0x18

    move/from16 v0, v31

    move/from16 v1, v33

    if-ne v0, v1, :cond_3

    .line 552
    const/16 v30, 0x7

    goto/16 :goto_3

    .line 558
    :cond_8
    const/16 v33, 0x2

    aget-byte v33, v27, v33

    add-int/lit8 v33, v33, 0x1

    div-int/lit8 v10, v33, 0x2

    goto/16 :goto_4

    .line 563
    :catch_1
    move-exception v11

    .line 564
    .restart local v11    # "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v33, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v34, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v33 .. v34}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v33

    .line 578
    .end local v11    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v3    # "MCCMNC":Ljava/lang/String;
    .restart local v4    # "SALES_CODE":Ljava/lang/String;
    :catch_2
    move-exception v11

    .line 579
    .restart local v11    # "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v33, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v34, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v33 .. v34}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v33

    .line 596
    .end local v11    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v15    # "j":I
    .restart local v23    # "packinUserData":[B
    .restart local v29    # "shorten":I
    :catch_3
    move-exception v11

    .line 597
    .restart local v11    # "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v33, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v34, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v33 .. v34}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v33

    .line 601
    .end local v11    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_9
    const/16 v33, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v33

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v24

    .line 604
    .local v24, "packinUserDataString":Ljava/lang/String;
    const-string v33, "ValueParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "TPUDL_packingUserDatastring:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    :try_start_4
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v33

    const/16 v34, 0xa0

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_a

    .line 608
    const/16 v33, 0x0

    const/16 v34, 0x9e

    move-object/from16 v0, v24

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 609
    .local v13, "fullSizePackinUserDataString":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v33

    move/from16 v0, v33

    add-int/lit16 v0, v0, -0x9e

    move/from16 v29, v0

    .line 610
    aget-byte v33, v27, v25

    sub-int v33, v33, v29

    move/from16 v0, v33

    int-to-byte v0, v0

    move/from16 v33, v0

    aput-byte v33, v27, v25

    .line 611
    move-object/from16 v24, v13

    .line 616
    .end local v13    # "fullSizePackinUserDataString":Ljava/lang/String;
    :cond_a
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v20

    .line 618
    .local v20, "packedUserData":[B
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    .line 620
    .local v21, "packedUserDatalen":I
    const-string v33, "ValueParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "TPUDL_Packed user data len:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_4 .. :try_end_4} :catch_5

    .line 623
    const/16 v16, 0x1

    .local v16, "k":I
    :goto_6
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    .line 624
    add-int v33, v25, v16

    :try_start_5
    aget-byte v34, v20, v16

    aput-byte v34, v27, v33

    .line 623
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 627
    :cond_b
    add-int/lit8 v33, v21, -0x1

    sub-int v33, v26, v33

    sub-int v5, v18, v33

    .line 629
    const-string v33, "ValueParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "TPUDL_Adjusted user data len:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_5 .. :try_end_5} :catch_5

    .line 688
    .end local v29    # "shorten":I
    :goto_7
    const-string v33, "ValueParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Data coding scheme:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    add-int/lit8 v35, v30, 0x1

    sub-int v35, v25, v35

    aget-byte v35, v27, v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const/16 v7, 0xf0

    .line 692
    .local v7, "datacodingscheme":I
    const/4 v6, 0x0

    .line 693
    .local v6, "datacodingfromsim":I
    add-int/lit8 v33, v30, 0x1

    sub-int v33, v25, v33

    aget-byte v6, v27, v33

    .line 694
    and-int/2addr v6, v7

    .line 695
    add-int/lit8 v33, v30, 0x1

    sub-int v33, v25, v33

    int-to-byte v0, v6

    move/from16 v34, v0

    aput-byte v34, v27, v33

    .line 697
    new-array v0, v5, [B

    move-object/from16 v22, v0

    .line 700
    .local v22, "packeddata":[B
    const/16 v17, 0x0

    .local v17, "l":I
    :goto_8
    move/from16 v0, v17

    if-ge v0, v5, :cond_f

    .line 701
    :try_start_6
    aget-byte v33, v27, v17

    aput-byte v33, v22, v17
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_9

    .line 700
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 631
    .end local v6    # "datacodingfromsim":I
    .end local v7    # "datacodingscheme":I
    .end local v17    # "l":I
    .end local v22    # "packeddata":[B
    .restart local v29    # "shorten":I
    :catch_4
    move-exception v11

    .line 632
    .restart local v11    # "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_7
    new-instance v33, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v34, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v33 .. v34}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v33
    :try_end_7
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_7 .. :try_end_7} :catch_5

    .line 634
    .end local v11    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v16    # "k":I
    .end local v20    # "packedUserData":[B
    .end local v21    # "packedUserDatalen":I
    :catch_5
    move-exception v12

    .line 635
    .local v12, "ex":Lcom/android/internal/telephony/EncodeException;
    new-instance v33, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v34, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v33 .. v34}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v33

    .line 641
    .end local v12    # "ex":Lcom/android/internal/telephony/EncodeException;
    .end local v15    # "j":I
    .end local v23    # "packinUserData":[B
    .end local v24    # "packinUserDataString":Ljava/lang/String;
    .end local v29    # "shorten":I
    :cond_c
    add-int/lit8 v26, v19, 0x1

    .line 643
    const-string v33, "ValueParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "packingUserDatalen:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 648
    .restart local v23    # "packinUserData":[B
    const/4 v15, 0x0

    .restart local v15    # "j":I
    :goto_9
    move/from16 v0, v26

    if-ge v15, v0, :cond_d

    .line 649
    add-int v33, v25, v15

    :try_start_8
    aget-byte v33, v27, v33

    aput-byte v33, v23, v15
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_6

    .line 648
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 651
    :catch_6
    move-exception v11

    .line 652
    .restart local v11    # "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v33, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v34, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v33 .. v34}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v33

    .line 657
    .end local v11    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_d
    const/16 v33, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v33

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v24

    .line 660
    .restart local v24    # "packinUserDataString":Ljava/lang/String;
    const-string v33, "ValueParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "packingUserDatastring:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    :try_start_9
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v20

    .line 665
    .restart local v20    # "packedUserData":[B
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    .line 667
    .restart local v21    # "packedUserDatalen":I
    const-string v33, "ValueParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Packed user data len:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_9 .. :try_end_9} :catch_8

    .line 670
    const/16 v16, 0x0

    .restart local v16    # "k":I
    :goto_a
    add-int/lit8 v33, v21, -0x1

    move/from16 v0, v16

    move/from16 v1, v33

    if-ge v0, v1, :cond_e

    .line 671
    add-int v33, v25, v16

    add-int/lit8 v34, v16, 0x1

    :try_start_a
    aget-byte v34, v20, v34

    aput-byte v34, v27, v33

    .line 670
    add-int/lit8 v16, v16, 0x1

    goto :goto_a

    .line 674
    :cond_e
    add-int/lit8 v33, v21, -0x1

    sub-int v33, v26, v33

    sub-int v5, v18, v33

    .line 676
    const-string v33, "ValueParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Adjusted user data len:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_7
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_a .. :try_end_a} :catch_8

    goto/16 :goto_7

    .line 678
    :catch_7
    move-exception v11

    .line 679
    .restart local v11    # "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_b
    new-instance v33, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v34, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v33 .. v34}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v33
    :try_end_b
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_b .. :try_end_b} :catch_8

    .line 681
    .end local v11    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v16    # "k":I
    .end local v20    # "packedUserData":[B
    .end local v21    # "packedUserDatalen":I
    :catch_8
    move-exception v12

    .line 682
    .restart local v12    # "ex":Lcom/android/internal/telephony/EncodeException;
    new-instance v33, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v34, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v33 .. v34}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v33

    .line 703
    .end local v12    # "ex":Lcom/android/internal/telephony/EncodeException;
    .restart local v6    # "datacodingfromsim":I
    .restart local v7    # "datacodingscheme":I
    .restart local v16    # "k":I
    .restart local v17    # "l":I
    .restart local v20    # "packedUserData":[B
    .restart local v21    # "packedUserDatalen":I
    .restart local v22    # "packeddata":[B
    :catch_9
    move-exception v11

    .line 704
    .restart local v11    # "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v33, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v34, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v33 .. v34}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v33

    .line 707
    .end local v11    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_f
    if-eqz v5, :cond_10

    .line 708
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v33

    .line 717
    .end local v6    # "datacodingfromsim":I
    .end local v7    # "datacodingscheme":I
    .end local v15    # "j":I
    .end local v16    # "k":I
    .end local v17    # "l":I
    .end local v20    # "packedUserData":[B
    .end local v21    # "packedUserDatalen":I
    .end local v22    # "packeddata":[B
    .end local v23    # "packinUserData":[B
    .end local v24    # "packinUserDataString":Ljava/lang/String;
    :goto_b
    return-object v33

    .line 710
    .restart local v6    # "datacodingfromsim":I
    .restart local v7    # "datacodingscheme":I
    .restart local v15    # "j":I
    .restart local v16    # "k":I
    .restart local v17    # "l":I
    .restart local v20    # "packedUserData":[B
    .restart local v21    # "packedUserDatalen":I
    .restart local v22    # "packeddata":[B
    .restart local v23    # "packinUserData":[B
    .restart local v24    # "packinUserDataString":Ljava/lang/String;
    :cond_10
    new-instance v33, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v34, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v33 .. v34}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v33

    .line 716
    .end local v6    # "datacodingfromsim":I
    .end local v7    # "datacodingscheme":I
    .end local v15    # "j":I
    .end local v16    # "k":I
    .end local v17    # "l":I
    .end local v20    # "packedUserData":[B
    .end local v21    # "packedUserDatalen":I
    .end local v22    # "packeddata":[B
    .end local v23    # "packinUserData":[B
    .end local v24    # "packinUserDataString":Ljava/lang/String;
    :cond_11
    if-eqz v18, :cond_12

    .line 717
    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v33

    goto :goto_b

    .line 719
    :cond_12
    new-instance v33, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v34, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v33 .. v34}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v33
.end method

.method static retrieveSMSTPDU_CDMA(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;
    .locals 50
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .param p1, "ispacking_req"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 725
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v38

    .line 726
    .local v38, "rawValue":[B
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v45

    .line 727
    .local v45, "valueIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v26

    .line 728
    .local v26, "length":I
    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v36, v0

    .line 731
    .local v36, "rawPdu":[B
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_0
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_0

    .line 732
    add-int v46, v45, v24

    :try_start_0
    aget-byte v46, v38, v46

    aput-byte v46, v36, v24
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 734
    :catch_0
    move-exception v19

    .line 735
    .local v19, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v46, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v47, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v46 .. v47}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v46

    .line 740
    .end local v19    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const/16 v41, 0x0

    .line 741
    .local v41, "teleserparaid":I
    const/16 v17, 0x4

    .line 742
    .local v17, "destaddrparaid":I
    const/16 v9, 0x8

    .line 744
    .local v9, "bearerdataparaid":I
    const/16 v43, 0x0

    .line 745
    .local v43, "teleservicelen":I
    const/16 v16, 0x0

    .line 746
    .local v16, "destaddrlen":I
    const/4 v8, 0x0

    .line 749
    .local v8, "bearerdatalen":I
    invoke-static/range {v36 .. v36}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v37

    .line 750
    .local v37, "rawPduStr":Ljava/lang/String;
    const-string v46, "retrieveSMSTPDU"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "rawPdu : "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    :try_start_1
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v46, 0x64

    move/from16 v0, v46

    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 755
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v18, Ljava/io/DataOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 756
    .local v18, "dos":Ljava/io/DataOutputStream;
    const/16 v46, 0x0

    aget-byte v29, v36, v46

    .line 758
    .local v29, "msgtype":B
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "teleserparaid:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const/16 v48, 0x1

    aget-byte v48, v36, v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const/16 v46, 0x1

    aget-byte v46, v36, v46

    move/from16 v0, v46

    move/from16 v1, v41

    if-ne v0, v1, :cond_1

    .line 761
    const/16 v46, 0x2

    aget-byte v46, v36, v46

    move/from16 v0, v46

    and-int/lit16 v0, v0, 0xff

    move/from16 v43, v0

    .line 762
    const/16 v46, 0x3

    aget-byte v46, v36, v46

    shl-int/lit8 v46, v46, 0x8

    const/16 v47, 0x4

    aget-byte v47, v36, v47

    or-int v42, v46, v47

    .line 763
    .local v42, "teleserviceid":I
    move-object/from16 v0, v18

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 765
    .end local v42    # "teleserviceid":I
    :cond_1
    const/16 v46, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 766
    const/16 v46, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 769
    add-int/lit8 v46, v43, 0x2

    add-int/lit8 v28, v46, 0x1

    .line 770
    .local v28, "lenmsgteleser":I
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "destaddrparaid:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    aget-byte v48, v36, v28

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "lenght to reach destaddrparamid:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    aget-byte v46, v36, v28

    move/from16 v0, v46

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 774
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13}, Ljava/lang/String;-><init>()V

    .line 775
    .local v13, "destAddrStr":Ljava/lang/String;
    add-int/lit8 v46, v28, 0x1

    aget-byte v46, v36, v46

    move/from16 v0, v46

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 776
    move/from16 v0, v16

    new-array v15, v0, [B

    .line 777
    .local v15, "destaddr":[B
    add-int/lit8 v46, v28, 0x1

    add-int/lit8 v46, v46, 0x1

    const/16 v47, 0x0

    array-length v0, v15

    move/from16 v48, v0

    move-object/from16 v0, v36

    move/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v48

    invoke-static {v0, v1, v15, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 778
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 779
    .local v4, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    array-length v0, v15

    move/from16 v46, v0

    move/from16 v0, v46

    int-to-byte v0, v0

    move/from16 v46, v0

    move/from16 v0, v46

    iput v0, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 780
    iget v0, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v46, v0

    move/from16 v0, v46

    new-array v0, v0, [B

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iput-object v0, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 781
    const/16 v46, 0x0

    iget-object v0, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v47, v0

    const/16 v48, 0x0

    array-length v0, v15

    move/from16 v49, v0

    move/from16 v0, v46

    move-object/from16 v1, v47

    move/from16 v2, v48

    move/from16 v3, v49

    invoke-static {v15, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_1 .. :try_end_1} :catch_6

    .line 783
    :try_start_2
    new-instance v25, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v0, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v46, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V
    :try_end_2
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lcom/android/internal/telephony/cat/ValueParser$CodingException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_2 .. :try_end_2} :catch_6

    .local v25, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    move-object v14, v13

    .line 784
    .end local v13    # "destAddrStr":Ljava/lang/String;
    .local v14, "destAddrStr":Ljava/lang/String;
    :goto_1
    :try_start_3
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v46

    if-lez v46, :cond_b

    .line 785
    iget v0, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v32, v0

    .line 786
    .local v32, "paramBytes":I
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "SMS PDU parsing :: paramBytes :: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 788
    .local v5, "addr1":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const/16 v46, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v46

    move/from16 v0, v46

    iput v0, v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 789
    const/16 v46, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v46

    move/from16 v0, v46

    iput v0, v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 790
    const/16 v23, 0x4

    .line 791
    .local v23, "fieldBits":B
    const/4 v10, 0x2

    .line 792
    .local v10, "consumedBits":B
    iget v0, v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v46, v0

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_2

    .line 793
    const/16 v46, 0x3

    move-object/from16 v0, v25

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v46

    move/from16 v0, v46

    iput v0, v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 794
    const/16 v46, 0x4

    move-object/from16 v0, v25

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v46

    move/from16 v0, v46

    iput v0, v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 795
    const/16 v23, 0x8

    .line 796
    const/16 v46, 0x9

    move/from16 v0, v46

    int-to-byte v10, v0

    .line 798
    :cond_2
    const/16 v46, 0x8

    move-object/from16 v0, v25

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v46

    move/from16 v0, v46

    iput v0, v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 799
    add-int/lit8 v46, v10, 0x8

    move/from16 v0, v46

    int-to-byte v10, v0

    .line 800
    mul-int/lit8 v46, v32, 0x8

    sub-int v39, v46, v10

    .line 801
    .local v39, "remainingBits":I
    iget v0, v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v46, v0

    mul-int v11, v46, v23

    .line 802
    .local v11, "dataBits":I
    sub-int v31, v39, v11

    .line 803
    .local v31, "paddingBits":I
    move/from16 v0, v39

    if-ge v0, v11, :cond_3

    .line 804
    new-instance v46, Lcom/android/internal/telephony/cat/ValueParser$CodingException;

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Originating_NUMBER subparam encoding size error (remainingBits "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ", dataBits "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ", paddingBits "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ")"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Lcom/android/internal/telephony/cat/ValueParser$CodingException;-><init>(Ljava/lang/String;)V

    throw v46
    :try_end_3
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/android/internal/telephony/cat/ValueParser$CodingException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_3 .. :try_end_3} :catch_6

    .line 837
    .end local v5    # "addr1":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v10    # "consumedBits":B
    .end local v11    # "dataBits":I
    .end local v23    # "fieldBits":B
    .end local v31    # "paddingBits":I
    .end local v32    # "paramBytes":I
    .end local v39    # "remainingBits":I
    :catch_1
    move-exception v22

    move-object v13, v14

    .line 838
    .end local v14    # "destAddrStr":Ljava/lang/String;
    .end local v25    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .restart local v13    # "destAddrStr":Ljava/lang/String;
    .local v22, "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :goto_2
    :try_start_4
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "destination address decode failed: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    new-instance v46, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v47, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v46 .. v47}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v46
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_4 .. :try_end_4} :catch_6

    .line 886
    .end local v4    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "destAddrStr":Ljava/lang/String;
    .end local v15    # "destaddr":[B
    .end local v18    # "dos":Ljava/io/DataOutputStream;
    .end local v22    # "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    .end local v28    # "lenmsgteleser":I
    .end local v29    # "msgtype":B
    :catch_2
    move-exception v22

    .line 887
    .local v22, "ex":Ljava/io/IOException;
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "creating SubmitPdu failed: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    new-instance v46, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v47, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v46 .. v47}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v46

    .line 808
    .end local v22    # "ex":Ljava/io/IOException;
    .restart local v4    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v5    # "addr1":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "consumedBits":B
    .restart local v11    # "dataBits":I
    .restart local v14    # "destAddrStr":Ljava/lang/String;
    .restart local v15    # "destaddr":[B
    .restart local v18    # "dos":Ljava/io/DataOutputStream;
    .restart local v23    # "fieldBits":B
    .restart local v25    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .restart local v28    # "lenmsgteleser":I
    .restart local v29    # "msgtype":B
    .restart local v31    # "paddingBits":I
    .restart local v32    # "paramBytes":I
    .restart local v39    # "remainingBits":I
    :cond_3
    :try_start_5
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v46

    move-object/from16 v0, v46

    iput-object v0, v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 809
    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 810
    iget-object v0, v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v35, v0

    .line 811
    .local v35, "rawData":[B
    iget v0, v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v30, v0

    .line 812
    .local v30, "numFields":I
    iget v0, v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v46, v0
    :try_end_5
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/android/internal/telephony/cat/ValueParser$CodingException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_5 .. :try_end_5} :catch_6

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_4

    .line 816
    :try_start_6
    new-instance v13, Ljava/lang/String;

    iget-object v0, v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v46, v0

    const/16 v47, 0x0

    iget-object v0, v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    array-length v0, v0

    move/from16 v48, v0

    const-string v49, "US-ASCII"

    move-object/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v48

    move-object/from16 v3, v49

    invoke-direct {v13, v0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/android/internal/telephony/cat/ValueParser$CodingException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_6 .. :try_end_6} :catch_6

    .end local v14    # "destAddrStr":Ljava/lang/String;
    .restart local v13    # "destAddrStr":Ljava/lang/String;
    :goto_3
    move-object v14, v13

    .line 835
    .end local v13    # "destAddrStr":Ljava/lang/String;
    .restart local v14    # "destAddrStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 817
    :catch_3
    move-exception v22

    .line 818
    .local v22, "ex":Ljava/io/UnsupportedEncodingException;
    :try_start_7
    new-instance v46, Lcom/android/internal/telephony/cat/ValueParser$CodingException;

    const-string v47, "invalid SMS address ASCII code"

    invoke-direct/range {v46 .. v47}, Lcom/android/internal/telephony/cat/ValueParser$CodingException;-><init>(Ljava/lang/String;)V

    throw v46
    :try_end_7
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/android/internal/telephony/cat/ValueParser$CodingException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_7 .. :try_end_7} :catch_6

    .line 840
    .end local v5    # "addr1":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v10    # "consumedBits":B
    .end local v11    # "dataBits":I
    .end local v22    # "ex":Ljava/io/UnsupportedEncodingException;
    .end local v23    # "fieldBits":B
    .end local v30    # "numFields":I
    .end local v31    # "paddingBits":I
    .end local v32    # "paramBytes":I
    .end local v35    # "rawData":[B
    .end local v39    # "remainingBits":I
    :catch_4
    move-exception v22

    move-object v13, v14

    .line 841
    .end local v14    # "destAddrStr":Ljava/lang/String;
    .end local v25    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .restart local v13    # "destAddrStr":Ljava/lang/String;
    .local v22, "ex":Lcom/android/internal/telephony/cat/ValueParser$CodingException;
    :goto_4
    :try_start_8
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "destination address decode failed: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    new-instance v46, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v47, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v46 .. v47}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v46
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_8 .. :try_end_8} :catch_6

    .line 889
    .end local v4    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "destAddrStr":Ljava/lang/String;
    .end local v15    # "destaddr":[B
    .end local v18    # "dos":Ljava/io/DataOutputStream;
    .end local v22    # "ex":Lcom/android/internal/telephony/cat/ValueParser$CodingException;
    .end local v28    # "lenmsgteleser":I
    .end local v29    # "msgtype":B
    :catch_5
    move-exception v19

    .line 890
    .restart local v19    # "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v46, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v47, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v46 .. v47}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v46

    .line 823
    .end local v19    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v4    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v5    # "addr1":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "consumedBits":B
    .restart local v11    # "dataBits":I
    .restart local v14    # "destAddrStr":Ljava/lang/String;
    .restart local v15    # "destaddr":[B
    .restart local v18    # "dos":Ljava/io/DataOutputStream;
    .restart local v23    # "fieldBits":B
    .restart local v25    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .restart local v28    # "lenmsgteleser":I
    .restart local v29    # "msgtype":B
    .restart local v30    # "numFields":I
    .restart local v31    # "paddingBits":I
    .restart local v32    # "paramBytes":I
    .restart local v35    # "rawData":[B
    .restart local v39    # "remainingBits":I
    :cond_4
    :try_start_9
    new-instance v40, Ljava/lang/StringBuffer;

    move-object/from16 v0, v40

    move/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 824
    .local v40, "strBuf":Ljava/lang/StringBuffer;
    const/16 v24, 0x0

    :goto_5
    move/from16 v0, v24

    move/from16 v1, v30

    if-ge v0, v1, :cond_a

    .line 825
    div-int/lit8 v46, v24, 0x2

    aget-byte v46, v35, v46

    rem-int/lit8 v47, v24, 0x2

    mul-int/lit8 v47, v47, 0x4

    rsub-int/lit8 v47, v47, 0x4

    ushr-int v46, v46, v47

    and-int/lit8 v44, v46, 0xf

    .line 826
    .local v44, "val":I
    const/16 v46, 0x1

    move/from16 v0, v44

    move/from16 v1, v46

    if-lt v0, v1, :cond_5

    const/16 v46, 0x9

    move/from16 v0, v44

    move/from16 v1, v46

    if-gt v0, v1, :cond_5

    const/16 v46, 0xa

    move/from16 v0, v44

    move/from16 v1, v46

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v40

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 824
    :goto_6
    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    .line 827
    :cond_5
    const/16 v46, 0xa

    move/from16 v0, v44

    move/from16 v1, v46

    if-ne v0, v1, :cond_6

    const/16 v46, 0x30

    move-object/from16 v0, v40

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_9
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lcom/android/internal/telephony/cat/ValueParser$CodingException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_6

    .line 892
    .end local v4    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v5    # "addr1":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "consumedBits":B
    .end local v11    # "dataBits":I
    .end local v14    # "destAddrStr":Ljava/lang/String;
    .end local v15    # "destaddr":[B
    .end local v18    # "dos":Ljava/io/DataOutputStream;
    .end local v23    # "fieldBits":B
    .end local v25    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .end local v28    # "lenmsgteleser":I
    .end local v29    # "msgtype":B
    .end local v30    # "numFields":I
    .end local v31    # "paddingBits":I
    .end local v32    # "paramBytes":I
    .end local v35    # "rawData":[B
    .end local v39    # "remainingBits":I
    .end local v40    # "strBuf":Ljava/lang/StringBuffer;
    .end local v44    # "val":I
    :catch_6
    move-exception v20

    .line 893
    .local v20, "ee":Ljava/lang/NegativeArraySizeException;
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "creating SubmitPdu failed: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    new-instance v46, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v47, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v46 .. v47}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v46

    .line 828
    .end local v20    # "ee":Ljava/lang/NegativeArraySizeException;
    .restart local v4    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v5    # "addr1":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "consumedBits":B
    .restart local v11    # "dataBits":I
    .restart local v14    # "destAddrStr":Ljava/lang/String;
    .restart local v15    # "destaddr":[B
    .restart local v18    # "dos":Ljava/io/DataOutputStream;
    .restart local v23    # "fieldBits":B
    .restart local v25    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .restart local v28    # "lenmsgteleser":I
    .restart local v29    # "msgtype":B
    .restart local v30    # "numFields":I
    .restart local v31    # "paddingBits":I
    .restart local v32    # "paramBytes":I
    .restart local v35    # "rawData":[B
    .restart local v39    # "remainingBits":I
    .restart local v40    # "strBuf":Ljava/lang/StringBuffer;
    .restart local v44    # "val":I
    :cond_6
    const/16 v46, 0xb

    move/from16 v0, v44

    move/from16 v1, v46

    if-ne v0, v1, :cond_7

    const/16 v46, 0x2a

    :try_start_a
    move-object/from16 v0, v40

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 829
    :cond_7
    const/16 v46, 0xc

    move/from16 v0, v44

    move/from16 v1, v46

    if-ne v0, v1, :cond_8

    const/16 v46, 0x23

    move-object/from16 v0, v40

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 830
    :cond_8
    if-nez v44, :cond_9

    const/16 v46, 0x30

    move-object/from16 v0, v40

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 831
    :cond_9
    new-instance v46, Lcom/android/internal/telephony/cat/ValueParser$CodingException;

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "invalid SMS address DTMF code ("

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ")"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Lcom/android/internal/telephony/cat/ValueParser$CodingException;-><init>(Ljava/lang/String;)V

    throw v46

    .line 833
    .end local v44    # "val":I
    :cond_a
    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    .end local v14    # "destAddrStr":Ljava/lang/String;
    .restart local v13    # "destAddrStr":Ljava/lang/String;
    goto/16 :goto_3

    .line 836
    .end local v5    # "addr1":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v10    # "consumedBits":B
    .end local v11    # "dataBits":I
    .end local v13    # "destAddrStr":Ljava/lang/String;
    .end local v23    # "fieldBits":B
    .end local v30    # "numFields":I
    .end local v31    # "paddingBits":I
    .end local v32    # "paramBytes":I
    .end local v35    # "rawData":[B
    .end local v39    # "remainingBits":I
    .end local v40    # "strBuf":Ljava/lang/StringBuffer;
    .restart local v14    # "destAddrStr":Ljava/lang/String;
    :cond_b
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "SMS Destination address: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_a .. :try_end_a} :catch_1
    .catch Lcom/android/internal/telephony/cat/ValueParser$CodingException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_a .. :try_end_a} :catch_6

    .line 844
    :try_start_b
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "SMS Destination address!!!: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    invoke-static {v14}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v12

    .line 846
    .local v12, "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v12, :cond_c

    const/16 v34, 0x0

    .line 885
    .end local v4    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v12    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v14    # "destAddrStr":Ljava/lang/String;
    .end local v15    # "destaddr":[B
    .end local v25    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    :goto_7
    return-object v34

    .line 847
    .restart local v4    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v12    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v14    # "destAddrStr":Ljava/lang/String;
    .restart local v15    # "destaddr":[B
    .restart local v25    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    :cond_c
    new-instance v21, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 848
    .local v21, "envelope":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    move-object/from16 v0, v21

    iput-object v12, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 849
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "SMS Destination destAddr!!!: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    iget v0, v12, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v46, v0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 851
    iget v0, v12, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v46, v0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 852
    iget v0, v12, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    move/from16 v46, v0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 853
    iget v0, v12, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    move/from16 v46, v0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 854
    iget v0, v12, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v46, v0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 855
    iget-object v0, v12, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v46, v0

    const/16 v47, 0x0

    iget-object v0, v12, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    array-length v0, v0

    move/from16 v48, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 856
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "SMS Destination destAddr.digitMode: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    iget v0, v12, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "SMS Destination destAddr.numberMode: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    iget v0, v12, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "SMS Destination destAddr.ton: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    iget v0, v12, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "SMS Destination destAddr.numberPlan: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    iget v0, v12, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "SMS Destination destAddr.origBytes.length: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    iget-object v0, v12, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    array-length v0, v0

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "SMS Destination destAddr.origBytes: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    iget-object v0, v12, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    .end local v4    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v12    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v14    # "destAddrStr":Ljava/lang/String;
    .end local v15    # "destaddr":[B
    .end local v21    # "envelope":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .end local v25    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    :cond_d
    const/16 v46, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 865
    const/16 v46, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 866
    const/16 v46, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 868
    add-int/lit8 v46, v28, 0x1

    add-int/lit8 v46, v46, 0x1

    add-int v27, v46, v16

    .line 870
    .local v27, "lenmsgteledest":I
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "bearerdataparaid:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    aget-byte v48, v36, v27

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "lenght to reach Bearerdataparaid:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    aget-byte v46, v36, v27

    move/from16 v0, v46

    if-ne v0, v9, :cond_e

    .line 873
    add-int/lit8 v46, v27, 0x1

    aget-byte v46, v36, v46

    move/from16 v0, v46

    and-int/lit16 v8, v0, 0xff

    .line 874
    new-array v7, v8, [B

    .line 875
    .local v7, "bearerdata":[B
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "bearerdata length:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    array-length v0, v7

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    add-int/lit8 v46, v27, 0x1

    add-int/lit8 v46, v46, 0x1

    const/16 v47, 0x0

    array-length v0, v7

    move/from16 v48, v0

    move-object/from16 v0, v36

    move/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v48

    invoke-static {v0, v1, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 877
    array-length v0, v7

    move/from16 v46, v0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 878
    const/16 v46, 0x0

    array-length v0, v7

    move/from16 v47, v0

    move-object/from16 v0, v18

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v7, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 880
    .end local v7    # "bearerdata":[B
    :cond_e
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataOutputStream;->close()V

    .line 881
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v33

    .line 882
    .local v33, "pdu":[B
    invoke-static/range {v33 .. v33}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v34

    .line 883
    .local v34, "pdustr":Ljava/lang/String;
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, " Pdu : "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_7

    .line 840
    .end local v27    # "lenmsgteledest":I
    .end local v33    # "pdu":[B
    .end local v34    # "pdustr":Ljava/lang/String;
    .restart local v4    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v13    # "destAddrStr":Ljava/lang/String;
    .restart local v15    # "destaddr":[B
    :catch_7
    move-exception v22

    goto/16 :goto_4

    .line 837
    :catch_8
    move-exception v22

    goto/16 :goto_2
.end method

.method static retrieveSSstring(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 361
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 362
    .local v3, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v1

    .line 363
    .local v1, "length":I
    if-eqz v1, :cond_0

    .line 365
    :try_start_0
    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->SSbcdToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 371
    :goto_0
    return-object v4

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4

    .line 371
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static retrieveTextAttribute(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/util/List;
    .locals 24
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/TextAttribute;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 241
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v18, "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cat/TextAttribute;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v19

    .line 244
    .local v19, "rawValue":[B
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v21

    .line 245
    .local v21, "valueIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v17

    .line 247
    .local v17, "length":I
    if-eqz v17, :cond_5

    .line 249
    div-int/lit8 v16, v17, 0x4

    .line 252
    .local v16, "itemCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    .line 253
    :try_start_0
    aget-byte v22, v19, v21

    move/from16 v0, v22

    and-int/lit16 v2, v0, 0xff

    .line 254
    .local v2, "start":I
    add-int/lit8 v22, v21, 0x1

    aget-byte v22, v19, v22

    move/from16 v0, v22

    and-int/lit16 v3, v0, 0xff

    .line 255
    .local v3, "textLength":I
    add-int/lit8 v22, v21, 0x2

    aget-byte v22, v19, v22

    move/from16 v0, v22

    and-int/lit16 v14, v0, 0xff

    .line 256
    .local v14, "format":I
    add-int/lit8 v22, v21, 0x3

    aget-byte v22, v19, v22

    move/from16 v0, v22

    and-int/lit16 v12, v0, 0xff

    .line 258
    .local v12, "colorValue":I
    and-int/lit8 v11, v14, 0x3

    .line 259
    .local v11, "alignValue":I
    invoke-static {v11}, Lcom/android/internal/telephony/cat/TextAlignment;->fromInt(I)Lcom/android/internal/telephony/cat/TextAlignment;

    move-result-object v4

    .line 261
    .local v4, "align":Lcom/android/internal/telephony/cat/TextAlignment;
    shr-int/lit8 v22, v14, 0x2

    and-int/lit8 v20, v22, 0x3

    .line 262
    .local v20, "sizeValue":I
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cat/FontSize;->fromInt(I)Lcom/android/internal/telephony/cat/FontSize;

    move-result-object v5

    .line 263
    .local v5, "size":Lcom/android/internal/telephony/cat/FontSize;
    if-nez v5, :cond_0

    .line 265
    sget-object v5, Lcom/android/internal/telephony/cat/FontSize;->NORMAL:Lcom/android/internal/telephony/cat/FontSize;

    .line 268
    :cond_0
    and-int/lit8 v22, v14, 0x10

    if-eqz v22, :cond_1

    const/4 v6, 0x1

    .line 269
    .local v6, "bold":Z
    :goto_1
    and-int/lit8 v22, v14, 0x20

    if-eqz v22, :cond_2

    const/4 v7, 0x1

    .line 270
    .local v7, "italic":Z
    :goto_2
    and-int/lit8 v22, v14, 0x40

    if-eqz v22, :cond_3

    const/4 v8, 0x1

    .line 271
    .local v8, "underlined":Z
    :goto_3
    and-int/lit16 v0, v14, 0x80

    move/from16 v22, v0

    if-eqz v22, :cond_4

    const/4 v9, 0x1

    .line 273
    .local v9, "strikeThrough":Z
    :goto_4
    invoke-static {v12}, Lcom/android/internal/telephony/cat/TextColor;->fromInt(I)Lcom/android/internal/telephony/cat/TextColor;

    move-result-object v10

    .line 275
    .local v10, "color":Lcom/android/internal/telephony/cat/TextColor;
    new-instance v1, Lcom/android/internal/telephony/cat/TextAttribute;

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/telephony/cat/TextAttribute;-><init>(IILcom/android/internal/telephony/cat/TextAlignment;Lcom/android/internal/telephony/cat/FontSize;ZZZZLcom/android/internal/telephony/cat/TextColor;)V

    .line 278
    .local v1, "attr":Lcom/android/internal/telephony/cat/TextAttribute;
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v21, v21, 0x4

    goto :goto_0

    .line 268
    .end local v1    # "attr":Lcom/android/internal/telephony/cat/TextAttribute;
    .end local v6    # "bold":Z
    .end local v7    # "italic":Z
    .end local v8    # "underlined":Z
    .end local v9    # "strikeThrough":Z
    .end local v10    # "color":Lcom/android/internal/telephony/cat/TextColor;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 269
    .restart local v6    # "bold":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 270
    .restart local v7    # "italic":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .line 271
    .restart local v8    # "underlined":Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_4

    .line 283
    .end local v2    # "start":I
    .end local v3    # "textLength":I
    .end local v4    # "align":Lcom/android/internal/telephony/cat/TextAlignment;
    .end local v5    # "size":Lcom/android/internal/telephony/cat/FontSize;
    .end local v6    # "bold":Z
    .end local v7    # "italic":Z
    .end local v8    # "underlined":Z
    .end local v11    # "alignValue":I
    .end local v12    # "colorValue":I
    .end local v14    # "format":I
    .end local v20    # "sizeValue":I
    :catch_0
    move-exception v13

    .line 284
    .local v13, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v22, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v23, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v22 .. v23}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v22

    .line 287
    .end local v13    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v15    # "i":I
    .end local v16    # "itemCount":I
    :cond_5
    const/16 v18, 0x0

    .end local v18    # "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cat/TextAttribute;>;"
    :cond_6
    return-object v18
.end method

.method static retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 9
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 434
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 435
    .local v6, "valueIndex":I
    const/4 v0, 0x0

    .line 436
    .local v0, "codingScheme":B
    const/4 v3, 0x0

    .line 437
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v5

    .line 440
    .local v5, "textLen":I
    if-nez v5, :cond_0

    move-object v4, v3

    .line 462
    .end local v3    # "text":Ljava/lang/String;
    .local v4, "text":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 444
    .end local v4    # "text":Ljava/lang/String;
    .restart local v3    # "text":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, -0x1

    .line 448
    :try_start_0
    aget-byte v7, v2, v6

    and-int/lit8 v7, v7, 0xc

    int-to-byte v0, v7

    .line 450
    if-nez v0, :cond_1

    .line 451
    add-int/lit8 v7, v6, 0x1

    mul-int/lit8 v8, v5, 0x8

    div-int/lit8 v8, v8, 0x7

    invoke-static {v2, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v4, v3

    .line 462
    .end local v3    # "text":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    goto :goto_0

    .line 453
    .end local v4    # "text":Ljava/lang/String;
    .restart local v3    # "text":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x4

    if-ne v0, v7, :cond_2

    .line 454
    add-int/lit8 v7, v6, 0x1

    invoke-static {v2, v7, v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 456
    :cond_2
    const/16 v7, 0x8

    if-ne v0, v7, :cond_3

    .line 457
    new-instance v3, Ljava/lang/String;

    .end local v3    # "text":Ljava/lang/String;
    add-int/lit8 v7, v6, 0x1

    const-string v8, "UTF-16"

    invoke-direct {v3, v2, v7, v5, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .restart local v3    # "text":Ljava/lang/String;
    goto :goto_1

    .line 459
    :cond_3
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 463
    .end local v3    # "text":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 464
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7

    .line 465
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 467
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7
.end method

.method static retrieveTransportLevel(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/TransportLevel;
    .locals 10
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 1038
    new-instance v5, Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-direct {v5}, Lcom/android/internal/telephony/cat/TransportLevel;-><init>()V

    .line 1039
    .local v5, "transportLevel":Lcom/android/internal/telephony/cat/TransportLevel;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 1040
    .local v3, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 1041
    .local v6, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v2

    .line 1042
    .local v2, "length":I
    const-string v7, "ValueParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "retrieveTransportLevel: valueIndex , Length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    :try_start_0
    aget-byte v7, v3, v6

    iput-byte v7, v5, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    .line 1045
    add-int/lit8 v7, v6, 0x1

    aget-byte v7, v3, v7

    and-int/lit16 v1, v7, 0xff

    .line 1046
    .local v1, "firstByte":I
    add-int/lit8 v7, v6, 0x2

    aget-byte v7, v3, v7

    and-int/lit16 v4, v7, 0xff

    .line 1047
    .local v4, "secondByte":I
    shl-int/lit8 v7, v1, 0x8

    or-int/2addr v7, v4

    iput v7, v5, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    .line 1048
    const-string v7, "ValueParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "retrieveTransportLevel: transportProtocol , portNumber = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-byte v9, v5, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1056
    .end local v1    # "firstByte":I
    .end local v4    # "secondByte":I
    .end local v5    # "transportLevel":Lcom/android/internal/telephony/cat/TransportLevel;
    :goto_0
    return-object v5

    .line 1050
    .restart local v5    # "transportLevel":Lcom/android/internal/telephony/cat/TransportLevel;
    :catch_0
    move-exception v0

    .line 1051
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "ValueParser"

    const-string v8, "ResultException: retrieveTransportLevel"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7

    .line 1053
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 1054
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "ValueParser"

    const-string v8, "Unknown ResultException in retrieveTransportLevel: "

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    const/4 v5, 0x0

    goto :goto_0
.end method

.method static retrieveUSSDstring(Lcom/android/internal/telephony/cat/ComprehensionTlv;)[B
    .locals 9
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 385
    .local v4, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 386
    .local v6, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v3

    .line 387
    .local v3, "length":I
    add-int v8, v6, v3

    add-int/lit8 v0, v8, -0x1

    .line 388
    .local v0, "endOfUssdString":I
    if-eqz v3, :cond_1

    .line 389
    new-array v5, v3, [B

    .line 390
    .local v5, "ussdString":[B
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    move v7, v6

    .end local v6    # "valueIndex":I
    .local v7, "valueIndex":I
    :goto_0
    if-gt v7, v0, :cond_0

    .line 391
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "valueIndex":I
    .restart local v6    # "valueIndex":I
    aget-byte v8, v4, v7

    aput-byte v8, v5, v2

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    move v7, v6

    .end local v6    # "valueIndex":I
    .restart local v7    # "valueIndex":I
    goto :goto_0

    :cond_0
    move v6, v7

    .line 395
    .end local v2    # "i":I
    .end local v5    # "ussdString":[B
    .end local v7    # "valueIndex":I
    .restart local v6    # "valueIndex":I
    :goto_1
    return-object v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method
