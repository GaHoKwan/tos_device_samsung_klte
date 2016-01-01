.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol;
.source "SensorHubParserProvider.java"

# interfaces
.implements Landroid/hardware/contextaware/manager/IApPowerObserver;


# static fields
.field private static final PACKET_MAX_SIZE:I = 0xbb8

.field private static volatile instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;


# instance fields
.field private mApStatus:I

.field private mExtLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

.field private mLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

.field private mRequestLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

.field private final mSensorHubListener:Landroid/hardware/sensorhub/SensorHubEventListener;

.field private mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol;-><init>()V

    .line 73
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;-><init>(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubListener:Landroid/hardware/sensorhub/SensorHubEventListener;

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    .prologue
    .line 32
    iget v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mApStatus:I

    return v0
.end method

.method static synthetic access$100(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    .prologue
    .line 32
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;[B)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;
    .param p1, "x1"    # [B

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parse([B)I

    move-result v0

    return v0
.end method

.method private checkInstruction(B)Z
    .locals 5
    .param p1, "inst"    # B

    .prologue
    .line 349
    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->values()[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    move-result-object v0

    .local v0, "arr$":[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 350
    .local v1, "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;
    iget-byte v4, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->value:B

    if-ne v4, p1, :cond_0

    .line 351
    const/4 v4, 0x1

    .line 355
    .end local v1    # "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;
    :goto_1
    return v4

    .line 349
    .restart local v1    # "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 355
    .end local v1    # "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private checkLibType(B)Z
    .locals 5
    .param p1, "type"    # B

    .prologue
    .line 366
    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->values()[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    move-result-object v0

    .local v0, "arr$":[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 367
    .local v1, "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;
    iget-byte v4, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    if-ne v4, p1, :cond_0

    .line 368
    const/4 v4, 0x1

    .line 372
    .end local v1    # "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;
    :goto_1
    return v4

    .line 366
    .restart local v1    # "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 372
    .end local v1    # "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private checkPacketSize([B)I
    .locals 2
    .param p1, "packet"    # [B

    .prologue
    .line 225
    array-length v0, p1

    if-gtz v0, :cond_0

    .line 226
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LENGTH_ZERO:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    .line 230
    :goto_0
    return v0

    .line 227
    :cond_0
    array-length v0, p1

    const/16 v1, 0xbb8

    if-le v0, v1, :cond_1

    .line 228
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LENGTH_OVERFLOW:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    goto :goto_0

    .line 230
    :cond_1
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    goto :goto_0
.end method

.method public static getInstance()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;
    .locals 2

    .prologue
    .line 62
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    if-nez v0, :cond_1

    .line 63
    const-class v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    monitor-enter v1

    .line 64
    :try_start_0
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    invoke-direct {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    .line 67
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private parse([B)I
    .locals 8
    .param p1, "dataPacket"    # [B

    .prologue
    .line 163
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v3, v6

    check-cast v3, [B

    .line 164
    .local v3, "packet":[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buffer size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 166
    invoke-direct {p0, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->checkPacketSize([B)I

    move-result v0

    .line 167
    .local v0, "checkResult":I
    sget-object v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v6

    if-eq v0, v6, :cond_0

    .line 200
    .end local v0    # "checkResult":I
    :goto_0
    return v0

    .line 171
    .restart local v0    # "checkResult":I
    :cond_0
    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->byteArrToString([B)Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 173
    :cond_1
    const-string v6, "Packet is null"

    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 178
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :cond_2
    array-length v6, v3

    if-ge v1, v6, :cond_7

    .line 179
    array-length v6, v3

    sub-int/2addr v6, v1

    add-int/lit8 v6, v6, -0x2

    if-gez v6, :cond_4

    .line 180
    sget-object v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_HEADER_LENGTH:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    goto :goto_0

    .line 175
    .end local v1    # "i":I
    :cond_3
    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 183
    .restart local v1    # "i":I
    :cond_4
    aget-byte v6, v3, v1

    invoke-direct {p0, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->checkInstruction(B)Z

    move-result v6

    if-nez v6, :cond_5

    .line 184
    sget-object v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_INSTRUCTION_FIELD_PARSING:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    goto :goto_0

    .line 187
    :cond_5
    aget-byte v2, v3, v1

    .line 189
    .local v2, "inst":B
    add-int/lit8 v1, v1, 0x1

    aget-byte v6, v3, v1

    invoke-direct {p0, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->checkLibType(B)Z

    move-result v6

    if-nez v6, :cond_6

    .line 190
    sget-object v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_TYPE_FIELD_PARSING:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    goto :goto_0

    .line 192
    :cond_6
    aget-byte v5, v3, v1

    .line 194
    .local v5, "type":B
    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v2, v5, v3, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parseData(BB[BI)I

    move-result v1

    .line 195
    if-gez v1, :cond_2

    .line 196
    sget-object v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_DATA_FIELD_PARSING:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    goto :goto_0

    .line 200
    .end local v2    # "inst":B
    .end local v5    # "type":B
    :cond_7
    sget-object v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    goto :goto_0
.end method

.method private parseData(BB[BI)I
    .locals 4
    .param p1, "inst"    # B
    .param p2, "type"    # B
    .param p3, "packet"    # [B
    .param p4, "next"    # I

    .prologue
    const/4 v2, -0x1

    .line 248
    move v1, p4

    .line 249
    .local v1, "tmpNext":I
    const/4 v0, 0x0

    .line 251
    .local v0, "parsingResult":I
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;->checkParserMap()Z

    move-result v3

    if-nez v3, :cond_1

    .line 252
    :cond_0
    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_LIBRARY_PARSER_OBJECT:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 283
    :goto_0
    return v2

    .line 257
    :cond_1
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parseNotiPowerData(BB[BI)I

    move-result v0

    .line 258
    if-lez v0, :cond_2

    move v2, v0

    .line 259
    goto :goto_0

    .line 262
    :cond_2
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parseDebugMsg(BB[BI)I

    move-result v0

    .line 263
    if-lez v0, :cond_3

    move v2, v0

    .line 264
    goto :goto_0

    .line 267
    :cond_3
    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->INST_LIBRARY:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    iget-byte v3, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->value:B

    if-eq p1, v3, :cond_4

    .line 268
    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_INSTRUCTION_VALUE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :cond_4
    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_LIBRARY:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    iget-byte v2, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    if-ne p2, v2, :cond_5

    .line 273
    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

    invoke-virtual {v2, p3, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;->parse([BI)I

    move-result v1

    :goto_1
    move v2, v1

    .line 283
    goto :goto_0

    .line 274
    :cond_5
    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_LIBRARY_EXT:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    iget-byte v2, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    if-ne p2, v2, :cond_6

    .line 275
    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mExtLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

    invoke-virtual {v2, p3, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;->parse([BI)I

    move-result v1

    goto :goto_1

    .line 276
    :cond_6
    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_LIBRARY_REQUEST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    iget-byte v2, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    if-ne p2, v2, :cond_7

    .line 277
    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mRequestLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

    invoke-virtual {v2, p3, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;->parse([BI)I

    move-result v1

    goto :goto_1

    .line 279
    :cond_7
    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_TYPE_VALUE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 280
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private parseDebugMsg(BB[BI)I
    .locals 4
    .param p1, "inst"    # B
    .param p2, "type"    # B
    .param p3, "packet"    # [B
    .param p4, "next"    # I

    .prologue
    .line 328
    move v1, p4

    .line 329
    .local v1, "tmpNext":I
    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_SENSORHUB_DEBUG_MSG:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;->getParser(Ljava/lang/String;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v0

    .line 332
    .local v0, "debugMsgParser":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->INST_LIBRARY:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    iget-byte v2, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->value:B

    if-ne p1, v2, :cond_0

    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_SENSORHUB_DEBUG_MSG:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    iget-byte v2, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    if-ne p2, v2, :cond_0

    if-eqz v0, :cond_0

    .line 335
    invoke-interface {v0, p3, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v2

    .line 338
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private parseNotiPowerData(BB[BI)I
    .locals 4
    .param p1, "inst"    # B
    .param p2, "type"    # B
    .param p3, "packet"    # [B
    .param p4, "next"    # I

    .prologue
    .line 301
    move v1, p4

    .line 302
    .local v1, "tmpNext":I
    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_NOTI_POWER:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;->getParser(Ljava/lang/String;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v0

    .line 305
    .local v0, "notiParser":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->INST_NOTI:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    iget-byte v2, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->value:B

    if-ne p1, v2, :cond_0

    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_NOTI_POWER:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    iget-byte v2, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    if-ne p2, v2, :cond_0

    if-eqz v0, :cond_0

    .line 307
    invoke-interface {v0, p3, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v2

    .line 310
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final getExtLibParser()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mExtLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

    return-object v0
.end method

.method public final getLibParser()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

    return-object v0
.end method

.method public final getRequestLibParser()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mRequestLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

    return-object v0
.end method

.method public final initialize(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 120
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    if-nez v0, :cond_0

    .line 121
    const-string v0, "sensorhub"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/sensorhub/SensorHubManager;

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    .line 123
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubListener:Landroid/hardware/sensorhub/SensorHubEventListener;

    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/sensorhub/SensorHubManager;->getDefaultSensorHub(I)Landroid/hardware/sensorhub/SensorHub;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/hardware/sensorhub/SensorHubManager;->registerListener(Landroid/hardware/sensorhub/SensorHubEventListener;Landroid/hardware/sensorhub/SensorHub;I)Z

    .line 128
    :cond_0
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeParser;

    invoke-direct {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeParser;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

    .line 129
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeParser;

    invoke-direct {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeParser;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mExtLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

    .line 130
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/RequestLibTypeParser;

    invoke-direct {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/RequestLibTypeParser;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mRequestLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

    .line 132
    iput v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mApStatus:I

    .line 133
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->registerApPowerObserver(Landroid/hardware/contextaware/manager/IApPowerObserver;)V

    .line 134
    return-void
.end method

.method public final initializePreparedSubCollection()V
    .locals 0

    .prologue
    .line 430
    return-void
.end method

.method public final parseForScenarioTesting([B)V
    .locals 2
    .param p1, "packet"    # [B

    .prologue
    .line 211
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parse([B)I

    move-result v0

    .line 212
    .local v0, "result":I
    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 213
    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 215
    :cond_0
    return-void
.end method

.method public final terminate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 144
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mApStatus:I

    .line 145
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->unregisterApPowerObserver(Landroid/hardware/contextaware/manager/IApPowerObserver;)V

    .line 147
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubListener:Landroid/hardware/sensorhub/SensorHubEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/sensorhub/SensorHubManager;->unregisterListener(Landroid/hardware/sensorhub/SensorHubEventListener;)V

    .line 148
    iput-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    .line 150
    iput-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

    .line 151
    iput-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mExtLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

    .line 152
    iput-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mRequestLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

    goto :goto_0
.end method

.method public final updateApPowerStatus(IJ)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "timeStamp"    # J

    .prologue
    .line 411
    iput p1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mApStatus:I

    .line 413
    const-string v0, "AP_NONE"

    .line 414
    .local v0, "apStatus":Ljava/lang/String;
    iget v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mApStatus:I

    const/16 v2, -0x2e

    if-ne v1, v2, :cond_1

    .line 415
    const-string v0, "AP_SLEEP"

    .line 419
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 420
    return-void

    .line 416
    :cond_1
    iget v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mApStatus:I

    const/16 v2, -0x2f

    if-ne v1, v2, :cond_0

    .line 417
    const-string v0, "AP_WAKEUP"

    goto :goto_0
.end method
