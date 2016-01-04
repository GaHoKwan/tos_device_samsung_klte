.class public final Lcom/android/server/pm/Installer;
.super Ljava/lang/Object;
.source "Installer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Installer$AsyncCmd;,
        Lcom/android/server/pm/Installer$AsyncReply;
    }
.end annotation


# static fields
.field private static final ACK:I = 0x1

.field private static final ACK_STR:Ljava/lang/String; = "CommandACK"

.field private static final ASYNC_DEXOPT:I = 0x2

.field private static final ASYNC_DEXOPT_STR:Ljava/lang/String; = "asyncDexopt"

.field private static final FAIL:I = -0x1

.field private static final LOCAL_DEBUG:Z = false

.field private static final MAX_ASYNC_COUNT:I = 0x20

.field private static final MAX_RETRY:I = 0x5

.field private static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Installer"

.field private static mInstaller:Lcom/android/server/pm/Installer;


# instance fields
.field private ackDurationSum:F

.field private asyncCmds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/Installer$AsyncCmd;",
            ">;"
        }
    .end annotation
.end field

.field buf:[B

.field buflen:I

.field private dexoptDurationSum:F

.field mIn:Ljava/io/InputStream;

.field private mKeyStore:Landroid/security/KeyStore;

.field mOut:Ljava/io/OutputStream;

.field mSocket:Landroid/net/LocalSocket;

.field private totalDurationSum:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/pm/Installer;->buf:[B

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/Installer;->buflen:I

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Installer;->asyncCmds:Ljava/util/ArrayList;

    .line 95
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Installer;->mKeyStore:Landroid/security/KeyStore;

    .line 452
    return-void
.end method

.method private declared-synchronized addStatisticsData(FFF)V
    .locals 0
    .param p1, "ack"    # F
    .param p2, "dexopt"    # F
    .param p3, "total"    # F

    .prologue
    .line 81
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method private asyncExecute(Lcom/android/server/pm/Installer$AsyncCmd;)Z
    .locals 6
    .param p1, "cmd"    # Lcom/android/server/pm/Installer$AsyncCmd;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 266
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->connect()Z

    move-result v4

    if-nez v4, :cond_1

    .line 267
    const-string v3, "Installer"

    const-string v4, "connection failed"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    :goto_0
    return v2

    .line 271
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/server/pm/Installer;->asyncCmds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x20

    if-le v4, v5, :cond_2

    .line 273
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->processAsync()Lcom/android/server/pm/Installer$AsyncReply;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "Installer"

    const-string v5, "async command result error"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 279
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/pm/Installer$AsyncCmd;->recordStartTime()V

    .line 280
    invoke-virtual {p1}, Lcom/android/server/pm/Installer$AsyncCmd;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/pm/Installer;->writeCmd(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 281
    const-string v3, "Installer"

    const-string v4, "Write cmd fail"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 288
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->processAsync()Lcom/android/server/pm/Installer$AsyncReply;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 293
    .local v1, "reply":Lcom/android/server/pm/Installer$AsyncReply;
    :goto_2
    invoke-virtual {v1}, Lcom/android/server/pm/Installer$AsyncReply;->getCmd()I

    move-result v4

    if-ne v4, v3, :cond_3

    .line 295
    invoke-virtual {p1}, Lcom/android/server/pm/Installer$AsyncCmd;->recordAckTime()V

    .line 296
    invoke-virtual {v1}, Lcom/android/server/pm/Installer$AsyncReply;->checkSuccess()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 297
    iget-object v2, p0, Lcom/android/server/pm/Installer;->asyncCmds:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    .line 298
    goto :goto_0

    .line 289
    .end local v1    # "reply":Lcom/android/server/pm/Installer$AsyncReply;
    :catch_1
    move-exception v0

    .line 290
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "Installer"

    const-string v5, "async command result error"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v1, Lcom/android/server/pm/Installer$AsyncReply;

    invoke-direct {v1, p0}, Lcom/android/server/pm/Installer$AsyncReply;-><init>(Lcom/android/server/pm/Installer;)V

    .restart local v1    # "reply":Lcom/android/server/pm/Installer$AsyncReply;
    goto :goto_2

    .line 299
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/pm/Installer$AsyncCmd;->getFailCount()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    .line 300
    invoke-virtual {p1}, Lcom/android/server/pm/Installer$AsyncCmd;->fail()V

    .line 301
    invoke-direct {p0, p1}, Lcom/android/server/pm/Installer;->asyncExecute(Lcom/android/server/pm/Installer$AsyncCmd;)Z

    move-result v2

    goto :goto_0
.end method

.method private connect()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 109
    iget-object v3, p0, Lcom/android/server/pm/Installer;->mSocket:Landroid/net/LocalSocket;

    if-eqz v3, :cond_0

    .line 127
    :goto_0
    return v2

    .line 112
    :cond_0
    const-string v3, "Installer"

    const-string v4, "connecting..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :try_start_0
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/Installer;->mSocket:Landroid/net/LocalSocket;

    .line 116
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v3, "installd"

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 119
    .local v0, "address":Landroid/net/LocalSocketAddress;
    iget-object v3, p0, Lcom/android/server/pm/Installer;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 121
    iget-object v3, p0, Lcom/android/server/pm/Installer;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/Installer;->mIn:Ljava/io/InputStream;

    .line 122
    iget-object v3, p0, Lcom/android/server/pm/Installer;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/Installer;->mOut:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    :catch_0
    move-exception v1

    .line 124
    .local v1, "ex":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->disconnect()V

    .line 125
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private deleteKey(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delete_key"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 817
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 818
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private disconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 131
    const-string v0, "Installer"

    const-string v1, "disconnecting..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 138
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mIn:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 143
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 147
    :cond_2
    :goto_2
    iput-object v2, p0, Lcom/android/server/pm/Installer;->mSocket:Landroid/net/LocalSocket;

    .line 148
    iput-object v2, p0, Lcom/android/server/pm/Installer;->mIn:Ljava/io/InputStream;

    .line 149
    iput-object v2, p0, Lcom/android/server/pm/Installer;->mOut:Ljava/io/OutputStream;

    .line 150
    return-void

    .line 145
    :catch_0
    move-exception v0

    goto :goto_2

    .line 140
    :catch_1
    move-exception v0

    goto :goto_1

    .line 135
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private execute(Ljava/lang/String;)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lcom/android/server/pm/Installer;->transaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "res":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 416
    :goto_0
    return v2

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private getEncryptionKey()[B
    .locals 5

    .prologue
    .line 828
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 829
    .local v3, "srng":Ljava/security/SecureRandom;
    const/16 v4, 0x48

    new-array v2, v4, [B

    .line 830
    .local v2, "retKey":[B
    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 831
    invoke-static {v2}, Landroid/security/SystemKeyStore;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 834
    .local v1, "encKey":Ljava/lang/String;
    :try_start_0
    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 836
    :goto_0
    return-object v4

    .line 835
    :catch_0
    move-exception v0

    .line 836
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/pm/Installer;
    .locals 2

    .prologue
    .line 100
    const-class v1, Lcom/android/server/pm/Installer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/server/pm/Installer;

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :goto_0
    monitor-exit v1

    return-object v0

    .line 103
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/pm/Installer;

    invoke-direct {v0}, Lcom/android/server/pm/Installer;-><init>()V

    sput-object v0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 104
    sget-object v0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private readBytes([BI)Z
    .locals 7
    .param p1, "buffer"    # [B
    .param p2, "len"    # I

    .prologue
    const/4 v3, 0x0

    .line 153
    const/4 v2, 0x0

    .line 154
    .local v2, "off":I
    if-gez p2, :cond_1

    .line 175
    :goto_0
    return v3

    .line 163
    .local v0, "count":I
    :cond_0
    add-int/2addr v2, v0

    .line 156
    .end local v0    # "count":I
    :cond_1
    if-eq v2, p2, :cond_2

    .line 158
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/Installer;->mIn:Ljava/io/InputStream;

    sub-int v5, p2, v2

    invoke-virtual {v4, p1, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 159
    .restart local v0    # "count":I
    if-gtz v0, :cond_0

    .line 160
    const-string v4, "Installer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v0    # "count":I
    :cond_2
    :goto_1
    if-ne v2, p2, :cond_3

    .line 173
    const/4 v3, 0x1

    goto :goto_0

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "ex":Ljava/io/IOException;
    const-string v4, "Installer"

    const-string v5, "read exception"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 174
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->disconnect()V

    goto :goto_0
.end method

.method private readReply()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->readReplyFromSocket()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/Installer;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/pm/Installer;->buflen:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 255
    .local v0, "s":Ljava/lang/String;
    return-object v0

    .line 260
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "read reply fail"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readReplyFromSocket()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 180
    iput v1, p0, Lcom/android/server/pm/Installer;->buflen:I

    .line 181
    iget-object v3, p0, Lcom/android/server/pm/Installer;->buf:[B

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lcom/android/server/pm/Installer;->readBytes([BI)Z

    move-result v3

    if-nez v3, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v1

    .line 183
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/Installer;->buf:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    iget-object v4, p0, Lcom/android/server/pm/Installer;->buf:[B

    aget-byte v4, v4, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int v0, v3, v4

    .line 184
    .local v0, "len":I
    if-lt v0, v2, :cond_2

    const/16 v3, 0x400

    if-le v0, v3, :cond_3

    .line 185
    :cond_2
    const-string v2, "Installer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid reply length ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->disconnect()V

    goto :goto_0

    .line 189
    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/Installer;->buf:[B

    invoke-direct {p0, v3, v0}, Lcom/android/server/pm/Installer;->readBytes([BI)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    iput v0, p0, Lcom/android/server/pm/Installer;->buflen:I

    move v1, v2

    .line 192
    goto :goto_0
.end method

.method private declared-synchronized transaction(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/Installer;->writeCmd(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    const-string v1, "-1"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :goto_0
    monitor-exit p0

    return-object v1

    .line 218
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->readReply()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v1, "Installer"

    const-string v2, "read fail. check installd"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    const-string v1, "-1"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 214
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private writeCmd(Ljava/lang/String;)Z
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 226
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->connect()Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    const-string v1, "Installer"

    const-string v2, "connection failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    :goto_0
    return v0

    .line 231
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/Installer;->writeCmdToSocket(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 237
    const-string v1, "Installer"

    const-string/jumbo v2, "write command failed? reconnect!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->connect()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/pm/Installer;->writeCmdToSocket(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private writeCmdToSocket(Ljava/lang/String;)Z
    .locals 9
    .param p1, "_cmd"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 196
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 197
    .local v0, "cmd":[B
    array-length v2, v0

    .line 198
    .local v2, "len":I
    if-lt v2, v3, :cond_0

    const/16 v5, 0x400

    if-le v2, v5, :cond_1

    :cond_0
    move v3, v4

    .line 210
    :goto_0
    return v3

    .line 200
    :cond_1
    iget-object v5, p0, Lcom/android/server/pm/Installer;->buf:[B

    and-int/lit16 v6, v2, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    .line 201
    iget-object v5, p0, Lcom/android/server/pm/Installer;->buf:[B

    shr-int/lit8 v6, v2, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 203
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/Installer;->mOut:Ljava/io/OutputStream;

    iget-object v6, p0, Lcom/android/server/pm/Installer;->buf:[B

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 204
    iget-object v5, p0, Lcom/android/server/pm/Installer;->mOut:Ljava/io/OutputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, "ex":Ljava/io/IOException;
    const-string v3, "Installer"

    const-string/jumbo v5, "write error"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->disconnect()V

    move v3, v4

    .line 208
    goto :goto_0
.end method


# virtual methods
.method public asyncCallSatistics()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dexoptTime statistics : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ack : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget v1, p0, Lcom/android/server/pm/Installer;->ackDurationSum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, ", dexopt : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget v1, p0, Lcom/android/server/pm/Installer;->dexoptDurationSum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, ", total : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget v1, p0, Lcom/android/server/pm/Installer;->totalDurationSum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public asyncDexopt(Ljava/lang/String;IZ)I
    .locals 3
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z

    .prologue
    const/16 v2, 0x20

    .line 438
    new-instance v0, Lcom/android/server/pm/Installer$AsyncCmd;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/Installer$AsyncCmd;-><init>(Lcom/android/server/pm/Installer;I)V

    .line 439
    .local v0, "cmd":Lcom/android/server/pm/Installer$AsyncCmd;
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Installer$AsyncCmd;->append(Ljava/lang/Object;)Lcom/android/server/pm/Installer$AsyncCmd;

    .line 440
    invoke-virtual {v0, p1}, Lcom/android/server/pm/Installer$AsyncCmd;->appendPackage(Ljava/lang/String;)Lcom/android/server/pm/Installer$AsyncCmd;

    .line 441
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Installer$AsyncCmd;->append(Ljava/lang/Object;)Lcom/android/server/pm/Installer$AsyncCmd;

    .line 442
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Installer$AsyncCmd;->append(Ljava/lang/Object;)Lcom/android/server/pm/Installer$AsyncCmd;

    .line 443
    if-eqz p3, :cond_0

    const-string v1, " 1"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/pm/Installer$AsyncCmd;->append(Ljava/lang/Object;)Lcom/android/server/pm/Installer$AsyncCmd;

    .line 444
    invoke-direct {p0, v0}, Lcom/android/server/pm/Installer;->asyncExecute(Lcom/android/server/pm/Installer$AsyncCmd;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    const/4 v1, 0x0

    .line 448
    :goto_1
    return v1

    .line 443
    :cond_0
    const-string v1, " 0"

    goto :goto_0

    .line 447
    :cond_1
    const-string v1, "Installer"

    const-string v2, "asyncExecute fail"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public clearUserData(Ljava/lang/String;I)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/16 v2, 0x20

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rmuserdata"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 642
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 643
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 645
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 646
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public createUserData(Ljava/lang/String;IILjava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "userId"    # I
    .param p4, "seinfo"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mkuserdata"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 622
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 623
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 625
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 626
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 629
    if-eqz p4, :cond_0

    .end local p4    # "seinfo":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 629
    .restart local p4    # "seinfo":Ljava/lang/String;
    :cond_0
    const-string p4, "!"

    goto :goto_0
.end method

.method public decrypt(Ljava/lang/String;)I
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x0

    .line 749
    iget-object v3, p0, Lcom/android/server/pm/Installer;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3, p1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v1

    .line 750
    .local v1, "key":[B
    if-nez v1, :cond_0

    .line 751
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->getEncryptionKey()[B

    move-result-object v1

    .line 753
    iget-object v3, p0, Lcom/android/server/pm/Installer;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3, p1, v1, v4, v4}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v3

    if-nez v3, :cond_0

    .line 754
    const-string v3, "Installer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to save encryption key for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const/4 v2, -0x1

    .line 766
    :goto_0
    return v2

    .line 759
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "decrypt"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 760
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 761
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 763
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v2

    .line 766
    .local v2, "rc":I
    goto :goto_0
.end method

.method public deleteCacheFiles(Ljava/lang/String;I)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/16 v2, 0x20

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rmcache"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 613
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 614
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 616
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public dexopt(Ljava/lang/String;IZ)I
    .locals 3
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z

    .prologue
    const/16 v2, 0x20

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dexopt"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 558
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 561
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 562
    if-eqz p3, :cond_0

    const-string v1, " 1"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 562
    :cond_0
    const-string v1, " 0"

    goto :goto_0
.end method

.method public fixUid(Ljava/lang/String;II)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    .prologue
    const/16 v2, 0x20

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fixuid"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 602
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 603
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 605
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 606
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 607
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public freeCache(J)I
    .locals 2
    .param p1, "freeStorageSize"    # J

    .prologue
    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "freecache"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 670
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 671
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getRemainAsyncCmdsSize()I
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/server/pm/Installer;->asyncCmds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSizeInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageStats;)I
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "persona"    # I
    .param p3, "apkPath"    # Ljava/lang/String;
    .param p4, "libDirPath"    # Ljava/lang/String;
    .param p5, "fwdLockApkPath"    # Ljava/lang/String;
    .param p6, "asecPath"    # Ljava/lang/String;
    .param p7, "pStats"    # Landroid/content/pm/PackageStats;

    .prologue
    const/4 v4, -0x1

    const/16 v6, 0x20

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "getsize"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 678
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 679
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 682
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 683
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 685
    if-eqz p4, :cond_1

    .end local p4    # "libDirPath":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 687
    if-eqz p5, :cond_2

    .end local p5    # "fwdLockApkPath":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 689
    if-eqz p6, :cond_3

    .end local p6    # "asecPath":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/pm/Installer;->transaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 692
    .local v3, "s":Ljava/lang/String;
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 694
    .local v2, "res":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v5, v2

    const/4 v6, 0x5

    if-eq v5, v6, :cond_4

    .line 704
    :cond_0
    :goto_3
    return v4

    .line 685
    .end local v2    # "res":[Ljava/lang/String;
    .end local v3    # "s":Ljava/lang/String;
    .restart local p4    # "libDirPath":Ljava/lang/String;
    .restart local p5    # "fwdLockApkPath":Ljava/lang/String;
    .restart local p6    # "asecPath":Ljava/lang/String;
    :cond_1
    const-string p4, "!"

    goto :goto_0

    .line 687
    .end local p4    # "libDirPath":Ljava/lang/String;
    :cond_2
    const-string p5, "!"

    goto :goto_1

    .line 689
    .end local p5    # "fwdLockApkPath":Ljava/lang/String;
    :cond_3
    const-string p6, "!"

    goto :goto_2

    .line 698
    .end local p6    # "asecPath":Ljava/lang/String;
    .restart local v2    # "res":[Ljava/lang/String;
    .restart local v3    # "s":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x1

    :try_start_0
    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p7, Landroid/content/pm/PackageStats;->codeSize:J

    .line 699
    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p7, Landroid/content/pm/PackageStats;->dataSize:J

    .line 700
    const/4 v5, 0x3

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p7, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 701
    const/4 v5, 0x4

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p7, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 702
    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_3

    .line 703
    :catch_0
    move-exception v1

    .line 704
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_3
.end method

.method public install(Ljava/lang/String;IILjava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .param p4, "seinfo"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "install"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 422
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 429
    if-eqz p4, :cond_0

    .end local p4    # "seinfo":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 429
    .restart local p4    # "seinfo":Ljava/lang/String;
    :cond_0
    const-string p4, "!"

    goto :goto_0
.end method

.method public linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p1, "dataPath"    # Ljava/lang/String;
    .param p2, "nativeLibPath"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/16 v2, 0x20

    const/4 v1, -0x1

    .line 721
    if-nez p1, :cond_0

    .line 722
    const-string v2, "Installer"

    const-string v3, "linkNativeLibraryDirectory dataPath is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :goto_0
    return v1

    .line 724
    :cond_0
    if-nez p2, :cond_1

    .line 725
    const-string v2, "Installer"

    const-string v3, "linkNativeLibraryDirectory nativeLibPath is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 729
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "linklib "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 730
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 732
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 734
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 736
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public moveFiles()I
    .locals 1

    .prologue
    .line 709
    const-string v0, "movefiles"

    invoke-direct {p0, v0}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public movedex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "dstPath"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "movedex"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 568
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public overlayTmpfs(Ljava/lang/String;II)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    .prologue
    const/16 v2, 0x20

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tmpfs"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 779
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 780
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 782
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 783
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 784
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 785
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public ping()Z
    .locals 1

    .prologue
    .line 661
    const-string v0, "ping"

    invoke-direct {p0, v0}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 662
    const/4 v0, 0x0

    .line 664
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public processAsync()Lcom/android/server/pm/Installer$AsyncReply;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->readReply()Ljava/lang/String;

    move-result-object v3

    .line 310
    .local v3, "replyStr":Ljava/lang/String;
    new-instance v2, Lcom/android/server/pm/Installer$AsyncReply;

    invoke-direct {v2, p0, v3}, Lcom/android/server/pm/Installer$AsyncReply;-><init>(Lcom/android/server/pm/Installer;Ljava/lang/String;)V

    .line 313
    .local v2, "reply":Lcom/android/server/pm/Installer$AsyncReply;
    iget-object v5, p0, Lcom/android/server/pm/Installer;->asyncCmds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 314
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/Installer$AsyncCmd;>;"
    const/4 v4, 0x0

    .line 315
    .local v4, "ret":Z
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 316
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Installer$AsyncCmd;

    .line 317
    .local v0, "cmd":Lcom/android/server/pm/Installer$AsyncCmd;
    invoke-virtual {v0, v2}, Lcom/android/server/pm/Installer$AsyncCmd;->checkMatched(Lcom/android/server/pm/Installer$AsyncReply;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 318
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 319
    invoke-virtual {v0}, Lcom/android/server/pm/Installer$AsyncCmd;->recordReplyTime()V

    .line 320
    invoke-virtual {v0}, Lcom/android/server/pm/Installer$AsyncCmd;->recordStatistics()V

    .line 321
    invoke-virtual {v2}, Lcom/android/server/pm/Installer$AsyncReply;->checkSuccess()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 322
    const-string v5, "Installer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "asyncDexopt success : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/server/pm/Installer$AsyncReply;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .end local v0    # "cmd":Lcom/android/server/pm/Installer$AsyncCmd;
    :cond_1
    :goto_0
    return-object v2

    .line 323
    .restart local v0    # "cmd":Lcom/android/server/pm/Installer$AsyncCmd;
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/pm/Installer$AsyncCmd;->getFailCount()I

    move-result v5

    const/4 v6, 0x5

    if-ge v5, v6, :cond_3

    .line 324
    const-string v5, "Installer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "asyncDexopt retry : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/server/pm/Installer$AsyncReply;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {v0}, Lcom/android/server/pm/Installer$AsyncCmd;->fail()V

    .line 326
    invoke-direct {p0, v0}, Lcom/android/server/pm/Installer;->asyncExecute(Lcom/android/server/pm/Installer$AsyncCmd;)Z

    goto :goto_0

    .line 328
    :cond_3
    const-string v5, "Installer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "asyncDexopt fail : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/server/pm/Installer$AsyncReply;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;I)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/16 v2, 0x20

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 584
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public removeRL(Ljava/lang/String;I)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/16 v2, 0x20

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rmrcl"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 652
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 653
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 655
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public removeUserDataDirs(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rmuser"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 635
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 636
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 637
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "oldname"    # Ljava/lang/String;
    .param p2, "newname"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rename"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 593
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public rmdex(Ljava/lang/String;)I
    .locals 2
    .param p1, "codePath"    # Ljava/lang/String;

    .prologue
    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rmdex"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 577
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public unEncryptData(Ljava/lang/String;II)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    .prologue
    const/16 v3, 0x20

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "encrypt_disable"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 800
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 801
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 803
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 804
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 805
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 807
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    .line 808
    .local v1, "rc":I
    if-nez v1, :cond_0

    .line 809
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/Installer;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3, p1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p0, v2}, Lcom/android/server/pm/Installer;->deleteKey(Ljava/lang/String;)I

    .line 810
    iget-object v2, p0, Lcom/android/server/pm/Installer;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, p1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 812
    :cond_0
    return v1
.end method
