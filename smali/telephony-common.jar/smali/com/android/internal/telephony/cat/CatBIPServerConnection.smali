.class Lcom/android/internal/telephony/cat/CatBIPServerConnection;
.super Lcom/android/internal/telephony/cat/CatBIPConnection;
.source "CatBIPConnection.java"


# instance fields
.field byteArrayWriter:Ljava/io/ByteArrayOutputStream;

.field lastReadPosition:I

.field linkState:B

.field listener:Ljava/lang/Thread;

.field reader:Ljava/io/BufferedInputStream;

.field server:Ljava/net/ServerSocket;

.field socket:Ljava/net/Socket;

.field storeSendData:Ljava/io/ByteArrayOutputStream;

.field writer:Ljava/io/BufferedOutputStream;


# direct methods
.method public constructor <init>(ILcom/android/internal/telephony/cat/TransportLevel;Lcom/android/internal/telephony/cat/CatBIPManager;)V
    .locals 2
    .param p1, "buffSize"    # I
    .param p2, "iface"    # Lcom/android/internal/telephony/cat/TransportLevel;
    .param p3, "catBIPManager"    # Lcom/android/internal/telephony/cat/CatBIPManager;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 310
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cat/CatBIPConnection;-><init>(ILcom/android/internal/telephony/cat/TransportLevel;Lcom/android/internal/telephony/cat/CatBIPManager;)V

    .line 297
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->listener:Ljava/lang/Thread;

    .line 299
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->reader:Ljava/io/BufferedInputStream;

    .line 301
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->writer:Ljava/io/BufferedOutputStream;

    .line 302
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->byteArrayWriter:Ljava/io/ByteArrayOutputStream;

    .line 303
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->storeSendData:Ljava/io/ByteArrayOutputStream;

    .line 304
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->socket:Ljava/net/Socket;

    .line 305
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->server:Ljava/net/ServerSocket;

    .line 311
    iput-byte v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    .line 312
    iput v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->lastReadPosition:I

    .line 313
    return-void
.end method


# virtual methods
.method public terminateStreams()V
    .locals 3

    .prologue
    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing the streams  for channel ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->listener:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->listener:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->server:Ljava/net/ServerSocket;

    if-eqz v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->server:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 324
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->storeSendData:Ljava/io/ByteArrayOutputStream;

    if-eqz v1, :cond_2

    .line 325
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->storeSendData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 327
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->byteArrayWriter:Ljava/io/ByteArrayOutputStream;

    if-eqz v1, :cond_3

    .line 328
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->byteArrayWriter:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 330
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->reader:Ljava/io/BufferedInputStream;

    if-eqz v1, :cond_4

    .line 331
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->reader:Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 333
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->writer:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_5

    .line 334
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->writer:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 336
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_6

    .line 337
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 339
    :cond_6
    const-string v1, "handleCloseChannel: Closed socket and all streams!"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCloseChannel; IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
