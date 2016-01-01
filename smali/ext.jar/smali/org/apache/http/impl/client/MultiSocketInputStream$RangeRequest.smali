.class Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
.super Ljava/lang/Object;
.source "MultiSocketInputStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/client/MultiSocketInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RangeRequest"
.end annotation


# instance fields
.field private bHandover:Z

.field public bIOExceptionDuringContinueChunk:Z

.field private chunkStartTime:J

.field private connInfID:I

.field private currentBlockNumber:I

.field private dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

.field director:Lorg/apache/http/impl/client/DefaultRequestDirector;

.field private mbReconnect:Z

.field rrCustomHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

.field public rrExceptionCount:I

.field public rrStatus:I

.field private sockID:I

.field private t0:J

.field private t1:J

.field private t2:J

.field final synthetic this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

.field private final threadName:Ljava/lang/String;

.field private timer:[J

.field public totalElapsedTime:J

.field private totalReadSize:J


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/MultiSocketInputStream;I)V
    .locals 5
    .param p2, "socketId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 2639
    iput-object p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2561
    iput-boolean v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->bHandover:Z

    .line 2571
    iput-wide v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->chunkStartTime:J

    .line 2576
    iput-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    .line 2611
    iput-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrCustomHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    .line 2616
    iput v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrExceptionCount:I

    .line 2621
    iput v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrStatus:I

    .line 2626
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->currentBlockNumber:I

    .line 2631
    iput-boolean v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->bIOExceptionDuringContinueChunk:Z

    .line 2640
    iput p2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    .line 2641
    iput p2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    .line 2642
    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    if-nez v0, :cond_0

    .line 2643
    const-string v0, "WIFI_Socket_Thread"

    iput-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->threadName:Ljava/lang/String;

    .line 2647
    :goto_0
    iput-wide v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->totalReadSize:J

    .line 2648
    iput-wide v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->totalElapsedTime:J

    .line 2649
    iput-wide v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->t0:J

    .line 2650
    iput-wide v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->t1:J

    .line 2651
    iput-wide v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->t2:J

    .line 2659
    new-instance v0, Lorg/apache/http/impl/client/CustomHttpClient;

    iget v1, p1, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/CustomHttpClient;-><init>(I)V

    iput-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrCustomHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    .line 2660
    iput-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    .line 2661
    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsConnectionClosedAfterEveryRequest:Z
    invoke-static {p1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2600(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->mbReconnect:Z

    .line 2662
    return-void

    .line 2645
    :cond_0
    const-string v0, "Mobile_Socket_Thread"

    iput-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->threadName:Ljava/lang/String;

    goto :goto_0
.end method

.method private reconnect(I)Z
    .locals 12
    .param p1, "sockId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 3645
    sget-boolean v0, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v0, :cond_0

    .line 3646
    const-string v0, "try to connect again"

    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3648
    :cond_0
    iput-boolean v9, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->bHandover:Z

    .line 3649
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->t1:J

    .line 3652
    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->mbReconnect:Z

    if-eqz v0, :cond_3

    .line 3654
    :cond_1
    sget-boolean v0, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v0, :cond_2

    .line 3655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing the connection for socket id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v3, v3, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3659
    :cond_2
    invoke-virtual {p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    .line 3660
    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrCustomHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    iget-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpRequest;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v0, v3}, Lorg/apache/http/impl/client/CustomHttpClient;->createClientRequestDirector(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/DefaultRequestDirector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    .line 3663
    :cond_3
    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    if-nez v0, :cond_4

    .line 3664
    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrCustomHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    iget-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpRequest;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v0, v3}, Lorg/apache/http/impl/client/CustomHttpClient;->createClientRequestDirector(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/DefaultRequestDirector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    .line 3667
    :cond_4
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-nez v0, :cond_5

    .line 3669
    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;
    invoke-static {v0}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpRequest;

    move-result-object v0

    aget-object v2, v0, p1

    .line 3670
    .local v2, "request":Lorg/apache/http/HttpRequest;
    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;
    invoke-static {v0}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v0

    aget-object v1, v0, p1

    .line 3672
    .local v1, "target":Lorg/apache/http/HttpHost;
    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpContext:Lorg/apache/http/protocol/HttpContext;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$100(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/protocol/HttpContext;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrCustomHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget v4, v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    invoke-static {p1, v4}, Lorg/apache/http/impl/client/CustomHttpClient;->getLocalAddrEx(II)Ljava/net/InetAddress;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRemoteAddress:[Ljava/net/InetAddress;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Ljava/net/InetAddress;

    move-result-object v5

    aget-object v5, v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/http/impl/client/DefaultRequestDirector;->reconnect(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;Ljava/net/InetAddress;Ljava/net/InetAddress;)V

    .line 3675
    sget-boolean v0, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v0, :cond_5

    .line 3676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating socket for the "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "socket id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v3, v3, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3682
    .end local v1    # "target":Lorg/apache/http/HttpHost;
    .end local v2    # "request":Lorg/apache/http/HttpRequest;
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v10, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->t1:J

    sub-long v7, v3, v10

    .line 3683
    .local v7, "tmp":J
    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v0}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->reconnTime:[J

    iget v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    aput-wide v7, v0, v3

    .line 3689
    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3691
    .end local v7    # "tmp":J
    :goto_0
    return v0

    .line 3690
    :catch_0
    move-exception v6

    .local v6, "ex":Ljava/lang/Throwable;
    move v0, v9

    .line 3691
    goto :goto_0
.end method

.method private submitData()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x8

    const-wide/16 v10, 0x0

    const/4 v5, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 3588
    new-array v1, v5, [J

    .line 3589
    .local v1, "lens":[J
    new-array v2, v5, [J

    .line 3590
    .local v2, "times":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 3591
    iget-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v3

    aget-object v3, v3, v0

    iget-wide v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->totalReadSize:J

    aput-wide v3, v1, v0

    .line 3592
    iget-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v3

    aget-object v3, v3, v0

    iget-wide v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->totalElapsedTime:J

    aput-wide v3, v2, v0

    .line 3590
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3594
    :cond_0
    aget-wide v3, v2, v9

    const-wide/16 v5, 0x7d0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    aget-wide v3, v2, v8

    const-wide/16 v5, 0x7d0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    aget-wide v3, v1, v9

    cmp-long v3, v3, v10

    if-lez v3, :cond_3

    aget-wide v3, v1, v8

    cmp-long v3, v3, v10

    if-lez v3, :cond_3

    .line 3595
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_1

    .line 3596
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "submit speed for rr case - socket[0]: len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, v1, v9

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, v2, v9

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", speed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, v1, v9

    mul-long/2addr v4, v12

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    aget-wide v6, v2, v9

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Kbps"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3597
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "submit speed for rr case - socket[1]: len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, v1, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, v2, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", speed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, v1, v8

    mul-long/2addr v4, v12

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    aget-wide v6, v2, v8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Kbps"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3599
    :cond_1
    invoke-static {v1, v2}, Lorg/apache/http/impl/client/CustomHttpClient;->submitMultiSocketData([J[J)V

    .line 3607
    :cond_2
    :goto_1
    sput-boolean v8, Lorg/apache/http/impl/client/DefaultRequestDirector;->bIsDataSubmited:Z

    .line 3608
    return-void

    .line 3602
    :cond_3
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_2

    .line 3603
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not to submit speed for rr case - socket[0]: len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, v1, v9

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, v2, v9

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3604
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not to submit speed for rr case - socket[1]: len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, v1, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, v2, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public closeHTTP()V
    .locals 2

    .prologue
    .line 3623
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v1, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v1, :cond_0

    .line 3624
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultRequestDirector;->releaseConnection()V

    .line 3626
    :cond_0
    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_1

    .line 3627
    const-string v1, "try to close current HTTP session"

    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3635
    :cond_1
    :goto_0
    return-void

    .line 3629
    :catch_0
    move-exception v0

    .line 3630
    .local v0, "ex":Ljava/lang/Throwable;
    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_1

    .line 3631
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3632
    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public handOver()V
    .locals 1

    .prologue
    .line 3614
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->bHandover:Z

    .line 3615
    invoke-virtual {p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    .line 3616
    return-void
.end method

.method public run()V
    .locals 85

    .prologue
    .line 2666
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->threadName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # operator++ for: Lorg/apache/http/impl/client/MultiSocketInputStream;->sThreadID:I
    invoke-static {}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1708()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "_"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2669
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v4, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDefaultRequestDirectorInstance:Lorg/apache/http/impl/client/DefaultRequestDirector;

    monitor-enter v4

    .line 2670
    :try_start_0
    sget v3, Lorg/apache/http/impl/client/DefaultRequestDirector;->sProcessUsingMultiSocket:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lorg/apache/http/impl/client/DefaultRequestDirector;->sProcessUsingMultiSocket:I

    .line 2671
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2673
    const/4 v13, 0x1

    .line 2675
    .local v13, "bFirstBlockRsp":Z
    sget v52, Lorg/apache/http/impl/client/MultiSocketInputStream;->INIT_BUFFERLEN:I

    .line 2676
    .local v52, "iRealBlockSize":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->t0:J

    .line 2677
    const-wide/16 v82, 0x0

    .line 2683
    .local v82, "waitTime":J
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2100(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_c

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrStatus:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_c

    .line 2684
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 2686
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v70

    .line 2689
    .local v70, "startChunkTime":J
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v3, :cond_1

    .line 2692
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v3, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2693
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v8, 0x1

    iput-boolean v8, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    .line 2798
    :cond_1
    :goto_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2799
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    # invokes: Lorg/apache/http/impl/client/MultiSocketInputStream;->getOtherSocketID(I)I
    invoke-static {v3, v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4900(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    move-result v60

    .line 2802
    .local v60, "otherSockID":I
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v3

    aget-object v3, v3, v60

    iget v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrStatus:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 2806
    const/16 v31, 0x0

    .line 2807
    .local v31, "chunkNotRead":I
    const/16 v21, 0x0

    .line 2811
    .local v21, "blockedState":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mReadBlockNumber:Ljava/lang/Integer;
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v51

    .line 2812
    .local v51, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v3

    array-length v3, v3

    move/from16 v0, v51

    if-ge v0, v3, :cond_4

    .line 2813
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v3

    aget-byte v3, v3, v51

    if-ltz v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v3

    aget-byte v3, v3, v51

    const/4 v4, 0x3

    if-ge v3, v4, :cond_1e

    .line 2814
    add-int/lit8 v31, v31, 0x1

    .line 2819
    :cond_3
    const/4 v3, 0x1

    move/from16 v0, v31

    if-le v0, v3, :cond_1f

    .line 2825
    :cond_4
    :goto_5
    const/4 v3, 0x1

    move/from16 v0, v31

    if-gt v0, v3, :cond_5

    if-lez v21, :cond_20

    .line 2848
    .end local v21    # "blockedState":I
    .end local v31    # "chunkNotRead":I
    .end local v51    # "i":I
    :cond_5
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_6

    .line 2849
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start to check socket connectivity ReCon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->mbReconnect:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 2853
    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v3, v3, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v3, v3, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v3}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->mbReconnect:Z

    if-eqz v3, :cond_a

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v3, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v3

    if-nez v3, :cond_a

    .line 2857
    :try_start_2
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget v4, v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    invoke-static {v3, v4}, Lorg/apache/http/impl/client/CustomHttpClient;->getLocalAddrEx(II)Ljava/net/InetAddress;

    move-result-object v58

    .line 2861
    .local v58, "localAddress":Ljava/net/InetAddress;
    if-nez v58, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v3

    aget-object v3, v3, v60

    iget v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrStatus:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_9

    .line 2862
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_8

    .line 2863
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The interface for socket id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "other thread is RR_STOPPED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 2866
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    # invokes: Lorg/apache/http/impl/client/MultiSocketInputStream;->getOtherSocketID(I)I
    invoke-static {v3, v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4900(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget v4, v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    invoke-static {v3, v4}, Lorg/apache/http/impl/client/CustomHttpClient;->getLocalAddrEx(II)Ljava/net/InetAddress;

    move-result-object v58

    .line 2867
    if-eqz v58, :cond_9

    .line 2868
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    aget-object v3, v3, v4

    const/4 v4, -0x1

    iput v4, v3, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrStatus:I

    .line 2869
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->bIOExceptionDuringContinueChunk:Z

    .line 2871
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    # invokes: Lorg/apache/http/impl/client/MultiSocketInputStream;->getOtherSocketID(I)I
    invoke-static {v3, v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4900(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    .line 2872
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    aget-object v3, v3, v4

    const/4 v4, 0x2

    iput v4, v3, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrStatus:I

    .line 2873
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    iput v4, v3, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrExceptionCount:I

    .line 2874
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_9

    .line 2875
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Other socket interface ip is not null and so changing the socket id to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for thread is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 2884
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->reconnect(I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2885
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_a

    .line 2886
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download thread bind new socket "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 2913
    .end local v58    # "localAddress":Ljava/net/InetAddress;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-eqz v3, :cond_25

    .line 2914
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_b

    .line 2915
    const-string v3, "Full download complete -> mFinished = true, break"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 2918
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    .line 3543
    .end local v60    # "otherSockID":I
    .end local v70    # "startChunkTime":J
    :cond_c
    :goto_7
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_d

    .line 3544
    const-string v3, "download thread end"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3546
    :cond_d
    const/4 v15, 0x0

    .line 3547
    .local v15, "bSubmitHere":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v4

    monitor-enter v4

    .line 3548
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->finishedThreadNum:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3400(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v3

    if-nez v3, :cond_7a

    const/4 v15, 0x1

    .line 3549
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # operator++ for: Lorg/apache/http/impl/client/MultiSocketInputStream;->finishedThreadNum:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3408(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    .line 3550
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_e

    .line 3551
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "total finished thread num = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->finishedThreadNum:I
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3400(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3554
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 3555
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->finishedThreadNum:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3400(Lorg/apache/http/impl/client/MultiSocketInputStream;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_12

    move-result v3

    const/4 v8, 0x2

    if-ge v3, v8, :cond_7b

    .line 3557
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    sget v8, Lorg/apache/http/impl/client/MultiSocketInputStream;->IDLE_THREAD_WAIT_INTERVAL:I

    int-to-long v8, v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_12

    goto :goto_9

    .line 3558
    :catch_0
    move-exception v3

    goto :goto_9

    .line 2671
    .end local v13    # "bFirstBlockRsp":Z
    .end local v15    # "bSubmitHere":Z
    .end local v52    # "iRealBlockSize":I
    .end local v82    # "waitTime":J
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3

    .line 2696
    .restart local v13    # "bFirstBlockRsp":Z
    .restart local v52    # "iRealBlockSize":I
    .restart local v70    # "startChunkTime":J
    .restart local v82    # "waitTime":J
    :cond_f
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v3

    if-nez v3, :cond_10

    .line 2697
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_1

    .line 2698
    const-string v3, "Block status is not initialized"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2798
    .end local v70    # "startChunkTime":J
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    .line 2705
    .restart local v70    # "startChunkTime":J
    :cond_10
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMaxBlockNumber:I
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3200(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v8

    if-gt v3, v8, :cond_16

    .line 2706
    const/16 v59, 0x0

    .line 2713
    .local v59, "number":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mReadBlockNumber:Ljava/lang/Integer;
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v51

    .restart local v51    # "i":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v3

    array-length v3, v3

    move/from16 v0, v51

    if-ge v0, v3, :cond_13

    .line 2714
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v3

    aget-byte v3, v3, v51

    const/4 v8, 0x3

    if-ne v3, v8, :cond_12

    .line 2715
    add-int/lit8 v59, v59, 0x1

    .line 2713
    :cond_11
    add-int/lit8 v51, v51, 0x1

    goto :goto_a

    .line 2716
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v3

    aget-byte v3, v3, v51

    const/4 v8, 0x2

    if-gt v3, v8, :cond_11

    .line 2726
    :cond_13
    const/4 v3, 0x2

    move/from16 v0, v59

    if-ge v0, v3, :cond_14

    .line 2727
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_1

    .line 2728
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BlockStatus: full read block "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v59

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " < "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2733
    :cond_14
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_15

    .line 2734
    const-string v3, "BlockStatus: there are continue number of portions fulled 2"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 2737
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Is request aborted = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v3, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 2740
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v3, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2741
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v8, 0x1

    iput-boolean v8, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    goto/16 :goto_2

    .line 2746
    .end local v51    # "i":I
    .end local v59    # "number":I
    :cond_16
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_17

    .line 2747
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BlockStatus: block size "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " > Max Size "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMaxBlockNumber:I
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3200(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 2751
    :cond_17
    const/4 v14, 0x0

    .line 2752
    .local v14, "bOtherBlocked":Z
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mReadBlockNumber:Ljava/lang/Integer;
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v51

    .line 2753
    .restart local v51    # "i":I
    :goto_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mReadBlockNumber:Ljava/lang/Integer;
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v0, v51

    if-gt v0, v3, :cond_19

    .line 2754
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v3

    aget-byte v3, v3, v51

    const/4 v8, -0x1

    if-ne v3, v8, :cond_1a

    .line 2755
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BlockStatus: a blocked chunk: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v51

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 2756
    :cond_18
    const/4 v14, 0x1

    .line 2760
    :cond_19
    if-nez v14, :cond_1

    .line 2762
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_1b

    .line 2763
    const/16 v51, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v3

    array-length v3, v3

    move/from16 v0, v51

    if-ge v0, v3, :cond_1b

    .line 2764
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mBlockStatus["

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v51

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "] "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v8

    aget-byte v8, v8, v51

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2763
    add-int/lit8 v51, v51, 0x1

    goto :goto_c

    .line 2753
    :cond_1a
    add-int/lit8 v51, v51, 0x1

    goto/16 :goto_b

    .line 2776
    .end local v14    # "bOtherBlocked":Z
    :cond_1b
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v3

    sget v8, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_TIME_TILL_READ_FROM_COMMON_BUFFER:I

    int-to-long v8, v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2789
    :cond_1c
    :goto_d
    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v70

    sget v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    int-to-long v10, v3

    cmp-long v3, v8, v10

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$700(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1100(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v10

    cmp-long v3, v8, v10

    if-gtz v3, :cond_0

    .line 2791
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_1d

    .line 2792
    const-string v3, "RangeRequest wait time out"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 2794
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v8, 0x1

    iput-boolean v8, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    goto/16 :goto_1

    .line 2777
    :catch_1
    move-exception v48

    .line 2778
    .local v48, "e":Ljava/lang/Throwable;
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_1c

    .line 2779
    invoke-static/range {v48 .. v48}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_d

    .line 2815
    .end local v48    # "e":Ljava/lang/Throwable;
    .restart local v21    # "blockedState":I
    .restart local v31    # "chunkNotRead":I
    .restart local v60    # "otherSockID":I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v3

    aget-byte v3, v3, v51

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 2816
    add-int/lit8 v21, v21, 0x1

    .line 2817
    goto/16 :goto_5

    .line 2812
    :cond_1f
    add-int/lit8 v51, v51, 0x1

    goto/16 :goto_4

    .line 2827
    :cond_20
    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_21

    .line 2830
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->socketSpeed:[J
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->access$5000(Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;)[J

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    aget-wide v3, v3, v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v8

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->socketSpeed:[J
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->access$5000(Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;)[J

    move-result-object v8

    aget-wide v8, v8, v60

    const-wide/16 v10, 0x2

    mul-long/2addr v8, v10

    cmp-long v3, v3, v8

    if-gtz v3, :cond_5

    .line 2838
    :cond_21
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    .line 2839
    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v3

    sget v8, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_TIME_TILL_READ_FROM_COMMON_BUFFER:I

    int-to-long v8, v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 2840
    monitor-exit v4

    goto/16 :goto_3

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v3
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2

    .line 2841
    :catch_2
    move-exception v48

    .line 2842
    .restart local v48    # "e":Ljava/lang/Throwable;
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_2

    .line 2843
    invoke-static/range {v48 .. v48}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 2893
    .end local v21    # "blockedState":I
    .end local v31    # "chunkNotRead":I
    .end local v48    # "e":Ljava/lang/Throwable;
    .end local v51    # "i":I
    .restart local v58    # "localAddress":Ljava/net/InetAddress;
    :cond_22
    :try_start_d
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_23

    .line 2894
    const-string v3, "Reconnect returns false."

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 2895
    :cond_23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    monitor-enter v4
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3

    .line 2896
    :try_start_e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget v8, Lorg/apache/http/impl/client/MultiSocketInputStream;->IDLE_THREAD_WAIT_INTERVAL:I

    int-to-long v8, v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 2897
    monitor-exit v4

    goto/16 :goto_6

    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v3
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3

    .line 2899
    .end local v58    # "localAddress":Ljava/net/InetAddress;
    :catch_3
    move-exception v48

    .line 2900
    .restart local v48    # "e":Ljava/lang/Throwable;
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_24

    .line 2901
    const-string v3, "HttpException is thrown while reconnecting"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 2904
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is RequestAborted = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v3, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 2906
    invoke-static/range {v48 .. v48}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    .line 2908
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v3, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2909
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    goto/16 :goto_6

    .line 2922
    .end local v48    # "e":Ljava/lang/Throwable;
    :cond_25
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_26

    .line 2923
    const-string v3, "start to get another range request "

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 2928
    :cond_26
    const-wide/16 v27, 0x0

    .line 2929
    .local v27, "bytesToRead":J
    const-wide/16 v80, 0x0

    .line 2931
    .local v80, "totallen":J
    const/16 v18, 0x0

    .line 2933
    .local v18, "blockInfo":[J
    :try_start_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v4

    monitor-enter v4
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_5

    .line 2934
    :try_start_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v3, v8, v9}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getNextHTTPBlock(ILorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;)[J

    move-result-object v18

    .line 2935
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 2945
    :cond_27
    :goto_e
    if-eqz v18, :cond_28

    move-object/from16 v0, v18

    array-length v3, v0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_2d

    .line 2947
    :cond_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v77

    .line 2949
    .local v77, "tmpWaitTime":J
    :cond_29
    :goto_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v3, :cond_2b

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrStatus:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2b

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2100(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2b

    if-eqz v18, :cond_2a

    move-object/from16 v0, v18

    array-length v3, v0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_2b

    .line 2953
    :cond_2a
    :try_start_12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    monitor-enter v4
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_4

    .line 2954
    :try_start_13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget v8, Lorg/apache/http/impl/client/MultiSocketInputStream;->IDLE_THREAD_WAIT_INTERVAL:I

    int-to-long v8, v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 2955
    monitor-exit v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 2957
    :try_start_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v4

    monitor-enter v4
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_4

    .line 2958
    :try_start_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v3, v8, v9}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getNextHTTPBlock(ILorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;)[J

    move-result-object v18

    .line 2959
    monitor-exit v4

    goto :goto_f

    :catchall_4
    move-exception v3

    monitor-exit v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :try_start_16
    throw v3
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_4

    .line 2960
    :catch_4
    move-exception v48

    .line 2961
    .restart local v48    # "e":Ljava/lang/Throwable;
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_29

    .line 2962
    invoke-static/range {v48 .. v48}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_f

    .line 2935
    .end local v48    # "e":Ljava/lang/Throwable;
    .end local v77    # "tmpWaitTime":J
    :catchall_5
    move-exception v3

    :try_start_17
    monitor-exit v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    :try_start_18
    throw v3
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_5

    .line 2936
    :catch_5
    move-exception v48

    .line 2937
    .restart local v48    # "e":Ljava/lang/Throwable;
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_27

    .line 2938
    invoke-static/range {v48 .. v48}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_e

    .line 2955
    .end local v48    # "e":Ljava/lang/Throwable;
    .restart local v77    # "tmpWaitTime":J
    :catchall_6
    move-exception v3

    :try_start_19
    monitor-exit v4
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    :try_start_1a
    throw v3
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_4

    .line 2967
    :cond_2b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long v3, v3, v82

    sub-long v82, v3, v77

    .line 2968
    if-eqz v18, :cond_2c

    move-object/from16 v0, v18

    array-length v3, v0

    const/4 v4, 0x4

    if-lt v3, v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-eqz v3, :cond_2f

    .line 2970
    :cond_2c
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_c

    .line 2971
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNextHTTPBlock() results 0, finish reading totalLength("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$400(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), break"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2977
    .end local v77    # "tmpWaitTime":J
    :cond_2d
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrStatus:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2e

    .line 2978
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_2f

    .line 2979
    const-string v3, "this thread is stopped, and the other thread is downloading continue chunk"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2983
    :cond_2e
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_2f

    .line 2984
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNextHTTPBlock() results id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    aget-wide v8, v18, v4

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v8, v18, v4

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-wide v8, v18, v4

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 2989
    :cond_2f
    const/4 v3, 0x2

    aget-wide v27, v18, v3

    .line 2990
    const/4 v3, 0x3

    aget-wide v3, v18, v3

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->currentBlockNumber:I

    .line 2993
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->toBeReadLen:[J

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    aput-wide v27, v3, v4

    .line 2997
    const/16 v24, 0x0

    .line 2998
    .local v24, "buf_offset":I
    const/16 v25, 0x0

    .line 3000
    .local v25, "buf_ret":I
    const/16 v30, 0x0

    .line 3002
    .local v30, "chunkLengths":[I
    const/16 v29, 0x0

    .line 3004
    .local v29, "chunkIndex":I
    const/16 v79, 0x0

    .line 3006
    .local v79, "totalContinuousChunk":I
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4
    :try_end_1b
    .catch Lorg/apache/http/HttpException; {:try_start_1b .. :try_end_1b} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1b} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_8

    .line 3007
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v8, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->currentBlockNumber:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    .line 3008
    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    .line 3012
    :try_start_1d
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->currentBlockNumber:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_36

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v27, v3

    if-lez v3, :cond_36

    .line 3013
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->getTotalChunks()I

    move-result v79

    .line 3014
    move/from16 v0, v79

    new-array v0, v0, [I

    move-object/from16 v30, v0

    .line 3016
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->getToBeReadLength()J

    move-result-wide v3

    long-to-int v3, v3

    aput v3, v30, v29

    .line 3018
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_30

    .line 3019
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chunkLengths[0]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v30, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3022
    :cond_30
    const/16 v54, 0x1

    .local v54, "j":I
    :goto_10
    move-object/from16 v0, v30

    array-length v3, v0

    move/from16 v0, v54

    if-ge v0, v3, :cond_36

    .line 3024
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->currentBlockNumber:I

    add-int v3, v3, v54

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_34

    .line 3027
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1100(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v3

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->currentBlockNumber:I

    add-int v8, v8, v54

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v9}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v9

    mul-int/2addr v8, v9

    int-to-long v8, v8

    sub-long/2addr v3, v8

    long-to-int v3, v3

    aput v3, v30, v54

    .line 3033
    :goto_11
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_31

    .line 3034
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chunkLengths["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v30, v54

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_1d
    .catch Lorg/apache/http/HttpException; {:try_start_1d .. :try_end_1d} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_1d} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_8

    .line 3022
    :cond_31
    add-int/lit8 v54, v54, 0x1

    goto :goto_10

    .line 3008
    .end local v54    # "j":I
    :catchall_7
    move-exception v3

    :try_start_1e
    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    :try_start_1f
    throw v3
    :try_end_1f
    .catch Lorg/apache/http/HttpException; {:try_start_1f .. :try_end_1f} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_1f} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_8

    .line 3435
    :catch_6
    move-exception v48

    .line 3436
    .local v48, "e":Lorg/apache/http/HttpException;
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_32

    .line 3437
    const-string v3, "HttpException is thrown"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3438
    invoke-static/range {v48 .. v48}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    .line 3442
    :cond_32
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v3, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 3443
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    .line 3536
    .end local v48    # "e":Lorg/apache/http/HttpException;
    :cond_33
    :goto_12
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->totalReadSize:J

    add-long v3, v3, v80

    move-object/from16 v0, p0

    iput-wide v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->totalReadSize:J

    .line 3538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->t0:J

    sub-long/2addr v3, v8

    sub-long v3, v3, v82

    move-object/from16 v0, p0

    iput-wide v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->totalElapsedTime:J

    goto/16 :goto_0

    .line 3031
    .restart local v54    # "j":I
    :cond_34
    :try_start_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v3

    aput v3, v30, v54
    :try_end_20
    .catch Lorg/apache/http/HttpException; {:try_start_20 .. :try_end_20} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_20} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_8

    goto :goto_11

    .line 3445
    .end local v54    # "j":I
    :catch_7
    move-exception v50

    .line 3446
    .local v50, "ex":Ljava/lang/InterruptedException;
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_35

    .line 3447
    const-string v3, "in InterruptedException, handle handover"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3451
    :cond_35
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    goto :goto_12

    .line 3040
    .end local v50    # "ex":Ljava/lang/InterruptedException;
    :cond_36
    :try_start_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->t1:J

    .line 3042
    const/16 v55, 0x0

    .line 3051
    .local v55, "len":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpRequest;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    aget-object v4, v4, v8

    invoke-interface {v4}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v8, "http.route.default-proxy"

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrCustomHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    move-object/from16 v0, p0

    iget v10, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;
    invoke-static {v11}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    aget-object v11, v11, v12

    invoke-virtual {v9, v10, v11}, Lorg/apache/http/impl/client/CustomHttpClient;->getProxy(ILorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    move-result-object v9

    invoke-virtual {v3, v4, v8, v9}, Lorg/apache/http/impl/client/DefaultRequestDirector;->setParameter(Lorg/apache/http/params/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3055
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    aget-object v4, v4, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpRequest;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    aget-object v5, v8, v9

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpContext:Lorg/apache/http/protocol/HttpContext;
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$100(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/protocol/HttpContext;

    move-result-object v6

    const/4 v8, 0x0

    aget-wide v7, v18, v8

    const/4 v9, 0x1

    aget-wide v9, v18, v9

    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget v12, v12, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    invoke-static {v11, v12}, Lorg/apache/http/impl/client/CustomHttpClient;->getLocalAddrEx(II)Ljava/net/InetAddress;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRemoteAddress:[Ljava/net/InetAddress;
    invoke-static {v12}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Ljava/net/InetAddress;

    move-result-object v12

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    move/from16 v84, v0

    aget-object v12, v12, v84

    invoke-virtual/range {v3 .. v12}, Lorg/apache/http/impl/client/DefaultRequestDirector;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;JJLjava/net/InetAddress;Ljava/net/InetAddress;)Lorg/apache/http/HttpResponse;

    move-result-object v66

    .line 3060
    .local v66, "response":Lorg/apache/http/HttpResponse;
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_37

    .line 3061
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Response time difference from main for range request id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    aget-wide v8, v18, v4

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v8, v18, v4

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-wide v8, v18, v4

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mResponeTimeFromMainSocket:J
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5100(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3071
    :cond_37
    const-string v3, "Connection"

    move-object/from16 v0, v66

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v32

    .line 3072
    .local v32, "connectionCloseHeader":Lorg/apache/http/Header;
    if-nez v32, :cond_41

    const/4 v3, 0x0

    :goto_13
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->mbReconnect:Z

    .line 3075
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_38

    .line 3076
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RangeRequest: Reconnect = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->mbReconnect:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3079
    :cond_38
    invoke-interface/range {v66 .. v66}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v67

    .line 3080
    .local v67, "rspCode":I
    invoke-interface/range {v66 .. v66}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v49

    .line 3081
    .local v49, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface/range {v49 .. v49}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v33

    .line 3082
    .local v33, "contentLength":J
    invoke-interface/range {v49 .. v49}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v53

    .line 3084
    .local v53, "in":Ljava/io/InputStream;
    const/16 v3, 0xce

    move/from16 v0, v67

    if-eq v0, v3, :cond_39

    const/16 v3, 0xc8

    move/from16 v0, v67

    if-ne v0, v3, :cond_3a

    :cond_39
    cmp-long v3, v33, v27

    if-eqz v3, :cond_43

    .line 3086
    :cond_3a
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_3b

    .line 3087
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response code is not 206 or 200 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v67

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or length is not expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v33

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "but length expected is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-wide v8, v18, v4

    const/4 v4, 0x0

    aget-wide v10, v18, v4

    sub-long/2addr v8, v10

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3097
    :cond_3b
    if-eqz v13, :cond_42

    .line 3098
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_3c

    .line 3099
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "move to RR_FAILED from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2100(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3101
    :cond_3c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v4

    monitor-enter v4
    :try_end_21
    .catch Lorg/apache/http/HttpException; {:try_start_21 .. :try_end_21} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_21} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_8

    .line 3102
    :try_start_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2100(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v3

    if-eqz v3, :cond_3d

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2100(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v3

    const/4 v8, 0x2

    if-ne v3, v8, :cond_3e

    .line 3104
    :cond_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v8, 0x1

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v3, v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2102(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    .line 3105
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 3107
    :cond_3e
    monitor-exit v4
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    .line 3108
    :try_start_23
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->closeHTTP()V
    :try_end_23
    .catch Lorg/apache/http/HttpException; {:try_start_23 .. :try_end_23} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_23} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_8

    goto/16 :goto_7

    .line 3452
    .end local v32    # "connectionCloseHeader":Lorg/apache/http/Header;
    .end local v33    # "contentLength":J
    .end local v49    # "entity":Lorg/apache/http/HttpEntity;
    .end local v53    # "in":Ljava/io/InputStream;
    .end local v55    # "len":I
    .end local v66    # "response":Lorg/apache/http/HttpResponse;
    .end local v67    # "rspCode":I
    :catch_8
    move-exception v48

    .line 3453
    .local v48, "e":Ljava/lang/Throwable;
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_3f

    .line 3454
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reading thread blocked by some Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3456
    invoke-static/range {v48 .. v48}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    .line 3460
    :cond_3f
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrExceptionCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrExceptionCount:I

    .line 3464
    if-eqz v13, :cond_71

    .line 3465
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_40

    .line 3466
    const-string v3, "move to RR_EXCEPTION"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3468
    :cond_40
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v4

    monitor-enter v4

    .line 3469
    :try_start_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2100(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v3

    const/4 v8, 0x2

    if-ne v3, v8, :cond_6e

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrStatus:I

    const/4 v8, -0x1

    if-ne v3, v8, :cond_6e

    .line 3470
    if-lez v79, :cond_6d

    .line 3471
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->currentBlockNumber:I

    add-int v8, v8, v29

    move-object/from16 v0, p0

    iget v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    invoke-virtual {v3, v8, v9}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->block(II)V

    .line 3475
    :goto_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v8, 0x3

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v3, v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2102(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    .line 3476
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 3477
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    .line 3478
    monitor-exit v4

    goto/16 :goto_7

    .line 3485
    :catchall_8
    move-exception v3

    monitor-exit v4
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_8

    throw v3

    .line 3072
    .end local v48    # "e":Ljava/lang/Throwable;
    .restart local v32    # "connectionCloseHeader":Lorg/apache/http/Header;
    .restart local v55    # "len":I
    .restart local v66    # "response":Lorg/apache/http/HttpResponse;
    :cond_41
    :try_start_25
    invoke-interface/range {v32 .. v32}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Close"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_25
    .catch Lorg/apache/http/HttpException; {:try_start_25 .. :try_end_25} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_25} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_8

    move-result v3

    goto/16 :goto_13

    .line 3107
    .restart local v33    # "contentLength":J
    .restart local v49    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v53    # "in":Ljava/io/InputStream;
    .restart local v67    # "rspCode":I
    :catchall_9
    move-exception v3

    :try_start_26
    monitor-exit v4
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_9

    :try_start_27
    throw v3

    .line 3111
    :cond_42
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "response code is not 206 or 200 : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v67

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3116
    :cond_43
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_44

    .line 3117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response code is 206 or 200 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v67

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and length is expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v33

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3122
    :cond_44
    if-eqz v13, :cond_49

    .line 3123
    const/4 v13, 0x0

    .line 3124
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_45

    .line 3125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "move to RR_SUCCESS from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2100(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3130
    :cond_45
    const-string v3, "Content-Range"

    move-object/from16 v0, v66

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v65

    .line 3132
    .local v65, "rangeRequestTotalContentLength":Lorg/apache/http/Header;
    invoke-interface/range {v65 .. v65}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v26

    .line 3134
    .local v26, "byteRange":Ljava/lang/String;
    const-string v3, "/"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v35

    .line 3139
    .local v35, "contentLengthRangeRequest":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v4

    monitor-enter v4
    :try_end_27
    .catch Lorg/apache/http/HttpException; {:try_start_27 .. :try_end_27} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_27} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_8

    .line 3142
    const-wide/16 v8, 0x0

    cmp-long v3, v35, v8

    if-eqz v3, :cond_46

    :try_start_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLengthRangeRequest:J
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2400(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v8

    cmp-long v3, v35, v8

    if-eqz v3, :cond_46

    .line 3144
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v8, 0x1

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v3, v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2102(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    .line 3145
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 3147
    :cond_46
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2100(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_47

    .line 3148
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    .line 3149
    monitor-exit v4

    goto/16 :goto_7

    .line 3156
    :catchall_a
    move-exception v3

    monitor-exit v4
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_a

    :try_start_29
    throw v3
    :try_end_29
    .catch Lorg/apache/http/HttpException; {:try_start_29 .. :try_end_29} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_29} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_8

    .line 3150
    :cond_47
    :try_start_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2100(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v3

    if-nez v3, :cond_53

    .line 3151
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v8, 0x2

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v3, v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2102(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    .line 3156
    :cond_48
    :goto_15
    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_a

    .line 3160
    .end local v26    # "byteRange":Ljava/lang/String;
    .end local v35    # "contentLengthRangeRequest":J
    .end local v65    # "rangeRequestTotalContentLength":Lorg/apache/http/Header;
    :cond_49
    :try_start_2b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->t2:J

    .line 3161
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->t2:J

    move-object/from16 v0, p0

    iput-wide v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->chunkStartTime:J

    .line 3162
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->t2:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->t1:J

    sub-long v73, v3, v8

    .line 3163
    .local v73, "tmpH":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->headerTime:[J

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    aput-wide v73, v3, v4

    .line 3172
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_4a

    .line 3173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start to read body for block["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->currentBlockNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], bytes to read: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v27

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3178
    :cond_4a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    aget-object v3, v3, v4

    invoke-interface {v3}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v4, "http.socket.timeout"

    sget v8, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    invoke-interface {v3, v4, v8}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v68, v0

    .line 3181
    .local v68, "socketTimeout":J
    const-wide/16 v3, 0x2

    div-long v3, v68, v3

    sget v8, Lorg/apache/http/impl/client/MultiSocketInputStream;->TIMEOUT_WRITE_COMMON_BUFFER:I

    int-to-long v8, v8

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v68

    .line 3185
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    monitor-enter v4
    :try_end_2b
    .catch Lorg/apache/http/HttpException; {:try_start_2b .. :try_end_2b} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2b} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_8

    .line 3186
    :try_start_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->startReceiveData()V

    .line 3187
    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_b

    .line 3188
    const/16 v56, 0x0

    .line 3193
    .local v56, "listId":I
    :try_start_2d
    sget v52, Lorg/apache/http/impl/client/MultiSocketInputStream;->INIT_BUFFERLEN:I

    .line 3195
    const/16 v43, 0x0

    .local v43, "dataRead":I
    move/from16 v57, v56

    .line 3196
    .end local v56    # "listId":I
    .local v57, "listId":I
    :goto_16
    cmp-long v3, v80, v27

    if-gez v3, :cond_52

    .line 3198
    const/16 v22, 0x0

    .line 3201
    .local v22, "bsize":I
    if-nez v30, :cond_54

    .line 3202
    move/from16 v0, v52

    int-to-long v3, v0

    sub-long v8, v27, v80

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v0, v3

    move/from16 v22, v0

    .line 3207
    :goto_17
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_4b

    .line 3208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RangeRequest alloc memory for new block size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3211
    :cond_4b
    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 3212
    .local v23, "buf":[B
    const/16 v72, 0x0

    .line 3213
    .local v72, "tempbuf":[B
    sget v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->MAX_BUFFERLEN:I

    shl-int/lit8 v4, v52, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I
    :try_end_2d
    .catch Lorg/apache/http/HttpException; {:try_start_2d .. :try_end_2d} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_2d} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_8

    move-result v52

    .line 3215
    const/16 v24, 0x0

    .line 3216
    const/16 v25, 0x0

    .line 3219
    :try_start_2e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v63

    .line 3220
    .local v63, "prevTime":J
    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v61, v0

    .line 3221
    .local v61, "prevOffset":J
    move-wide/from16 v19, v63

    .line 3224
    .local v19, "blockStrtTime":J
    :cond_4c
    move-object/from16 v0, v23

    array-length v3, v0

    sub-int v3, v3, v24

    move-object/from16 v0, v53

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v55

    if-lez v55, :cond_51

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v3, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v3

    if-nez v3, :cond_51

    .line 3225
    move/from16 v0, v55

    int-to-long v3, v0

    add-long v80, v80, v3

    .line 3226
    add-int v24, v24, v55

    .line 3227
    add-int v43, v43, v55

    .line 3229
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->toBeReadLen:[J

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    aget-wide v8, v3, v4

    move/from16 v0, v55

    int-to-long v10, v0

    sub-long/2addr v8, v10

    aput-wide v8, v3, v4

    .line 3230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    .line 3231
    .local v40, "curTime":J
    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v38, v0

    .line 3232
    .local v38, "curOffset":J
    sub-long v46, v40, v63

    .line 3233
    .local v46, "diffTime":J
    sub-long v44, v38, v61

    .line 3234
    .local v44, "diffOffset":J
    move-wide/from16 v16, v40

    .line 3235
    .local v16, "blockEndTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->socketSpeed:[J
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->access$5000(Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;)[J

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    aget-wide v75, v3, v4

    .line 3236
    .local v75, "tmpSpeed":J
    sget v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_DATA_READ_SPEED_CALC:I

    int-to-long v3, v3

    cmp-long v3, v80, v3

    if-lez v3, :cond_50

    sget v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->MINSIZEFORSPEED:I

    int-to-long v3, v3

    cmp-long v3, v44, v3

    if-ltz v3, :cond_4d

    sget-wide v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->MINTIMEFORSPEED:J

    cmp-long v3, v46, v3

    if-gez v3, :cond_4e

    :cond_4d
    sget-wide v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->MAXTIMEFORSPEED:J

    cmp-long v3, v46, v3

    if-ltz v3, :cond_50

    .line 3238
    :cond_4e
    const-wide/16 v3, 0x0

    cmp-long v3, v75, v3

    if-nez v3, :cond_56

    .line 3239
    sget-boolean v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->SPEED_CALC:Z

    if-eqz v3, :cond_55

    .line 3240
    const-wide/16 v3, 0x8

    mul-long v3, v3, v80

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->chunkStartTime:J

    sub-long v8, v40, v8

    div-long v75, v3, v8

    .line 3250
    :cond_4f
    :goto_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    move-wide/from16 v0, v75

    invoke-virtual {v3, v4, v0, v1}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->setSpeed(IJ)V

    .line 3251
    move-wide/from16 v63, v40

    .line 3252
    move-wide/from16 v61, v38

    .line 3253
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_50

    .line 3254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RangeRequest set speed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v75

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3258
    :cond_50
    sub-long v3, v16, v19

    cmp-long v3, v3, v68

    if-ltz v3, :cond_58

    .line 3259
    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v72, v0

    .line 3260
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v72

    move/from16 v2, v24

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_9
    .catch Lorg/apache/http/HttpException; {:try_start_2e .. :try_end_2e} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_2e} :catch_7

    .line 3287
    .end local v16    # "blockEndTime":J
    .end local v38    # "curOffset":J
    .end local v40    # "curTime":J
    .end local v44    # "diffOffset":J
    .end local v46    # "diffTime":J
    .end local v75    # "tmpSpeed":J
    :cond_51
    :goto_19
    :try_start_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v3, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 3288
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    .line 3432
    .end local v19    # "blockStrtTime":J
    .end local v22    # "bsize":I
    .end local v23    # "buf":[B
    .end local v61    # "prevOffset":J
    .end local v63    # "prevTime":J
    .end local v72    # "tempbuf":[B
    :cond_52
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_33

    .line 3433
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finish to read body, bytes read: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v80

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_2f
    .catch Lorg/apache/http/HttpException; {:try_start_2f .. :try_end_2f} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_2f} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_8

    goto/16 :goto_12

    .line 3152
    .end local v43    # "dataRead":I
    .end local v57    # "listId":I
    .end local v68    # "socketTimeout":J
    .end local v73    # "tmpH":J
    .restart local v26    # "byteRange":Ljava/lang/String;
    .restart local v35    # "contentLengthRangeRequest":J
    .restart local v65    # "rangeRequestTotalContentLength":Lorg/apache/http/Header;
    :cond_53
    :try_start_30
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2100(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v3

    const/4 v8, 0x2

    if-ne v3, v8, :cond_48

    .line 3153
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v8, 0x3

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v3, v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2102(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    .line 3154
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_a

    goto/16 :goto_15

    .line 3187
    .end local v26    # "byteRange":Ljava/lang/String;
    .end local v35    # "contentLengthRangeRequest":J
    .end local v65    # "rangeRequestTotalContentLength":Lorg/apache/http/Header;
    .restart local v68    # "socketTimeout":J
    .restart local v73    # "tmpH":J
    :catchall_b
    move-exception v3

    :try_start_31
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_b

    :try_start_32
    throw v3

    .line 3204
    .restart local v22    # "bsize":I
    .restart local v43    # "dataRead":I
    .restart local v57    # "listId":I
    :cond_54
    aget v3, v30, v29

    sub-int v3, v3, v43

    move/from16 v0, v52

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I
    :try_end_32
    .catch Lorg/apache/http/HttpException; {:try_start_32 .. :try_end_32} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_32} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_8

    move-result v22

    goto/16 :goto_17

    .line 3243
    .restart local v16    # "blockEndTime":J
    .restart local v19    # "blockStrtTime":J
    .restart local v23    # "buf":[B
    .restart local v38    # "curOffset":J
    .restart local v40    # "curTime":J
    .restart local v44    # "diffOffset":J
    .restart local v46    # "diffTime":J
    .restart local v61    # "prevOffset":J
    .restart local v63    # "prevTime":J
    .restart local v72    # "tempbuf":[B
    .restart local v75    # "tmpSpeed":J
    :cond_55
    const-wide/16 v3, 0x8

    mul-long v3, v3, v44

    :try_start_33
    div-long v75, v3, v46

    goto/16 :goto_18

    .line 3245
    :cond_56
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    sget v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->MAX_DOWNLOADED_DATA_FOR_SPEED_CALC:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v80, v3

    if-gtz v3, :cond_57

    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->chunkStartTime:J

    sub-long v3, v40, v3

    sget-wide v8, Lorg/apache/http/impl/client/MultiSocketInputStream;->MAXMAXTIMEFORSPEED:J

    cmp-long v3, v3, v8

    if-ltz v3, :cond_4f

    .line 3247
    :cond_57
    const-wide/16 v3, 0x8

    mul-long v3, v3, v80

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->chunkStartTime:J

    sub-long v8, v40, v8

    div-long v75, v3, v8

    goto/16 :goto_18

    .line 3265
    :cond_58
    move-object/from16 v0, v23

    array-length v3, v0
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_9
    .catch Lorg/apache/http/HttpException; {:try_start_33 .. :try_end_33} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_33} :catch_7

    move/from16 v0, v24

    if-ne v3, v0, :cond_4c

    goto/16 :goto_19

    .line 3271
    .end local v16    # "blockEndTime":J
    .end local v19    # "blockStrtTime":J
    .end local v38    # "curOffset":J
    .end local v40    # "curTime":J
    .end local v44    # "diffOffset":J
    .end local v46    # "diffTime":J
    .end local v61    # "prevOffset":J
    .end local v63    # "prevTime":J
    .end local v75    # "tmpSpeed":J
    :catch_9
    move-exception v50

    .line 3272
    .local v50, "ex":Ljava/lang/Throwable;
    :try_start_34
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->bHandover:Z

    if-eqz v3, :cond_5a

    .line 3273
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_59

    .line 3274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This block shall be read by another socket, this socket is slow: block["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->currentBlockNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], socket["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3281
    :cond_59
    move/from16 v0, v24

    int-to-long v3, v0

    sub-long v80, v80, v3

    .line 3282
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 3284
    :cond_5a
    throw v50

    .line 3291
    .end local v50    # "ex":Ljava/lang/Throwable;
    .restart local v19    # "blockStrtTime":J
    .restart local v61    # "prevOffset":J
    .restart local v63    # "prevTime":J
    :cond_5b
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_5c

    .line 3292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RangeRequest get a buffer block, offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", buf.length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", buf_offset:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3300
    :cond_5c
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v24

    if-eq v0, v3, :cond_5d

    if-eqz v72, :cond_68

    .line 3304
    :cond_5d
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    monitor-enter v4
    :try_end_34
    .catch Lorg/apache/http/HttpException; {:try_start_34 .. :try_end_34} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_34} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_8

    .line 3305
    if-eqz v72, :cond_5f

    .line 3306
    :try_start_35
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    move-object/from16 v0, v72

    array-length v9, v0

    move-object/from16 v0, v72

    invoke-virtual {v3, v8, v0, v9}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->push(I[BI)J

    move-result-wide v8

    long-to-int v0, v8

    move/from16 v25, v0

    .line 3310
    :goto_1a
    if-gez v25, :cond_60

    .line 3311
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_5e

    .line 3312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This block shall be read by another socket, this socket is slow: block["

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->currentBlockNumber:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "], socket["

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "]"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3319
    :cond_5e
    move/from16 v0, v24

    int-to-long v8, v0

    sub-long v80, v80, v8

    .line 3320
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 3326
    :catchall_c
    move-exception v3

    monitor-exit v4
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_c

    :try_start_36
    throw v3
    :try_end_36
    .catch Lorg/apache/http/HttpException; {:try_start_36 .. :try_end_36} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_36} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_8

    .line 3308
    :cond_5f
    :try_start_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    move-object/from16 v0, v23

    array-length v9, v0

    move-object/from16 v0, v23

    invoke-virtual {v3, v8, v0, v9}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->push(I[BI)J
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_c

    move-result-wide v8

    long-to-int v0, v8

    move/from16 v25, v0

    goto :goto_1a

    .line 3323
    :cond_60
    :try_start_38
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_b
    .catchall {:try_start_38 .. :try_end_38} :catchall_c

    .line 3326
    :goto_1b
    :try_start_39
    monitor-exit v4
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_c

    .line 3329
    :try_start_3a
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_7f

    .line 3330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RangeRequest response buffer["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->currentBlockNumber:I

    add-int v4, v4, v29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v56, v57, 0x1

    .end local v57    # "listId":I
    .restart local v56    # "listId":I
    move/from16 v0, v57

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] inserted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v72, :cond_66

    move-object/from16 v0, v23

    array-length v3, v0

    :goto_1c
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3337
    :goto_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mReadBlockNumber:Ljava/lang/Integer;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v42

    .line 3340
    .local v42, "currentReadingBlock":I
    if-eqz v30, :cond_67

    .line 3342
    aget v3, v30, v29

    move/from16 v0, v43

    if-ne v0, v3, :cond_61

    add-int/lit8 v3, v79, -0x1

    move/from16 v0, v29

    if-ge v0, v3, :cond_61

    .line 3343
    add-int/lit8 v29, v29, 0x1

    .line 3344
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->currentBlockNumber:I

    add-int v7, v3, v29

    .line 3345
    .local v7, "blockNum":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v3

    mul-int/2addr v3, v7

    int-to-long v3, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOffset:J
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1200(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v8

    add-long v5, v3, v8

    .line 3347
    .local v5, "startIndex":J
    const/16 v43, 0x0

    .line 3348
    const/16 v56, 0x0

    .line 3352
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v12

    monitor-enter v12
    :try_end_3a
    .catch Lorg/apache/http/HttpException; {:try_start_3a .. :try_end_3a} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3a} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_8

    .line 3353
    :try_start_3b
    new-instance v3, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    aget v8, v30, v29

    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iget v10, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    const/4 v11, 0x1

    invoke-direct/range {v3 .. v11}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;-><init>(Lorg/apache/http/impl/client/MultiSocketInputStream;JIILjava/util/LinkedList;II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    .line 3356
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v7}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v3, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3357
    monitor-exit v12
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_d

    .line 3358
    :try_start_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    monitor-enter v4
    :try_end_3c
    .catch Lorg/apache/http/HttpException; {:try_start_3c .. :try_end_3c} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_3c} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_8

    .line 3359
    :try_start_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->startReceiveData()V

    .line 3360
    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_e

    .line 3363
    .end local v5    # "startIndex":J
    .end local v7    # "blockNum":I
    :cond_61
    :try_start_3e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v70

    .line 3369
    const/16 v37, 0x0

    .line 3371
    .local v37, "continiousChunkNotRead":Z
    if-lez v42, :cond_62

    .line 3372
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v3

    aget-byte v3, v3, v42

    const/4 v4, 0x3

    if-ne v3, v4, :cond_62

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v3

    add-int/lit8 v4, v42, 0x1

    aget-byte v3, v3, v4

    const/4 v4, 0x3

    if-ne v3, v4, :cond_62

    .line 3374
    const/16 v37, 0x1

    .line 3377
    :cond_62
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMaxBlockNumber:I
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3200(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v4

    if-ge v3, v4, :cond_63

    if-eqz v37, :cond_67

    .line 3378
    :cond_63
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4
    :try_end_3e
    .catch Lorg/apache/http/HttpException; {:try_start_3e .. :try_end_3e} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_3e} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_8

    .line 3380
    :try_start_3f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v3

    sget v8, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_TIME_TILL_READ_FROM_COMMON_BUFFER:I

    int-to-long v8, v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_a
    .catchall {:try_start_3f .. :try_end_3f} :catchall_f

    .line 3385
    :cond_64
    :goto_1e
    :try_start_40
    monitor-exit v4
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_f

    .line 3390
    :try_start_41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v70

    sget v8, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    int-to-long v8, v8

    cmp-long v3, v3, v8

    if-lez v3, :cond_62

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$700(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1100(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v8

    cmp-long v3, v3, v8

    if-gtz v3, :cond_62

    .line 3392
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_65

    .line 3393
    const-string v3, "RangeRequest wait time out"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3395
    :cond_65
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    .line 3396
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Data is not read by the application"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3330
    .end local v37    # "continiousChunkNotRead":Z
    .end local v42    # "currentReadingBlock":I
    :cond_66
    move-object/from16 v0, v72

    array-length v3, v0
    :try_end_41
    .catch Lorg/apache/http/HttpException; {:try_start_41 .. :try_end_41} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_41} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_8

    goto/16 :goto_1c

    .line 3357
    .restart local v5    # "startIndex":J
    .restart local v7    # "blockNum":I
    .restart local v42    # "currentReadingBlock":I
    :catchall_d
    move-exception v3

    :try_start_42
    monitor-exit v12
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_d

    :try_start_43
    throw v3
    :try_end_43
    .catch Lorg/apache/http/HttpException; {:try_start_43 .. :try_end_43} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_43} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_8

    .line 3360
    :catchall_e
    move-exception v3

    :try_start_44
    monitor-exit v4
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_e

    :try_start_45
    throw v3
    :try_end_45
    .catch Lorg/apache/http/HttpException; {:try_start_45 .. :try_end_45} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_45} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_8

    .line 3381
    .end local v5    # "startIndex":J
    .end local v7    # "blockNum":I
    .restart local v37    # "continiousChunkNotRead":Z
    :catch_a
    move-exception v48

    .line 3382
    .restart local v48    # "e":Ljava/lang/Throwable;
    :try_start_46
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_64

    .line 3383
    invoke-static/range {v48 .. v48}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_1e

    .line 3385
    .end local v48    # "e":Ljava/lang/Throwable;
    :catchall_f
    move-exception v3

    monitor-exit v4
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_f

    :try_start_47
    throw v3

    .line 3402
    .end local v37    # "continiousChunkNotRead":Z
    :cond_67
    if-lez v42, :cond_6c

    .line 3403
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v3

    add-int/lit8 v4, v42, -0x1

    aget-byte v3, v3, v4

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6c

    .line 3404
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Forcefull exception to handover to the blocked Chunk which is read by application, so that application read should not stop"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3409
    .end local v42    # "currentReadingBlock":I
    .end local v56    # "listId":I
    .restart local v57    # "listId":I
    :cond_68
    const/4 v3, -0x1

    move/from16 v0, v55

    if-ne v0, v3, :cond_6a

    cmp-long v3, v80, v27

    if-gez v3, :cond_6a

    .line 3410
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_69

    .line 3411
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RangeRequest read body Exception: totallen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v80

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bytesToRead= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v27

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3414
    :cond_69
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RangeRequest read body Exception: totallen="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v80

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", bytesToRead= "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v27

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3417
    :cond_6a
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_6b

    .line 3418
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RangeRequest read body Exception2: totallen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v80

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bytesToRead= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v27

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3421
    :cond_6b
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RangeRequest read body Exception2: totallen="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v80

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", bytesToRead= "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v27

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_47
    .catch Lorg/apache/http/HttpException; {:try_start_47 .. :try_end_47} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_47} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_8

    .end local v57    # "listId":I
    .restart local v42    # "currentReadingBlock":I
    .restart local v56    # "listId":I
    :cond_6c
    move/from16 v57, v56

    .line 3424
    .end local v56    # "listId":I
    .restart local v57    # "listId":I
    goto/16 :goto_16

    .line 3473
    .end local v19    # "blockStrtTime":J
    .end local v22    # "bsize":I
    .end local v23    # "buf":[B
    .end local v32    # "connectionCloseHeader":Lorg/apache/http/Header;
    .end local v33    # "contentLength":J
    .end local v42    # "currentReadingBlock":I
    .end local v43    # "dataRead":I
    .end local v49    # "entity":Lorg/apache/http/HttpEntity;
    .end local v53    # "in":Ljava/io/InputStream;
    .end local v55    # "len":I
    .end local v57    # "listId":I
    .end local v61    # "prevOffset":J
    .end local v63    # "prevTime":J
    .end local v66    # "response":Lorg/apache/http/HttpResponse;
    .end local v67    # "rspCode":I
    .end local v68    # "socketTimeout":J
    .end local v72    # "tempbuf":[B
    .end local v73    # "tmpH":J
    .restart local v48    # "e":Ljava/lang/Throwable;
    :cond_6d
    :try_start_48
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->currentBlockNumber:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    invoke-virtual {v3, v8, v9}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->block(II)V

    goto/16 :goto_14

    .line 3479
    :cond_6e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2100(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v3

    if-eqz v3, :cond_6f

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2100(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v3

    const/4 v8, 0x2

    if-ne v3, v8, :cond_70

    .line 3480
    :cond_6f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v8, 0x1

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v3, v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2102(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    .line 3481
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 3482
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    .line 3483
    monitor-exit v4

    goto/16 :goto_7

    .line 3485
    :cond_70
    monitor-exit v4
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_8

    .line 3489
    :cond_71
    move-object/from16 v0, v48

    instance-of v3, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v3, :cond_73

    .line 3490
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 3491
    :try_start_49
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    .line 3492
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    add-int/lit8 v8, v8, 0x1

    rem-int/lit8 v8, v8, 0x2

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    .line 3493
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mReadBlockNumber:Ljava/lang/Integer;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v51

    .restart local v51    # "i":I
    :goto_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v3

    array-length v3, v3

    move/from16 v0, v51

    if-ge v0, v3, :cond_72

    .line 3494
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v8, Ljava/lang/Integer;

    move/from16 v0, v51

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3493
    add-int/lit8 v51, v51, 0x1

    goto :goto_1f

    .line 3496
    :cond_72
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 3497
    monitor-exit v4

    goto/16 :goto_12

    .end local v51    # "i":I
    :catchall_10
    move-exception v3

    monitor-exit v4
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_10

    throw v3

    .line 3501
    :cond_73
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_74

    .line 3502
    const-string v3, "IOException is thrown"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3503
    const-string v3, "in IOException, handle handover"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3505
    :cond_74
    if-gtz v25, :cond_75

    .line 3506
    move/from16 v0, v24

    int-to-long v3, v0

    sub-long v80, v80, v3

    .line 3507
    :cond_75
    cmp-long v3, v80, v27

    if-gez v3, :cond_79

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v3, :cond_79

    .line 3508
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_76

    .line 3509
    const-string v3, "Moving to Block state"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3511
    :cond_76
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v4

    monitor-enter v4

    .line 3515
    if-lez v79, :cond_77

    .line 3516
    :try_start_4a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->currentBlockNumber:I

    add-int v8, v8, v29

    move-object/from16 v0, p0

    iget v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    invoke-virtual {v3, v8, v9}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->block(II)V

    .line 3520
    :goto_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 3521
    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_11

    .line 3524
    if-lez v79, :cond_78

    .line 3525
    add-int/lit8 v51, v29, 0x1

    .restart local v51    # "i":I
    :goto_21
    move/from16 v0, v51

    move/from16 v1, v79

    if-ge v0, v1, :cond_78

    .line 3526
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->currentBlockNumber:I

    add-int v4, v4, v51

    const/4 v8, 0x0

    aput-byte v8, v3, v4

    .line 3525
    add-int/lit8 v51, v51, 0x1

    goto :goto_21

    .line 3518
    .end local v51    # "i":I
    :cond_77
    :try_start_4b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->currentBlockNumber:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    invoke-virtual {v3, v8, v9}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->block(II)V

    goto :goto_20

    .line 3521
    :catchall_11
    move-exception v3

    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_11

    throw v3

    .line 3529
    :cond_78
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    .line 3531
    :cond_79
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_33

    .line 3532
    const-string v3, "Checked if Block state is moved to BLOCKED"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 3548
    .end local v18    # "blockInfo":[J
    .end local v24    # "buf_offset":I
    .end local v25    # "buf_ret":I
    .end local v27    # "bytesToRead":J
    .end local v29    # "chunkIndex":I
    .end local v30    # "chunkLengths":[I
    .end local v48    # "e":Ljava/lang/Throwable;
    .end local v60    # "otherSockID":I
    .end local v70    # "startChunkTime":J
    .end local v79    # "totalContinuousChunk":I
    .end local v80    # "totallen":J
    .restart local v15    # "bSubmitHere":Z
    :cond_7a
    const/4 v15, 0x0

    goto/16 :goto_8

    .line 3561
    :cond_7b
    :try_start_4c
    monitor-exit v4
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_12

    .line 3562
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-boolean v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->bIOExceptionDuringContinueChunk:Z

    if-nez v3, :cond_7d

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget-boolean v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->bIOExceptionDuringContinueChunk:Z

    if-nez v3, :cond_7d

    if-eqz v15, :cond_7d

    .line 3564
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_7c

    .line 3565
    const-string v3, "submit statistics data to ConnectivityService"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3567
    :cond_7c
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->submitData()V

    .line 3570
    :cond_7d
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    .line 3571
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_7e

    .line 3572
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total data downloaded : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->totalElapsedTime:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Total data downloaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->totalReadSize:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3575
    const-string v3, "download thread exit"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 3578
    :cond_7e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v4, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDefaultRequestDirectorInstance:Lorg/apache/http/impl/client/DefaultRequestDirector;

    monitor-enter v4

    .line 3579
    :try_start_4d
    sget v3, Lorg/apache/http/impl/client/DefaultRequestDirector;->sProcessUsingMultiSocket:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lorg/apache/http/impl/client/DefaultRequestDirector;->sProcessUsingMultiSocket:I

    .line 3580
    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_13

    .line 3581
    return-void

    .line 3561
    :catchall_12
    move-exception v3

    :try_start_4e
    monitor-exit v4
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_12

    throw v3

    .line 3580
    :catchall_13
    move-exception v3

    :try_start_4f
    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_13

    throw v3

    .line 3324
    .end local v15    # "bSubmitHere":Z
    .restart local v18    # "blockInfo":[J
    .restart local v19    # "blockStrtTime":J
    .restart local v22    # "bsize":I
    .restart local v23    # "buf":[B
    .restart local v24    # "buf_offset":I
    .restart local v25    # "buf_ret":I
    .restart local v27    # "bytesToRead":J
    .restart local v29    # "chunkIndex":I
    .restart local v30    # "chunkLengths":[I
    .restart local v32    # "connectionCloseHeader":Lorg/apache/http/Header;
    .restart local v33    # "contentLength":J
    .restart local v43    # "dataRead":I
    .restart local v49    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v53    # "in":Ljava/io/InputStream;
    .restart local v55    # "len":I
    .restart local v57    # "listId":I
    .restart local v60    # "otherSockID":I
    .restart local v61    # "prevOffset":J
    .restart local v63    # "prevTime":J
    .restart local v66    # "response":Lorg/apache/http/HttpResponse;
    .restart local v67    # "rspCode":I
    .restart local v68    # "socketTimeout":J
    .restart local v70    # "startChunkTime":J
    .restart local v72    # "tempbuf":[B
    .restart local v73    # "tmpH":J
    .restart local v79    # "totalContinuousChunk":I
    .restart local v80    # "totallen":J
    :catch_b
    move-exception v3

    goto/16 :goto_1b

    :cond_7f
    move/from16 v56, v57

    .end local v57    # "listId":I
    .restart local v56    # "listId":I
    goto/16 :goto_1d
.end method
