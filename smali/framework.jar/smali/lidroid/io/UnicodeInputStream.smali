.class public Llidroid/io/UnicodeInputStream;
.super Ljava/io/InputStream;
.source "UnicodeInputStream.java"


# static fields
.field private static final BOM_SIZE:I = 0x4


# instance fields
.field defaultEnc:Ljava/lang/String;

.field encoding:Ljava/lang/String;

.field internalIn:Ljava/io/PushbackInputStream;

.field isInited:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "defaultEnc"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Llidroid/io/UnicodeInputStream;->isInited:Z

    .line 47
    new-instance v0, Ljava/io/PushbackInputStream;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Llidroid/io/UnicodeInputStream;->internalIn:Ljava/io/PushbackInputStream;

    .line 48
    iput-object p2, p0, Llidroid/io/UnicodeInputStream;->defaultEnc:Ljava/lang/String;

    .line 49
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
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Llidroid/io/UnicodeInputStream;->isInited:Z

    .line 112
    iget-object v0, p0, Llidroid/io/UnicodeInputStream;->internalIn:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V

    .line 113
    return-void
.end method

.method public getDefaultEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Llidroid/io/UnicodeInputStream;->defaultEnc:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    iget-boolean v2, p0, Llidroid/io/UnicodeInputStream;->isInited:Z

    if-nez v2, :cond_0

    .line 58
    :try_start_0
    invoke-virtual {p0}, Llidroid/io/UnicodeInputStream;->init()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    iget-object v2, p0, Llidroid/io/UnicodeInputStream;->encoding:Ljava/lang/String;

    return-object v2

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Init method failed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, "ise":Ljava/lang/IllegalStateException;
    invoke-virtual {v1, v1}, Ljava/lang/IllegalStateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 62
    throw v1
.end method

.method protected init()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 73
    iget-boolean v3, p0, Llidroid/io/UnicodeInputStream;->isInited:Z

    if-eqz v3, :cond_0

    .line 107
    :goto_0
    return-void

    .line 75
    :cond_0
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 77
    .local v0, "bom":[B
    iget-object v3, p0, Llidroid/io/UnicodeInputStream;->internalIn:Ljava/io/PushbackInputStream;

    array-length v4, v0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v1

    .line 79
    .local v1, "n":I
    aget-byte v3, v0, v5

    if-nez v3, :cond_2

    aget-byte v3, v0, v6

    if-nez v3, :cond_2

    aget-byte v3, v0, v9

    if-ne v3, v7, :cond_2

    const/4 v3, 0x3

    aget-byte v3, v0, v3

    if-ne v3, v8, :cond_2

    .line 81
    const-string v3, "UTF-32BE"

    iput-object v3, p0, Llidroid/io/UnicodeInputStream;->encoding:Ljava/lang/String;

    .line 82
    add-int/lit8 v2, v1, -0x4

    .line 104
    .local v2, "unread":I
    :goto_1
    if-lez v2, :cond_1

    iget-object v3, p0, Llidroid/io/UnicodeInputStream;->internalIn:Ljava/io/PushbackInputStream;

    sub-int v4, v1, v2

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 106
    :cond_1
    iput-boolean v6, p0, Llidroid/io/UnicodeInputStream;->isInited:Z

    goto :goto_0

    .line 83
    .end local v2    # "unread":I
    :cond_2
    aget-byte v3, v0, v5

    if-ne v3, v8, :cond_3

    aget-byte v3, v0, v6

    if-ne v3, v7, :cond_3

    aget-byte v3, v0, v9

    if-nez v3, :cond_3

    const/4 v3, 0x3

    aget-byte v3, v0, v3

    if-nez v3, :cond_3

    .line 85
    const-string v3, "UTF-32LE"

    iput-object v3, p0, Llidroid/io/UnicodeInputStream;->encoding:Ljava/lang/String;

    .line 86
    add-int/lit8 v2, v1, -0x4

    .restart local v2    # "unread":I
    goto :goto_1

    .line 87
    .end local v2    # "unread":I
    :cond_3
    aget-byte v3, v0, v5

    const/16 v4, -0x11

    if-ne v3, v4, :cond_4

    aget-byte v3, v0, v6

    const/16 v4, -0x45

    if-ne v3, v4, :cond_4

    aget-byte v3, v0, v9

    const/16 v4, -0x41

    if-ne v3, v4, :cond_4

    .line 89
    const-string v3, "UTF-8"

    iput-object v3, p0, Llidroid/io/UnicodeInputStream;->encoding:Ljava/lang/String;

    .line 90
    add-int/lit8 v2, v1, -0x3

    .restart local v2    # "unread":I
    goto :goto_1

    .line 91
    .end local v2    # "unread":I
    :cond_4
    aget-byte v3, v0, v5

    if-ne v3, v7, :cond_5

    aget-byte v3, v0, v6

    if-ne v3, v8, :cond_5

    .line 92
    const-string v3, "UTF-16BE"

    iput-object v3, p0, Llidroid/io/UnicodeInputStream;->encoding:Ljava/lang/String;

    .line 93
    add-int/lit8 v2, v1, -0x2

    .restart local v2    # "unread":I
    goto :goto_1

    .line 94
    .end local v2    # "unread":I
    :cond_5
    aget-byte v3, v0, v5

    if-ne v3, v8, :cond_6

    aget-byte v3, v0, v6

    if-ne v3, v7, :cond_6

    .line 95
    const-string v3, "UTF-16LE"

    iput-object v3, p0, Llidroid/io/UnicodeInputStream;->encoding:Ljava/lang/String;

    .line 96
    add-int/lit8 v2, v1, -0x2

    .restart local v2    # "unread":I
    goto :goto_1

    .line 99
    .end local v2    # "unread":I
    :cond_6
    iget-object v3, p0, Llidroid/io/UnicodeInputStream;->defaultEnc:Ljava/lang/String;

    iput-object v3, p0, Llidroid/io/UnicodeInputStream;->encoding:Ljava/lang/String;

    .line 100
    move v2, v1

    .restart local v2    # "unread":I
    goto :goto_1
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Llidroid/io/UnicodeInputStream;->isInited:Z

    .line 118
    iget-object v0, p0, Llidroid/io/UnicodeInputStream;->internalIn:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    return v0
.end method
