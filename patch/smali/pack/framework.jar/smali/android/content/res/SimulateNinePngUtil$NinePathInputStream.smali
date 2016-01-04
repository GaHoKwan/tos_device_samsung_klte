.class Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;
.super Ljava/io/InputStream;
.source "SimulateNinePngUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/SimulateNinePngUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NinePathInputStream"
.end annotation


# instance fields
.field private mCount:I

.field private mExtraHeaderData:[B

.field private mInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[B)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "header"    # [B

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 137
    iput v0, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    .line 142
    iput-object p1, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mInputStream:Ljava/io/InputStream;

    .line 143
    iput-object p2, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mExtraHeaderData:[B

    .line 144
    iput v0, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    .line 145
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 150
    :cond_0
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    iget v2, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    iget-object v3, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mExtraHeaderData:[B

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 155
    iget-object v0, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mExtraHeaderData:[B

    .line 156
    .local v0, "abyte0":[B
    iget v2, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    .line 157
    iget v2, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    aget-byte v1, v0, v2

    .line 161
    .end local v0    # "abyte0":[B
    .local v1, "i":I
    :goto_0
    return v1

    .line 159
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public read([BII)I
    .locals 7
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    array-length v4, p1

    invoke-static {v4, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 167
    const/4 v3, 0x0

    .local v3, "readCnt":I
    :goto_0
    iget v4, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    iget-object v5, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mExtraHeaderData:[B

    array-length v5, v5

    if-ge v4, v5, :cond_0

    if-ge v3, p3, :cond_0

    .line 168
    add-int v1, p2, v3

    .line 169
    .local v1, "i1":I
    iget-object v0, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mExtraHeaderData:[B

    .line 170
    .local v0, "abyte1":[B
    iget v2, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    .line 171
    .local v2, "j1":I
    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    .line 172
    aget-byte v4, v0, v2

    aput-byte v4, p1, v1

    .line 167
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 175
    .end local v0    # "abyte1":[B
    .end local v1    # "i1":I
    .end local v2    # "j1":I
    :cond_0
    if-ge v3, p3, :cond_1

    .line 176
    iget-object v4, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mInputStream:Ljava/io/InputStream;

    add-int v5, p2, v3

    sub-int v6, p3, v3

    invoke-virtual {v4, p1, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    add-int/2addr v3, v4

    .line 177
    :cond_1
    return v3
.end method
