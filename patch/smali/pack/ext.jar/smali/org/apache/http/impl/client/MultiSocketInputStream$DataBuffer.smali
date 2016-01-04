.class Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;
.super Ljava/lang/Object;
.source "MultiSocketInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/client/MultiSocketInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataBuffer"
.end annotation


# instance fields
.field private bSavedInFile:Z

.field private bSwitchedToChild:Z

.field private final bufOffset:J

.field private childChunkEnd:J

.field private childChunkInput:Ljava/io/InputStream;

.field private childChunkStart:J

.field private dis:Ljava/io/DataInputStream;

.field private dos:Ljava/io/DataOutputStream;

.field private fileBuf:Ljava/io/File;

.field private firstBlockOffset:I

.field private fullRead:Z

.field private hasReadLen:I

.field private hasReadLenForSpeed:I

.field private lastTime:J

.field private mBuffer:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[B>;"
        }
    .end annotation
.end field

.field private final mBufferLength:I

.field private final mID:I

.field private offset:J

.field private readOffset:J

.field private restLen:I

.field private sockID:I

.field private startTime:J

.field final synthetic this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

.field private totalContinuousChunk:I


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/MultiSocketInputStream;JIILjava/util/LinkedList;II)V
    .locals 5
    .param p2, "start"    # J
    .param p4, "id"    # I
    .param p5, "len"    # I
    .param p7, "sID"    # I
    .param p8, "totalBlocks"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/LinkedList",
            "<[B>;II)V"
        }
    .end annotation

    .prologue
    .line 3811
    .local p6, "buffer":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    iput-object p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3754
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->dis:Ljava/io/DataInputStream;

    .line 3758
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->dos:Ljava/io/DataOutputStream;

    .line 3762
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    .line 3767
    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->firstBlockOffset:I

    .line 3771
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    .line 3775
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    .line 3779
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkEnd:J

    .line 3791
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bSwitchedToChild:Z

    .line 3812
    iput p4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mID:I

    .line 3813
    iput p7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->sockID:I

    .line 3814
    iput p5, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBufferLength:I

    .line 3815
    iput-object p6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBuffer:Ljava/util/LinkedList;

    .line 3816
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fullRead:Z

    .line 3817
    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLen:I

    .line 3818
    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->restLen:I

    .line 3819
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->startTime:J

    .line 3820
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->lastTime:J

    .line 3821
    iput-wide p2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->offset:J

    .line 3822
    iput-wide p2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->readOffset:J

    .line 3823
    iput-wide p2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bufOffset:J

    .line 3824
    iput p8, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->totalContinuousChunk:I

    .line 3825
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bSavedInFile:Z

    .line 3827
    const/4 v0, 0x0

    .line 3828
    .local v0, "bCreated":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    .line 3829
    invoke-direct {p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->createTempBufFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3830
    const/4 v0, 0x1

    .line 3843
    :cond_0
    iput-boolean v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bSavedInFile:Z

    .line 3845
    return-void

    .line 3834
    :cond_1
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 3835
    .local v2, "obj":Ljava/lang/Object;
    monitor-enter v2

    .line 3837
    const-wide/16 v3, 0x1f4

    :try_start_0
    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3840
    :goto_1
    :try_start_1
    monitor-exit v2

    .line 3828
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3840
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 3839
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private closeAndDelFile()V
    .locals 4

    .prologue
    .line 3882
    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    monitor-enter v2

    .line 3884
    :try_start_0
    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_0

    .line 3885
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close and delete tmp buffer file "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3887
    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    if-eqz v1, :cond_4

    .line 3888
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->dis:Ljava/io/DataInputStream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/FilterInputStream;->close()V

    .line 3889
    :cond_1
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->dos:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_2

    .line 3890
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 3891
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V

    .line 3893
    :cond_2
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 3894
    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource check: buffered file removed (main) "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3895
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    .line 3897
    :cond_4
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->clearBufferDir()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3904
    :cond_5
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 3905
    return-void

    .line 3899
    :catch_0
    move-exception v0

    .line 3900
    .local v0, "ex":Ljava/lang/Throwable;
    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_5

    .line 3901
    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3904
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
    .line 3852
    iget-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    monitor-enter v3

    .line 3853
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

    .line 3854
    .local v0, "bufFileName":Ljava/lang/String;
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_0

    .line 3855
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try to save buffer to file "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3858
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->createBufferDir()V

    .line 3859
    const/4 v2, 0x0

    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v4, v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->parentDir:Ljava/io/File;

    invoke-static {v0, v2, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    .line 3860
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_1

    .line 3861
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resource check: buffered file generated "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3863
    :cond_1
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->dis:Ljava/io/DataInputStream;

    .line 3864
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->dos:Ljava/io/DataOutputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3865
    const/4 v2, 0x1

    :try_start_2
    monitor-exit v3

    .line 3873
    :goto_0
    return v2

    .line 3867
    :catch_0
    move-exception v1

    .line 3868
    .local v1, "e":Ljava/lang/Throwable;
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_2

    .line 3869
    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    .line 3871
    :cond_2
    invoke-direct {p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->closeAndDelFile()V

    .line 3872
    const/4 v0, 0x0

    .line 3873
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 3875
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
.method public changeSockID(I)V
    .locals 0
    .param p1, "sid"    # I

    .prologue
    .line 4192
    iput p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->sockID:I

    .line 4193
    return-void
.end method

.method public clearBuffer()V
    .locals 1

    .prologue
    .line 4222
    iget-boolean v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bSavedInFile:Z

    if-eqz v0, :cond_0

    .line 4223
    invoke-direct {p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->closeAndDelFile()V

    .line 4228
    :goto_0
    return-void

    .line 4226
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto :goto_0
.end method

.method public getHasReadLen()I
    .locals 1

    .prologue
    .line 3947
    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLen:I

    return v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 3930
    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mID:I

    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 3921
    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBufferLength:I

    return v0
.end method

.method public getOffset()J
    .locals 2

    .prologue
    .line 4273
    iget-wide v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->offset:J

    return-wide v0
.end method

.method public getRestLength()I
    .locals 1

    .prologue
    .line 4256
    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->restLen:I

    return v0
.end method

.method public getSockID()I
    .locals 1

    .prologue
    .line 3939
    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->sockID:I

    return v0
.end method

.method public getToBeReadLength()J
    .locals 2

    .prologue
    .line 4265
    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBufferLength:I

    iget v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLen:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getTotalChunks()I
    .locals 1

    .prologue
    .line 4282
    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->totalContinuousChunk:I

    return v0
.end method

.method public isBufferInFile()Z
    .locals 1

    .prologue
    .line 3912
    iget-boolean v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bSavedInFile:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4201
    monitor-enter p0

    .line 4202
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bSavedInFile:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    if-nez v1, :cond_0

    .line 4203
    monitor-exit p0

    .line 4204
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->restLen:I

    if-gtz v1, :cond_1

    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 4205
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4204
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isFullRead()Z
    .locals 1

    .prologue
    .line 4214
    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->restLen:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public push(I[BI)J
    .locals 8
    .param p1, "sid"    # I
    .param p2, "b"    # [B
    .param p3, "length"    # I

    .prologue
    const-wide/16 v4, -0x1

    const/4 v7, 0x0

    .line 4073
    iget v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->sockID:I

    if-eq v6, p1, :cond_1

    .line 4121
    :cond_0
    :goto_0
    return-wide v4

    .line 4077
    :cond_1
    iget-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bSavedInFile:Z

    if-eqz v6, :cond_5

    .line 4079
    :try_start_0
    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->dos:Ljava/io/DataOutputStream;

    const/4 v7, 0x0

    invoke-virtual {v6, p2, v7, p3}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4101
    :goto_1
    iget v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLen:I

    add-int/2addr v4, p3

    iput v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLen:I

    .line 4102
    iget v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->restLen:I

    add-int/2addr v4, p3

    iput v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->restLen:I

    .line 4103
    iget-wide v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->offset:J

    int-to-long v6, p3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->offset:J

    .line 4104
    iget v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLenForSpeed:I

    add-int/2addr v4, p3

    iput v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLenForSpeed:I

    .line 4105
    iget v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLen:I

    iget v5, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBufferLength:I

    if-lt v4, v5, :cond_2

    .line 4106
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fullRead:Z

    .line 4107
    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v4

    iget v5, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mID:I

    const/4 v6, 0x3

    aput-byte v6, v4, v5

    .line 4109
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->lastTime:J

    .line 4110
    iget-wide v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->lastTime:J

    iget-wide v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->startTime:J

    sub-long v1, v4, v6

    .line 4121
    .local v1, "t":J
    int-to-long v4, p3

    goto :goto_0

    .line 4081
    .end local v1    # "t":J
    :catch_0
    move-exception v0

    .line 4082
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v6, v6, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-eqz v6, :cond_4

    .line 4083
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resource check: buffered file is already removed since download cancelled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4084
    :cond_3
    int-to-long v4, p3

    goto :goto_0

    .line 4087
    :cond_4
    sget-boolean v6, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v6, :cond_0

    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4093
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_5
    array-length v4, p2

    if-ne v4, p3, :cond_6

    .line 4094
    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v4, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 4096
    :cond_6
    new-array v3, p3, [B

    .line 4097
    .local v3, "tmp":[B
    invoke-static {p2, v7, v3, v7, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4098
    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public push(Ljava/io/InputStream;JJ)V
    .locals 6
    .param p1, "cin"    # Ljava/io/InputStream;
    .param p2, "s"    # J
    .param p4, "e"    # J

    .prologue
    .line 4131
    monitor-enter p0

    .line 4132
    :try_start_0
    iput-object p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    .line 4133
    iput-wide p2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    .line 4134
    iput-wide p4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkEnd:J

    .line 4136
    sub-long v2, p4, p2

    const-wide/16 v4, 0x1

    add-long v0, v2, v4

    .line 4137
    .local v0, "len":J
    iget v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLen:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLen:I

    .line 4138
    iget v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->restLen:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->restLen:I

    .line 4139
    iget-wide v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->offset:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->offset:J

    .line 4140
    iget v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLenForSpeed:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLenForSpeed:I

    .line 4141
    iget v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLen:I

    iget v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBufferLength:I

    if-lt v2, v3, :cond_1

    .line 4142
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Buffer full read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBufferLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4143
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fullRead:Z

    .line 4144
    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    iget v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mID:I

    const/4 v4, 0x3

    aput-byte v4, v2, v3

    .line 4146
    :cond_1
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "push inputstream to data buffer from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4147
    :cond_2
    monitor-exit p0

    .line 4148
    return-void

    .line 4147
    .end local v0    # "len":J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public read([BII)I
    .locals 11
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 3961
    const/4 v5, 0x0

    .line 3962
    .local v5, "readLen":I
    iget-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bSavedInFile:Z

    if-eqz v6, :cond_a

    .line 3964
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    .line 4048
    :goto_0
    return v6

    .line 3965
    :cond_0
    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    if-nez v6, :cond_3

    .line 3966
    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v6, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 4033
    :goto_1
    if-lez v5, :cond_2

    .line 4034
    iget-wide v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->readOffset:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->readOffset:J

    .line 4035
    iget v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->restLen:I

    sub-int/2addr v6, v5

    iput v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->restLen:I

    .line 4036
    iget v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->restLen:I

    if-nez v6, :cond_2

    iget v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLen:I

    iget v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBufferLength:I

    if-lt v6, v7, :cond_2

    .line 4037
    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v6

    iget v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mID:I

    const/4 v8, 0x4

    aput-byte v8, v6, v7

    .line 4038
    sget-boolean v6, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resource check: finish reading chunk "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bufOffset:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bufOffset:J

    iget v9, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBufferLength:I

    int-to-long v9, v9

    add-long/2addr v7, v9

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBufferLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", in which "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bufOffset:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is from cache file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkEnd:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is from child input "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4043
    :cond_1
    iget-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bSavedInFile:Z

    if-eqz v6, :cond_2

    .line 4044
    invoke-direct {p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->closeAndDelFile()V

    :cond_2
    move v6, v5

    .line 4048
    goto/16 :goto_0

    .line 3969
    :cond_3
    :try_start_1
    iget-wide v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->readOffset:J

    iget-wide v8, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    .line 3970
    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->dis:Ljava/io/DataInputStream;

    iget-wide v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    iget-wide v9, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->readOffset:J

    sub-long/2addr v7, v9

    long-to-int v7, v7

    invoke-static {p3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v6, p1, p2, v7}, Ljava/io/DataInputStream;->read([BII)I

    move-result v5

    goto/16 :goto_1

    .line 3973
    :cond_4
    iget-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bSwitchedToChild:Z

    if-nez v6, :cond_6

    .line 3974
    sget-boolean v6, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resource check: finish reading chunk "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bufOffset:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    iget-wide v9, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bufOffset:J

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from cache file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", now bytesRemaining data "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkEnd:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " will be read from child input "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3978
    :cond_5
    invoke-direct {p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->closeAndDelFile()V

    .line 3979
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bSwitchedToChild:Z

    .line 3981
    :cond_6
    sget-boolean v6, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v6, :cond_7

    .line 3982
    iget-wide v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->readOffset:J

    iget-wide v8, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    if-eqz v6, :cond_7

    .line 3983
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "now start to read from childChunkInput "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3986
    :cond_7
    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    instance-of v6, v6, Lorg/apache/http/impl/client/TwoChunkInputStream;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    check-cast v6, Lorg/apache/http/impl/client/TwoChunkInputStream;

    invoke-virtual {v6}, Lorg/apache/http/impl/client/TwoChunkInputStream;->isClosed()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3987
    sget-boolean v6, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "childChunkInput is closed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3988
    :cond_8
    const/4 v6, -0x1

    goto/16 :goto_0

    .line 3990
    :cond_9
    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    invoke-virtual {v6, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    goto/16 :goto_1

    .line 3994
    :catch_0
    move-exception v2

    .line 3995
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    .line 3996
    invoke-direct {p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->closeAndDelFile()V

    .line 3997
    const/4 v5, -0x1

    .line 3998
    goto/16 :goto_1

    .line 4001
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_a
    iget-object v7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBuffer:Ljava/util/LinkedList;

    monitor-enter v7

    .line 4002
    move v0, p2

    .line 4003
    .local v0, "appOffset":I
    :cond_b
    :try_start_2
    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    .line 4004
    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 4005
    .local v1, "b":[B
    if-nez v1, :cond_d

    .line 4006
    const/4 v6, 0x0

    iput v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->firstBlockOffset:I

    .line 4030
    .end local v1    # "b":[B
    :cond_c
    :goto_2
    monitor-exit v7

    goto/16 :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 4009
    .restart local v1    # "b":[B
    :cond_d
    :try_start_3
    array-length v6, v1

    iget v8, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->firstBlockOffset:I

    sub-int v4, v6, v8

    .line 4011
    .local v4, "notReadLen":I
    add-int v6, v5, v4

    if-gt v6, p3, :cond_e

    .line 4012
    iget v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->firstBlockOffset:I

    invoke-static {v1, v6, p1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4013
    add-int/2addr v5, v4

    .line 4014
    add-int/2addr v0, v4

    .line 4015
    const/4 v6, 0x0

    iput v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->firstBlockOffset:I

    .line 4016
    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 4017
    if-ne v5, p3, :cond_b

    goto :goto_2

    .line 4022
    :cond_e
    sub-int v3, p3, v5

    .line 4023
    .local v3, "l":I
    iget v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->firstBlockOffset:I

    invoke-static {v1, v6, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4024
    add-int/2addr v5, v3

    .line 4025
    add-int/2addr v0, v3

    .line 4026
    iget v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->firstBlockOffset:I

    add-int/2addr v6, v3

    iput v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->firstBlockOffset:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public removeTail(I)V
    .locals 6
    .param p1, "count"    # I

    .prologue
    .line 4236
    iget-boolean v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bSavedInFile:Z

    if-eqz v2, :cond_1

    .line 4248
    :cond_0
    return-void

    .line 4240
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 4241
    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 4242
    .local v0, "b":[B
    iget v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLen:I

    array-length v3, v0

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLen:I

    .line 4243
    iget v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->restLen:I

    array-length v3, v0

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->restLen:I

    .line 4244
    iget-wide v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->offset:J

    array-length v4, v0

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->offset:J

    .line 4245
    iget v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLenForSpeed:I

    array-length v3, v0

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLenForSpeed:I

    .line 4240
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setTotalChunks(I)V
    .locals 0
    .param p1, "totalChunks"    # I

    .prologue
    .line 4291
    iput p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->totalContinuousChunk:I

    .line 4292
    return-void
.end method

.method public startReceiveData()V
    .locals 3

    .prologue
    .line 4055
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->startTime:J

    .line 4056
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLenForSpeed:I

    .line 4057
    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v0}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v0

    iget v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mID:I

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    .line 4058
    return-void
.end method

.method public switchSocket(IZ)[J
    .locals 6
    .param p1, "newSockID"    # I
    .param p2, "bForce"    # Z

    .prologue
    .line 4159
    monitor-enter p0

    .line 4161
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->getToBeReadLength()J

    move-result-wide v1

    sget v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_BLOCKSIZE_TO_HANDOVER:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    if-nez p2, :cond_1

    .line 4162
    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_0

    .line 4163
    const-string v1, "Socket do not need to switch"

    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4165
    :cond_0
    const/4 v1, 0x0

    new-array v0, v1, [J

    monitor-exit p0

    .line 4179
    :goto_0
    return-object v0

    .line 4167
    :cond_1
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v1

    array-length v1, v1

    iget v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->sockID:I

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v1

    iget v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->sockID:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    .line 4170
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v1

    iget v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->sockID:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->handOver()V

    .line 4173
    :cond_2
    const/4 v1, 0x4

    new-array v0, v1, [J

    .line 4174
    .local v0, "range":[J
    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->offset:J

    aput-wide v2, v0, v1

    .line 4175
    const/4 v1, 0x1

    iget-wide v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->offset:J

    invoke-virtual {p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->getToBeReadLength()J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 4176
    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->getToBeReadLength()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 4177
    const/4 v1, 0x3

    iget v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mID:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    .line 4178
    iput p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->sockID:I

    .line 4179
    monitor-exit p0

    goto :goto_0

    .line 4181
    .end local v0    # "range":[J
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
