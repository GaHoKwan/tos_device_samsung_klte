.class public final Lorg/apache/http/impl/client/TwoChunkInputStream;
.super Ljava/io/InputStream;
.source "TwoChunkInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;,
        Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;
    }
.end annotation


# static fields
.field private static final CACHE_READING_SPEED:I = 0x1e

.field private static final MAXDEPTH:I = 0xa

.field private static final MAX_TIMEFORALL_BY0:J = 0x1388L

.field private static final MAX_TIMEFORALL_BY1:J = 0xfa0L

.field private static final MAX_TIMEFORTAIL_BY0:J = 0x7d0L

.field private static final MAX_TIMEFOR_REUSE:J = 0x1388L

.field private static final MIN_CACHED_DATA_TO_CONSIDER:J = 0x6400000L

.field private static final MIN_DIV_SIZE:I = 0x100000


# instance fields
.field private bFailedInSecChunk:Z

.field private bSecThreadExisted:Z

.field private bSecThreadStarted:Z

.field private bSwitchOnFirstRead:Z

.field private childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

.field private closed:Z

.field private mBytesForTail:J

.field private mContext:Lorg/apache/http/protocol/HttpContext;

.field private mDBuf:Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;

.field private mDataDownloaded:[J

.field private final mDepth:I

.field private final mEnd:J

.field private final mFullConSize:J

.field private mHost:[Lorg/apache/http/HttpHost;

.field private mKeepSecondChunk:I

.field private final mLength:J

.field private mManConn:Lorg/apache/http/conn/ManagedClientConnection;

.field private mPrevSpeed:[J

.field private mRemainBytes:J

.field private mRequest:[Lorg/apache/http/HttpRequest;

.field private mSecThread:Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;

.field private mSocket0:I

.field private mSocket1:I

.field private final mStart:J

.field private mStartReadTime:[J

.field private mTimeForDownload:[J

.field private final mTimeOut:I

.field private mainInput:Ljava/io/InputStream;

.field private final parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lorg/apache/http/conn/ManagedClientConnection;IIJJ[Lorg/apache/http/HttpRequest;[Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;JJILorg/apache/http/impl/client/MultiSocketInputStream;JIZJ)V
    .locals 32
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "manConn"    # Lorg/apache/http/conn/ManagedClientConnection;
    .param p3, "sockID0"    # I
    .param p4, "sockID1"    # I
    .param p5, "start"    # J
    .param p7, "end"    # J
    .param p9, "oriReq"    # [Lorg/apache/http/HttpRequest;
    .param p10, "host"    # [Lorg/apache/http/HttpHost;
    .param p11, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p12, "speed0"    # J
    .param p14, "speed1"    # J
    .param p16, "depth"    # I
    .param p17, "multiInput"    # Lorg/apache/http/impl/client/MultiSocketInputStream;
    .param p18, "fullSize"    # J
    .param p20, "timeout"    # I
    .param p21, "bswitch"    # Z
    .param p22, "cachedData"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-direct/range {p0 .. p0}, Ljava/io/InputStream;-><init>()V

    .line 124
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->bFailedInSecChunk:Z

    .line 137
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mKeepSecondChunk:I

    .line 158
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/http/impl/client/TwoChunkInputStream;->mainInput:Ljava/io/InputStream;

    .line 159
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new input stream in twochunk creator sec mainInput = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mainInput:Ljava/io/InputStream;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 160
    :cond_0
    move-wide/from16 v0, p5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/http/impl/client/TwoChunkInputStream;->mStart:J

    .line 161
    move-wide/from16 v0, p7

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/http/impl/client/TwoChunkInputStream;->mEnd:J

    .line 162
    sub-long v3, p7, p5

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    move-object/from16 v0, p0

    iput-wide v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mLength:J

    .line 163
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mLength:J

    move-object/from16 v0, p0

    iput-wide v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mRemainBytes:J

    .line 164
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSocket0:I

    .line 165
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSocket1:I

    .line 166
    move/from16 v0, p16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDepth:I

    .line 167
    move-object/from16 v0, p17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;

    .line 168
    move-wide/from16 v0, p18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/http/impl/client/TwoChunkInputStream;->mFullConSize:J

    .line 169
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    .line 170
    move/from16 v0, p20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/http/impl/client/TwoChunkInputStream;->mTimeOut:I

    .line 171
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/http/impl/client/TwoChunkInputStream;->mManConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 172
    move-object/from16 v0, p11

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/http/impl/client/TwoChunkInputStream;->mContext:Lorg/apache/http/protocol/HttpContext;

    .line 174
    const/4 v3, 0x2

    new-array v3, v3, [J

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDataDownloaded:[J

    .line 175
    const/4 v3, 0x2

    new-array v3, v3, [J

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mTimeForDownload:[J

    .line 176
    const/4 v3, 0x2

    new-array v3, v3, [J

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mStartReadTime:[J

    .line 177
    const/4 v3, 0x2

    new-array v3, v3, [J

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mPrevSpeed:[J

    .line 178
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/http/HttpHost;

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mHost:[Lorg/apache/http/HttpHost;

    .line 179
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/http/HttpRequest;

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mRequest:[Lorg/apache/http/HttpRequest;

    .line 180
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    const/4 v3, 0x2

    move/from16 v0, v19

    if-ge v0, v3, :cond_1

    .line 181
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDataDownloaded:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v19

    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mTimeForDownload:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v19

    .line 183
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mStartReadTime:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v19

    .line 184
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mHost:[Lorg/apache/http/HttpHost;

    aget-object v4, p10, v19

    aput-object v4, v3, v19

    .line 185
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mRequest:[Lorg/apache/http/HttpRequest;

    aget-object v4, p9, v19

    aput-object v4, v3, v19

    .line 180
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 187
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mPrevSpeed:[J

    aput-wide p12, v3, p3

    .line 188
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mPrevSpeed:[J

    aput-wide p14, v3, p4

    .line 189
    move/from16 v0, p21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/http/impl/client/TwoChunkInputStream;->bSwitchOnFirstRead:Z

    .line 190
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->closed:Z

    .line 192
    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    .line 193
    .local v22, "ratio":D
    const-wide/16 v3, 0x0

    cmp-long v3, p14, v3

    if-eqz v3, :cond_2

    .line 194
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    const-wide v5, 0x3fb999999999999aL    # 0.1

    move-wide/from16 v0, p12

    long-to-double v9, v0

    move-wide/from16 v0, p14

    long-to-double v12, v0

    div-double/2addr v9, v12

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v22

    .line 196
    :cond_2
    move-wide/from16 v17, p22

    .line 197
    .local v17, "cd":J
    const-wide/32 v3, 0x6400000

    cmp-long v3, v17, v3

    if-gtz v3, :cond_3

    const-wide/16 v17, 0x0

    .line 198
    :cond_3
    const-wide/16 v3, 0x400

    div-long v3, v17, v3

    const-wide/16 v5, 0x400

    div-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x1e

    div-long v28, v3, v5

    .line 199
    .local v28, "timeForCachedData":J
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mLength:J

    const-wide/16 v5, 0x8

    div-long v5, p12, v5

    mul-long v5, v5, v28

    add-long/2addr v3, v5

    long-to-double v3, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double v5, v5, v22

    div-double/2addr v3, v5

    double-to-long v7, v3

    .line 200
    .local v7, "lenTail":J
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mLength:J

    cmp-long v3, v7, v3

    if-lez v3, :cond_4

    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mLength:J

    .line 202
    :cond_4
    const-wide/16 v3, 0x0

    cmp-long v3, p12, v3

    if-nez v3, :cond_9

    const-wide v30, 0x7fffffffffffffffL

    .line 203
    .local v30, "timeForTailBy0":J
    :goto_1
    const-wide/16 v3, 0x0

    cmp-long v3, p12, v3

    if-nez v3, :cond_a

    const-wide v24, 0x7fffffffffffffffL

    .line 204
    .local v24, "timeForAllBy0":J
    :goto_2
    const-wide/16 v3, 0x0

    cmp-long v3, p14, v3

    if-nez v3, :cond_b

    const-wide v26, 0x7fffffffffffffffL

    .line 205
    .local v26, "timeForAllBy1":J
    :goto_3
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_5

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start twochunkInputStream["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] : range="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p7

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", speed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p12

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p14

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", depth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tail="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", timeForTailBy0="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v30

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", timeForAllBy0="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", timeForAllBy1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v26

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cachedData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", timeForCachedData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v28

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", SocketTimeoutException Count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v4, v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->disconnCount:[I

    aget v4, v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v4, v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->disconnCount:[I

    aget v4, v4, p4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 213
    :cond_5
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mLength:J

    const-wide/32 v5, 0x100000

    cmp-long v3, v3, v5

    if-gtz v3, :cond_c

    .line 214
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mBytesForTail:J

    .line 215
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSecThread:Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;

    .line 216
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDBuf:Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;

    .line 217
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->bSecThreadStarted:Z

    .line 218
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->bSecThreadExisted:Z

    .line 219
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mKeepSecondChunk:I

    .line 220
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download by one interface for length is small, bSwitchOnFirstRead = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->bSwitchOnFirstRead:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 277
    :cond_6
    :goto_4
    if-eqz p21, :cond_7

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mKeepSecondChunk:I

    .line 278
    :cond_7
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_8

    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculated mBytesForTail is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mBytesForTail:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", chunk0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mBytesForTail:J

    sub-long v4, p7, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", chunk1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mBytesForTail:J

    sub-long v4, p7, v4

    const-wide/16 v9, 0x1

    add-long/2addr v4, v9

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p7

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mKeepSecondChunk is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mKeepSecondChunk:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 284
    :cond_8
    return-void

    .line 202
    .end local v24    # "timeForAllBy0":J
    .end local v26    # "timeForAllBy1":J
    .end local v30    # "timeForTailBy0":J
    :cond_9
    const-wide/16 v3, 0x8

    mul-long/2addr v3, v7

    div-long v30, v3, p12

    goto/16 :goto_1

    .line 203
    .restart local v30    # "timeForTailBy0":J
    :cond_a
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mLength:J

    const-wide/16 v5, 0x8

    mul-long/2addr v3, v5

    div-long v24, v3, p12

    goto/16 :goto_2

    .line 204
    .restart local v24    # "timeForAllBy0":J
    :cond_b
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mLength:J

    const-wide/16 v5, 0x8

    mul-long/2addr v3, v5

    div-long v26, v3, p14

    goto/16 :goto_3

    .line 222
    .restart local v26    # "timeForAllBy1":J
    :cond_c
    const-wide/16 v3, 0x1388

    cmp-long v3, v24, v3

    if-ltz v3, :cond_d

    const-wide/16 v3, 0xfa0

    cmp-long v3, v26, v3

    if-gez v3, :cond_f

    .line 223
    :cond_d
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mBytesForTail:J

    .line 224
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSecThread:Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;

    .line 225
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDBuf:Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;

    .line 226
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->bSecThreadStarted:Z

    .line 227
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->bSecThreadExisted:Z

    .line 228
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mKeepSecondChunk:I

    .line 229
    sub-long v3, v24, v26

    const-wide/16 v5, 0x7d0

    cmp-long v3, v3, v5

    if-lez v3, :cond_e

    .line 230
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->bSwitchOnFirstRead:Z

    .line 231
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mKeepSecondChunk:I

    .line 233
    :cond_e
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download by one interface time is small, bSwitchOnFirstRead = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->bSwitchOnFirstRead:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 235
    :cond_f
    const-wide/16 v3, 0x2

    cmp-long v3, p14, v3

    if-gtz v3, :cond_11

    .line 236
    const-wide/16 v20, 0x0

    .line 237
    .end local v7    # "lenTail":J
    .local v20, "lenTail":J
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_10

    const-string v3, "speed1 is 0, set tail be 0"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 238
    :cond_10
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/http/impl/client/TwoChunkInputStream;->mBytesForTail:J

    .line 239
    new-instance v3, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;

    const-wide/16 v4, 0x1

    sub-long v6, p7, v4

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move/from16 v5, p4

    move-wide/from16 v8, p7

    invoke-direct/range {v3 .. v10}, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;-><init>(Lorg/apache/http/impl/client/TwoChunkInputStream;IJJLorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSecThread:Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;

    .line 240
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mKeepSecondChunk:I

    move-wide/from16 v7, v20

    .end local v20    # "lenTail":J
    .restart local v7    # "lenTail":J
    goto/16 :goto_4

    .line 242
    :cond_11
    const-wide/16 v3, 0x2

    cmp-long v3, p12, v3

    if-gtz v3, :cond_13

    .line 243
    const-wide/16 v20, 0x0

    .line 244
    .end local v7    # "lenTail":J
    .restart local v20    # "lenTail":J
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_12

    const-string v3, "speed0 is 0, switch chunk and set tail be 0"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 245
    :cond_12
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->bSwitchOnFirstRead:Z

    .line 246
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/http/impl/client/TwoChunkInputStream;->mBytesForTail:J

    .line 247
    new-instance v3, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;

    const-wide/16 v4, 0x1

    sub-long v6, p7, v4

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move/from16 v5, p3

    move-wide/from16 v8, p7

    invoke-direct/range {v3 .. v10}, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;-><init>(Lorg/apache/http/impl/client/TwoChunkInputStream;IJJLorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSecThread:Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;

    .line 248
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mKeepSecondChunk:I

    move-wide/from16 v7, v20

    .end local v20    # "lenTail":J
    .restart local v7    # "lenTail":J
    goto/16 :goto_4

    .line 250
    :cond_13
    const-wide/16 v3, 0x7d0

    cmp-long v3, v30, v3

    if-ltz v3, :cond_1a

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDepth:I

    const/16 v4, 0xa

    if-gt v3, v4, :cond_1a

    .line 251
    move/from16 v11, p4

    .line 252
    .local v11, "secChunkSock":I
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v22, v3

    if-gez v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->disconnCount:[I

    aget v3, v3, p3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v4, v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->disconnCount:[I

    aget v4, v4, p4

    if-gt v3, v4, :cond_16

    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->disconnCount:[I

    aget v3, v3, p3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->disconnCount:[I

    aget v3, v3, p4

    if-eqz v3, :cond_16

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->disconnCount:[I

    aget v3, v3, p3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v4, v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->disconnCount:[I

    aget v4, v4, p4

    mul-int/lit8 v4, v4, 0x2

    if-le v3, v4, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->disconnCount:[I

    aget v3, v3, p4

    if-lez v3, :cond_18

    .line 255
    :cond_16
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double v22, v3, v22

    .line 256
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mLength:J

    long-to-double v3, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double v5, v5, v22

    div-double/2addr v3, v5

    double-to-long v7, v3

    .line 257
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_17

    const-string v3, "ratio too small, switch chunk"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 258
    :cond_17
    move/from16 v11, p3

    .line 259
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->bSwitchOnFirstRead:Z

    .line 261
    :cond_18
    move-object/from16 v0, p0

    iput-wide v7, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mBytesForTail:J

    .line 262
    new-instance v3, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;

    sub-long v4, p7, v7

    const-wide/16 v9, 0x1

    add-long v5, v4, v9

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;-><init>(Lorg/apache/http/impl/client/TwoChunkInputStream;JJ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDBuf:Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;

    .line 263
    new-instance v9, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;

    sub-long v3, p7, v7

    const-wide/16 v5, 0x1

    add-long v12, v3, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDBuf:Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;

    move-object/from16 v16, v0

    move-object/from16 v10, p0

    move-wide/from16 v14, p7

    invoke-direct/range {v9 .. v16}, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;-><init>(Lorg/apache/http/impl/client/TwoChunkInputStream;IJJLorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSecThread:Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;

    .line 264
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "divide chunk with a tail length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bSwitchOnFirstRead = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->bSwitchOnFirstRead:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 265
    :cond_19
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mKeepSecondChunk:I

    goto/16 :goto_4

    .line 268
    .end local v11    # "secChunkSock":I
    :cond_1a
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_1b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tail chunk is small, not to start another chunk for length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 269
    :cond_1b
    const-wide/16 v7, 0x0

    .line 270
    move-object/from16 v0, p0

    iput-wide v7, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mBytesForTail:J

    .line 271
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSecThread:Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;

    .line 272
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDBuf:Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;

    .line 273
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->bSecThreadStarted:Z

    .line 274
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->bSecThreadExisted:Z

    .line 275
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mKeepSecondChunk:I

    goto/16 :goto_4
.end method

.method static synthetic access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;
    .locals 1
    .param p0, "x0"    # Lorg/apache/http/impl/client/TwoChunkInputStream;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/http/impl/client/TwoChunkInputStream;)[Lorg/apache/http/HttpRequest;
    .locals 1
    .param p0, "x0"    # Lorg/apache/http/impl/client/TwoChunkInputStream;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mRequest:[Lorg/apache/http/HttpRequest;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/protocol/HttpContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/http/impl/client/TwoChunkInputStream;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mContext:Lorg/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/http/impl/client/TwoChunkInputStream;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/http/impl/client/TwoChunkInputStream;

    .prologue
    .line 24
    iget v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDepth:I

    return v0
.end method

.method static synthetic access$1200(Lorg/apache/http/impl/client/TwoChunkInputStream;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/http/impl/client/TwoChunkInputStream;

    .prologue
    .line 24
    iget-wide v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mFullConSize:J

    return-wide v0
.end method

.method static synthetic access$1300(Lorg/apache/http/impl/client/TwoChunkInputStream;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/http/impl/client/TwoChunkInputStream;

    .prologue
    .line 24
    iget v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mTimeOut:I

    return v0
.end method

.method static synthetic access$1402(Lorg/apache/http/impl/client/TwoChunkInputStream;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/http/impl/client/TwoChunkInputStream;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->bFailedInSecChunk:Z

    return p1
.end method

.method static synthetic access$1500(Lorg/apache/http/impl/client/TwoChunkInputStream;)[J
    .locals 1
    .param p0, "x0"    # Lorg/apache/http/impl/client/TwoChunkInputStream;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mStartReadTime:[J

    return-object v0
.end method

.method static synthetic access$1600(Lorg/apache/http/impl/client/TwoChunkInputStream;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/http/impl/client/TwoChunkInputStream;

    .prologue
    .line 24
    iget v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSocket0:I

    return v0
.end method

.method static synthetic access$1700(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;
    .locals 1
    .param p0, "x0"    # Lorg/apache/http/impl/client/TwoChunkInputStream;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDBuf:Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;

    return-object v0
.end method

.method static synthetic access$1702(Lorg/apache/http/impl/client/TwoChunkInputStream;Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;)Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;
    .locals 0
    .param p0, "x0"    # Lorg/apache/http/impl/client/TwoChunkInputStream;
    .param p1, "x1"    # Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;

    .prologue
    .line 24
    iput-object p1, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDBuf:Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;

    return-object p1
.end method

.method static synthetic access$1800(Lorg/apache/http/impl/client/TwoChunkInputStream;)[J
    .locals 1
    .param p0, "x0"    # Lorg/apache/http/impl/client/TwoChunkInputStream;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mTimeForDownload:[J

    return-object v0
.end method

.method static synthetic access$1902(Lorg/apache/http/impl/client/TwoChunkInputStream;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/http/impl/client/TwoChunkInputStream;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->bSecThreadExisted:Z

    return p1
.end method

.method static synthetic access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/http/impl/client/TwoChunkInputStream;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lorg/apache/http/impl/client/TwoChunkInputStream;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/http/impl/client/TwoChunkInputStream;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/TwoChunkInputStream;->createTwoChunkInTwoChunk(Z)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/http/impl/client/TwoChunkInputStream;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/http/impl/client/TwoChunkInputStream;

    .prologue
    .line 24
    iget-wide v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mRemainBytes:J

    return-wide v0
.end method

.method static synthetic access$400(Lorg/apache/http/impl/client/TwoChunkInputStream;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/http/impl/client/TwoChunkInputStream;

    .prologue
    .line 24
    iget-wide v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mBytesForTail:J

    return-wide v0
.end method

.method static synthetic access$402(Lorg/apache/http/impl/client/TwoChunkInputStream;J)J
    .locals 0
    .param p0, "x0"    # Lorg/apache/http/impl/client/TwoChunkInputStream;
    .param p1, "x1"    # J

    .prologue
    .line 24
    iput-wide p1, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mBytesForTail:J

    return-wide p1
.end method

.method static synthetic access$500(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;
    .locals 1
    .param p0, "x0"    # Lorg/apache/http/impl/client/TwoChunkInputStream;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    return-object v0
.end method

.method static synthetic access$502(Lorg/apache/http/impl/client/TwoChunkInputStream;Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;
    .locals 0
    .param p0, "x0"    # Lorg/apache/http/impl/client/TwoChunkInputStream;
    .param p1, "x1"    # Lorg/apache/http/impl/client/TwoChunkInputStream;

    .prologue
    .line 24
    iput-object p1, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    return-object p1
.end method

.method static synthetic access$600(Lorg/apache/http/impl/client/TwoChunkInputStream;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/http/impl/client/TwoChunkInputStream;

    .prologue
    .line 24
    iget-wide v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mLength:J

    return-wide v0
.end method

.method static synthetic access$700(Lorg/apache/http/impl/client/TwoChunkInputStream;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/http/impl/client/TwoChunkInputStream;

    .prologue
    .line 24
    iget-wide v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mStart:J

    return-wide v0
.end method

.method static synthetic access$800(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/conn/ManagedClientConnection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/http/impl/client/TwoChunkInputStream;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mManConn:Lorg/apache/http/conn/ManagedClientConnection;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/http/impl/client/TwoChunkInputStream;)[Lorg/apache/http/HttpHost;
    .locals 1
    .param p0, "x0"    # Lorg/apache/http/impl/client/TwoChunkInputStream;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mHost:[Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method private createTwoChunkInTwoChunk(Z)V
    .locals 26
    .param p1, "bReversed"    # Z

    .prologue
    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-eqz v2, :cond_1

    .line 562
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "createTwoChunkInTwoChunk: session is finished"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    monitor-enter p0

    .line 566
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->bSecThreadStarted:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->bSecThreadExisted:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    if-nez v2, :cond_4

    .line 567
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_2

    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chunk1 is finished while mRemainBytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mRemainBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " totallen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mLength:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " start offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mStart:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 570
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSocket0:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->getSpeed(I)J

    move-result-wide v14

    .line 571
    .local v14, "speed0":J
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSocket0:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSocket1:I

    .line 572
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSocket1:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->getSpeed(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v16

    .line 574
    .local v16, "speed1":J
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mRemainBytes:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mBytesForTail:J

    const-wide/32 v6, 0x100000

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 575
    new-instance v2, Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mainInput:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mManConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSocket0:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSocket1:I

    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mStart:J

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mLength:J

    add-long/2addr v7, v9

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mRemainBytes:J

    sub-long/2addr v7, v9

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mStart:J

    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mLength:J

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mBytesForTail:J

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mRequest:[Lorg/apache/http/HttpRequest;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mHost:[Lorg/apache/http/HttpHost;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mContext:Lorg/apache/http/protocol/HttpContext;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDepth:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mFullConSize:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mTimeOut:I

    move/from16 v22, v0

    const-wide/16 v24, 0x0

    move/from16 v23, p1

    invoke-direct/range {v2 .. v25}, Lorg/apache/http/impl/client/TwoChunkInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/conn/ManagedClientConnection;IIJJ[Lorg/apache/http/HttpRequest;[Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;JJILorg/apache/http/impl/client/MultiSocketInputStream;JIZJ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mainInput:Ljava/io/InputStream;

    .line 580
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new input stream in create twochunk sec mainInput = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mainInput:Ljava/io/InputStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 588
    :cond_3
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    if-eqz v2, :cond_4

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->startRun()V

    .line 591
    .end local v14    # "speed0":J
    .end local v16    # "speed1":J
    :cond_4
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 583
    .restart local v14    # "speed0":J
    .restart local v16    # "speed1":J
    :cond_5
    :try_start_3
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not to create sec thread since mRemainBytes is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mRemainBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and mBytesForTail is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mBytesForTail:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 587
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(Depth_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method private readForChunk0([BII)I
    .locals 29
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 605
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v4, v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v4, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 606
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    .line 608
    :cond_0
    const/16 v17, 0x0

    .line 610
    .local v17, "isMyThrown":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->bSwitchOnFirstRead:Z

    if-eqz v4, :cond_8

    .line 611
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_1

    .line 612
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Need to switch socket for the first read from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSocket0:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSocket1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 614
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->bSwitchOnFirstRead:Z

    .line 615
    const/16 v17, 0x1

    .line 616
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Please switch socket"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    :catch_0
    move-exception v13

    .line 631
    .local v13, "e":Ljava/io/IOException;
    if-nez v17, :cond_2

    .line 632
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v4, v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->disconnCount:[I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSocket0:I

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 633
    :cond_2
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SocketTimeoutException Count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v5, v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->disconnCount:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v5, v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->disconnCount:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 634
    :cond_3
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_4

    .line 635
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException in TwoChunk reading while mRemainBytes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mRemainBytes:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " totallen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mLength:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " start offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mStart:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 636
    invoke-static {v13}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    .line 638
    :cond_4
    monitor-enter p0

    .line 639
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    if-eqz v4, :cond_b

    .line 640
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_5

    .line 641
    const-string v4, "childIS is created"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 643
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mainInput:Ljava/io/InputStream;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v19

    .line 644
    .local v19, "read":I
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_6

    .line 645
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "childIS is created and read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 647
    :cond_6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 741
    .end local v13    # "e":Ljava/io/IOException;
    .end local v19    # "read":I
    :cond_7
    :goto_0
    return v19

    .line 618
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mStartReadTime:[J

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSocket0:I

    aget-wide v4, v4, v5

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mStartReadTime:[J

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSocket0:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 619
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->createTwoChunkInTwoChunk(Z)V

    .line 620
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mainInput:Ljava/io/InputStream;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v19

    .line 621
    .restart local v19    # "read":I
    if-gez v19, :cond_a

    .line 622
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read return exception value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 624
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    if-nez v4, :cond_7

    .line 625
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSocket0:I

    move/from16 v0, v19

    int-to-long v5, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lorg/apache/http/impl/client/TwoChunkInputStream;->incByte(IJ)V

    .line 626
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSocket0:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->setTime(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 649
    .end local v19    # "read":I
    .restart local v13    # "e":Ljava/io/IOException;
    :cond_b
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 650
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 651
    .local v23, "startWaitTime":J
    const/4 v12, 0x0

    .line 653
    .local v12, "bForceThrow":Z
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSocket0:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v26, v4, 0x2

    .line 654
    .local v26, "trySocket":I
    const/16 v25, 0x0

    .line 655
    .local v25, "triedNum":I
    :cond_c
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v4, v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v4, :cond_d

    .line 656
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v4, v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v4, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 657
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    .line 772
    :cond_d
    throw v13

    .line 649
    .end local v12    # "bForceThrow":Z
    .end local v23    # "startWaitTime":J
    .end local v25    # "triedNum":I
    .end local v26    # "trySocket":I
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 660
    .restart local v12    # "bForceThrow":Z
    .restart local v23    # "startWaitTime":J
    .restart local v25    # "triedNum":I
    .restart local v26    # "trySocket":I
    :cond_e
    const/4 v4, 0x3

    move/from16 v0, v25

    if-le v0, v4, :cond_12

    .line 661
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_f

    const-string v4, "tried twice1, check NB status"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 662
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->isMultiRATworking()Z

    move-result v4

    if-nez v4, :cond_11

    .line 663
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_10

    const-string v4, "tried twice1, and NB Status is false"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 664
    :cond_10
    throw v13

    .line 667
    :cond_11
    const/16 v25, 0x0

    .line 671
    :cond_12
    :try_start_5
    monitor-enter p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_5 .. :try_end_5} :catch_2

    .line 672
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    if-nez v4, :cond_1d

    .line 674
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mManConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v4, :cond_13

    .line 675
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mManConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v4}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V

    .line 676
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mManConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v4}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    .line 678
    :cond_13
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "try to close main input stream  in exception in depth "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDepth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", input is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mainInput:Ljava/io/InputStream;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 680
    :cond_14
    new-instance v20, Lorg/apache/http/impl/client/CustomHttpClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget v4, v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Lorg/apache/http/impl/client/CustomHttpClient;-><init>(I)V

    .line 681
    .local v20, "readCustomHttpClient":Lorg/apache/http/impl/client/CustomHttpClient;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget v4, v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    move/from16 v0, v26

    invoke-static {v0, v4}, Lorg/apache/http/impl/client/CustomHttpClient;->getLocalAddrEx(II)Ljava/net/InetAddress;

    move-result-object v11

    .line 682
    .local v11, "localAddr":Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mRequest:[Lorg/apache/http/HttpRequest;

    aget-object v4, v4, v26

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/client/CustomHttpClient;->createClientRequestDirector(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/DefaultRequestDirector;

    move-result-object v3

    .line 691
    .local v3, "director":Lorg/apache/http/impl/client/DefaultRequestDirector;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mRequest:[Lorg/apache/http/HttpRequest;

    aget-object v4, v4, v26

    invoke-interface {v4}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.route.default-proxy"

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mHost:[Lorg/apache/http/HttpHost;

    aget-object v6, v6, v26

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1, v6}, Lorg/apache/http/impl/client/CustomHttpClient;->getProxy(ILorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/http/impl/client/DefaultRequestDirector;->setParameter(Lorg/apache/http/params/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 695
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mHost:[Lorg/apache/http/HttpHost;

    aget-object v4, v4, v26

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mRequest:[Lorg/apache/http/HttpRequest;

    aget-object v5, v5, v26

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mContext:Lorg/apache/http/protocol/HttpContext;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mStart:J

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mLength:J

    add-long/2addr v7, v9

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mRemainBytes:J

    sub-long/2addr v7, v9

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mEnd:J

    invoke-virtual/range {v3 .. v11}, Lorg/apache/http/impl/client/DefaultRequestDirector;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;JJLjava/net/InetAddress;)Lorg/apache/http/HttpResponse;

    move-result-object v22

    .line 698
    .local v22, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0x193

    if-ne v4, v5, :cond_16

    .line 699
    const/4 v12, 0x1

    .line 700
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Cannot connect to server"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 731
    .end local v3    # "director":Lorg/apache/http/impl/client/DefaultRequestDirector;
    .end local v11    # "localAddr":Ljava/net/InetAddress;
    .end local v20    # "readCustomHttpClient":Lorg/apache/http/impl/client/CustomHttpClient;
    .end local v22    # "response":Lorg/apache/http/HttpResponse;
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v4
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_7 .. :try_end_7} :catch_2

    .line 743
    :catch_1
    move-exception v16

    .line 744
    .local v16, "ex":Ljava/io/IOException;
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_15

    .line 745
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in TwoChunk mainInput Handover "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 746
    invoke-static/range {v16 .. v16}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    .line 749
    :cond_15
    if-eqz v12, :cond_20

    throw v16

    .line 702
    .end local v16    # "ex":Ljava/io/IOException;
    .restart local v3    # "director":Lorg/apache/http/impl/client/DefaultRequestDirector;
    .restart local v11    # "localAddr":Ljava/net/InetAddress;
    .restart local v20    # "readCustomHttpClient":Lorg/apache/http/impl/client/CustomHttpClient;
    .restart local v22    # "response":Lorg/apache/http/HttpResponse;
    :cond_16
    :try_start_8
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v15

    .line 704
    .local v15, "entity":Lorg/apache/http/HttpEntity;
    iget-object v4, v3, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mManConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 705
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSocket0:I

    move/from16 v18, v0

    .line 706
    .local v18, "preMainSocketID":I
    iget-object v4, v3, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v4}, Lorg/apache/http/conn/ManagedClientConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget v6, v6, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    invoke-static {v5, v6}, Lorg/apache/http/impl/client/CustomHttpClient;->getLocalAddrEx(II)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 707
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSocket0:I

    .line 708
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSocket1:I

    .line 714
    :goto_2
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_17

    .line 715
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This is TwoChunk MainThead, actually switch to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSocket0:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 717
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->bSecThreadStarted:Z

    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->bSecThreadExisted:Z

    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSocket0:I

    move/from16 v0, v18

    if-eq v4, v0, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSecThread:Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;

    if-eqz v4, :cond_19

    .line 718
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_18

    .line 719
    const-string v4, "Need to switch TwoChunk SecondThread Socket ID"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 721
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSecThread:Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->switchSocket(I)V

    .line 724
    :cond_19
    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mainInput:Ljava/io/InputStream;

    .line 731
    .end local v3    # "director":Lorg/apache/http/impl/client/DefaultRequestDirector;
    .end local v11    # "localAddr":Ljava/net/InetAddress;
    .end local v15    # "entity":Lorg/apache/http/HttpEntity;
    .end local v18    # "preMainSocketID":I
    .end local v20    # "readCustomHttpClient":Lorg/apache/http/impl/client/CustomHttpClient;
    .end local v22    # "response":Lorg/apache/http/HttpResponse;
    :cond_1a
    :goto_3
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 732
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mStartReadTime:[J

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSocket0:I

    aget-wide v4, v4, v5

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mStartReadTime:[J

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSocket0:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 733
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mainInput:Ljava/io/InputStream;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v21

    .line 734
    .local v21, "readLen":I
    if-gez v21, :cond_1e

    .line 735
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read return exception value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_9 .. :try_end_9} :catch_2

    .line 768
    .end local v21    # "readLen":I
    :catch_2
    move-exception v14

    .line 769
    .local v14, "e1":Lorg/apache/http/HttpException;
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_c

    invoke-static {v14}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 711
    .end local v14    # "e1":Lorg/apache/http/HttpException;
    .restart local v3    # "director":Lorg/apache/http/impl/client/DefaultRequestDirector;
    .restart local v11    # "localAddr":Ljava/net/InetAddress;
    .restart local v15    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v18    # "preMainSocketID":I
    .restart local v20    # "readCustomHttpClient":Lorg/apache/http/impl/client/CustomHttpClient;
    .restart local v22    # "response":Lorg/apache/http/HttpResponse;
    :cond_1c
    const/4 v4, 0x1

    :try_start_a
    move-object/from16 v0, p0

    iput v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSocket0:I

    .line 712
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSocket1:I

    goto/16 :goto_2

    .line 727
    .end local v3    # "director":Lorg/apache/http/impl/client/DefaultRequestDirector;
    .end local v11    # "localAddr":Ljava/net/InetAddress;
    .end local v15    # "entity":Lorg/apache/http/HttpEntity;
    .end local v18    # "preMainSocketID":I
    .end local v20    # "readCustomHttpClient":Lorg/apache/http/impl/client/CustomHttpClient;
    .end local v22    # "response":Lorg/apache/http/HttpResponse;
    :cond_1d
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_1a

    .line 728
    const-string v4, "childIS is created before this "

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_3

    .line 737
    .restart local v21    # "readLen":I
    :cond_1e
    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    if-nez v4, :cond_1f

    .line 738
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSocket0:I

    move/from16 v0, v21

    int-to-long v5, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lorg/apache/http/impl/client/TwoChunkInputStream;->incByte(IJ)V

    .line 739
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSocket0:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->setTime(I)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_b .. :try_end_b} :catch_2

    :cond_1f
    move/from16 v19, v21

    .line 741
    goto/16 :goto_0

    .line 750
    .end local v21    # "readLen":I
    .restart local v16    # "ex":Ljava/io/IOException;
    :cond_20
    add-int/lit8 v25, v25, 0x1

    .line 752
    add-int/lit8 v4, v26, 0x1

    rem-int/lit8 v26, v4, 0x2

    .line 753
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v27, v4, v23

    .line 754
    .local v27, "waitedTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mTimeForDownload:[J

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSocket0:I

    aget-wide v4, v4, v5

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    if-nez v4, :cond_21

    .line 755
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSocket0:I

    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->decTime(IJ)V

    .line 756
    :cond_21
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mTimeOut:I

    if-lez v4, :cond_23

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mTimeOut:I

    int-to-long v4, v4

    cmp-long v4, v27, v4

    if-lez v4, :cond_23

    .line 757
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_22

    .line 758
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TwoChunk waited time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v27

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " time out "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mTimeOut:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 760
    :cond_22
    throw v16

    .line 762
    :cond_23
    monitor-enter p0

    .line 764
    :try_start_c
    sget v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->HANDOVER_WAIT_INTERVAL:I

    int-to-long v4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 767
    :goto_4
    :try_start_d
    monitor-exit p0

    goto/16 :goto_1

    :catchall_2
    move-exception v4

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    throw v4

    .line 766
    :catch_3
    move-exception v4

    goto :goto_4
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 423
    iget-wide v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mRemainBytes:J

    iget-wide v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mBytesForTail:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 424
    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mainInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 428
    :goto_0
    return v0

    .line 427
    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDBuf:Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;

    monitor-enter v1

    .line 428
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDBuf:Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->getRestLength()J

    move-result-wide v2

    long-to-int v0, v2

    monitor-exit v1

    goto :goto_0

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bTwoInfDownloading()Z
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->bSecThreadExisted:Z

    .line 303
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/TwoChunkInputStream;->bTwoInfDownloading()Z

    move-result v0

    goto :goto_0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    sget-boolean v0, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v0, :cond_0

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TwoChunkInputStream:close "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 449
    :cond_0
    iget-boolean v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->closed:Z

    if-eqz v0, :cond_2

    .line 467
    :cond_1
    :goto_0
    return-void

    .line 452
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->closed:Z

    .line 454
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDBuf:Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;

    if-eqz v0, :cond_3

    .line 455
    iget-object v1, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDBuf:Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDBuf:Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->clearBuffer()V

    .line 457
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 459
    :cond_3
    :try_start_2
    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    if-eqz v0, :cond_4

    .line 460
    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/TwoChunkInputStream;->close()V

    .line 462
    :cond_4
    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSecThread:Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSecThread:Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->closeSocketAndStreams()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    goto :goto_0

    .line 457
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method protected decTime(IJ)V
    .locals 0
    .param p1, "sid"    # I
    .param p2, "time"    # J

    .prologue
    .line 515
    return-void
.end method

.method protected getDownloadLen(I)J
    .locals 4
    .param p1, "sid"    # I

    .prologue
    .line 475
    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDataDownloaded:[J

    aget-wide v2, v0, p1

    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/TwoChunkInputStream;->getDownloadLen(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected getDownloadTime(I)J
    .locals 4
    .param p1, "sid"    # I

    .prologue
    .line 484
    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mTimeForDownload:[J

    aget-wide v2, v0, p1

    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/TwoChunkInputStream;->getDownloadTime(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getNeedToExitSecThread()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mKeepSecondChunk:I

    return v0
.end method

.method protected getSpeed(I)J
    .locals 6
    .param p1, "sid"    # I

    .prologue
    const-wide/16 v4, 0x8

    .line 537
    sget-boolean v0, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v0, :cond_1

    .line 540
    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDataDownloaded:[J

    aget-wide v0, v0, p1

    const-wide/32 v2, 0x100000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mTimeForDownload:[J

    aget-wide v0, v0, p1

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 541
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "main speed calculation with short time for socket "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", byte="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDataDownloaded:[J

    aget-wide v2, v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mTimeForDownload:[J

    aget-wide v2, v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    .line 545
    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mTimeForDownload:[J

    aget-wide v0, v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 546
    sget-boolean v0, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v0, :cond_2

    .line 547
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "speed calculation error for socket "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", byte="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDataDownloaded:[J

    aget-wide v2, v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mTimeForDownload:[J

    aget-wide v2, v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    .line 550
    :cond_2
    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDataDownloaded:[J

    aget-wide v0, v0, p1

    mul-long/2addr v0, v4

    .line 553
    :goto_0
    return-wide v0

    :cond_3
    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDataDownloaded:[J

    aget-wide v0, v0, p1

    mul-long/2addr v0, v4

    iget-object v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mTimeForDownload:[J

    aget-wide v2, v2, p1

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method protected incByte(IJ)V
    .locals 4
    .param p1, "sid"    # I
    .param p2, "bytes"    # J

    .prologue
    .line 523
    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDataDownloaded:[J

    aget-wide v1, v0, p1

    add-long/2addr v1, p2

    aput-wide v1, v0, p1

    .line 524
    sget-boolean v0, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v0, :cond_1

    .line 526
    const-wide/32 v0, 0x100000

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 527
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "speed calc >> set data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDataDownloaded:[J

    aget-wide v2, v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with a inc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    .line 529
    :cond_1
    return-void
.end method

.method protected isClosed()Z
    .locals 1

    .prologue
    .line 438
    iget-boolean v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->closed:Z

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1596
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 1597
    .local v0, "buf":[B
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/TwoChunkInputStream;->read([B)I

    move-result v1

    return v1
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1602
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/http/impl/client/TwoChunkInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 11
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-wide/16 v9, 0x0

    .line 325
    const/4 v0, 0x0

    .line 327
    .local v0, "readLen":I
    if-nez p3, :cond_1

    .line 328
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_0

    .line 329
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read for 0 : buffer.length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 418
    :cond_0
    :goto_0
    return v3

    .line 332
    :cond_1
    iget-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mRemainBytes:J

    cmp-long v4, v4, v9

    if-nez v4, :cond_2

    .line 333
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_0

    .line 334
    const-string v4, "finish to read size, no byte remained, return 0"

    invoke-direct {p0, v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :cond_2
    iget-wide v3, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mBytesForTail:J

    cmp-long v3, v3, v9

    if-gtz v3, :cond_6

    .line 340
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->readForChunk0([BII)I

    move-result v0

    .line 399
    :cond_3
    :goto_1
    const/4 v3, -0x1

    if-ne v0, v3, :cond_15

    .line 400
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_4

    .line 401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected end of stream, but return 0, mRemainBytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mRemainBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mBytesForTail="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mBytesForTail:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 414
    :cond_4
    :goto_2
    if-nez v0, :cond_16

    iget-boolean v3, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->bFailedInSecChunk:Z

    if-eqz v3, :cond_16

    .line 415
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_5

    const-string v3, "exception in reading secChunk"

    invoke-direct {p0, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 416
    :cond_5
    new-instance v3, Ljava/io/IOException;

    const-string v4, "exception in reading secChunk"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 343
    :cond_6
    iget-wide v3, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mRemainBytes:J

    iget-wide v5, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mBytesForTail:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_7

    .line 344
    int-to-long v3, p3

    iget-wide v5, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mRemainBytes:J

    iget-wide v7, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mBytesForTail:J

    sub-long/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {p0, p1, p2, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->readForChunk0([BII)I

    move-result v0

    goto :goto_1

    .line 347
    :cond_7
    iget-wide v3, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mRemainBytes:J

    iget-wide v5, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mBytesForTail:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    .line 348
    iget-boolean v3, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->bFailedInSecChunk:Z

    if-eqz v3, :cond_c

    .line 349
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_8

    const-string v3, "bFailedInSecChunk is true, not to use second chunk, and never re-divide"

    invoke-direct {p0, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 350
    :cond_8
    iput-wide v9, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mBytesForTail:J

    .line 351
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->readForChunk0([BII)I

    move-result v0

    .line 365
    :cond_9
    :goto_3
    iget-wide v3, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mBytesForTail:J

    cmp-long v3, v3, v9

    if-lez v3, :cond_3

    .line 366
    iget-object v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDBuf:Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;

    monitor-enter v4

    .line 367
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 368
    .local v1, "startTime":J
    :goto_4
    iget-object v3, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v3, :cond_14

    .line 369
    iget-object v3, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v3, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 370
    iget-object v3, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    .line 372
    :cond_a
    iget-object v3, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDBuf:Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;

    invoke-virtual {v3, p1, p2, p3}, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->read([BII)I

    move-result v0

    .line 373
    if-nez v0, :cond_14

    .line 374
    iget-boolean v3, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->bFailedInSecChunk:Z

    if-eqz v3, :cond_11

    .line 375
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_b

    const-string v3, "exception in reading secChunk"

    invoke-direct {p0, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 376
    :cond_b
    new-instance v3, Ljava/io/IOException;

    const-string v5, "exception in reading secChunk"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 395
    .end local v1    # "startTime":J
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 354
    :cond_c
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finish read chunk0 mRemainBytes == mBytesForTail = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mRemainBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 355
    :cond_d
    iget-boolean v3, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->bSecThreadStarted:Z

    if-eqz v3, :cond_e

    iget-boolean v3, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->bSecThreadExisted:Z

    if-eqz v3, :cond_e

    iget-object v3, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSecThread:Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSecThread:Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;

    iget v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSocket0:I

    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->startTryBoth(I)V

    .line 356
    :cond_e
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try to close main input stream in depth "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDepth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", input is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mainInput:Ljava/io/InputStream;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 357
    :cond_f
    iget-object v3, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mManConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v3, :cond_10

    .line 358
    iget-object v3, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mManConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v3}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V

    .line 359
    iget-object v3, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mManConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v3}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    .line 360
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mManConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 362
    :cond_10
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end to close main stream in depth "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDepth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 378
    .restart local v1    # "startTime":J
    :cond_11
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    sget v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_RANGEREQUEST_TIME_OUT:I

    add-int/lit16 v3, v3, 0x3e8

    int-to-long v7, v3

    cmp-long v3, v5, v7

    if-ltz v3, :cond_13

    .line 379
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_12

    .line 380
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wait for long time without read data, sec thread = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSecThread:Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 382
    :cond_12
    iget-object v3, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSecThread:Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;

    if-eqz v3, :cond_13

    .line 383
    iget-object v3, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSecThread:Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->createTwoChunkInSec(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    :cond_13
    :try_start_2
    iget-object v3, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDBuf:Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;

    sget v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->HANDOVER_WAIT_INTERVAL:I

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4

    .line 389
    :catch_0
    move-exception v3

    goto/16 :goto_4

    .line 395
    :cond_14
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 404
    .end local v1    # "startTime":J
    :cond_15
    iget-wide v3, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mRemainBytes:J

    int-to-long v5, v0

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mRemainBytes:J

    .line 406
    iget-wide v3, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mRemainBytes:J

    cmp-long v3, v3, v9

    if-nez v3, :cond_4

    .line 407
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_4

    .line 408
    const-string v3, "no byte remained, start to end input"

    invoke-direct {p0, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_16
    move v3, v0

    .line 418
    goto/16 :goto_0
.end method

.method protected setTime(I)V
    .locals 5
    .param p1, "sid"    # I

    .prologue
    .line 492
    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mTimeForDownload:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mStartReadTime:[J

    aget-wide v3, v3, p1

    sub-long/2addr v1, v3

    aput-wide v1, v0, p1

    .line 500
    return-void
.end method

.method public startRun()V
    .locals 4

    .prologue
    .line 287
    monitor-enter p0

    .line 288
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSecThread:Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;

    if-eqz v1, :cond_2

    .line 289
    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "start run sec chunk"

    invoke-direct {p0, v1}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 290
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mSecThread:Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":SecChunk_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->mDepth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 291
    .local v0, "t":Ljava/lang/Thread;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->bSecThreadExisted:Z

    .line 292
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/http/impl/client/TwoChunkInputStream;->bSecThreadStarted:Z

    .line 293
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 298
    .end local v0    # "t":Ljava/lang/Thread;
    :cond_1
    :goto_0
    monitor-exit p0

    .line 299
    return-void

    .line 296
    :cond_2
    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "sec chunk is not created"

    invoke-direct {p0, v1}, Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
