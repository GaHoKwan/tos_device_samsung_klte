.class Landroid/hardware/contextaware/dataprovider/sensorhubprovider/RequestLibTypeParser;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;
.source "RequestLibTypeParser.java"

# interfaces
.implements Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse([BI)I
    .locals 9
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    const/4 v6, -0x1

    .line 34
    move v5, p2

    .line 36
    .local v5, "tmpNext":I
    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->values()[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    move-result-object v0

    .local v0, "arr$":[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 37
    .local v1, "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;
    array-length v7, p1

    sub-int/2addr v7, v5

    add-int/lit8 v7, v7, -0x1

    if-gez v7, :cond_0

    .line 38
    sget-object v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 59
    .end local v1    # "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;
    :goto_1
    return v6

    .line 41
    .restart local v1    # "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;
    :cond_0
    aget-byte v7, p1, v5

    iget-byte v8, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->value:B

    if-eq v7, v8, :cond_1

    .line 36
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-super {p0, v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;->getParser(Ljava/lang/String;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v4

    .line 46
    .local v4, "parser":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    if-nez v4, :cond_2

    .line 47
    sget-object v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_NOT_REGISTERED_SERVICE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v7

    invoke-static {v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 53
    :cond_2
    check-cast v4, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubRequest;

    .end local v4    # "parser":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    add-int/lit8 v5, v5, 0x1

    invoke-interface {v4, p1, v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubRequest;->parseForRequestType([BI)I

    move-result v5

    .end local v1    # "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;
    :cond_3
    move v6, v5

    .line 59
    goto :goto_1
.end method
