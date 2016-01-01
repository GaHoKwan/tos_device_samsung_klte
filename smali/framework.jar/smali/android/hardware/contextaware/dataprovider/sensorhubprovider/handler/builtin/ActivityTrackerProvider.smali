.class public abstract Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "ActivityTrackerProvider.java"

# interfaces
.implements Landroid/hardware/contextaware/manager/IPassiveCurrrentPositionObserver;


# static fields
.field private static mPassiveCurrentPosition:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;


# instance fields
.field private mCaPassiveEnable:Z


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->mCaPassiveEnable:Z

    .line 76
    invoke-static {p2, p3, p0}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->getInstance(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/manager/IPassiveCurrrentPositionObserver;)Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    move-result-object v0

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->mPassiveCurrentPosition:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    .line 77
    return-void
.end method


# virtual methods
.method protected final byteArrayToLong([B)J
    .locals 5
    .param p1, "bytes"    # [B

    .prologue
    const/16 v4, 0x8

    .line 270
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 271
    .local v0, "byte_buf":Ljava/nio/ByteBuffer;
    new-array v1, v4, [B

    .line 272
    .local v1, "change":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 273
    const/4 v3, 0x0

    aput-byte v3, v1, v2

    .line 272
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    :cond_0
    const/4 v2, 0x0

    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 276
    rsub-int/lit8 v3, v2, 0x7

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v2

    aget-byte v4, p1, v4

    aput-byte v4, v1, v3

    .line 275
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 278
    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 279
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 280
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    return-wide v3
.end method

.method protected final calculateTimeStamp(J)J
    .locals 14
    .param p1, "time_data"    # J

    .prologue
    .line 291
    new-instance v11, Ljava/util/SimpleTimeZone;

    const/4 v12, 0x0

    const-string v13, "GMT"

    invoke-direct {v11, v12, v13}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v11}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v8

    .line 293
    .local v8, "temp":Ljava/util/Calendar;
    const/16 v11, 0xb

    invoke-virtual {v8, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 294
    .local v4, "hr":I
    const/16 v11, 0xc

    invoke-virtual {v8, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 295
    .local v6, "min":I
    const/16 v11, 0xd

    invoke-virtual {v8, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 296
    .local v7, "sec":I
    const/16 v11, 0xe

    invoke-virtual {v8, v11}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 298
    .local v5, "milliSec":I
    mul-int/lit16 v11, v4, 0xe10

    mul-int/lit8 v12, v6, 0x3c

    add-int/2addr v11, v12

    add-int/2addr v11, v7

    mul-int/lit16 v11, v11, 0x3e8

    add-int/2addr v11, v5

    int-to-long v0, v11

    .line 300
    .local v0, "UTC_time":J
    sub-long v2, v0, p1

    .line 301
    .local v2, "diff":J
    const-wide/16 v11, 0x0

    cmp-long v11, v2, v11

    if-gez v11, :cond_0

    .line 302
    const-wide/16 v2, 0x0

    .line 305
    :cond_0
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    .line 307
    .local v9, "time":J
    sub-long v11, v9, v2

    return-wide v11
.end method

.method public final clear()V
    .locals 0

    .prologue
    .line 424
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 425
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 426
    return-void
.end method

.method public final disable()V
    .locals 2

    .prologue
    .line 403
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 404
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 406
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->mPassiveCurrentPosition:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    if-nez v0, :cond_1

    .line 407
    const-string v0, "mPassiveCurrentPosition is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    iget-boolean v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->mCaPassiveEnable:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 412
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->mPassiveCurrentPosition:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->disable()V

    .line 413
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->mCaPassiveEnable:Z

    goto :goto_0
.end method

.method public final enable()V
    .locals 1

    .prologue
    .line 378
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 379
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 381
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->mPassiveCurrentPosition:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    if-nez v0, :cond_1

    .line 382
    const-string v0, "mPassiveCurrentPosition is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-boolean v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->mCaPassiveEnable:Z

    if-nez v0, :cond_0

    .line 388
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->mPassiveCurrentPosition:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->enable()V

    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->mCaPassiveEnable:Z

    goto :goto_0
.end method

.method protected getAccuracyType()B
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method protected getActivityType()B
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method protected getBatchingPeriod()I
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "OperationMode"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TimeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ActivityType"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Accuracy"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 10

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 110
    const/16 v6, 0x8

    new-array v3, v6, [B

    .line 112
    .local v3, "packet":[B
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getModeType()B

    move-result v6

    aput-byte v6, v3, v8

    .line 114
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getActivityType()B

    move-result v6

    if-gez v6, :cond_0

    .line 115
    const/4 v3, 0x0

    .line 134
    .end local v3    # "packet":[B
    :goto_0
    return-object v3

    .line 117
    .restart local v3    # "packet":[B
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getActivityType()B

    move-result v6

    aput-byte v6, v3, v9

    .line 118
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getAccuracyType()B

    move-result v6

    aput-byte v6, v3, v7

    .line 120
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getBatchingPeriod()I

    move-result v6

    invoke-static {v6, v7}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 122
    .local v0, "arBatchingPeriod":[B
    const/4 v6, 0x3

    aget-byte v7, v0, v8

    aput-byte v7, v3, v6

    .line 123
    const/4 v6, 0x4

    aget-byte v7, v0, v9

    aput-byte v7, v3, v6

    .line 125
    new-instance v6, Ljava/util/SimpleTimeZone;

    const-string v7, "GMT"

    invoke-direct {v6, v8, v7}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    .line 127
    .local v5, "temp":Ljava/util/Calendar;
    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 128
    .local v1, "hour":I
    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 129
    .local v2, "minute":I
    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 130
    .local v4, "second":I
    const/4 v6, 0x5

    int-to-byte v7, v1

    aput-byte v7, v3, v6

    .line 131
    const/4 v6, 0x6

    int-to-byte v7, v2

    aput-byte v7, v3, v6

    .line 132
    const/4 v6, 0x7

    int-to-byte v7, v4

    aput-byte v7, v3, v6

    goto :goto_0
.end method

.method protected final getDataPacketToUnregisterLib()[B
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 145
    const/4 v2, 0x5

    new-array v1, v2, [B

    .line 147
    .local v1, "packet":[B
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getModeType()B

    move-result v2

    aput-byte v2, v1, v3

    .line 149
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getActivityType()B

    move-result v2

    if-gez v2, :cond_0

    .line 150
    const/4 v1, 0x0

    .line 160
    .end local v1    # "packet":[B
    :goto_0
    return-object v1

    .line 152
    .restart local v1    # "packet":[B
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getActivityType()B

    move-result v2

    aput-byte v2, v1, v4

    .line 153
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getAccuracyType()B

    move-result v2

    aput-byte v2, v1, v5

    .line 155
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getBatchingPeriod()I

    move-result v2

    invoke-static {v2, v5}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 157
    .local v0, "arBatchingPeriod":[B
    const/4 v2, 0x3

    aget-byte v3, v0, v3

    aput-byte v3, v1, v2

    .line 158
    const/4 v2, 0x4

    aget-byte v3, v0, v4

    aput-byte v3, v1, v2

    goto :goto_0
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    .line 87
    const/16 v0, 0x1a

    return v0
.end method

.method protected abstract getModeType()B
.end method

.method public parse([BI)I
    .locals 11
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 198
    move v4, p2

    .line 200
    .local v4, "tmpNext":I
    array-length v6, p1

    sub-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x4

    if-gez v6, :cond_0

    .line 201
    sget-object v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 202
    const/4 v6, -0x1

    .line 224
    :goto_0
    return v6

    .line 205
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "names":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v6

    aget-object v7, v0, v9

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getModeType()B

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 209
    const/4 v6, 0x4

    new-array v1, v6, [B

    .line 210
    .local v1, "timeTemp":[B
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "tmpNext":I
    .local v5, "tmpNext":I
    aget-byte v6, p1, v4

    aput-byte v6, v1, v9

    .line 211
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    aget-byte v6, p1, v5

    aput-byte v6, v1, v10

    .line 212
    const/4 v6, 0x2

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    aget-byte v7, p1, v4

    aput-byte v7, v1, v6

    .line 213
    const/4 v6, 0x3

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    aget-byte v7, p1, v5

    aput-byte v7, v1, v6

    .line 214
    invoke-virtual {p0, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->byteArrayToLong([B)J

    move-result-wide v2

    .line 215
    .local v2, "time_tempdata":J
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v6

    aget-object v7, v0, v10

    invoke-virtual {p0, v2, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->calculateTimeStamp(J)J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 218
    invoke-virtual {p0, p1, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->parseData([BI)I

    move-result v4

    .line 220
    if-lez v4, :cond_1

    .line 221
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->notifyObserver()V

    :cond_1
    move v6, v4

    .line 224
    goto :goto_0
.end method

.method protected parseData([BI)I
    .locals 7
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 237
    move v3, p2

    .line 239
    .local v3, "tmpNext":I
    array-length v5, p1

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x2

    if-gez v5, :cond_0

    .line 240
    sget-object v5, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 241
    const/4 v5, -0x1

    .line 252
    :goto_0
    return v5

    .line 244
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "names":[Ljava/lang/String;
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "tmpNext":I
    .local v4, "tmpNext":I
    aget-byte v1, p1, v3

    .line 247
    .local v1, "activityType":I
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, v2, v6

    invoke-virtual {v5, v6, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 249
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    aget-byte v0, p1, v4

    .line 250
    .local v0, "accuracy":I
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v6, v2, v6

    invoke-virtual {v5, v6, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    move v5, v3

    .line 252
    goto :goto_0
.end method

.method public final updatePassiveCurrentPosition(I[IDDDDFFI)V
    .locals 15
    .param p1, "type"    # I
    .param p2, "utcTime"    # [I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "distance"    # D
    .param p11, "speed"    # F
    .param p12, "accuracy"    # F
    .param p13, "satelliteCount"    # I

    .prologue
    .line 324
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ActivityTracker type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", latitude: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", longitude: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", satelliteCount: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 329
    const-wide v12, 0x412e848000000000L    # 1000000.0

    mul-double v12, v12, p3

    double-to-int v5, v12

    .line 330
    .local v5, "mlatitude":I
    const-wide v12, 0x412e848000000000L    # 1000000.0

    mul-double v12, v12, p5

    double-to-int v6, v12

    .line 331
    .local v6, "mlongitude":I
    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double v12, v12, p7

    double-to-int v3, v12

    .line 332
    .local v3, "maltitude":I
    move/from16 v0, p12

    float-to-int v2, v0

    .line 333
    .local v2, "maccuracy":I
    move-object/from16 v10, p2

    .line 334
    .local v10, "mutcTime":[I
    move/from16 v7, p13

    .line 335
    .local v7, "msatelliteCount":I
    const/high16 v12, 0x42c80000    # 100.0f

    mul-float v12, v12, p11

    float-to-int v8, v12

    .line 336
    .local v8, "mspeed":I
    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double v12, v12, p9

    double-to-int v4, v12

    .line 337
    .local v4, "mdistance":I
    move/from16 v9, p1

    .line 339
    .local v9, "mtype":I
    const/16 v12, 0x16

    new-array v1, v12, [B

    .line 340
    .local v1, "dataPacket":[B
    const/4 v11, 0x0

    .line 342
    .local v11, "size":I
    const/4 v12, 0x4

    invoke-static {v5, v12}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x4

    invoke-static {v12, v13, v1, v11, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 344
    const/4 v12, 0x4

    invoke-static {v6, v12}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    const/4 v13, 0x0

    add-int/lit8 v11, v11, 0x4

    const/4 v14, 0x4

    invoke-static {v12, v13, v1, v11, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    const/4 v12, 0x4

    invoke-static {v3, v12}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    const/4 v13, 0x0

    add-int/lit8 v11, v11, 0x4

    const/4 v14, 0x4

    invoke-static {v12, v13, v1, v11, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    const/4 v12, 0x1

    invoke-static {v2, v12}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    const/4 v13, 0x0

    add-int/lit8 v11, v11, 0x4

    const/4 v14, 0x1

    invoke-static {v12, v13, v1, v11, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    const/4 v12, 0x0

    aget v12, v10, v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    const/4 v13, 0x0

    add-int/lit8 v11, v11, 0x1

    const/4 v14, 0x1

    invoke-static {v12, v13, v1, v11, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 352
    const/4 v12, 0x1

    aget v12, v10, v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    const/4 v13, 0x0

    add-int/lit8 v11, v11, 0x1

    const/4 v14, 0x1

    invoke-static {v12, v13, v1, v11, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 354
    const/4 v12, 0x2

    aget v12, v10, v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    const/4 v13, 0x0

    add-int/lit8 v11, v11, 0x1

    const/4 v14, 0x1

    invoke-static {v12, v13, v1, v11, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 356
    const/4 v12, 0x1

    invoke-static {v7, v12}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    const/4 v13, 0x0

    add-int/lit8 v11, v11, 0x1

    const/4 v14, 0x1

    invoke-static {v12, v13, v1, v11, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 358
    const/4 v12, 0x2

    invoke-static {v8, v12}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    const/4 v13, 0x0

    add-int/lit8 v11, v11, 0x1

    const/4 v14, 0x2

    invoke-static {v12, v13, v1, v11, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    const/4 v12, 0x2

    invoke-static {v4, v12}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    const/4 v13, 0x0

    add-int/lit8 v11, v11, 0x2

    const/4 v14, 0x2

    invoke-static {v12, v13, v1, v11, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    const/4 v12, 0x1

    invoke-static {v9, v12}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    const/4 v13, 0x0

    add-int/lit8 v11, v11, 0x2

    const/4 v14, 0x1

    invoke-static {v12, v13, v1, v11, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    const/16 v12, 0x16

    invoke-virtual {p0, v12, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->sendCommonValueToSensorHub(B[B)Z

    .line 367
    return-void
.end method
