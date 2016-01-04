.class Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;
.super Ljava/lang/Object;
.source "TwoChunkInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/client/TwoChunkInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimpleDataBuffer"
.end annotation


# instance fields
.field private bSwitchedToChild:Z

.field private final bufOffset:J

.field private childChunkEnd:J

.field private childChunkInput:Ljava/io/InputStream;

.field private childChunkStart:J

.field private dis:Ljava/io/DataInputStream;

.field private dos:Ljava/io/DataOutputStream;

.field private fileBuf:Ljava/io/File;

.field private fullRead:Z

.field private hasReadLen:J

.field private final mBufferLength:J

.field private offset:J

.field private readOffset:J

.field private restLen:J

.field final synthetic this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/TwoChunkInputStream;JJ)V
    .locals 7
    .param p2, "start"    # J
    .param p4, "len"    # J

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 1275
    iput-object p1, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1250
    iput-object v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->dis:Ljava/io/DataInputStream;

    .line 1254
    iput-object v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->dos:Ljava/io/DataOutputStream;

    .line 1258
    iput-object v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    .line 1260
    iput-object v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->childChunkInput:Ljava/io/InputStream;

    .line 1261
    iput-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->childChunkStart:J

    .line 1262
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->childChunkEnd:J

    .line 1265
    iput-boolean v6, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->bSwitchedToChild:Z

    .line 1276
    iput-wide p4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->mBufferLength:J

    .line 1277
    iput-boolean v6, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->fullRead:Z

    .line 1278
    iput-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->hasReadLen:J

    .line 1279
    iput-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->restLen:J

    .line 1280
    iput-wide p2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->offset:J

    .line 1281
    iput-wide p2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->readOffset:J

    .line 1282
    iput-wide p2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->bufOffset:J

    .line 1283
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 1284
    invoke-direct {p0}, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->createTempBufFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1298
    :cond_0
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_1

    .line 1299
    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new SimpleDBuffer added from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    .line 1301
    :cond_1
    return-void

    .line 1288
    :cond_2
    invoke-direct {p0}, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->closeAndDelFile()V

    .line 1289
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1290
    .local v1, "obj":Ljava/lang/Object;
    monitor-enter v1

    .line 1292
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1295
    :goto_1
    :try_start_1
    monitor-exit v1

    .line 1283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1295
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1294
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private closeAndDelFile()V
    .locals 5

    .prologue
    .line 1336
    iget-object v1, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static {v1}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v2

    monitor-enter v2

    .line 1338
    :try_start_0
    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_0

    .line 1339
    iget-object v1, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buffered file removed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    .line 1341
    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    if-eqz v1, :cond_4

    .line 1342
    iget-object v1, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->dis:Ljava/io/DataInputStream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/FilterInputStream;->close()V

    .line 1343
    :cond_1
    iget-object v1, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->dos:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_2

    .line 1344
    iget-object v1, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 1345
    iget-object v1, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V

    .line 1347
    :cond_2
    iget-object v1, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1348
    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resource check: buffered file removed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    .line 1349
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    .line 1351
    :cond_4
    iget-object v1, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static {v1}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->clearBufferDir()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1358
    :cond_5
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 1359
    return-void

    .line 1353
    :catch_0
    move-exception v0

    .line 1354
    .local v0, "ex":Ljava/lang/Throwable;
    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_5

    .line 1355
    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1358
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private createTempBufFile()Z
    .locals 6

    .prologue
    .line 1307
    iget-object v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v3

    monitor-enter v3

    .line 1308
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ".sbBuf_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1309
    .local v0, "bufFileName":Ljava/lang/String;
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_0

    .line 1310
    iget-object v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "try to save buffer to file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1313
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->createBufferDir()V

    .line 1314
    const/4 v2, 0x0

    iget-object v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static {v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v4

    iget-object v4, v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->parentDir:Ljava/io/File;

    invoke-static {v0, v2, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    .line 1315
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_1

    .line 1316
    iget-object v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resource check: buffered file generated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    .line 1318
    :cond_1
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->dis:Ljava/io/DataInputStream;

    .line 1319
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->dos:Ljava/io/DataOutputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1320
    const/4 v2, 0x1

    :try_start_2
    monitor-exit v3

    .line 1328
    :goto_0
    return v2

    .line 1322
    :catch_0
    move-exception v1

    .line 1323
    .local v1, "e":Ljava/lang/Throwable;
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_2

    .line 1324
    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    .line 1326
    :cond_2
    invoke-direct {p0}, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->closeAndDelFile()V

    .line 1327
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    .line 1328
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 1330
    .end local v0    # "bufFileName":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public clearBuffer()V
    .locals 0

    .prologue
    .line 1557
    invoke-direct {p0}, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->closeAndDelFile()V

    .line 1558
    return-void
.end method

.method public getHasReadLen()J
    .locals 2

    .prologue
    .line 1372
    iget-wide v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->hasReadLen:J

    return-wide v0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 1365
    iget-wide v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->mBufferLength:J

    return-wide v0
.end method

.method public getOffset()J
    .locals 2

    .prologue
    .line 1590
    iget-wide v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->offset:J

    return-wide v0
.end method

.method public getRestLength()J
    .locals 2

    .prologue
    .line 1574
    iget-wide v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->restLen:J

    return-wide v0
.end method

.method public getToBeReadLength()J
    .locals 4

    .prologue
    .line 1582
    iget-wide v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->mBufferLength:J

    iget-wide v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->hasReadLen:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 1545
    monitor-enter p0

    .line 1546
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->childChunkInput:Ljava/io/InputStream;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    if-nez v1, :cond_0

    .line 1547
    monitor-exit p0

    .line 1548
    :goto_0
    return v0

    :cond_0
    iget-wide v1, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->restLen:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 1549
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1548
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isFullRead()Z
    .locals 1

    .prologue
    .line 1565
    iget-boolean v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->fullRead:Z

    return v0
.end method

.method public push(I[BI)J
    .locals 10
    .param p1, "sid"    # I
    .param p2, "b"    # [B
    .param p3, "length"    # I

    .prologue
    const-wide/16 v8, -0x1

    .line 1469
    :try_start_0
    iget-object v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->dos:Ljava/io/DataOutputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, p2, v5, p3}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1528
    :goto_0
    iget-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->hasReadLen:J

    int-to-long v6, p3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->hasReadLen:J

    .line 1529
    iget-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->restLen:J

    int-to-long v6, p3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->restLen:J

    .line 1530
    iget-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->offset:J

    int-to-long v6, p3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->offset:J

    .line 1531
    iget-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->hasReadLen:J

    iget-wide v6, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->mBufferLength:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 1532
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_0

    .line 1533
    iget-object v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Buffer full read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->mBufferLength:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    .line 1535
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->fullRead:Z

    .line 1537
    :cond_1
    int-to-long v4, p3

    :goto_1
    return-wide v4

    .line 1471
    :catch_0
    move-exception v1

    .line 1472
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static {v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v4

    iget-boolean v4, v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-eqz v4, :cond_3

    .line 1473
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resource check: buffered file is already removed since download cancelled "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    .line 1474
    :cond_2
    int-to-long v4, p3

    goto :goto_1

    .line 1476
    :cond_3
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_4

    .line 1477
    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    .line 1479
    :cond_4
    const/4 v0, 0x1

    .line 1480
    .local v0, "bCreated":Z
    iget-object v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1481
    :cond_5
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_6

    .line 1482
    iget-object v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buffered file not found in push "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    .line 1484
    :cond_6
    const/4 v0, 0x0

    .line 1485
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    const/4 v4, 0x3

    if-ge v3, v4, :cond_7

    .line 1486
    invoke-direct {p0}, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->closeAndDelFile()V

    .line 1487
    invoke-direct {p0}, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->createTempBufFile()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1488
    const/4 v0, 0x1

    .line 1500
    :cond_7
    if-nez v0, :cond_8

    .line 1501
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_8

    .line 1502
    iget-object v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    const-string v5, "failed to create temp buffered file for 3 times "

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    .line 1506
    .end local v3    # "i":I
    :cond_8
    if-eqz v0, :cond_f

    .line 1507
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buffer file created again in push exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    .line 1508
    :cond_9
    invoke-virtual {p0}, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1509
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_a

    iget-object v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    const-string v5, "buffer is empty now, can keep on write"

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    .line 1511
    :cond_a
    :try_start_1
    iget-object v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->dos:Ljava/io/DataOutputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, p2, v5, p3}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1513
    :catch_1
    move-exception v2

    .line 1514
    .local v2, "ex":Ljava/lang/Throwable;
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_b

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    .line 1515
    :cond_b
    iget-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->readOffset:J

    mul-long/2addr v4, v8

    goto/16 :goto_1

    .line 1492
    .end local v2    # "ex":Ljava/lang/Throwable;
    .restart local v3    # "i":I
    :cond_c
    monitor-enter p0

    .line 1494
    const-wide/16 v4, 0x1f4

    :try_start_2
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1497
    :goto_3
    :try_start_3
    monitor-exit p0

    .line 1485
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1497
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 1519
    .end local v3    # "i":I
    :cond_d
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_e

    iget-object v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buffer file created again in push exception, but some bufferred data is missing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->restLen:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    .line 1520
    :cond_e
    iget-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->readOffset:J

    mul-long/2addr v4, v8

    goto/16 :goto_1

    .line 1524
    :cond_f
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_10

    iget-object v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    const-string v5, "buffer cannot be created again"

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    .line 1525
    :cond_10
    iget-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->readOffset:J

    mul-long/2addr v4, v8

    goto/16 :goto_1

    .line 1496
    .restart local v3    # "i":I
    :catch_2
    move-exception v4

    goto :goto_3
.end method

.method public push(Ljava/io/InputStream;JJ)V
    .locals 6
    .param p1, "cin"    # Ljava/io/InputStream;
    .param p2, "s"    # J
    .param p4, "e"    # J

    .prologue
    .line 1382
    monitor-enter p0

    .line 1383
    :try_start_0
    iput-object p1, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->childChunkInput:Ljava/io/InputStream;

    .line 1384
    iput-wide p2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->childChunkStart:J

    .line 1385
    iput-wide p4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->childChunkEnd:J

    .line 1387
    sub-long v2, p4, p2

    const-wide/16 v4, 0x1

    add-long v0, v2, v4

    .line 1388
    .local v0, "len":J
    iget-wide v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->hasReadLen:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->hasReadLen:J

    .line 1389
    iget-wide v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->restLen:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->restLen:J

    .line 1390
    iget-wide v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->offset:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->offset:J

    .line 1391
    iget-wide v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->hasReadLen:J

    iget-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->mBufferLength:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 1392
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Buffer full read : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->mBufferLength:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    .line 1393
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->fullRead:Z

    .line 1395
    :cond_1
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "push inputstream to data buffer from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    .line 1396
    :cond_2
    monitor-exit p0

    .line 1397
    return-void

    .line 1396
    .end local v0    # "len":J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public read([BII)I
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const-wide/16 v8, 0x1

    .line 1409
    const/4 v1, 0x0

    .line 1411
    .local v1, "readLen":I
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 1460
    :goto_0
    return v2

    .line 1412
    :cond_0
    iget-object v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->childChunkInput:Ljava/io/InputStream;

    if-nez v2, :cond_3

    .line 1413
    iget-object v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1448
    :goto_1
    if-lez v1, :cond_2

    .line 1449
    iget-wide v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->readOffset:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->readOffset:J

    .line 1450
    iget-wide v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->restLen:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->restLen:J

    .line 1451
    iget-wide v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->restLen:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->hasReadLen:J

    iget-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->mBufferLength:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 1452
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resource check: finish reading chunk "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->bufOffset:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->bufOffset:J

    iget-wide v6, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->mBufferLength:J

    add-long/2addr v4, v6

    sub-long/2addr v4, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->mBufferLength:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", in which "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->bufOffset:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->childChunkStart:J

    sub-long/2addr v4, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is from cache file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->childChunkStart:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->childChunkEnd:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is from child input "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->childChunkInput:Ljava/io/InputStream;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    .line 1457
    :cond_1
    invoke-direct {p0}, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->closeAndDelFile()V

    :cond_2
    move v2, v1

    .line 1460
    goto/16 :goto_0

    .line 1416
    :cond_3
    :try_start_1
    iget-wide v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->readOffset:J

    iget-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->childChunkStart:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 1417
    iget-object v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->dis:Ljava/io/DataInputStream;

    iget-wide v3, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->childChunkStart:J

    iget-wide v5, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->readOffset:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, p1, p2, v3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v1

    goto/16 :goto_1

    .line 1420
    :cond_4
    iget-boolean v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->bSwitchedToChild:Z

    if-nez v2, :cond_6

    .line 1421
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resource check: finish reading sec chunk "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->bufOffset:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->childChunkStart:J

    sub-long/2addr v4, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->childChunkStart:J

    iget-wide v6, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->bufOffset:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from cache file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", now bytesRemaining data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->childChunkStart:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->childChunkEnd:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " will be read from child input "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->childChunkInput:Ljava/io/InputStream;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    .line 1425
    :cond_5
    invoke-direct {p0}, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->closeAndDelFile()V

    .line 1426
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->bSwitchedToChild:Z

    .line 1428
    :cond_6
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_7

    .line 1429
    iget-wide v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->readOffset:J

    iget-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->childChunkStart:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->childChunkInput:Ljava/io/InputStream;

    if-eqz v2, :cond_7

    .line 1430
    iget-object v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "now start to read from childChunkInput "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->childChunkInput:Ljava/io/InputStream;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    .line 1433
    :cond_7
    iget-object v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->childChunkInput:Ljava/io/InputStream;

    instance-of v2, v2, Lorg/apache/http/impl/client/TwoChunkInputStream;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->childChunkInput:Ljava/io/InputStream;

    check-cast v2, Lorg/apache/http/impl/client/TwoChunkInputStream;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1434
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "childChunkInput is closed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->childChunkInput:Ljava/io/InputStream;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    .line 1435
    :cond_8
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 1437
    :cond_9
    iget-object v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->childChunkInput:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto/16 :goto_1

    .line 1441
    :catch_0
    move-exception v0

    .line 1442
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_a

    .line 1443
    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    .line 1445
    :cond_a
    invoke-direct {p0}, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->closeAndDelFile()V

    .line 1446
    const/4 v1, -0x1

    goto/16 :goto_1
.end method
