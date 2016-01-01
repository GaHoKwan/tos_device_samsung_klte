.class Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeParser;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;
.source "ExtLibTypeParser.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;-><init>()V

    return-void
.end method

.method private parseForActivityTracker([BI)I
    .locals 11
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    const/4 v8, -0x1

    .line 149
    move v6, p2

    .line 151
    .local v6, "tmpNext":I
    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$ACTIVITY_TRACKER_EXT_LIB_TYPE;->values()[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$ACTIVITY_TRACKER_EXT_LIB_TYPE;

    move-result-object v0

    .local v0, "arr$":[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$ACTIVITY_TRACKER_EXT_LIB_TYPE;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_5

    aget-object v1, v0, v2

    .line 153
    .local v1, "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$ACTIVITY_TRACKER_EXT_LIB_TYPE;
    array-length v9, p1

    sub-int/2addr v9, v6

    add-int/lit8 v9, v9, -0x1

    if-gez v9, :cond_0

    .line 154
    sget-object v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v9}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 180
    .end local v1    # "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$ACTIVITY_TRACKER_EXT_LIB_TYPE;
    :goto_1
    return v8

    .line 157
    .restart local v1    # "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$ACTIVITY_TRACKER_EXT_LIB_TYPE;
    :cond_0
    aget-byte v9, p1, v6

    iget-byte v10, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$ACTIVITY_TRACKER_EXT_LIB_TYPE;->value:B

    if-eq v9, v10, :cond_2

    .line 151
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$ACTIVITY_TRACKER_EXT_LIB_TYPE;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-super {p0, v9}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;->getParser(Ljava/lang/String;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v5

    .line 162
    .local v5, "parser":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    if-eqz v5, :cond_1

    .line 166
    array-length v9, p1

    sub-int/2addr v9, v6

    add-int/lit8 v9, v9, -0x1

    if-gez v9, :cond_3

    .line 167
    sget-object v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v9}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 170
    :cond_3
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "tmpNext":I
    .local v7, "tmpNext":I
    aget-byte v4, p1, v6

    .line 171
    .local v4, "mode":I
    sget-object v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->NORMAL_MODE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    iget-byte v9, v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    and-int/2addr v9, v4

    sget-object v10, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->NORMAL_MODE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    iget-byte v10, v10, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-eq v9, v10, :cond_4

    .line 172
    sget-object v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_MODE_FAULT:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v9}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v6, v7

    .line 173
    .end local v7    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    goto :goto_1

    .line 176
    .end local v6    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    :cond_4
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    invoke-interface {v5, p1, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v6

    .end local v1    # "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$ACTIVITY_TRACKER_EXT_LIB_TYPE;
    .end local v4    # "mode":I
    .end local v5    # "parser":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    :cond_5
    move v8, v6

    .line 180
    goto :goto_1
.end method

.method private parseForPedometer([BI)I
    .locals 8
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 116
    move v5, p2

    .line 118
    .local v5, "tmpNext":I
    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;->values()[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;

    move-result-object v0

    .local v0, "arr$":[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 119
    .local v1, "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;
    array-length v6, p1

    sub-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x1

    if-gez v6, :cond_0

    .line 120
    sget-object v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 121
    const/4 v6, -0x1

    .line 136
    .end local v1    # "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;
    :goto_1
    return v6

    .line 123
    .restart local v1    # "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;
    :cond_0
    aget-byte v6, p1, v5

    iget-byte v7, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;->value:B

    if-eq v6, v7, :cond_2

    .line 118
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-super {p0, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;->getParser(Ljava/lang/String;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v4

    .line 128
    .local v4, "parser":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    if-eqz v4, :cond_1

    .line 132
    add-int/lit8 v5, v5, 0x1

    invoke-interface {v4, p1, v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v5

    .end local v1    # "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;
    .end local v4    # "parser":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    :cond_3
    move v6, v5

    .line 136
    goto :goto_1
.end method

.method private parseForPositioning([BI)I
    .locals 8
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 83
    move v5, p2

    .line 85
    .local v5, "tmpNext":I
    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;->values()[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;

    move-result-object v0

    .local v0, "arr$":[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 86
    .local v1, "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;
    array-length v6, p1

    sub-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x1

    if-gez v6, :cond_0

    .line 87
    sget-object v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 88
    const/4 v6, -0x1

    .line 103
    .end local v1    # "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;
    :goto_1
    return v6

    .line 90
    .restart local v1    # "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;
    :cond_0
    aget-byte v6, p1, v5

    iget-byte v7, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;->value:B

    if-eq v6, v7, :cond_2

    .line 85
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-super {p0, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;->getParser(Ljava/lang/String;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v4

    .line 95
    .local v4, "parser":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    if-eqz v4, :cond_1

    .line 99
    add-int/lit8 v5, v5, 0x1

    invoke-interface {v4, p1, v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v5

    .end local v1    # "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;
    .end local v4    # "parser":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    :cond_3
    move v6, v5

    .line 103
    goto :goto_1
.end method

.method private parseForSleepMonitorTracker([BI)I
    .locals 11
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    const/4 v8, -0x1

    .line 193
    move v6, p2

    .line 195
    .local v6, "tmpNext":I
    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SLEEP_MONITOR_EXT_LIB_TYPE;->values()[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SLEEP_MONITOR_EXT_LIB_TYPE;

    move-result-object v0

    .local v0, "arr$":[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SLEEP_MONITOR_EXT_LIB_TYPE;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_5

    aget-object v1, v0, v2

    .line 197
    .local v1, "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SLEEP_MONITOR_EXT_LIB_TYPE;
    array-length v9, p1

    sub-int/2addr v9, v6

    add-int/lit8 v9, v9, -0x1

    if-gez v9, :cond_0

    .line 198
    sget-object v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v9}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 224
    .end local v1    # "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SLEEP_MONITOR_EXT_LIB_TYPE;
    :goto_1
    return v8

    .line 201
    .restart local v1    # "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SLEEP_MONITOR_EXT_LIB_TYPE;
    :cond_0
    aget-byte v9, p1, v6

    iget-byte v10, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SLEEP_MONITOR_EXT_LIB_TYPE;->value:B

    if-eq v9, v10, :cond_2

    .line 195
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SLEEP_MONITOR_EXT_LIB_TYPE;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-super {p0, v9}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;->getParser(Ljava/lang/String;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v5

    .line 206
    .local v5, "parser":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    if-eqz v5, :cond_1

    .line 210
    array-length v9, p1

    sub-int/2addr v9, v6

    add-int/lit8 v9, v9, -0x1

    if-gez v9, :cond_3

    .line 211
    sget-object v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v9}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 214
    :cond_3
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "tmpNext":I
    .local v7, "tmpNext":I
    aget-byte v4, p1, v6

    .line 215
    .local v4, "mode":I
    sget-object v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->NORMAL_MODE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    iget-byte v9, v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    and-int/2addr v9, v4

    sget-object v10, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->NORMAL_MODE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    iget-byte v10, v10, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-eq v9, v10, :cond_4

    .line 216
    sget-object v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_MODE_FAULT:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v9}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v6, v7

    .line 217
    .end local v7    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    goto :goto_1

    .line 220
    .end local v6    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    :cond_4
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    invoke-interface {v5, p1, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v6

    .end local v1    # "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SLEEP_MONITOR_EXT_LIB_TYPE;
    .end local v4    # "mode":I
    .end local v5    # "parser":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    :cond_5
    move v8, v6

    .line 224
    goto :goto_1
.end method


# virtual methods
.method public final parse([BI)I
    .locals 7
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 40
    move v4, p2

    .line 42
    .local v4, "tmpNext":I
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

    .line 43
    .local v1, "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;
    array-length v5, p1

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_0

    .line 44
    sget-object v5, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 45
    const/4 v5, -0x1

    .line 70
    .end local v1    # "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;
    :goto_1
    return v5

    .line 47
    .restart local v1    # "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;
    :cond_0
    aget-byte v5, p1, v4

    iget-byte v6, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->value:B

    if-eq v5, v6, :cond_2

    .line 42
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_MOVEMENT_FOR_POSITIONING:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    invoke-virtual {v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 53
    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, p1, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeParser;->parseForPositioning([BI)I

    move-result v4

    .end local v1    # "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;
    :cond_3
    :goto_2
    move v5, v4

    .line 70
    goto :goto_1

    .line 54
    .restart local v1    # "i":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;
    :cond_4
    invoke-virtual {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_PEDOMETER:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    invoke-virtual {v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 56
    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, p1, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeParser;->parseForPedometer([BI)I

    move-result v4

    goto :goto_2

    .line 57
    :cond_5
    invoke-virtual {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_ACTIVITY_TRACKER:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    invoke-virtual {v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 59
    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, p1, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeParser;->parseForActivityTracker([BI)I

    move-result v4

    goto :goto_2

    .line 60
    :cond_6
    invoke-virtual {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_SLEEP_MONITOR:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    invoke-virtual {v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 62
    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, p1, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeParser;->parseForSleepMonitorTracker([BI)I

    move-result v4

    goto :goto_2
.end method
