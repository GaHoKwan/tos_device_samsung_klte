.class public Lcom/android/internal/telephony/IccPcscProvider;
.super Ljava/lang/Object;
.source "IccPcscProvider.java"


# static fields
.field public static final CONNECT:I = 0x4

.field public static final DISCONNECT:I = 0x5

.field public static final INIT:I = 0x1

.field private static final OEM_AUTH_ATR:I = 0xd

.field private static final OEM_AUTH_OPEN_CHANNEL:I = 0x9

.field private static final OEM_AUTH_SEND_APDU:I = 0x8

.field private static final OEM_DOMESTIC_PCSC_POWERDOWN:I = 0x28

.field private static final OEM_DOMESTIC_PCSC_POWERUP:I = 0x26

.field private static final OEM_DOMESTIC_PCSC_TRANSMIT:I = 0x27

.field private static final OEM_FUNCTION_ID_AUTH:I = 0x15

.field private static final OEM_FUNCTION_ID_DOMESTIC:I = 0x16

.field public static final POWERDOWN:I = 0x3

.field public static final POWERUP:I = 0x2

.field public static final RESPONSE_MAX_SIZE:I = 0x106

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field public static final SMARTCARD_IO_ERROR_ATR_BUFFER:I = -0x6

.field public static final SMARTCARD_IO_ERROR_CARD_NOT_EXIST:I = -0x2

.field public static final SMARTCARD_IO_ERROR_OPEN_CHANNEL:I = -0x1

.field public static final SMARTCARD_IO_ERROR_RESPONSE_BUFFER:I = -0x5

.field public static final SMARTCARD_IO_ERROR_TRANSMIT_BUFFER:I = -0x4

.field public static final SMARTCARD_IO_INVALID_CHANNEL:I = -0x3

.field public static final SMARTCARD_IO_SUCCESS:I = 0x0

.field public static final TRANSMIT:I = 0x6

.field public static final USIMAUTH:I = 0x7

.field private static final lastChannel:I = 0x3

.field static final mLogTag:Ljava/lang/String; = "RIL_IccPcscProvider"

.field private static scInstance:Lcom/android/internal/telephony/IccPcscProvider;


# instance fields
.field private NUM_OF_CHANNEL:I

.field private _atr:[B

.field private cardStatus:I

.field private channel:[I

.field private isInitiated:Z

.field private final scLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/IccPcscProvider;->NUM_OF_CHANNEL:I

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccPcscProvider;->scLock:Ljava/lang/Object;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z

    .line 77
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->pscsPowerup()V

    .line 78
    return-void
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 447
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 463
    :goto_0
    return-object v3

    .line 449
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 451
    .local v2, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 454
    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v3, 0xf

    .line 456
    .local v0, "b":I
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 458
    aget-byte v3, p0, v1

    and-int/lit8 v0, v3, 0xf

    .line 460
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 451
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 463
    .end local v0    # "b":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private connectToRIL()I
    .locals 10

    .prologue
    const/4 v6, -0x1

    .line 196
    const-string v7, "RIL_IccPcscProvider"

    const-string v8, "connectToRIL"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v5, 0x0

    .line 200
    .local v5, "val":I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 201
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 216
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/16 v3, 0x9

    .line 217
    .local v3, "fileSize":I
    const/16 v7, 0x16

    :try_start_0
    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 218
    const/16 v7, 0x27

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 219
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 220
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 221
    const/16 v7, 0x70

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 222
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 230
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 231
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    const/4 v7, 0x1

    :try_start_1
    new-array v4, v7, [B

    .line 241
    .local v4, "response":[B
    const-string/jumbo v7, "phoneext"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const/4 v9, 0x4

    invoke-interface {v7, v8, v4, v9}, Lcom/android/internal/telephony/ITelephonyExt;->sendRequestToRIL([B[BI)I

    move-result v5

    .line 243
    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V

    .line 244
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 245
    const/4 v1, 0x0

    .line 246
    const/4 v0, 0x0

    move v6, v5

    .line 258
    .end local v4    # "response":[B
    :cond_0
    :goto_0
    return v6

    .line 233
    :catch_0
    move-exception v2

    .line 234
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "RIL_IccPcscProvider"

    const-string v8, "IOException - connect"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 251
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 252
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "RIL_IccPcscProvider"

    const-string v8, "Exception - connect"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V

    .line 255
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 256
    :catch_2
    move-exception v7

    goto :goto_0
.end method

.method private disconnectFromRIL(I)I
    .locals 10
    .param p1, "channel"    # I

    .prologue
    const/4 v6, -0x1

    .line 356
    const-string v7, "RIL_IccPcscProvider"

    const-string v8, "disconnectFromRIL"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v5, 0x0

    .line 358
    .local v5, "val":I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 359
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 372
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/16 v3, 0x8

    .line 373
    .local v3, "fileSize":I
    const/16 v7, 0x16

    :try_start_0
    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 374
    const/16 v7, 0x27

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 377
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 378
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 379
    const/16 v7, 0x70

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 380
    const/16 v7, 0x80

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 381
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    const/4 v7, 0x1

    :try_start_1
    new-array v4, v7, [B

    .line 395
    .local v4, "response":[B
    const-string/jumbo v7, "phoneext"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const/4 v9, 0x5

    invoke-interface {v7, v8, v4, v9}, Lcom/android/internal/telephony/ITelephonyExt;->sendRequestToRIL([B[BI)I

    move-result v5

    .line 397
    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V

    .line 398
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 399
    const/4 v1, 0x0

    .line 400
    const/4 v0, 0x0

    move v6, v5

    .line 409
    .end local v4    # "response":[B
    :goto_0
    return v6

    .line 387
    :catch_0
    move-exception v2

    .line 388
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "RIL_IccPcscProvider"

    const-string v8, "IO Exception - Disconnect"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 402
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 404
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V

    .line 405
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 408
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 406
    :catch_2
    move-exception v7

    goto :goto_1
.end method

.method private getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    .prologue
    .line 434
    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 435
    .local v0, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_0

    .line 436
    const-string v1, "RIL_IccPcscProvider"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_0
    return-object v0
.end method

.method private pcscPowerdown()V
    .locals 2

    .prologue
    .line 137
    const-string v0, "RIL_IccPcscProvider"

    const-string/jumbo v1, "pcscPowerdown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method private pscsPowerup()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "atrLength":I
    const-string v7, "RIL_IccPcscProvider"

    const-string/jumbo v8, "pscsPowerup"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 85
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 97
    .local v2, "dos":Ljava/io/DataOutputStream;
    const/4 v5, 0x4

    .line 98
    .local v5, "fileSize":I
    const/16 v7, 0x16

    :try_start_0
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 99
    const/16 v7, 0x26

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 100
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    const/16 v7, 0x106

    :try_start_1
    new-array v6, v7, [B

    .line 109
    .local v6, "response":[B
    const-string/jumbo v7, "phoneext"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const/4 v9, 0x2

    invoke-interface {v7, v8, v6, v9}, Lcom/android/internal/telephony/ITelephonyExt;->sendRequestToRIL([B[BI)I

    .line 110
    const/4 v7, 0x0

    aget-byte v0, v6, v7

    .line 111
    const-string v7, "RIL_IccPcscProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pscsPowerup ATR:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Lcom/android/internal/telephony/IccPcscProvider;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v7, "RIL_IccPcscProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pscsPowerup atrLength:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-array v7, v0, [B

    iput-object v7, p0, Lcom/android/internal/telephony/IccPcscProvider;->_atr:[B

    .line 114
    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/internal/telephony/IccPcscProvider;->_atr:[B

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    .end local v6    # "response":[B
    :goto_0
    if-eqz v2, :cond_0

    .line 124
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FilterOutputStream;->close()V

    .line 125
    :cond_0
    if-eqz v1, :cond_1

    .line 126
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 130
    :cond_1
    :goto_1
    return-void

    .line 102
    :catch_0
    move-exception v3

    .line 103
    .local v3, "e":Ljava/io/IOException;
    goto :goto_1

    .line 116
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 117
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    iput-boolean v10, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z

    goto :goto_0

    .line 127
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 128
    .local v4, "ex":Ljava/io/IOException;
    const-string/jumbo v7, "pscsPowerup"

    const-string v8, "close fail!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private transmitToRIL(I[B[B)I
    .locals 10
    .param p1, "channel"    # I
    .param p2, "command"    # [B
    .param p3, "response"    # [B

    .prologue
    const/4 v6, -0x1

    .line 291
    const/4 v5, 0x0

    .line 292
    .local v5, "val":I
    const-string v7, "RIL_IccPcscProvider"

    const-string/jumbo v8, "transmitToRIL"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 295
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 307
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    array-length v7, p2

    add-int/lit8 v3, v7, 0x4

    .line 308
    .local v3, "fileSize":I
    const/16 v7, 0x16

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 309
    const/16 v7, 0x27

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 310
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 313
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, p2

    if-ge v4, v7, :cond_0

    .line 314
    aget-byte v7, p2, v4

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 316
    .end local v3    # "fileSize":I
    .end local v4    # "i":I
    :catch_0
    move-exception v2

    .line 317
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "RIL_IccPcscProvider"

    const-string v8, "IOException - transmit"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return v6

    .line 323
    .restart local v3    # "fileSize":I
    .restart local v4    # "i":I
    :cond_0
    :try_start_1
    const-string/jumbo v7, "phoneext"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const/4 v9, 0x6

    invoke-interface {v7, v8, p3, v9}, Lcom/android/internal/telephony/ITelephonyExt;->sendRequestToRIL([B[BI)I

    move-result v5

    .line 325
    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V

    .line 326
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 327
    const/4 v1, 0x0

    .line 328
    const/4 v0, 0x0

    move v6, v5

    .line 329
    goto :goto_1

    .line 330
    :catch_1
    move-exception v2

    .line 332
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V

    .line 333
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 336
    :cond_2
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 334
    :catch_2
    move-exception v7

    goto :goto_2
.end method


# virtual methods
.method public connect()I
    .locals 3

    .prologue
    .line 175
    const/4 v0, -0x1

    .line 177
    .local v0, "logiCh":I
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z

    if-nez v1, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->pscsPowerup()V

    .line 179
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z

    .line 181
    :cond_0
    const-string v1, "RIL_IccPcscProvider"

    const-string v2, "connect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->connectToRIL()I

    move-result v1

    return v1
.end method

.method public disconnect(I)I
    .locals 2
    .param p1, "channel"    # I

    .prologue
    .line 351
    const-string v0, "RIL_IccPcscProvider"

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPcscProvider;->disconnectFromRIL(I)I

    move-result v0

    return v0
.end method

.method public finalize()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->pcscPowerdown()V

    .line 134
    return-void
.end method

.method public getATR([B)I
    .locals 3
    .param p1, "atr"    # [B

    .prologue
    const/4 v2, 0x0

    .line 422
    iget-object v1, p0, Lcom/android/internal/telephony/IccPcscProvider;->_atr:[B

    array-length v0, v1

    .line 423
    .local v0, "size":I
    if-eqz p1, :cond_0

    array-length v1, p1

    if-ge v1, v0, :cond_1

    .line 424
    :cond_0
    const-string v1, "RIL_IccPcscProvider"

    const-string v2, "getATR SMARTCARD_IO_ERROR_ATR_BUFFER"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const/4 v0, -0x6

    .line 430
    .end local v0    # "size":I
    :goto_0
    return v0

    .line 429
    .restart local v0    # "size":I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccPcscProvider;->_atr:[B

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public transmit(I[B[B)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "command"    # [B
    .param p3, "response"    # [B

    .prologue
    .line 276
    if-nez p2, :cond_0

    .line 277
    const/4 v0, -0x4

    .line 286
    :goto_0
    return v0

    .line 279
    :cond_0
    if-nez p3, :cond_1

    .line 280
    const/4 v0, -0x5

    goto :goto_0

    .line 286
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccPcscProvider;->transmitToRIL(I[B[B)I

    move-result v0

    goto :goto_0
.end method
