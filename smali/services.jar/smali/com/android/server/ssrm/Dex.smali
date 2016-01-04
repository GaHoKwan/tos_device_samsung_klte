.class public Lcom/android/server/ssrm/Dex;
.super Ljava/lang/Object;
.source "Dex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/Dex$StringItem;
    }
.end annotation


# static fields
.field static final DEX_DEBUG:Z


# instance fields
.field private final OFFSET_CHECKSUM:I

.field private final OFFSET_ENDIAN_TAG:I

.field private final OFFSET_FILE_SIZE:I

.field private final OFFSET_HEADER_SIZE:I

.field private final OFFSET_HEADER_START:I

.field private final OFFSET_LINK:I

.field private final OFFSET_LINK_OFF:I

.field private final OFFSET_MAP_OFF:I

.field private final OFFSET_SIGNATURE:I

.field private final OFFSET_STRING_IDS_OFF:I

.field private final OFFSET_STRING_IDS_SIZE:I

.field private final TAG:Ljava/lang/String;

.field count:I

.field private final rawData:[B

.field public final sStringTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stringItems:[Lcom/android/server/ssrm/Dex$StringItem;


# direct methods
.method constructor <init>([B)V
    .locals 2
    .param p1, "rawData"    # [B

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "SSRMv2:Dex"

    iput-object v0, p0, Lcom/android/server/ssrm/Dex;->TAG:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/Dex;->sStringTable:Ljava/util/Hashtable;

    .line 49
    iput v1, p0, Lcom/android/server/ssrm/Dex;->OFFSET_HEADER_START:I

    .line 51
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/ssrm/Dex;->OFFSET_CHECKSUM:I

    .line 53
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/server/ssrm/Dex;->OFFSET_SIGNATURE:I

    .line 55
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/server/ssrm/Dex;->OFFSET_FILE_SIZE:I

    .line 57
    const/16 v0, 0x24

    iput v0, p0, Lcom/android/server/ssrm/Dex;->OFFSET_HEADER_SIZE:I

    .line 59
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/server/ssrm/Dex;->OFFSET_ENDIAN_TAG:I

    .line 61
    const/16 v0, 0x2c

    iput v0, p0, Lcom/android/server/ssrm/Dex;->OFFSET_LINK:I

    .line 63
    const/16 v0, 0x30

    iput v0, p0, Lcom/android/server/ssrm/Dex;->OFFSET_LINK_OFF:I

    .line 65
    const/16 v0, 0x34

    iput v0, p0, Lcom/android/server/ssrm/Dex;->OFFSET_MAP_OFF:I

    .line 67
    const/16 v0, 0x38

    iput v0, p0, Lcom/android/server/ssrm/Dex;->OFFSET_STRING_IDS_SIZE:I

    .line 69
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/server/ssrm/Dex;->OFFSET_STRING_IDS_OFF:I

    .line 172
    iput v1, p0, Lcom/android/server/ssrm/Dex;->count:I

    .line 46
    iput-object p1, p0, Lcom/android/server/ssrm/Dex;->rawData:[B

    .line 47
    return-void
.end method


# virtual methods
.method public decode([B[CI)Ljava/lang/String;
    .locals 11
    .param p1, "in"    # [B
    .param p2, "out"    # [C
    .param p3, "offset"    # I

    .prologue
    const/16 v10, 0x80

    .line 198
    const/4 v6, 0x0

    .line 199
    .local v6, "s":I
    move v3, p3

    .local v3, "cnt":I
    move v4, v3

    .end local v3    # "cnt":I
    .local v4, "cnt":I
    move v7, v6

    .line 201
    .end local v6    # "s":I
    .local v7, "s":I
    :goto_0
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "cnt":I
    .restart local v3    # "cnt":I
    :try_start_0
    aget-byte v8, p1, v4

    and-int/lit16 v8, v8, 0xff

    int-to-char v0, v8

    .line 202
    .local v0, "a":C
    if-nez v0, :cond_0

    .line 203
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, p2, v9, v7}, Ljava/lang/String;-><init>([CII)V

    .line 226
    .end local v0    # "a":C
    .end local v7    # "s":I
    :goto_1
    return-object v8

    .line 205
    .restart local v0    # "a":C
    .restart local v7    # "s":I
    :cond_0
    aput-char v0, p2, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 206
    if-ge v0, v10, :cond_1

    .line 207
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "s":I
    .restart local v6    # "s":I
    :goto_2
    move v4, v3

    .end local v3    # "cnt":I
    .restart local v4    # "cnt":I
    move v7, v6

    .line 224
    .end local v6    # "s":I
    .restart local v7    # "s":I
    goto :goto_0

    .line 208
    .end local v4    # "cnt":I
    .restart local v3    # "cnt":I
    :cond_1
    and-int/lit16 v8, v0, 0xe0

    const/16 v9, 0xc0

    if-ne v8, v9, :cond_3

    .line 209
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "cnt":I
    .restart local v4    # "cnt":I
    :try_start_1
    aget-byte v8, p1, v3

    and-int/lit16 v1, v8, 0xff

    .line 210
    .local v1, "b":I
    and-int/lit16 v8, v1, 0xc0

    if-eq v8, v10, :cond_2

    .line 211
    const-string v8, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move v3, v4

    .end local v4    # "cnt":I
    .restart local v3    # "cnt":I
    goto :goto_1

    .line 213
    .end local v3    # "cnt":I
    .restart local v4    # "cnt":I
    :cond_2
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "s":I
    .restart local v6    # "s":I
    and-int/lit8 v8, v0, 0x1f

    shl-int/lit8 v8, v8, 0x6

    and-int/lit8 v9, v1, 0x3f

    or-int/2addr v8, v9

    int-to-char v8, v8

    :try_start_2
    aput-char v8, p2, v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move v3, v4

    .line 214
    .end local v4    # "cnt":I
    .restart local v3    # "cnt":I
    goto :goto_2

    .end local v1    # "b":I
    .end local v6    # "s":I
    .restart local v7    # "s":I
    :cond_3
    and-int/lit16 v8, v0, 0xf0

    const/16 v9, 0xe0

    if-ne v8, v9, :cond_6

    .line 215
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "cnt":I
    .restart local v4    # "cnt":I
    :try_start_3
    aget-byte v8, p1, v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    and-int/lit16 v1, v8, 0xff

    .line 216
    .restart local v1    # "b":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "cnt":I
    .restart local v3    # "cnt":I
    :try_start_4
    aget-byte v8, p1, v4

    and-int/lit16 v2, v8, 0xff

    .line 217
    .local v2, "c":I
    and-int/lit16 v8, v1, 0xc0

    if-ne v8, v10, :cond_4

    and-int/lit16 v8, v2, 0xc0

    if-eq v8, v10, :cond_5

    .line 218
    :cond_4
    const-string v8, ""
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 220
    :cond_5
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "s":I
    .restart local v6    # "s":I
    and-int/lit8 v8, v0, 0xf

    shl-int/lit8 v8, v8, 0xc

    and-int/lit8 v9, v1, 0x3f

    shl-int/lit8 v9, v9, 0x6

    or-int/2addr v8, v9

    and-int/lit8 v9, v2, 0x3f

    or-int/2addr v8, v9

    int-to-char v8, v8

    :try_start_5
    aput-char v8, p2, v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 225
    :catch_0
    move-exception v5

    .line 226
    .end local v0    # "a":C
    .end local v1    # "b":I
    .end local v2    # "c":I
    .local v5, "e":Ljava/lang/Exception;
    :goto_3
    const-string v8, ""

    goto :goto_1

    .line 222
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "s":I
    .restart local v0    # "a":C
    .restart local v7    # "s":I
    :cond_6
    :try_start_6
    const-string v8, ""
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 225
    .end local v0    # "a":C
    :catch_1
    move-exception v5

    move v6, v7

    .end local v7    # "s":I
    .restart local v6    # "s":I
    goto :goto_3

    .end local v3    # "cnt":I
    .end local v6    # "s":I
    .restart local v0    # "a":C
    .restart local v4    # "cnt":I
    .restart local v7    # "s":I
    :catch_2
    move-exception v5

    move v3, v4

    .end local v4    # "cnt":I
    .restart local v3    # "cnt":I
    move v6, v7

    .end local v7    # "s":I
    .restart local v6    # "s":I
    goto :goto_3

    .end local v3    # "cnt":I
    .restart local v1    # "b":I
    .restart local v4    # "cnt":I
    :catch_3
    move-exception v5

    move v3, v4

    .end local v4    # "cnt":I
    .restart local v3    # "cnt":I
    goto :goto_3
.end method

.method public parseStringItems()V
    .locals 7

    .prologue
    .line 104
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 106
    .local v1, "log":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/android/server/ssrm/Dex;->readHeaderStringIdsSize()I

    move-result v3

    .line 107
    .local v3, "size":I
    if-gtz v3, :cond_1

    .line 141
    :cond_0
    return-void

    .line 110
    :cond_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseStringItems:: size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/server/ssrm/Dex;->readHeaderStringIdsOffset()I

    move-result v2

    .line 113
    .local v2, "offsetStringIdsOff":I
    new-array v4, v3, [Lcom/android/server/ssrm/Dex$StringItem;

    iput-object v4, p0, Lcom/android/server/ssrm/Dex;->stringItems:[Lcom/android/server/ssrm/Dex$StringItem;

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 115
    iget-object v4, p0, Lcom/android/server/ssrm/Dex;->stringItems:[Lcom/android/server/ssrm/Dex$StringItem;

    new-instance v5, Lcom/android/server/ssrm/Dex$StringItem;

    invoke-direct {v5}, Lcom/android/server/ssrm/Dex$StringItem;-><init>()V

    aput-object v5, v4, v0

    .line 116
    iget-object v4, p0, Lcom/android/server/ssrm/Dex;->stringItems:[Lcom/android/server/ssrm/Dex$StringItem;

    aget-object v4, v4, v0

    mul-int/lit8 v5, v0, 0x4

    add-int/2addr v5, v2

    invoke-virtual {p0, v5}, Lcom/android/server/ssrm/Dex;->readUint(I)I

    move-result v5

    iput v5, v4, Lcom/android/server/ssrm/Dex$StringItem;->offset:I

    .line 117
    iget-object v4, p0, Lcom/android/server/ssrm/Dex;->stringItems:[Lcom/android/server/ssrm/Dex$StringItem;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/android/server/ssrm/Dex;->stringItems:[Lcom/android/server/ssrm/Dex$StringItem;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/android/server/ssrm/Dex$StringItem;->offset:I

    invoke-virtual {p0, v5}, Lcom/android/server/ssrm/Dex;->readUleb128(I)I

    move-result v5

    iput v5, v4, Lcom/android/server/ssrm/Dex$StringItem;->strSize:I

    .line 118
    iget-object v4, p0, Lcom/android/server/ssrm/Dex;->stringItems:[Lcom/android/server/ssrm/Dex$StringItem;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/android/server/ssrm/Dex$StringItem;->strSize:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_2

    .line 119
    iget-object v4, p0, Lcom/android/server/ssrm/Dex;->stringItems:[Lcom/android/server/ssrm/Dex$StringItem;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/android/server/ssrm/Dex;->stringItems:[Lcom/android/server/ssrm/Dex$StringItem;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/android/server/ssrm/Dex$StringItem;->offset:I

    iget v6, p0, Lcom/android/server/ssrm/Dex;->count:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/android/server/ssrm/Dex;->readString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/ssrm/Dex$StringItem;->str:Ljava/lang/String;

    .line 121
    :cond_2
    iget-object v4, p0, Lcom/android/server/ssrm/Dex;->stringItems:[Lcom/android/server/ssrm/Dex$StringItem;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/server/ssrm/Dex$StringItem;->str:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 122
    iget-object v4, p0, Lcom/android/server/ssrm/Dex;->sStringTable:Ljava/util/Hashtable;

    iget-object v5, p0, Lcom/android/server/ssrm/Dex;->stringItems:[Lcom/android/server/ssrm/Dex$StringItem;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/android/server/ssrm/Dex$StringItem;->str:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/ssrm/Dex;->stringItems:[Lcom/android/server/ssrm/Dex$StringItem;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/android/server/ssrm/Dex$StringItem;->str:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public readHeaderFileSize()I
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/Dex;->readUint(I)I

    move-result v0

    return v0
.end method

.method public readHeaderStringIdsOffset()I
    .locals 1

    .prologue
    .line 80
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/Dex;->readUint(I)I

    move-result v0

    return v0
.end method

.method public readHeaderStringIdsSize()I
    .locals 1

    .prologue
    .line 76
    const/16 v0, 0x38

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/Dex;->readUint(I)I

    move-result v0

    return v0
.end method

.method public readSignedLeb128([B)I
    .locals 7
    .param p1, "in"    # [B

    .prologue
    const/16 v6, 0x80

    .line 147
    const/4 v2, 0x0

    .line 149
    .local v2, "result":I
    const/4 v0, 0x0

    .line 150
    .local v0, "count":I
    const/4 v3, -0x1

    .line 153
    .local v3, "signBits":I
    :cond_0
    aget-byte v4, p1, v0

    and-int/lit16 v1, v4, 0xff

    .line 154
    .local v1, "cur":I
    and-int/lit8 v4, v1, 0x7f

    mul-int/lit8 v5, v0, 0x7

    shl-int/2addr v4, v5

    or-int/2addr v2, v4

    .line 155
    shl-int/lit8 v3, v3, 0x7

    .line 156
    add-int/lit8 v0, v0, 0x1

    .line 157
    and-int/lit16 v4, v1, 0x80

    if-ne v4, v6, :cond_1

    const/4 v4, 0x5

    if-lt v0, v4, :cond_0

    .line 159
    :cond_1
    and-int/lit16 v4, v1, 0x80

    if-ne v4, v6, :cond_2

    .line 160
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "invalid LEB128 sequence"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 161
    const/4 v4, 0x0

    .line 169
    :goto_0
    return v4

    .line 165
    :cond_2
    shr-int/lit8 v4, v3, 0x1

    and-int/2addr v4, v2

    if-eqz v4, :cond_3

    .line 166
    or-int/2addr v2, v3

    :cond_3
    move v4, v2

    .line 169
    goto :goto_0
.end method

.method public readString(I)Ljava/lang/String;
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 96
    const/16 v1, 0x80

    new-array v0, v1, [C

    .line 97
    .local v0, "out":[C
    iget-object v1, p0, Lcom/android/server/ssrm/Dex;->rawData:[B

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/ssrm/Dex;->decode([B[CI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public readUint(I)I
    .locals 4
    .param p1, "offset"    # I

    .prologue
    const/4 v3, 0x4

    .line 84
    new-array v0, v3, [B

    .line 85
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/android/server/ssrm/Dex;->rawData:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    return v1
.end method

.method public readUleb128(I)I
    .locals 4
    .param p1, "offset"    # I

    .prologue
    const/16 v3, 0xa

    .line 90
    new-array v0, v3, [B

    .line 91
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/android/server/ssrm/Dex;->rawData:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/Dex;->readUnsignedLeb128([B)I

    move-result v1

    return v1
.end method

.method public readUnsignedLeb128([B)I
    .locals 6
    .param p1, "in"    # [B

    .prologue
    const/16 v5, 0x80

    const/4 v2, 0x0

    .line 178
    const/4 v1, 0x0

    .line 180
    .local v1, "result":I
    iput v2, p0, Lcom/android/server/ssrm/Dex;->count:I

    .line 183
    :cond_0
    iget v3, p0, Lcom/android/server/ssrm/Dex;->count:I

    aget-byte v3, p1, v3

    and-int/lit16 v0, v3, 0xff

    .line 184
    .local v0, "cur":I
    and-int/lit8 v3, v0, 0x7f

    iget v4, p0, Lcom/android/server/ssrm/Dex;->count:I

    mul-int/lit8 v4, v4, 0x7

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    .line 185
    iget v3, p0, Lcom/android/server/ssrm/Dex;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/ssrm/Dex;->count:I

    .line 186
    and-int/lit16 v3, v0, 0x80

    if-ne v3, v5, :cond_1

    iget v3, p0, Lcom/android/server/ssrm/Dex;->count:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    .line 188
    :cond_1
    and-int/lit16 v3, v0, 0x80

    if-ne v3, v5, :cond_2

    .line 189
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "invalid LEB128 sequence"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v2

    .line 193
    .end local v1    # "result":I
    :cond_2
    return v1
.end method
