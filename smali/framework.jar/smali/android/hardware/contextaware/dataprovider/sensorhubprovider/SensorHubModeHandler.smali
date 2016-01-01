.class public abstract Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;
.source "SensorHubModeHandler.java"

# interfaces
.implements Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;-><init>()V

    return-void
.end method

.method private isDuplicatedMode(I)Z
    .locals 9
    .param p1, "mode"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 76
    const/4 v1, 0x0

    .line 78
    .local v1, "duplicated":I
    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->values()[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    move-result-object v0

    .local v0, "arr$":[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 79
    .local v2, "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    sget-object v5, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->BATCH_MODE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    iget-byte v5, v5, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    and-int/2addr v5, p1

    sget-object v8, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->BATCH_MODE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    iget-byte v8, v8, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-ne v5, v8, :cond_0

    .line 78
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    :cond_0
    iget-byte v5, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    and-int/2addr v5, p1

    iget-byte v8, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-ne v5, v8, :cond_1

    move v5, v6

    :goto_2
    add-int/2addr v1, v5

    goto :goto_1

    :cond_1
    move v5, v7

    goto :goto_2

    .line 85
    .end local v2    # "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    :cond_2
    if-le v1, v6, :cond_3

    :goto_3
    return v6

    :cond_3
    move v6, v7

    goto :goto_3
.end method

.method private parse([BILjava/lang/String;)I
    .locals 4
    .param p1, "packet"    # [B
    .param p2, "next"    # I
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 143
    move v1, p2

    .line 145
    .local v1, "tmpNext":I
    invoke-super {p0, p3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->checkParserMap(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v2

    .line 149
    :cond_1
    invoke-super {p0, p3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->getParser(Ljava/lang/String;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v0

    .line 150
    .local v0, "parser":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    if-eqz v0, :cond_0

    .line 154
    invoke-interface {v0, p1, p2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v1

    move v2, v1

    .line 156
    goto :goto_0
.end method

.method private parseDuplicatedMode(I[BI)I
    .locals 10
    .param p1, "mode"    # I
    .param p2, "packet"    # [B
    .param p3, "next"    # I

    .prologue
    const/4 v7, -0x1

    .line 101
    move v6, p3

    .line 102
    .local v6, "tmpNext":I
    move v5, p3

    .line 103
    .local v5, "repeateNext":I
    const/4 v3, 0x0

    .line 105
    .local v3, "key":Ljava/lang/String;
    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->values()[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    move-result-object v0

    .local v0, "arr$":[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v1, v0, v2

    .line 106
    .local v1, "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    sget-object v8, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->BATCH_MODE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    iget-byte v8, v8, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    and-int/2addr v8, p1

    sget-object v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->BATCH_MODE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    iget-byte v9, v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-ne v8, v9, :cond_1

    .line 105
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    :cond_1
    iget-byte v8, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    and-int/2addr v8, p1

    iget-byte v9, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-ne v8, v9, :cond_0

    .line 110
    iget-byte v8, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    invoke-virtual {p0, v8}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->getParserKey(I)Ljava/lang/String;

    move-result-object v3

    .line 111
    if-nez v3, :cond_3

    .line 112
    sget-object v8, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_NOT_REGISTERED_SERVICE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v8}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v8

    invoke-static {v8}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v6, v7

    .line 128
    .end local v1    # "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    .end local v6    # "tmpNext":I
    :cond_2
    :goto_2
    return v6

    .line 117
    .restart local v1    # "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    .restart local v6    # "tmpNext":I
    :cond_3
    invoke-direct {p0, p2, v5, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->parse([BILjava/lang/String;)I

    move-result v6

    goto :goto_1

    .line 121
    .end local v1    # "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    :cond_4
    if-ne v6, v5, :cond_2

    .line 122
    sget-object v8, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_NOT_REGISTERED_SERVICE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v8}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v8

    invoke-static {v8}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v6, v7

    .line 125
    goto :goto_2
.end method


# virtual methods
.method protected final getParserKey(I)Ljava/lang/String;
    .locals 6
    .param p1, "type"    # I

    .prologue
    .line 167
    const/4 v4, 0x0

    .line 169
    .local v4, "parserKey":Ljava/lang/String;
    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->values()[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    move-result-object v0

    .local v0, "arr$":[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 170
    .local v2, "j":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    iget-byte v5, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-eq p1, v5, :cond_1

    .line 169
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-super {p0, v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->checkParserMap(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 177
    invoke-virtual {v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->toString()Ljava/lang/String;

    move-result-object v4

    .line 181
    .end local v2    # "j":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    :cond_2
    return-object v4
.end method

.method public final parse([BI)I
    .locals 11
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    const/4 v8, -0x1

    .line 35
    move v6, p2

    .line 37
    .local v6, "tmpNext":I
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->checkParserMap()Z

    move-result v9

    if-nez v9, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v8

    .line 41
    :cond_1
    array-length v9, p1

    sub-int/2addr v9, v6

    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_0

    .line 45
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "tmpNext":I
    .local v7, "tmpNext":I
    aget-byte v5, p1, v6

    .line 47
    .local v5, "mode":I
    invoke-direct {p0, v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->isDuplicatedMode(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 48
    invoke-direct {p0, v5, p1, v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->parseDuplicatedMode(I[BI)I

    move-result v8

    move v6, v7

    .end local v7    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    goto :goto_0

    .line 51
    .end local v6    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    :cond_2
    const/4 v3, 0x0

    .line 52
    .local v3, "key":Ljava/lang/String;
    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->values()[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    move-result-object v0

    .local v0, "arr$":[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v1, v0, v2

    .line 53
    .local v1, "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    iget-byte v9, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    and-int/2addr v9, v5

    iget-byte v10, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-ne v9, v10, :cond_4

    .line 54
    invoke-virtual {p0, v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->getParserKey(I)Ljava/lang/String;

    move-result-object v3

    .line 58
    .end local v1    # "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    :cond_3
    if-nez v3, :cond_5

    .line 59
    sget-object v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_NOT_REGISTERED_SERVICE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v9}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v9

    invoke-static {v9}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v6, v7

    .line 62
    .end local v7    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    goto :goto_0

    .line 52
    .end local v6    # "tmpNext":I
    .restart local v1    # "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    .restart local v7    # "tmpNext":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 65
    .end local v1    # "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    :cond_5
    invoke-direct {p0, p1, v7, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->parse([BILjava/lang/String;)I

    move-result v8

    move v6, v7

    .end local v7    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    goto :goto_0
.end method
