.class Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
.super Ljava/lang/Object;
.source "MultiSocketInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/client/MultiSocketInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BlockManager"
.end annotation


# static fields
.field public static final BLOCKINFOSIZE:I = 0x4


# instance fields
.field protected headerTime:[J

.field private httpRequestID:[I

.field private minNotReadBlockID:I

.field protected reconnTime:[J

.field private socketSpeed:[J

.field final synthetic this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

.field protected toBeReadLen:[J


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/MultiSocketInputStream;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x2

    .line 4335
    iput-object p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4336
    new-array v1, v3, [I

    iput-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    .line 4337
    new-array v1, v3, [J

    iput-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->socketSpeed:[J

    .line 4338
    new-array v1, v3, [J

    iput-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->reconnTime:[J

    .line 4339
    new-array v1, v3, [J

    iput-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->headerTime:[J

    .line 4340
    new-array v1, v3, [J

    iput-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->toBeReadLen:[J

    .line 4341
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 4342
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 4343
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->socketSpeed:[J

    aput-wide v4, v1, v0

    .line 4344
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->reconnTime:[J

    aput-wide v4, v1, v0

    .line 4345
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->headerTime:[J

    aput-wide v4, v1, v0

    .line 4346
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->toBeReadLen:[J

    aput-wide v4, v1, v0

    .line 4341
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4348
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->minNotReadBlockID:I

    .line 4349
    return-void
.end method

.method static synthetic access$5000(Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;)[J
    .locals 1
    .param p0, "x0"    # Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    .prologue
    .line 4302
    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->socketSpeed:[J

    return-object v0
.end method

.method private getBlockForWithID(II)[J
    .locals 4
    .param p1, "sockID"    # I
    .param p2, "blockid"    # I

    .prologue
    const/4 v3, 0x0

    .line 4707
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4709
    .local v0, "tmpID":I
    :cond_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    aget-byte v1, v1, v0

    if-lez v1, :cond_1

    .line 4710
    add-int/lit8 v0, v0, 0x1

    .line 4712
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 4713
    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_1

    .line 4714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id reach the maximum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4720
    :cond_1
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_4

    .line 4721
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4722
    :cond_2
    if-ltz v0, :cond_4

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    aget-byte v1, v1, v0

    if-lez v1, :cond_4

    .line 4723
    add-int/lit8 v0, v0, -0x1

    .line 4724
    iget v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->minNotReadBlockID:I

    if-ne v0, v1, :cond_2

    .line 4725
    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_3

    .line 4726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id reach the minimum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->minNotReadBlockID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4728
    :cond_3
    new-array v1, v3, [J

    .line 4739
    :goto_0
    return-object v1

    .line 4732
    :cond_4
    if-ltz v0, :cond_5

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_7

    .line 4733
    :cond_5
    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_6

    .line 4734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get an illegal tmpID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4736
    :cond_6
    new-array v1, v3, [J

    goto :goto_0

    .line 4738
    :cond_7
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    aput v0, v1, p1

    .line 4739
    invoke-direct {p0, v0, p1}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getNewBuf(II)[J

    move-result-object v1

    goto :goto_0
.end method

.method private getContinuousChunk(I)[J
    .locals 17
    .param p1, "sockID"    # I

    .prologue
    .line 4824
    const/4 v9, 0x0

    .line 4825
    .local v9, "notReadContinuousBlock":I
    const-wide/16 v3, -0x1

    .line 4826
    .local v3, "startOffset":J
    const-wide/16 v11, -0x1

    .line 4827
    .local v11, "endOffset":J
    const/4 v5, 0x0

    .line 4828
    .local v5, "blockId":I
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_0

    .line 4829
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Inside getContinuousChunk(), mReadBlockNumber="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mReadBlockNumber:Ljava/lang/Integer;
    invoke-static {v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4831
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mReadBlockNumber:Ljava/lang/Integer;
    invoke-static {v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v13

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    array-length v2, v2

    if-ge v13, v2, :cond_d

    .line 4833
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_1

    .line 4834
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mBlockStatus["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "] = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v7

    aget-byte v7, v7, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->statusToStr(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4836
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    aget-byte v2, v2, v13

    packed-switch v2, :pswitch_data_0

    .line 4831
    :cond_2
    :goto_1
    :pswitch_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 4839
    :pswitch_1
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_3

    .line 4840
    const-string v2, "Inside NOT_READ BLOCK"

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4844
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 4846
    const-wide/16 v7, -0x1

    cmp-long v2, v3, v7

    if-nez v2, :cond_4

    .line 4847
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v2

    mul-int/2addr v2, v13

    int-to-long v7, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOffset:J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1200(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v15

    add-long v3, v7, v15

    .line 4848
    move v5, v13

    .line 4852
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v13, v2, :cond_5

    .line 4853
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$400(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v15, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriOffset:J

    add-long/2addr v7, v15

    const-wide/16 v15, 0x1

    sub-long v11, v7, v15

    goto :goto_1

    .line 4855
    :cond_5
    add-int v2, v5, v9

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v7

    mul-int/2addr v2, v7

    int-to-long v7, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOffset:J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1200(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v15

    add-long/2addr v7, v15

    const-wide/16 v15, 0x1

    sub-long v11, v7, v15

    .line 4858
    goto :goto_1

    .line 4860
    :pswitch_2
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_6

    .line 4861
    const-string v2, "Inside BLOCKED BLOCK"

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4863
    :cond_6
    const/4 v2, 0x1

    if-lt v9, v2, :cond_7

    .line 4864
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    array-length v13, v2

    goto :goto_1

    .line 4865
    :cond_7
    if-nez v9, :cond_2

    .line 4866
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_8

    .line 4867
    const-string v2, "Inside BLOCKED BLOCK: Getting the start index."

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4869
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    .line 4870
    .local v1, "buf":Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;
    invoke-virtual {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->getOffset()J

    move-result-wide v3

    .line 4871
    move v5, v13

    .line 4872
    add-int/lit8 v9, v9, 0x1

    .line 4873
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v13, v2, :cond_9

    .line 4874
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$400(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v15, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriOffset:J

    add-long/2addr v7, v15

    const-wide/16 v15, 0x1

    sub-long v11, v7, v15

    goto/16 :goto_1

    .line 4876
    :cond_9
    add-int v2, v5, v9

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v7

    mul-int/2addr v2, v7

    int-to-long v7, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOffset:J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1200(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v15

    add-long/2addr v7, v15

    const-wide/16 v15, 0x1

    sub-long v11, v7, v15

    goto/16 :goto_1

    .line 4883
    .end local v1    # "buf":Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;
    :pswitch_3
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_a

    .line 4884
    const-string v2, "Inside FULLREAD BLOCK"

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4886
    :cond_a
    const/4 v2, 0x1

    if-lt v9, v2, :cond_2

    .line 4887
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    array-length v13, v2

    .line 4888
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_b

    .line 4889
    const-string v2, "Inside FULLREAD BLOCK: exiting this loop as notReadContinuousBlock >= 1"

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4891
    :cond_b
    add-int v2, v5, v9

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v7

    mul-int/2addr v2, v7

    int-to-long v7, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOffset:J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1200(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v15

    add-long/2addr v7, v15

    const-wide/16 v15, 0x1

    sub-long v11, v7, v15

    goto/16 :goto_1

    .line 4897
    :pswitch_4
    const/4 v2, 0x1

    if-lt v9, v2, :cond_2

    .line 4898
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    array-length v13, v2

    .line 4899
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_c

    .line 4900
    const-string v2, "Inside READING Block: exiting this loop as notReadContinuousBlock >= 1"

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4902
    :cond_c
    add-int v2, v5, v9

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v7

    mul-int/2addr v2, v7

    int-to-long v7, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOffset:J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1200(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v15

    add-long/2addr v7, v15

    const-wide/16 v15, 0x1

    sub-long v11, v7, v15

    goto/16 :goto_1

    .line 4912
    :cond_d
    const/4 v2, 0x1

    if-lt v9, v2, :cond_14

    .line 4914
    const/4 v2, 0x4

    new-array v10, v2, [J

    .line 4915
    .local v10, "block":[J
    const/4 v2, 0x0

    aput-wide v3, v10, v2

    .line 4916
    const/4 v2, 0x1

    aput-wide v11, v10, v2

    .line 4917
    const/4 v2, 0x2

    sub-long v7, v11, v3

    const-wide/16 v15, 0x1

    add-long/2addr v7, v15

    aput-wide v7, v10, v2

    .line 4918
    const/4 v2, 0x3

    int-to-long v7, v5

    aput-wide v7, v10, v2

    .line 4921
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    aget-byte v2, v2, v5

    const/4 v7, -0x1

    if-eq v2, v7, :cond_13

    .line 4922
    const/4 v6, 0x0

    .line 4923
    .local v6, "endIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v5, v2, :cond_e

    .line 4924
    const/4 v2, 0x2

    aget-wide v7, v10, v2

    long-to-int v6, v7

    .line 4929
    :goto_2
    new-instance v1, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    move/from16 v8, p1

    invoke-direct/range {v1 .. v9}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;-><init>(Lorg/apache/http/impl/client/MultiSocketInputStream;JIILjava/util/LinkedList;II)V

    .line 4931
    .restart local v1    # "buf":Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4933
    monitor-enter v1

    .line 4934
    const/4 v14, 0x1

    .local v14, "j":I
    :goto_3
    if-ge v14, v9, :cond_10

    .line 4935
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    add-int v7, v5, v14

    const/4 v8, 0x1

    aput-byte v8, v2, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4934
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 4926
    .end local v1    # "buf":Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;
    .end local v14    # "j":I
    :cond_e
    const/4 v2, 0x2

    aget-wide v7, v10, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v2

    int-to-long v15, v2

    cmp-long v2, v7, v15

    if-lez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v2

    int-to-long v7, v2

    :goto_4
    long-to-int v6, v7

    goto :goto_2

    :cond_f
    const/4 v2, 0x2

    aget-wide v7, v10, v2

    goto :goto_4

    .line 4937
    .restart local v1    # "buf":Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;
    .restart local v14    # "j":I
    :cond_10
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4945
    .end local v1    # "buf":Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;
    .end local v6    # "endIndex":I
    .end local v14    # "j":I
    :cond_11
    :goto_5
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_12

    .line 4946
    const-string v2, ""

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4950
    .end local v10    # "block":[J
    :cond_12
    :goto_6
    return-object v10

    .line 4937
    .restart local v1    # "buf":Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;
    .restart local v6    # "endIndex":I
    .restart local v10    # "block":[J
    .restart local v14    # "j":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 4938
    .end local v1    # "buf":Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;
    .end local v6    # "endIndex":I
    .end local v14    # "j":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    aget-byte v2, v2, v5

    const/4 v7, -0x1

    if-ne v2, v7, :cond_11

    .line 4939
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    .line 4940
    .restart local v1    # "buf":Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;
    monitor-enter v1

    .line 4941
    :try_start_3
    invoke-virtual {v1, v9}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->setTotalChunks(I)V

    .line 4942
    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->changeSockID(I)V

    .line 4943
    monitor-exit v1

    goto :goto_5

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 4950
    .end local v1    # "buf":Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;
    .end local v10    # "block":[J
    :cond_14
    const/4 v2, 0x0

    new-array v10, v2, [J

    goto :goto_6

    .line 4836
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private getMinNotReadBlock(I)[J
    .locals 4
    .param p1, "sockID"    # I

    .prologue
    const/4 v3, 0x0

    .line 4673
    iget v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->minNotReadBlockID:I

    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4675
    .local v0, "tmpID":I
    :cond_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    aget-byte v1, v1, v0

    if-lez v1, :cond_2

    .line 4676
    add-int/lit8 v0, v0, 0x1

    .line 4678
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 4679
    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_1

    .line 4680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id reach the maximum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4683
    :cond_1
    new-array v1, v3, [J

    .line 4694
    :goto_0
    return-object v1

    .line 4686
    :cond_2
    if-ltz v0, :cond_3

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_5

    .line 4687
    :cond_3
    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_4

    .line 4688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get an illegal tmpID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4690
    :cond_4
    new-array v1, v3, [J

    goto :goto_0

    .line 4692
    :cond_5
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->minNotReadBlockID:I

    .line 4693
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    aput v0, v1, p1

    .line 4694
    invoke-direct {p0, v0, p1}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getNewBuf(II)[J

    move-result-object v1

    goto :goto_0
.end method

.method private getMinNotReadBlockID()I
    .locals 3

    .prologue
    .line 4652
    iget v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->minNotReadBlockID:I

    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4653
    .local v0, "tmpID":I
    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    aget-byte v1, v1, v0

    if-lez v1, :cond_2

    .line 4654
    add-int/lit8 v0, v0, 0x1

    .line 4655
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 4656
    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_1

    .line 4657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in getMinNotReadBlockID, id reach the maximum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4661
    :cond_1
    const/4 v1, -0x1

    .line 4664
    :goto_0
    return v1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method private getNewBuf(II)[J
    .locals 13
    .param p1, "blockID"    # I
    .param p2, "sockID"    # I

    .prologue
    .line 4753
    const/4 v1, 0x4

    new-array v10, v1, [J

    .line 4754
    .local v10, "range":[J
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v12

    monitor-enter v12

    .line 4756
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    aget-byte v1, v1, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4758
    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_0

    .line 4759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "block "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is blocked and now it is occupied again"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4762
    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    .line 4763
    .local v9, "buf":Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;
    const/4 v1, 0x0

    invoke-virtual {v9}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->getOffset()J

    move-result-wide v2

    aput-wide v2, v10, v1

    .line 4764
    const/4 v1, 0x1

    invoke-virtual {v9}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->getOffset()J

    move-result-wide v2

    invoke-virtual {v9}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->getToBeReadLength()J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    aput-wide v2, v10, v1

    .line 4765
    const/4 v1, 0x2

    invoke-virtual {v9}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->getToBeReadLength()J

    move-result-wide v2

    aput-wide v2, v10, v1

    .line 4766
    const/4 v1, 0x3

    int-to-long v2, p1

    aput-wide v2, v10, v1

    .line 4767
    invoke-virtual {v9, p2}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->changeSockID(I)V

    .line 4802
    .end local v9    # "buf":Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;
    :goto_0
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    const/4 v2, 0x1

    aput-byte v2, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4804
    :try_start_1
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4807
    :goto_1
    :try_start_2
    monitor-exit v12

    .line 4808
    .end local v10    # "range":[J
    :goto_2
    return-object v10

    .line 4771
    .restart local v10    # "range":[J
    :cond_1
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v1

    mul-int/2addr v1, p1

    int-to-long v1, v1

    iget-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOffset:J
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1200(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-int v11, v1

    .line 4772
    .local v11, "start":I
    const/4 v1, 0x0

    int-to-long v2, v11

    aput-wide v2, v10, v1

    .line 4774
    const/4 v1, 0x0

    aget-wide v1, v10, v1

    iget-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriOffset:J

    iget-object v5, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$400(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v5

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-ltz v1, :cond_3

    .line 4775
    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_2

    .line 4776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v2, v10, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") >= totalLength("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriOffset:J

    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$400(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), break"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4781
    :cond_2
    const/4 v1, 0x0

    new-array v10, v1, [J

    .end local v10    # "range":[J
    monitor-exit v12

    goto :goto_2

    .line 4807
    .end local v11    # "start":I
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 4785
    .restart local v10    # "range":[J
    .restart local v11    # "start":I
    :cond_3
    :try_start_3
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_5

    .line 4786
    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriOffset:J

    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$400(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    long-to-int v2, v2

    int-to-long v2, v2

    aput-wide v2, v10, v1

    .line 4787
    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_4

    .line 4788
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tail chunk byte range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v2, v10, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-wide v2, v10, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4794
    :cond_4
    :goto_3
    const/4 v1, 0x2

    const/4 v2, 0x1

    aget-wide v2, v10, v2

    const/4 v4, 0x0

    aget-wide v4, v10, v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    aput-wide v2, v10, v1

    .line 4795
    const/4 v1, 0x3

    int-to-long v2, p1

    aput-wide v2, v10, v1

    .line 4797
    new-instance v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v2, 0x0

    aget-wide v2, v10, v2

    const/4 v4, 0x2

    aget-wide v4, v10, v4

    long-to-int v5, v4

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    const/4 v8, 0x1

    move v4, p1

    move v7, p2

    invoke-direct/range {v0 .. v8}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;-><init>(Lorg/apache/http/impl/client/MultiSocketInputStream;JIILjava/util/LinkedList;II)V

    .line 4799
    .local v0, "dbuf":Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4791
    .end local v0    # "dbuf":Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;
    :cond_5
    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v2

    add-int/2addr v2, v11

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v4, v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriOffset:J

    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$400(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v2, v2

    aput-wide v2, v10, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 4805
    .end local v11    # "start":I
    :catch_0
    move-exception v1

    goto/16 :goto_1
.end method

.method private statusToStr(I)Ljava/lang/String;
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 4990
    packed-switch p1, :pswitch_data_0

    .line 5004
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 4992
    :pswitch_0
    const-string v0, "BLOCKED"

    goto :goto_0

    .line 4994
    :pswitch_1
    const-string v0, "NOT_READ"

    goto :goto_0

    .line 4996
    :pswitch_2
    const-string v0, "OCCUPIED"

    goto :goto_0

    .line 4998
    :pswitch_3
    const-string v0, "READING"

    goto :goto_0

    .line 5000
    :pswitch_4
    const-string v0, "FULLREAD"

    goto :goto_0

    .line 5002
    :pswitch_5
    const-string v0, "CLEARED"

    goto :goto_0

    .line 4990
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public block(II)V
    .locals 2
    .param p1, "blockID"    # I
    .param p2, "socketID"    # I

    .prologue
    const/4 v1, -0x1

    .line 4389
    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v0}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v0

    aput-byte v1, v0, p1

    .line 4390
    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->minNotReadBlockID:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->minNotReadBlockID:I

    .line 4391
    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    aput v1, v0, p2

    .line 4392
    return-void
.end method

.method public blockStatusToStr()Ljava/lang/String;
    .locals 6

    .prologue
    .line 4959
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "BlockStatus: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 4960
    .local v3, "str":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v2, v4, -0x1

    .line 4961
    .local v2, "min":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 4962
    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v4

    aget-byte v4, v4, v0

    const/4 v5, 0x4

    if-ge v4, v5, :cond_2

    .line 4963
    add-int/lit8 v4, v0, -0x2

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4967
    :cond_0
    add-int/lit8 v4, v2, 0x2

    iget-object v5, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4968
    .local v1, "max":I
    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v0, v4, -0x1

    :goto_1
    if-le v0, v2, :cond_1

    .line 4969
    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v4

    aget-byte v4, v4, v0

    if-eqz v4, :cond_3

    .line 4970
    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4975
    :cond_1
    move v0, v2

    :goto_2
    if-gt v0, v1, :cond_4

    .line 4976
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v5

    aget-byte v5, v5, v0

    invoke-direct {p0, v5}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->statusToStr(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4975
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4961
    .end local v1    # "max":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4968
    .restart local v1    # "max":I
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 4979
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getMaxFetchingBlock()I
    .locals 3

    .prologue
    .line 4382
    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getNextHTTPBlock(ILorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;)[J
    .locals 30
    .param p1, "sockID"    # I
    .param p2, "thisBuf"    # Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    .prologue
    .line 4404
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    # invokes: Lorg/apache/http/impl/client/MultiSocketInputStream;->getOtherSocketID(I)I
    invoke-static {v0, v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4900(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    move-result v16

    .line 4405
    .local v16, "otherSockID":I
    sget-boolean v26, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v26, :cond_0

    .line 4406
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "getNextHTTPBlock("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4408
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Current Socket status:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static/range {v27 .. v27}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v27

    aget-object v27, v27, p1

    move-object/from16 v0, v27

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrStatus:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", Other Socket status:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static/range {v27 .. v27}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v27

    aget-object v27, v27, v16

    move-object/from16 v0, v27

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrStatus:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4413
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v26, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v26

    aget-object v26, v26, p1

    move-object/from16 v0, v26

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrStatus:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 4415
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [J

    move-object/from16 v21, v0

    const/16 v26, 0x0

    const-wide/16 v27, -0x1

    aput-wide v27, v21, v26

    .line 4640
    :goto_0
    return-object v21

    .line 4417
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v26, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v26

    aget-object v26, v26, v16

    move-object/from16 v0, v26

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrStatus:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    .line 4420
    invoke-direct/range {p0 .. p1}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getContinuousChunk(I)[J

    move-result-object v21

    goto :goto_0

    .line 4423
    :cond_2
    if-nez p2, :cond_4

    .line 4424
    sget v26, Lorg/apache/http/impl/client/MultiSocketInputStream;->DEFAULT_INTERFACE_FOR_INITIAL_CHUNK:I

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    const/16 v22, 0x0

    .line 4425
    .local v22, "targetChunk":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v26, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v26

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v26, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v26

    aget-byte v26, v26, v22

    if-nez v26, :cond_4

    .line 4427
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getBlockForWithID(II)[J

    move-result-object v21

    goto :goto_0

    .line 4424
    .end local v22    # "targetChunk":I
    :cond_3
    const/16 v22, 0x1

    goto :goto_1

    .line 4435
    :cond_4
    const-wide/16 v5, 0x0

    .line 4436
    .local v5, "fRatio":D
    const/16 v19, 0x1

    .line 4439
    .local v19, "ratio":I
    if-eqz p2, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    move-object/from16 v26, v0

    aget v26, v26, v16

    if-gez v26, :cond_7

    .line 4440
    :cond_5
    sget-boolean v26, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v26, :cond_6

    .line 4441
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "first time getNextHTTPBlock for socket "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " or the other socket is not active"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4444
    :cond_6
    invoke-direct/range {p0 .. p1}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getMinNotReadBlock(I)[J

    move-result-object v21

    goto/16 :goto_0

    .line 4446
    :cond_7
    const-wide/16 v23, 0x0

    .line 4447
    .local v23, "thisSpeed":D
    const-wide/16 v17, 0x0

    .line 4448
    .local v17, "otherSpeed":D
    const-wide/16 v10, 0x0

    .line 4449
    .local v10, "lTS":J
    const-wide/16 v8, 0x0

    .line 4452
    .local v8, "lOS":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->socketSpeed:[J

    move-object/from16 v26, v0

    aget-wide v10, v26, p1

    .line 4453
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->socketSpeed:[J

    move-object/from16 v26, v0

    aget-wide v8, v26, v16

    .line 4455
    const-wide/16 v26, 0x0

    cmp-long v26, v10, v26

    if-nez v26, :cond_8

    .line 4456
    invoke-direct/range {p0 .. p1}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getMinNotReadBlock(I)[J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    goto/16 :goto_0

    .line 4458
    :cond_8
    long-to-double v0, v10

    move-wide/from16 v23, v0

    .line 4459
    long-to-double v0, v8

    move-wide/from16 v17, v0

    .line 4467
    sget v26, Lorg/apache/http/impl/client/MultiSocketInputStream;->SPEED_RATIO_MAKE_STOPPED:I

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v26, v26, v17

    cmpl-double v26, v23, v26

    if-gtz v26, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v26, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v26

    aget-object v26, v26, v16

    move-object/from16 v0, v26

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrExceptionCount:I

    move/from16 v26, v0

    sget v27, Lorg/apache/http/impl/client/MultiSocketInputStream;->MAX_EXCEPTION_COUNT:I

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_c

    .line 4469
    :cond_9
    sget-boolean v26, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v26, :cond_a

    .line 4470
    const-string v26, "The speed of other socket is slow so closing and setting the thread status as RR_STOPPED"

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4474
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v26, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v26

    aget-object v26, v26, v16

    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    .line 4475
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v26, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v26

    aget-object v26, v26, v16

    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrStatus:I

    .line 4476
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v26, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v27

    monitor-enter v27

    .line 4478
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v26, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v26

    const-wide/16 v28, 0x3e8

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4481
    :goto_2
    :try_start_2
    monitor-exit v27
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4482
    invoke-direct/range {p0 .. p1}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getContinuousChunk(I)[J

    move-result-object v21

    goto/16 :goto_0

    .line 4460
    :catch_0
    move-exception v4

    .line 4461
    .local v4, "e":Ljava/lang/Throwable;
    sget-boolean v26, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v26, :cond_b

    .line 4462
    invoke-static {v4}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    .line 4463
    :cond_b
    invoke-direct/range {p0 .. p1}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getMinNotReadBlock(I)[J

    move-result-object v21

    goto/16 :goto_0

    .line 4481
    .end local v4    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v26

    :try_start_3
    monitor-exit v27
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v26

    .line 4485
    :cond_c
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getMinNotReadBlockID()I

    move-result v25

    .line 4486
    .local v25, "toBeDoID":I
    if-gez v25, :cond_e

    .line 4487
    sget-boolean v26, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v26, :cond_d

    .line 4488
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "all block has been read or is reading "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4492
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    move-object/from16 v26, v0

    aget v26, v26, v16

    if-ltz v26, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    move-object/from16 v26, v0

    aget v26, v26, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static/range {v27 .. v27}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v27

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v26, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    move-object/from16 v27, v0

    aget v27, v27, v16

    aget-byte v26, v26, v27

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_11

    cmpl-double v26, v23, v17

    if-lez v26, :cond_11

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->getSockID()I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, p1

    if-ne v0, v1, :cond_11

    .line 4497
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v26, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v26

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    add-int/lit8 v25, v26, -0x1

    .line 4502
    :cond_e
    sget-boolean v26, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v26, :cond_f

    .line 4503
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "thisSpeed="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", otherSpeed="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", toBeDoID="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", httpRequestID[otherSockID]="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    move-object/from16 v27, v0

    aget v27, v27, v16

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4508
    :cond_f
    cmpl-double v26, v23, v17

    if-ltz v26, :cond_1f

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->getSockID()I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, p1

    if-ne v0, v1, :cond_1f

    .line 4511
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    move-object/from16 v26, v0

    aget v26, v26, v16

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_12

    .line 4512
    sget-boolean v26, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v26, :cond_10

    .line 4513
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "get a smaller block in getNextHTTPBlock for socket "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", toBeDoID="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", httpRequestID[otherSockID]="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    move-object/from16 v27, v0

    aget v27, v27, v16

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4521
    :cond_10
    invoke-direct/range {p0 .. p1}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getMinNotReadBlock(I)[J

    move-result-object v21

    goto/16 :goto_0

    .line 4499
    :cond_11
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [J

    move-object/from16 v21, v0

    goto/16 :goto_0

    .line 4525
    :cond_12
    const/4 v13, 0x0

    .line 4526
    .local v13, "otherBuf":Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v26, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v27

    monitor-enter v27

    .line 4527
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v26, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v26

    new-instance v28, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    move-object/from16 v29, v0

    aget v29, v29, v16

    invoke-direct/range {v28 .. v29}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    check-cast v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object v13, v0

    .line 4528
    monitor-exit v27
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4530
    if-nez v13, :cond_14

    .line 4531
    sget-boolean v26, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v26, :cond_13

    .line 4532
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "otherBuf is null in getNextHTTPBlock for socket "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4536
    :cond_13
    invoke-direct/range {p0 .. p1}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getMinNotReadBlock(I)[J

    move-result-object v21

    goto/16 :goto_0

    .line 4528
    :catchall_1
    move-exception v26

    :try_start_5
    monitor-exit v27
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v26

    .line 4539
    :cond_14
    const-wide v26, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v26, v17, v26

    if-gez v26, :cond_18

    .line 4542
    const-wide v5, 0x408f400000000000L    # 1000.0

    .line 4547
    :goto_3
    const-wide/16 v14, 0x0

    .line 4548
    .local v14, "otherRest":J
    const/4 v3, 0x0

    .line 4550
    .local v3, "bSwitch":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->toBeReadLen:[J

    move-object/from16 v26, v0

    aget-wide v14, v26, v16

    .line 4551
    const-wide/16 v26, 0x0

    cmp-long v26, v8, v26

    if-nez v26, :cond_1a

    .line 4552
    const-wide/16 v26, 0x0

    cmp-long v26, v14, v26

    if-lez v26, :cond_19

    const/4 v3, 0x1

    .line 4566
    :goto_4
    sget-boolean v26, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v26, :cond_15

    .line 4567
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "prepare for switch socket "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->headerTime:[J

    move-object/from16 v27, v0

    aget-wide v27, v27, p1

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4570
    :cond_15
    if-eqz v3, :cond_1d

    .line 4571
    sget-boolean v26, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v26, :cond_16

    .line 4572
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "ratio or rest len is big, switch socket "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " , "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4576
    :cond_16
    const/16 v26, 0x0

    move/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->switchSocket(IZ)[J

    move-result-object v20

    .line 4577
    .local v20, "ret":[J
    if-eqz v20, :cond_17

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v26, v0

    if-nez v26, :cond_1c

    .line 4578
    :cond_17
    invoke-direct/range {p0 .. p1}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getMinNotReadBlock(I)[J

    move-result-object v21

    goto/16 :goto_0

    .line 4544
    .end local v3    # "bSwitch":Z
    .end local v14    # "otherRest":J
    .end local v20    # "ret":[J
    :cond_18
    div-double v5, v23, v17

    goto/16 :goto_3

    .line 4552
    .restart local v3    # "bSwitch":Z
    .restart local v14    # "otherRest":J
    :cond_19
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 4554
    :cond_1a
    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    cmpl-double v26, v5, v26

    if-lez v26, :cond_1b

    const-wide/16 v26, 0x8

    mul-long v26, v26, v14

    div-long v26, v26, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->headerTime:[J

    move-object/from16 v28, v0

    aget-wide v28, v28, p1

    add-long v26, v26, v28

    const-wide/16 v28, 0x8

    mul-long v28, v28, v14

    div-long v28, v28, v8

    cmp-long v26, v26, v28

    if-gez v26, :cond_1b

    const/4 v3, 0x1

    :goto_5
    goto/16 :goto_4

    :cond_1b
    const/4 v3, 0x0

    goto :goto_5

    .line 4580
    .restart local v20    # "ret":[J
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    move-object/from16 v26, v0

    const/16 v27, 0x3

    aget-wide v27, v20, v27

    move-wide/from16 v0, v27

    long-to-int v0, v0

    move/from16 v27, v0

    aput v27, v26, p1

    move-object/from16 v21, v20

    .line 4581
    goto/16 :goto_0

    .line 4584
    .end local v20    # "ret":[J
    :cond_1d
    sget-boolean v26, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v26, :cond_1e

    .line 4585
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "ratio or rest len is not too big, get next block "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " , "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4589
    :cond_1e
    invoke-direct/range {p0 .. p1}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getMinNotReadBlock(I)[J

    move-result-object v21

    goto/16 :goto_0

    .line 4595
    .end local v3    # "bSwitch":Z
    .end local v13    # "otherBuf":Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;
    .end local v14    # "otherRest":J
    :cond_1f
    div-double v5, v17, v23

    .line 4596
    sget-boolean v26, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v26, :cond_20

    .line 4597
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "this socket slower than other speed, fRatio="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", other socket is downloading "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    move-object/from16 v27, v0

    aget v27, v27, v16

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", toBeDoID is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4605
    :cond_20
    const-wide/high16 v26, 0x3ff8000000000000L    # 1.5

    cmpg-double v26, v5, v26

    if-gez v26, :cond_22

    .line 4606
    sget-boolean v26, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v26, :cond_21

    .line 4607
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "this socket is not too slow, download toBeDoID, ratio="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4611
    :cond_21
    invoke-direct/range {p0 .. p1}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getMinNotReadBlock(I)[J

    move-result-object v21

    goto/16 :goto_0

    .line 4612
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    move-object/from16 v26, v0

    aget v26, v26, v16

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_24

    .line 4613
    sget-boolean v26, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v26, :cond_23

    .line 4614
    const-string v26, "this socket is slow, but there is blank portion, still download smallest portion"

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4616
    :cond_23
    invoke-direct/range {p0 .. p1}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getMinNotReadBlock(I)[J

    move-result-object v21

    goto/16 :goto_0

    .line 4622
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v26, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v27

    monitor-enter v27

    .line 4623
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v26, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->size()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v28, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMaxBlockNumber:I
    invoke-static/range {v28 .. v28}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3200(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v28

    move/from16 v0, v26

    move/from16 v1, v28

    if-lt v0, v1, :cond_25

    .line 4624
    invoke-direct/range {p0 .. p1}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getMinNotReadBlock(I)[J

    move-result-object v21

    monitor-exit v27

    goto/16 :goto_0

    .line 4626
    :catchall_2
    move-exception v26

    monitor-exit v27
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v26

    :cond_25
    :try_start_7
    monitor-exit v27
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 4629
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    sget v27, Lorg/apache/http/impl/client/MultiSocketInputStream;->MAX_JUMP_STEP:I

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 4631
    .local v7, "iR":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    move-object/from16 v26, v0

    aget v26, v26, v16

    add-int v12, v7, v26

    .line 4632
    .local v12, "nextid":I
    sget-boolean v26, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v26, :cond_26

    .line 4633
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "this socket is slow, download with step, ratio="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", otherRequestID="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    move-object/from16 v27, v0

    aget v27, v27, v16

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", nextid="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 4640
    :cond_26
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getBlockForWithID(II)[J

    move-result-object v21

    goto/16 :goto_0

    .line 4479
    .end local v7    # "iR":I
    .end local v12    # "nextid":I
    .end local v25    # "toBeDoID":I
    :catch_1
    move-exception v26

    goto/16 :goto_2
.end method

.method public setSpeed(IJ)V
    .locals 1
    .param p1, "sid"    # I
    .param p2, "speed"    # J

    .prologue
    .line 4373
    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->socketSpeed:[J

    aput-wide p2, v0, p1

    .line 4374
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4355
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "BlockManager:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 4356
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v2, "httpRequestID{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4357
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 4358
    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4357
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4360
    :cond_0
    const-string v2, "}; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4361
    const-string v2, "minNotReadBlockID{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->minNotReadBlockID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4363
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
