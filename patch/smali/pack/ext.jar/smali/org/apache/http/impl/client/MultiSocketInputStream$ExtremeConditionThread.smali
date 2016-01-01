.class Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;
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
    name = "ExtremeConditionThread"
.end annotation


# instance fields
.field private bDeprecated:Z

.field bForceStart:Z

.field bIsHandover:Z

.field private bTryBoth:Z

.field dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

.field director:Lorg/apache/http/impl/client/DefaultRequestDirector;

.field end:J

.field expCustomHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

.field input:Ljava/io/InputStream;

.field isExceptionInResponse:Z

.field private mSecThreadCreationResult:I

.field private mStartReadHeaderTime:J

.field public sockID:I

.field start:J

.field private switchToSocketID:I

.field final synthetic this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/MultiSocketInputStream;IJJLorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;Z)V
    .locals 3
    .param p2, "socketID"    # I
    .param p3, "startOffset"    # J
    .param p5, "endOffset"    # J
    .param p7, "buf"    # Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;
    .param p8, "bFor"    # Z

    .prologue
    const/4 v2, 0x0

    .line 5099
    iput-object p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5072
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->input:Ljava/io/InputStream;

    .line 5076
    iput-boolean v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bIsHandover:Z

    .line 5080
    iput-boolean v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bTryBoth:Z

    .line 5084
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->mStartReadHeaderTime:J

    .line 5088
    iput-boolean v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    .line 5089
    const/16 v0, -0x64

    iput v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->mSecThreadCreationResult:I

    .line 5100
    iput p2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    .line 5101
    iput-wide p3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->start:J

    .line 5102
    iput-wide p5, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->end:J

    .line 5103
    iput-object p7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    .line 5104
    new-instance v0, Lorg/apache/http/impl/client/CustomHttpClient;

    iget v1, p1, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/CustomHttpClient;-><init>(I)V

    iput-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->expCustomHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    .line 5105
    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->expCustomHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;
    invoke-static {p1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpRequest;

    move-result-object v1

    iget v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/CustomHttpClient;->createClientRequestDirector(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/DefaultRequestDirector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    .line 5106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->isExceptionInResponse:Z

    .line 5107
    iput-boolean p8, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bForceStart:Z

    .line 5108
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->switchToSocketID:I

    .line 5109
    return-void
.end method

.method static synthetic access$4702(Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;
    .param p1, "x1"    # Z

    .prologue
    .line 5024
    iput-boolean p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    return p1
.end method


# virtual methods
.method closeConnection()V
    .locals 3

    .prologue
    .line 5602
    sget-boolean v0, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try to close extreme input stream in main, input is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->input:Ljava/io/InputStream;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    .line 5604
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5605
    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V

    .line 5606
    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    .line 5607
    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5613
    :cond_1
    :goto_0
    return-void

    .line 5610
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public createTwoChunkInput(Z)V
    .locals 28
    .param p1, "bReverseSock"    # Z

    .prologue
    .line 5148
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-eqz v2, :cond_2

    .line 5149
    :cond_0
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "createTwoChunkInput: session is finished"

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 5194
    :cond_1
    :goto_0
    return-void

    .line 5152
    :cond_2
    monitor-enter p0

    .line 5153
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$700(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1100(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v7

    cmp-long v2, v2, v7

    if-gtz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bStopSecDecisionMade:Z
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4200(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 5155
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Main Socket is finished while mRemainBytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$700(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extrem read bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 5158
    :cond_3
    if-eqz p1, :cond_4

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->mStartReadHeaderTime:J

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-lez v2, :cond_7

    .line 5159
    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    .line 5160
    .local v5, "sock0":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    invoke-virtual {v2, v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->getSpeed(I)J

    move-result-wide v14

    .line 5162
    .local v14, "speed0":J
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v6, v2, 0x2

    .line 5163
    .local v6, "sock1":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    invoke-virtual {v2, v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->getSpeed(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v16

    .line 5166
    .local v16, "speed1":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v27, v0

    new-instance v2, Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->input:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v4, v4, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->start:J

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->end:J

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;
    invoke-static {v11}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpRequest;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;
    invoke-static {v12}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpContext:Lorg/apache/http/protocol/HttpContext;
    invoke-static {v13}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$100(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/protocol/HttpContext;

    move-result-object v13

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v20, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLengthRangeRequest:J
    invoke-static/range {v20 .. v20}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2400(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v20

    sget v22, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->getHasReadLen()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move/from16 v23, p1

    invoke-direct/range {v2 .. v25}, Lorg/apache/http/impl/client/TwoChunkInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/conn/ManagedClientConnection;IIJJ[Lorg/apache/http/HttpRequest;[Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;JJILorg/apache/http/impl/client/MultiSocketInputStream;JIZJ)V

    move-object/from16 v0, v27

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v0, v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3802(Lorg/apache/http/impl/client/MultiSocketInputStream;Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    .line 5170
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->getNeedToExitSecThread()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->mSecThreadCreationResult:I

    .line 5171
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->mSecThreadCreationResult:I

    if-nez v2, :cond_9

    .line 5172
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    .line 5173
    if-eqz p1, :cond_8

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->mStartReadHeaderTime:J

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-lez v2, :cond_8

    .line 5174
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "Need to start another Extreme Input"

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 5175
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->closeConnection()V

    .line 5181
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v8

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->start:J

    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->end:J

    invoke-virtual/range {v7 .. v12}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->push(Ljava/io/InputStream;JJ)V

    .line 5182
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->startRun()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5193
    .end local v5    # "sock0":I
    .end local v6    # "sock1":I
    .end local v14    # "speed0":J
    .end local v16    # "speed1":J
    :cond_7
    :goto_2
    :try_start_2
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 5178
    .restart local v5    # "sock0":I
    .restart local v6    # "sock1":I
    .restart local v14    # "speed0":J
    .restart local v16    # "speed1":J
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->input:Ljava/io/InputStream;

    .line 5179
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new input stream in create two chunk extremInput = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->input:Ljava/io/InputStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 5188
    :catch_0
    move-exception v26

    .line 5189
    .local v26, "e":Ljava/lang/Throwable;
    :try_start_4
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_7

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 5185
    .end local v26    # "e":Ljava/lang/Throwable;
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v3, 0x0

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3802(Lorg/apache/http/impl/client/MultiSocketInputStream;Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public getSocketID()I
    .locals 1

    .prologue
    .line 5116
    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    return v0
.end method

.method public run()V
    .locals 45

    .prologue
    .line 5199
    sget v2, Lorg/apache/http/impl/client/DefaultRequestDirector;->sProcessUsingMultiSocket:I

    add-int/lit8 v2, v2, 0x2

    sput v2, Lorg/apache/http/impl/client/DefaultRequestDirector;->sProcessUsingMultiSocket:I

    .line 5202
    const/16 v30, 0x1

    .line 5203
    .local v30, "isRangeRequestSupported":Z
    const/16 v42, 0x0

    .line 5204
    .local v42, "totallen":I
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->end:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->start:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long v24, v2, v4

    .line 5205
    .local v24, "bytesToRead":J
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v2, :cond_0

    move/from16 v0, v42

    int-to-long v2, v0

    cmp-long v2, v2, v24

    if-gez v2, :cond_0

    .line 5206
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v2, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5207
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    .line 5576
    :cond_0
    :goto_1
    sget v2, Lorg/apache/http/impl/client/DefaultRequestDirector;->sProcessUsingMultiSocket:I

    add-int/lit8 v2, v2, -0x2

    sput v2, Lorg/apache/http/impl/client/DefaultRequestDirector;->sProcessUsingMultiSocket:I

    .line 5577
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v2, :cond_3

    .line 5578
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    monitor-enter v3

    .line 5579
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v4, 0x0

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bExtremThreadExisted:Z
    invoke-static {v2, v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1902(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z

    .line 5580
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 5581
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_11

    if-nez v2, :cond_1

    .line 5583
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    sget v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_RANGEREQUEST_TIME_OUT:I

    add-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_11

    .line 5589
    :cond_1
    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_11

    .line 5590
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v2, :cond_2

    .line 5591
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->createTwoChunkInputInMain(Z)V

    .line 5593
    :cond_2
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource check: thread checking: stop ExtremThread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", exit from socket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 5595
    :cond_3
    return-void

    .line 5211
    :cond_4
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->mStartReadHeaderTime:J

    .line 5212
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->switchToSocketID:I

    if-ltz v2, :cond_5

    .line 5213
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->switchToSocketID:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    .line 5214
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->switchToSocketID:I

    .line 5217
    :cond_5
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_6

    .line 5218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Socket ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Host:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 5220
    :cond_6
    const/16 v36, 0x0

    .line 5221
    .local v36, "response":Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_19

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v2, :cond_19

    .line 5223
    const/4 v2, 0x2

    new-array v0, v2, [Lorg/apache/http/HttpHost;

    move-object/from16 v17, v0

    .line 5224
    .local v17, "proxies":[Lorg/apache/http/HttpHost;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->expCustomHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/CustomHttpClient;->getProxy(ILorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    move-result-object v3

    aput-object v3, v17, v2

    .line 5225
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->expCustomHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/CustomHttpClient;->getProxy(ILorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    move-result-object v3

    aput-object v3, v17, v2

    .line 5227
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpRequest;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpContext:Lorg/apache/http/protocol/HttpContext;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$100(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/protocol/HttpContext;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->start:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->end:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLengthRangeRequest:J
    invoke-static {v10}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2400(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget v12, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bTryBoth:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v14, v14, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriOffset:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriMainInterface:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    move/from16 v18, v0

    invoke-virtual/range {v2 .. v18}, Lorg/apache/http/impl/client/DefaultRequestDirector;->execute([Lorg/apache/http/HttpHost;[Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;JJJIZJI[Lorg/apache/http/HttpHost;I)Lorg/apache/http/HttpResponse;

    move-result-object v36

    .line 5230
    if-nez v36, :cond_e

    .line 5231
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v3, 0x2

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->failReasonInExtreme:I
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4302(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    .line 5232
    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 5233
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_c

    .line 5234
    const/16 v30, 0x0

    .line 5235
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->isExceptionInResponse:Z

    .line 5236
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_7

    .line 5237
    const-string v2, "ExtremeConditionThread will exit"

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 5239
    :cond_7
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Either the Range Request not supported or not connected"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5245
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 5512
    .end local v17    # "proxies":[Lorg/apache/http/HttpHost;
    .end local v36    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v41

    .line 5513
    .local v41, "t":Ljava/lang/Throwable;
    :try_start_6
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_8

    .line 5514
    invoke-static/range {v41 .. v41}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    .line 5516
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->isExceptionInResponse:Z

    if-eqz v2, :cond_43

    .line 5517
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2100(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2100(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_45

    .line 5518
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v3, 0x0

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsReadFromBuffer:Z
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4402(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z

    .line 5519
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v3, 0x0

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsMultiSocketStarted:Z
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3302(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z

    .line 5520
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v3, 0x0

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bExtremThreadStarted:Z
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1802(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z

    .line 5521
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->failReasonInExtreme:I
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_a

    .line 5522
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v3, 0x3

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->failReasonInExtreme:I
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4302(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    .line 5523
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v3, 0x1

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2102(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    .line 5524
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 5525
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 5526
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_c

    .line 5570
    monitor-enter p0

    .line 5571
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v2, :cond_b

    .line 5572
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->closeConnection()V

    .line 5573
    :cond_b
    monitor-exit p0

    goto/16 :goto_1

    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v2

    .line 5242
    .end local v41    # "t":Ljava/lang/Throwable;
    .restart local v17    # "proxies":[Lorg/apache/http/HttpHost;
    .restart local v36    # "response":Lorg/apache/http/HttpResponse;
    :cond_c
    :try_start_9
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_d

    .line 5243
    const-string v2, "childIS is created before this exception"

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 5245
    :cond_d
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 5248
    :cond_e
    if-eqz v36, :cond_11

    :try_start_a
    invoke-interface/range {v36 .. v36}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x193

    if-ne v2, v3, :cond_11

    .line 5249
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    .line 5250
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v3, 0x2

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->failReasonInExtreme:I
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4302(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    .line 5251
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v3, 0x1

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2102(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    .line 5252
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_f

    const-string v2, "Server sends forbidden request"

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 5570
    :cond_f
    monitor-enter p0

    .line 5571
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v2, :cond_10

    .line 5572
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->closeConnection()V

    .line 5573
    :cond_10
    monitor-exit p0

    goto/16 :goto_1

    :catchall_2
    move-exception v2

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v2

    .line 5255
    :cond_11
    :try_start_c
    monitor-enter p0
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 5256
    const-wide/16 v2, -0x1

    :try_start_d
    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->mStartReadHeaderTime:J

    .line 5257
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-eqz v2, :cond_14

    .line 5258
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_12

    const-string v2, "thread is deprecated, break"

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 5259
    :cond_12
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 5570
    monitor-enter p0

    .line 5571
    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_13

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v2, :cond_13

    .line 5572
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->closeConnection()V

    .line 5573
    :cond_13
    monitor-exit p0

    goto/16 :goto_1

    :catchall_3
    move-exception v2

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v2

    .line 5261
    :cond_14
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v2, :cond_1f

    .line 5262
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bTryBoth:Z

    if-eqz v2, :cond_15

    .line 5263
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v2, v2, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v2}, Lorg/apache/http/conn/ManagedClientConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget v4, v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    invoke-static {v3, v4}, Lorg/apache/http/impl/client/CustomHttpClient;->getLocalAddrEx(II)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 5265
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    .line 5272
    :cond_15
    :goto_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->isExceptionInResponse:Z

    .line 5274
    const/16 v30, 0x1

    .line 5276
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->getHttpRequest()Lorg/apache/http/HttpRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 5277
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRemoteAddress:[Ljava/net/InetAddress;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Ljava/net/InetAddress;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v4, v4, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v4}, Lorg/apache/http/conn/ManagedClientConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v4

    aput-object v4, v2, v3

    .line 5278
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultRequestDirector;->getHttpRequest()Lorg/apache/http/HttpRequest;

    move-result-object v4

    aput-object v4, v2, v3

    .line 5279
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultRequestDirector;->getHttpHost()Lorg/apache/http/HttpHost;

    move-result-object v4

    aput-object v4, v2, v3

    .line 5281
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2100(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2100(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_18

    .line 5283
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v3, 0x3

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2102(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    .line 5284
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    monitor-enter v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 5285
    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 5286
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 5292
    :cond_18
    :goto_4
    :try_start_11
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 5294
    :try_start_12
    const-string v2, "Connection"

    move-object/from16 v0, v36

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v26

    .line 5295
    .local v26, "connectionCloseHeader":Lorg/apache/http/Header;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    if-nez v26, :cond_21

    const/4 v2, 0x0

    :goto_5
    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsConnectionClosedAfterEveryRequest:Z
    invoke-static {v3, v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2602(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z

    .line 5298
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_19

    .line 5299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExtremeConditionThread: Reconnect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsConnectionClosedAfterEveryRequest:Z
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2600(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 5304
    .end local v17    # "proxies":[Lorg/apache/http/HttpHost;
    .end local v26    # "connectionCloseHeader":Lorg/apache/http/Header;
    :cond_19
    if-eqz v36, :cond_1a

    .line 5305
    invoke-interface/range {v36 .. v36}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->input:Ljava/io/InputStream;

    .line 5307
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-eqz v2, :cond_22

    .line 5308
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_1b

    const-string v2, "thread is deprecated2, break"

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 5570
    :cond_1b
    monitor-enter p0

    .line 5571
    :try_start_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v2, :cond_1c

    .line 5572
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->closeConnection()V

    .line 5573
    :cond_1c
    monitor-exit p0

    goto/16 :goto_1

    :catchall_4
    move-exception v2

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    throw v2

    .line 5268
    .restart local v17    # "proxies":[Lorg/apache/http/HttpHost;
    :cond_1d
    const/4 v2, 0x1

    :try_start_14
    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    goto/16 :goto_3

    .line 5292
    :catchall_5
    move-exception v2

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    :try_start_15
    throw v2
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 5570
    .end local v17    # "proxies":[Lorg/apache/http/HttpHost;
    .end local v36    # "response":Lorg/apache/http/HttpResponse;
    :catchall_6
    move-exception v2

    monitor-enter p0

    .line 5571
    :try_start_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v3

    if-nez v3, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v3, :cond_1e

    .line 5572
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->closeConnection()V

    .line 5573
    :cond_1e
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_10

    throw v2

    .line 5286
    .restart local v17    # "proxies":[Lorg/apache/http/HttpHost;
    .restart local v36    # "response":Lorg/apache/http/HttpResponse;
    :catchall_7
    move-exception v2

    :try_start_17
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    :try_start_18
    throw v2

    .line 5289
    :cond_1f
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_20

    const-string v2, "childIS is created before this connection"

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 5290
    :cond_20
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    goto/16 :goto_4

    .line 5295
    .restart local v26    # "connectionCloseHeader":Lorg/apache/http/Header;
    :cond_21
    :try_start_19
    invoke-interface/range {v26 .. v26}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Close"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_5

    .line 5313
    .end local v17    # "proxies":[Lorg/apache/http/HttpHost;
    .end local v26    # "connectionCloseHeader":Lorg/apache/http/Header;
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mStartReadTime:[J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2700(Lorg/apache/http/impl/client/MultiSocketInputStream;)[J

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mStartReadTime:[J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2700(Lorg/apache/http/impl/client/MultiSocketInputStream;)[J

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 5316
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v2, v2, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v2}, Lorg/apache/http/conn/ManagedClientConnection;->getSocketTimeout()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v39, v0

    .line 5317
    .local v39, "socketTimeout":J
    const-wide/16 v2, 0x0

    cmp-long v2, v39, v2

    if-nez v2, :cond_24

    .line 5318
    const-wide/16 v39, 0x1388

    .line 5322
    :cond_24
    const/16 v21, 0x0

    .line 5323
    .local v21, "buf_offset":I
    const-wide/16 v22, 0x0

    .line 5326
    .local v22, "buf_ret":J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v2, :cond_25

    .line 5327
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    monitor-enter v3
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_0
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 5328
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->startReceiveData()V

    .line 5329
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    invoke-virtual {v2, v4}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->changeSockID(I)V

    .line 5330
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    .line 5332
    :cond_25
    const/16 v32, 0x0

    .line 5338
    .local v32, "listId":I
    :try_start_1b
    sget v29, Lorg/apache/http/impl/client/MultiSocketInputStream;->INIT_BUFFERLEN:I

    .line 5339
    .local v29, "iRealBlockSize":I
    sget v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->MAX_BUFFERLEN:I

    new-array v0, v2, [B

    move-object/from16 v20, v0

    .line 5340
    .local v20, "buf":[B
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v2, :cond_28

    move/from16 v0, v42

    int-to-long v2, v0

    cmp-long v2, v2, v24

    if-gez v2, :cond_28

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v2, :cond_28

    .line 5341
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v2, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 5342
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    .line 5344
    :cond_27
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->mSecThreadCreationResult:I

    const/16 v3, -0x64

    if-ne v2, v3, :cond_2c

    .line 5346
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->createTwoChunkInput(Z)V

    .line 5347
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-eqz v2, :cond_2b

    .line 5348
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extreme Thread deprecated at offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->start:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 5509
    :cond_28
    :goto_6
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_29

    .line 5510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Speed of current socket is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->getSpeed(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_0
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    .line 5570
    :cond_29
    monitor-enter p0

    .line 5571
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_2a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v2, :cond_2a

    .line 5572
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->closeConnection()V

    .line 5573
    :cond_2a
    monitor-exit p0

    goto/16 :goto_0

    :catchall_8
    move-exception v2

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    throw v2

    .line 5330
    .end local v20    # "buf":[B
    .end local v29    # "iRealBlockSize":I
    .end local v32    # "listId":I
    :catchall_9
    move-exception v2

    :try_start_1d
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    :try_start_1e
    throw v2

    .line 5353
    .restart local v20    # "buf":[B
    .restart local v29    # "iRealBlockSize":I
    .restart local v32    # "listId":I
    :cond_2b
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->mSecThreadCreationResult:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2c

    .line 5354
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->closeConnection()V

    .line 5355
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->switchSocket(I)V

    goto :goto_6

    .line 5360
    :cond_2c
    move/from16 v0, v29

    int-to-long v2, v0

    move/from16 v0, v42

    int-to-long v4, v0

    sub-long v4, v24, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v19, v0

    .line 5366
    .local v19, "bsize":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    if-eqz v2, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->isBufferInFile()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 5367
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 5368
    :cond_2d
    sget v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->MAX_BUFFERLEN:I

    shl-int/lit8 v3, v29, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_0
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    move-result v29

    .line 5370
    const/16 v21, 0x0

    .line 5371
    const-wide/16 v22, 0x0

    .line 5372
    const/16 v31, 0x0

    .line 5377
    .local v31, "len":I
    :cond_2e
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v2, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v2

    if-nez v2, :cond_30

    move-object/from16 v0, v20

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_30

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v2, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v2, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->input:Ljava/io/InputStream;

    move-object/from16 v0, v20

    array-length v3, v0

    sub-int v3, v3, v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v2, v0, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v31

    if-lez v31, :cond_30

    .line 5378
    add-int v21, v21, v31

    .line 5380
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_2f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v2, :cond_2f

    .line 5381
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->setTime(I)V

    .line 5382
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    move/from16 v0, v31

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->incByte(IJ)V

    .line 5385
    :cond_2f
    move-object/from16 v0, v20

    array-length v2, v0
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_1
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    move/from16 v0, v21

    if-ne v2, v0, :cond_31

    .line 5408
    :cond_30
    :goto_7
    :try_start_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v2, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 5409
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_0
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    goto/16 :goto_6

    .line 5390
    :cond_31
    :try_start_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$700(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1100(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_34

    .line 5391
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_30

    .line 5392
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->mSecThreadCreationResult:I

    const/16 v3, -0x64

    if-ne v2, v3, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bStopSecDecisionMade:Z
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4200(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 5393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Now it is time to stop this thread, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$700(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1100(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", buf_offset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_1
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    goto :goto_7

    .line 5402
    :catch_1
    move-exception v28

    .line 5403
    .local v28, "ex":Ljava/lang/Throwable;
    :try_start_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->disconnCount:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 5404
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SocketTimeoutException Count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->disconnCount:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->disconnCount:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 5405
    :cond_32
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_33

    invoke-static/range {v28 .. v28}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    .line 5406
    :cond_33
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Exception while reading data from extream thread socket"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_0
    .catchall {:try_start_22 .. :try_end_22} :catchall_6

    .line 5397
    .end local v28    # "ex":Ljava/lang/Throwable;
    :cond_34
    add-int v2, v42, v21

    int-to-long v2, v2

    cmp-long v2, v2, v24

    if-ltz v2, :cond_2e

    .line 5398
    :try_start_23
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Full data read, break: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v42

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_1
    .catchall {:try_start_23 .. :try_end_23} :catchall_6

    goto/16 :goto_7

    .line 5418
    :cond_35
    if-lez v21, :cond_3f

    :try_start_24
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v2, :cond_3f

    .line 5422
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    monitor-enter v3
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_0
    .catchall {:try_start_24 .. :try_end_24} :catchall_6

    .line 5423
    :try_start_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v2, v4, v0, v1}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->push(I[BI)J

    move-result-wide v22

    .line 5424
    const-wide/16 v4, -0x1

    cmp-long v2, v22, v4

    if-nez v2, :cond_36

    .line 5432
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Data is not pushed into the Data buffer, either socket has changed"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5445
    :catchall_a
    move-exception v2

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    :try_start_26
    throw v2
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_0
    .catchall {:try_start_26 .. :try_end_26} :catchall_6

    .line 5433
    :cond_36
    const-wide/16 v4, 0x0

    cmp-long v2, v22, v4

    if-gez v2, :cond_38

    .line 5434
    const-wide/16 v4, -0x1

    mul-long v4, v4, v22

    :try_start_27
    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->start:J

    .line 5435
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_37

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "some buffered data is removed from cache file, read again from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->start:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 5436
    :cond_37
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "some buffered data is removed from cache file, read again from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->start:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5439
    :cond_38
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->start:J

    add-long v4, v4, v22

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->start:J
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_a

    .line 5440
    move/from16 v0, v42

    int-to-long v4, v0

    add-long v4, v4, v22

    long-to-int v0, v4

    move/from16 v42, v0

    .line 5443
    :try_start_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_6
    .catchall {:try_start_28 .. :try_end_28} :catchall_a

    .line 5445
    :goto_8
    :try_start_29
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_a

    .line 5446
    :try_start_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    monitor-enter v3
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_0
    .catchall {:try_start_2a .. :try_end_2a} :catchall_6

    .line 5447
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->isBufferInFile()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 5448
    :cond_39
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->getRestLength()I

    move-result v2

    int-to-long v4, v2

    const-wide/32 v6, 0x2000000

    cmp-long v2, v4, v6

    if-lez v2, :cond_3d

    .line 5449
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_3a

    .line 5450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "now rest length of the dBuf is over limit: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->getRestLength()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_b

    .line 5452
    :cond_3a
    :try_start_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_5
    .catchall {:try_start_2c .. :try_end_2c} :catchall_b

    .line 5455
    :goto_a
    const-wide/high16 v34, 0x4059000000000000L    # 100.0

    .line 5456
    .local v34, "ratio":D
    :try_start_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mSpeedForEachInterface:[J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[J

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    invoke-virtual {v5, v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->getSpeed(I)J

    move-result-wide v5

    aput-wide v5, v2, v4

    .line 5457
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v33, v2, 0x2

    .line 5458
    .local v33, "otherSocket":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mSpeedForEachInterface:[J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[J

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Lorg/apache/http/impl/client/MultiSocketInputStream;->getSpeed(I)J

    move-result-wide v4

    aput-wide v4, v2, v33

    .line 5459
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mSpeedForEachInterface:[J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[J

    move-result-object v2

    aget-wide v4, v2, v33

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_3b

    .line 5460
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mSpeedForEachInterface:[J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[J

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    aget-wide v4, v2, v4

    long-to-double v4, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mSpeedForEachInterface:[J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[J

    move-result-object v2

    aget-wide v6, v2, v33

    long-to-double v6, v6

    div-double v34, v4, v6

    .line 5463
    :cond_3b
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v4

    if-eq v2, v4, :cond_39

    sget v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->SPEED_RATIO_FOR_EXTREME_HO:I

    int-to-double v4, v2

    cmpl-double v2, v34, v4

    if-lez v2, :cond_39

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsReadFromBuffer:Z
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 5465
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketAfterHandover:I
    invoke-static {v2, v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2802(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    .line 5467
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v2, v2, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v2, :cond_3c

    .line 5468
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v2, v2, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v2}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    .line 5469
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->releaseConnection()V

    .line 5471
    :cond_3c
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_39

    .line 5472
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Close main socket Speed of current socket in waiting for MEM: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mSpeedForEachInterface:[J
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[J

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    aget-wide v4, v4, v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Speed of Other socket: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mSpeedForEachInterface:[J
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[J

    move-result-object v4

    aget-wide v4, v4, v33

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Speed ratio is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v34

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 5481
    .end local v33    # "otherSocket":I
    .end local v34    # "ratio":D
    :catchall_b
    move-exception v2

    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_b

    :try_start_2e
    throw v2
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_0
    .catchall {:try_start_2e .. :try_end_2e} :catchall_6

    :cond_3d
    :try_start_2f
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_b

    .line 5504
    :try_start_30
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->switchToSocketID:I

    if-ltz v2, :cond_26

    .line 5505
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_3e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need to swtich to socket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->switchToSocketID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 5506
    :cond_3e
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Need to swtich to socket "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->switchToSocketID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5482
    :cond_3f
    const/4 v2, -0x1

    move/from16 v0, v31

    if-ne v0, v2, :cond_41

    move/from16 v0, v42

    int-to-long v2, v0

    cmp-long v2, v2, v24

    if-gez v2, :cond_41

    .line 5483
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_40

    .line 5484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExtremeConditionThread read body Exception: totallen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v42

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bytesToRead= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 5490
    :cond_40
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExtremeContionThread read body Exception: totallen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bytesToRead= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5496
    :cond_41
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_42

    .line 5497
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExtremeConditionThread read body Exception2: totallen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v42

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bytesToRead= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 5500
    :cond_42
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExtremeContionThread read body Exception2: totallen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bytesToRead= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_0
    .catchall {:try_start_30 .. :try_end_30} :catchall_6

    .line 5526
    .end local v19    # "bsize":I
    .end local v20    # "buf":[B
    .end local v21    # "buf_offset":I
    .end local v22    # "buf_ret":J
    .end local v29    # "iRealBlockSize":I
    .end local v31    # "len":I
    .end local v32    # "listId":I
    .end local v36    # "response":Lorg/apache/http/HttpResponse;
    .end local v39    # "socketTimeout":J
    .restart local v41    # "t":Ljava/lang/Throwable;
    :catchall_c
    move-exception v2

    :try_start_31
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_c

    :try_start_32
    throw v2

    .line 5529
    :cond_43
    move-object/from16 v0, v41

    instance-of v2, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v2, :cond_48

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v2, :cond_48

    .line 5530
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    monitor-enter v3
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_6

    .line 5532
    :try_start_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->removeTail(I)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_2
    .catchall {:try_start_33 .. :try_end_33} :catchall_e

    .line 5537
    :cond_44
    :goto_b
    :try_start_34
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 5538
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, -0x1

    aput-byte v5, v2, v4

    .line 5539
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_e

    .line 5555
    :cond_45
    :goto_c
    :try_start_35
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bIsHandover:Z

    if-nez v2, :cond_46

    move-object/from16 v0, v41

    instance-of v2, v0, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_4a

    .line 5557
    :cond_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v3, 0x0

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bExtremThreadExisted:Z
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1902(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z

    .line 5558
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bIsHandover:Z
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_6

    .line 5570
    :goto_d
    monitor-enter p0

    .line 5571
    :try_start_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_47

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v2, :cond_47

    .line 5572
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->closeConnection()V

    .line 5573
    :cond_47
    monitor-exit p0

    goto/16 :goto_0

    :catchall_d
    move-exception v2

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_d

    throw v2

    .line 5534
    :catch_2
    move-exception v28

    .line 5535
    .restart local v28    # "ex":Ljava/lang/Throwable;
    :try_start_37
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_44

    invoke-static/range {v28 .. v28}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_b

    .line 5539
    .end local v28    # "ex":Ljava/lang/Throwable;
    :catchall_e
    move-exception v2

    monitor-exit v3
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_e

    :try_start_38
    throw v2

    .line 5541
    :cond_48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v37

    .line 5542
    .local v37, "sTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    monitor-enter v3
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_6

    .line 5544
    :try_start_39
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_4
    .catchall {:try_start_39 .. :try_end_39} :catchall_f

    .line 5548
    :goto_e
    :try_start_3a
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_f

    .line 5549
    :try_start_3b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v43, v2, v37

    .line 5550
    .local v43, "waitedTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mTimeForDownload:[J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3900(Lorg/apache/http/impl/client/MultiSocketInputStream;)[J

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_49

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_49

    .line 5551
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    move-wide/from16 v0, v43

    invoke-virtual {v2, v3, v0, v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->decTime(IJ)V

    .line 5552
    :cond_49
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    aput-byte v4, v2, v3
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_6

    goto/16 :goto_c

    .line 5548
    .end local v43    # "waitedTime":J
    :catchall_f
    move-exception v2

    :try_start_3c
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_f

    :try_start_3d
    throw v2

    .line 5566
    .end local v37    # "sTime":J
    :cond_4a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v3, 0x1

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bExtremThreadExisted:Z
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1902(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_6

    goto/16 :goto_d

    .line 5573
    .end local v41    # "t":Ljava/lang/Throwable;
    :catchall_10
    move-exception v2

    :try_start_3e
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_10

    throw v2

    .line 5585
    :catch_3
    move-exception v27

    .line 5586
    .local v27, "e":Ljava/lang/Throwable;
    :try_start_3f
    invoke-static/range {v27 .. v27}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 5589
    .end local v27    # "e":Ljava/lang/Throwable;
    :catchall_11
    move-exception v2

    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_11

    throw v2

    .line 5546
    .restart local v37    # "sTime":J
    .restart local v41    # "t":Ljava/lang/Throwable;
    :catch_4
    move-exception v2

    goto :goto_e

    .line 5454
    .end local v37    # "sTime":J
    .end local v41    # "t":Ljava/lang/Throwable;
    .restart local v19    # "bsize":I
    .restart local v20    # "buf":[B
    .restart local v21    # "buf_offset":I
    .restart local v22    # "buf_ret":J
    .restart local v29    # "iRealBlockSize":I
    .restart local v31    # "len":I
    .restart local v32    # "listId":I
    .restart local v36    # "response":Lorg/apache/http/HttpResponse;
    .restart local v39    # "socketTimeout":J
    :catch_5
    move-exception v2

    goto/16 :goto_a

    .line 5444
    :catch_6
    move-exception v2

    goto/16 :goto_8
.end method

.method public startTryBoth(I)V
    .locals 1
    .param p1, "preferSock"    # I

    .prologue
    .line 5132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bTryBoth:Z

    .line 5141
    return-void
.end method

.method public switchSocket(I)V
    .locals 2
    .param p1, "sid"    # I

    .prologue
    .line 5120
    sget-boolean v0, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v0, :cond_0

    .line 5121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requested to switch socket id from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 5123
    :cond_0
    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    if-eq p1, v0, :cond_1

    .line 5124
    iput p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->switchToSocketID:I

    .line 5125
    :cond_1
    return-void
.end method
