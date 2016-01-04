.class Landroid/content/res/SimulateNinePngUtil;
.super Ljava/lang/Object;
.source "SimulateNinePngUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;
    }
.end annotation


# static fields
.field private static PNG_HEAD_FORMAT:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/content/res/SimulateNinePngUtil;->PNG_HEAD_FORMAT:[B

    return-void

    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    return-void
.end method

.method private static computePatchColor([B)I
    .locals 1
    .param p0, "srcImageData"    # [B

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method private static convertByteToIntByBigEndian([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "start"    # I

    .prologue
    .line 33
    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v0, v0, 0x0

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private static convertBytesFromIntByBigEndian([BII)V
    .locals 2
    .param p0, "data"    # [B
    .param p1, "start"    # I
    .param p2, "N"    # I

    .prologue
    .line 39
    add-int/lit8 v0, p1, 0x0

    ushr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 40
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 41
    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 42
    add-int/lit8 v0, p1, 0x3

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 43
    return-void
.end method

.method public static convertIntoNinePngData([B)[B
    .locals 10
    .param p0, "srcData"    # [B

    .prologue
    const/16 v9, 0x21

    .line 46
    if-eqz p0, :cond_0

    array-length v7, p0

    const/16 v8, 0x29

    if-lt v7, v8, :cond_0

    invoke-static {p0}, Landroid/content/res/SimulateNinePngUtil;->isPngFormat([B)Z

    move-result v7

    if-nez v7, :cond_2

    .line 47
    :cond_0
    const/4 p0, 0x0

    .line 70
    :cond_1
    :goto_0
    return-object p0

    .line 49
    :cond_2
    invoke-static {p0}, Landroid/content/res/SimulateNinePngUtil;->isNinePngFormat([B)Z

    move-result v7

    if-nez v7, :cond_1

    .line 50
    invoke-static {p0}, Landroid/content/res/SimulateNinePngUtil;->getNinePatchChunk([B)[B

    move-result-object v6

    .line 51
    .local v6, "ninePatchChunk":[B
    array-length v7, p0

    add-int/lit8 v7, v7, 0xc

    array-length v8, v6

    add-int/2addr v7, v8

    new-array v1, v7, [B

    .line 52
    .local v1, "destData":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v9, :cond_3

    .line 53
    aget-byte v7, p0, v2

    aput-byte v7, v1, v2

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 55
    :cond_3
    array-length v7, v6

    invoke-static {v1, v9, v7}, Landroid/content/res/SimulateNinePngUtil;->convertBytesFromIntByBigEndian([BII)V

    .line 56
    invoke-static {v1}, Landroid/content/res/SimulateNinePngUtil;->fillNinePngFormatMark([B)V

    .line 57
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    array-length v7, v6

    if-ge v3, v7, :cond_4

    .line 58
    add-int/lit8 v7, v3, 0x29

    aget-byte v8, v6, v3

    aput-byte v8, v1, v7

    .line 57
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 60
    :cond_4
    array-length v7, v6

    add-int/lit8 v4, v7, 0x29

    .line 61
    .local v4, "k":I
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 62
    .local v0, "crc32":Ljava/util/zip/CRC32;
    const/16 v7, 0x25

    array-length v8, v6

    add-int/lit8 v8, v8, 0x4

    invoke-virtual {v0, v1, v7, v8}, Ljava/util/zip/CRC32;->update([BII)V

    .line 63
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-static {v1, v4, v7}, Landroid/content/res/SimulateNinePngUtil;->convertBytesFromIntByBigEndian([BII)V

    .line 64
    const/4 v5, 0x0

    .local v5, "l":I
    :goto_3
    array-length v7, p0

    add-int/lit8 v7, v7, -0x21

    if-ge v5, v7, :cond_5

    .line 65
    add-int/lit8 v7, v4, 0x4

    add-int/2addr v7, v5

    add-int/lit8 v8, v5, 0x21

    aget-byte v8, p0, v8

    aput-byte v8, v1, v7

    .line 64
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 67
    :cond_5
    move-object p0, v1

    goto :goto_0
.end method

.method public static convertIntoNinePngStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 8
    .param p0, "pngInputStream"    # Ljava/io/InputStream;

    .prologue
    .line 74
    const/4 v5, 0x0

    .line 77
    .local v5, "retStream":Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;
    const/16 v7, 0x29

    :try_start_0
    new-array v4, v7, [B

    .line 78
    .local v4, "nineHeader":[B
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 79
    .local v2, "i":I
    if-lez v2, :cond_0

    .line 81
    invoke-static {v4}, Landroid/content/res/SimulateNinePngUtil;->convertIntoNinePngData([B)[B

    move-result-object v1

    .line 82
    .local v1, "arrayOfByte2":[B
    if-eqz v1, :cond_0

    .line 83
    new-instance v6, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;

    invoke-direct {v6, p0, v1}, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;-><init>(Ljava/io/InputStream;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v5    # "retStream":Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;
    .local v6, "retStream":Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;
    :try_start_1
    array-length v7, v4

    if-ge v2, v7, :cond_1

    .line 86
    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([BI)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .local v0, "arrayOfByte1":[B
    move-object v5, v6

    .line 96
    .end local v0    # "arrayOfByte1":[B
    .end local v1    # "arrayOfByte2":[B
    .end local v2    # "i":I
    .end local v4    # "nineHeader":[B
    .end local v6    # "retStream":Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;
    .restart local v5    # "retStream":Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;
    :cond_0
    :goto_0
    return-object v5

    .line 92
    :catch_0
    move-exception v3

    .line 94
    .local v3, "localException":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 92
    .end local v3    # "localException":Ljava/lang/Exception;
    .end local v5    # "retStream":Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;
    .restart local v1    # "arrayOfByte2":[B
    .restart local v2    # "i":I
    .restart local v4    # "nineHeader":[B
    .restart local v6    # "retStream":Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;
    :catch_1
    move-exception v3

    move-object v5, v6

    .end local v6    # "retStream":Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;
    .restart local v5    # "retStream":Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;
    goto :goto_1

    .end local v5    # "retStream":Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;
    .restart local v6    # "retStream":Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;
    :cond_1
    move-object v5, v6

    .end local v6    # "retStream":Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;
    .restart local v5    # "retStream":Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;
    goto :goto_0
.end method

.method private static fillNinePngFormatMark([B)V
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 101
    const/16 v0, 0x25

    const/16 v1, 0x6e

    aput-byte v1, p0, v0

    .line 102
    const/16 v0, 0x26

    const/16 v1, 0x70

    aput-byte v1, p0, v0

    .line 103
    const/16 v0, 0x27

    const/16 v1, 0x54

    aput-byte v1, p0, v0

    .line 104
    const/16 v0, 0x28

    const/16 v1, 0x63

    aput-byte v1, p0, v0

    .line 105
    return-void
.end method

.method private static getNinePatchChunk([B)[B
    .locals 6
    .param p0, "srcImageData"    # [B

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 108
    const/16 v3, 0x10

    invoke-static {p0, v3}, Landroid/content/res/SimulateNinePngUtil;->convertByteToIntByBigEndian([BI)I

    move-result v2

    .line 109
    .local v2, "width":I
    const/16 v3, 0x14

    invoke-static {p0, v3}, Landroid/content/res/SimulateNinePngUtil;->convertByteToIntByBigEndian([BI)I

    move-result v1

    .line 110
    .local v1, "height":I
    const/16 v3, 0x34

    new-array v0, v3, [B

    .line 111
    .local v0, "chunk":[B
    const/4 v3, 0x0

    aput-byte v4, v0, v3

    .line 112
    aput-byte v5, v0, v4

    .line 113
    aput-byte v5, v0, v5

    .line 114
    const/4 v3, 0x3

    aput-byte v4, v0, v3

    .line 115
    const/16 v3, 0x24

    invoke-static {v0, v3, v2}, Landroid/content/res/SimulateNinePngUtil;->convertBytesFromIntByBigEndian([BII)V

    .line 116
    const/16 v3, 0x2c

    invoke-static {v0, v3, v1}, Landroid/content/res/SimulateNinePngUtil;->convertBytesFromIntByBigEndian([BII)V

    .line 117
    const/16 v3, 0x30

    invoke-static {p0}, Landroid/content/res/SimulateNinePngUtil;->computePatchColor([B)I

    move-result v4

    invoke-static {v0, v3, v4}, Landroid/content/res/SimulateNinePngUtil;->convertBytesFromIntByBigEndian([BII)V

    .line 118
    return-object v0
.end method

.method private static isNinePngFormat([B)Z
    .locals 3
    .param p0, "data"    # [B

    .prologue
    const/16 v2, 0x28

    .line 122
    if-eqz p0, :cond_0

    array-length v0, p0

    if-le v0, v2, :cond_0

    const/16 v0, 0x25

    aget-byte v0, p0, v0

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_0

    const/16 v0, 0x26

    aget-byte v0, p0, v0

    const/16 v1, 0x70

    if-ne v0, v1, :cond_0

    const/16 v0, 0x27

    aget-byte v0, p0, v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_0

    aget-byte v0, p0, v2

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPngFormat([B)Z
    .locals 4
    .param p0, "data"    # [B

    .prologue
    const/4 v1, 0x0

    .line 127
    array-length v2, p0

    sget-object v3, Landroid/content/res/SimulateNinePngUtil;->PNG_HEAD_FORMAT:[B

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v1

    .line 129
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Landroid/content/res/SimulateNinePngUtil;->PNG_HEAD_FORMAT:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 130
    aget-byte v2, p0, v0

    sget-object v3, Landroid/content/res/SimulateNinePngUtil;->PNG_HEAD_FORMAT:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 133
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
