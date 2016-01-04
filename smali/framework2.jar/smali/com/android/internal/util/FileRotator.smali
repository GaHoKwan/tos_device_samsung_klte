.class public Lcom/android/internal/util/FileRotator;
.super Ljava/lang/Object;
.source "FileRotator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/FileRotator$FileInfo;,
        Lcom/android/internal/util/FileRotator$Rewriter;,
        Lcom/android/internal/util/FileRotator$Writer;,
        Lcom/android/internal/util/FileRotator$Reader;
    }
.end annotation


# static fields
.field private static final LOGD:Z = false

.field private static final SUFFIX_BACKUP:Ljava/lang/String; = ".backup"

.field private static final SUFFIX_NO_BACKUP:Ljava/lang/String; = ".no_backup"

.field private static final TAG:Ljava/lang/String; = "FileRotator"


# instance fields
.field private final mBasePath:Ljava/io/File;

.field private final mDeleteAgeMillis:J

.field private final mPrefix:Ljava/lang/String;

.field private final mRotateAgeMillis:J


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;JJ)V
    .locals 14
    .param p1, "basePath"    # Ljava/io/File;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "rotateAgeMillis"    # J
    .param p5, "deleteAgeMillis"    # J

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/File;

    iput-object v10, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    .line 100
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    .line 101
    move-wide/from16 v0, p3

    iput-wide v0, p0, Lcom/android/internal/util/FileRotator;->mRotateAgeMillis:J

    .line 102
    move-wide/from16 v0, p5

    iput-wide v0, p0, Lcom/android/internal/util/FileRotator;->mDeleteAgeMillis:J

    .line 105
    iget-object v10, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 109
    iget-object v10, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {p0, v10}, Lcom/android/internal/util/FileRotator;->getListDirectory(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "dirList":[Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 111
    move-object v2, v4

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v8, v2, v6

    .line 112
    .local v8, "name":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 111
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 114
    :cond_1
    const-string v10, ".backup"

    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 117
    new-instance v3, Ljava/io/File;

    iget-object v10, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v3, v10, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 118
    .local v3, "backupFile":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    iget-object v10, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    const/4 v11, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    const-string v13, ".backup"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_1

    .line 124
    .end local v3    # "backupFile":Ljava/io/File;
    .end local v5    # "file":Ljava/io/File;
    :cond_2
    const-string v10, ".no_backup"

    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 127
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v9, v10, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    .local v9, "noBackupFile":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    iget-object v10, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    const/4 v11, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    const-string v13, ".no_backup"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 132
    .restart local v5    # "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 133
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 138
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "noBackupFile":Ljava/io/File;
    :cond_3
    return-void
.end method

.method private getActiveName(J)Ljava/lang/String;
    .locals 11
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 330
    const/4 v6, 0x0

    .line 331
    .local v6, "oldestActiveName":Ljava/lang/String;
    const-wide v7, 0x7fffffffffffffffL

    .line 333
    .local v7, "oldestActiveStart":J
    new-instance v3, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v9, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v3, v9}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 335
    .local v3, "info":Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v9, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {p0, v9}, Lcom/android/internal/util/FileRotator;->getListDirectory(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "dirList":[Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 337
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v0, v2

    .line 338
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v3, v5}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 337
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 341
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/util/FileRotator$FileInfo;->isActive()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-wide v9, v3, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    cmp-long v9, v9, p1

    if-gez v9, :cond_0

    iget-wide v9, v3, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    cmp-long v9, v9, v7

    if-gez v9, :cond_0

    .line 343
    move-object v6, v5

    .line 344
    iget-wide v7, v3, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    goto :goto_1

    .line 350
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "name":Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 356
    .end local v6    # "oldestActiveName":Ljava/lang/String;
    :goto_2
    return-object v6

    .line 354
    .restart local v6    # "oldestActiveName":Ljava/lang/String;
    :cond_3
    iput-wide p1, v3, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    .line 355
    const-wide v9, 0x7fffffffffffffffL

    iput-wide v9, v3, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    .line 356
    invoke-virtual {v3}, Lcom/android/internal/util/FileRotator$FileInfo;->build()Ljava/lang/String;

    move-result-object v6

    goto :goto_2
.end method

.method private getListDirectory(Ljava/io/File;)[Ljava/lang/String;
    .locals 3
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 429
    const/4 v0, 0x0

    .line 430
    .local v0, "ret":[Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 431
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 432
    if-nez v0, :cond_0

    .line 433
    const-string v1, "FileRotator"

    const-string v2, "FileRotator path.list() is null. Please check it."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 440
    :cond_0
    :goto_0
    return-object v0

    .line 437
    :cond_1
    const-string v1, "FileRotator"

    const-string v2, "FileRotator file path is null. Please check it."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    goto :goto_0
.end method

.method private static readFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Reader;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "reader"    # Lcom/android/internal/util/FileRotator$Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 399
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 400
    .local v1, "fis":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 402
    .local v0, "bis":Ljava/io/BufferedInputStream;
    :try_start_0
    invoke-interface {p1, v0}, Lcom/android/internal/util/FileRotator$Reader;->read(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 406
    return-void

    .line 404
    :catchall_0
    move-exception v2

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private static rethrowAsIoException(Ljava/lang/Throwable;)Ljava/io/IOException;
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 422
    check-cast p0, Ljava/io/IOException;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    .line 424
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private rewriteSingle(Lcom/android/internal/util/FileRotator$Rewriter;Ljava/lang/String;)V
    .locals 6
    .param p1, "rewriter"    # Lcom/android/internal/util/FileRotator$Rewriter;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v1, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 258
    .local v1, "file":Ljava/io/File;
    invoke-interface {p1}, Lcom/android/internal/util/FileRotator$Rewriter;->reset()V

    .line 260
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 262
    invoke-static {v1, p1}, Lcom/android/internal/util/FileRotator;->readFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Reader;)V

    .line 265
    invoke-interface {p1}, Lcom/android/internal/util/FileRotator$Rewriter;->shouldWrite()Z

    move-result v3

    if-nez v3, :cond_0

    .line 300
    :goto_0
    return-void

    .line 268
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".backup"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 269
    .local v0, "backupFile":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 272
    :try_start_0
    invoke-static {v1, p1}, Lcom/android/internal/util/FileRotator;->writeFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Writer;)V

    .line 275
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 276
    :catch_0
    move-exception v2

    .line 278
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 279
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 280
    invoke-static {v2}, Lcom/android/internal/util/FileRotator;->rethrowAsIoException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 285
    .end local v0    # "backupFile":Ljava/io/File;
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".no_backup"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 286
    .restart local v0    # "backupFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 289
    :try_start_1
    invoke-static {v1, p1}, Lcom/android/internal/util/FileRotator;->writeFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Writer;)V

    .line 292
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 293
    :catch_1
    move-exception v2

    .line 295
    .restart local v2    # "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 296
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 297
    invoke-static {v2}, Lcom/android/internal/util/FileRotator;->rethrowAsIoException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object v3

    throw v3
.end method

.method private static writeFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Writer;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "writer"    # Lcom/android/internal/util/FileRotator$Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 409
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 410
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 412
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    invoke-interface {p1, v0}, Lcom/android/internal/util/FileRotator$Writer;->write(Ljava/io/OutputStream;)V

    .line 413
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 416
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 418
    return-void

    .line 415
    :catchall_0
    move-exception v2

    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 416
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method


# virtual methods
.method public combineActive(Lcom/android/internal/util/FileRotator$Reader;Lcom/android/internal/util/FileRotator$Writer;J)V
    .locals 1
    .param p1, "reader"    # Lcom/android/internal/util/FileRotator$Reader;
    .param p2, "writer"    # Lcom/android/internal/util/FileRotator$Writer;
    .param p3, "currentTimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 205
    new-instance v0, Lcom/android/internal/util/FileRotator$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/util/FileRotator$1;-><init>(Lcom/android/internal/util/FileRotator;Lcom/android/internal/util/FileRotator$Reader;Lcom/android/internal/util/FileRotator$Writer;)V

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    .line 226
    return-void
.end method

.method public deleteAll()V
    .locals 8

    .prologue
    .line 144
    new-instance v3, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v6, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v3, v6}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 146
    .local v3, "info":Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v6, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {p0, v6}, Lcom/android/internal/util/FileRotator;->getListDirectory(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "dirList":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 148
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v0, v2

    .line 149
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v3, v5}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 151
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 148
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "name":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public dumpAll(Ljava/io/OutputStream;)V
    .locals 11
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    new-instance v9, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v9, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 164
    .local v9, "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v5, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v10, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v5, v10}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 166
    .local v5, "info":Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v10, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {p0, v10}, Lcom/android/internal/util/FileRotator;->getListDirectory(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "dirList":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 168
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v8, v0, v4

    .line 169
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v5, v8}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 170
    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-direct {v2, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 171
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v9, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 173
    new-instance v3, Ljava/io/File;

    iget-object v10, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v3, v10, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 174
    .local v3, "file":Ljava/io/File;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 176
    .local v6, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v6, v9}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :try_start_2
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 181
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 168
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "is":Ljava/io/FileInputStream;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 178
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v10

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 187
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "dirList":[Ljava/lang/String;
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "info":Lcom/android/internal/util/FileRotator$FileInfo;
    .end local v6    # "is":Ljava/io/FileInputStream;
    .end local v7    # "len$":I
    .end local v8    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v10

    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v10

    .restart local v1    # "dirList":[Ljava/lang/String;
    .restart local v5    # "info":Lcom/android/internal/util/FileRotator$FileInfo;
    :cond_1
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 189
    return-void
.end method

.method public maybeRotate(J)V
    .locals 14
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 365
    iget-wide v12, p0, Lcom/android/internal/util/FileRotator;->mRotateAgeMillis:J

    sub-long v10, p1, v12

    .line 366
    .local v10, "rotateBefore":J
    iget-wide v12, p0, Lcom/android/internal/util/FileRotator;->mDeleteAgeMillis:J

    sub-long v1, p1, v12

    .line 368
    .local v1, "deleteBefore":J
    new-instance v7, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v12, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v7, v12}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 370
    .local v7, "info":Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v12, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {p0, v12}, Lcom/android/internal/util/FileRotator;->getListDirectory(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v4

    .line 371
    .local v4, "dirList":[Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 372
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_3

    aget-object v9, v0, v6

    .line 373
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {v7, v9}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 372
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 375
    :cond_1
    invoke-virtual {v7}, Lcom/android/internal/util/FileRotator$FileInfo;->isActive()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 376
    iget-wide v12, v7, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    cmp-long v12, v12, v10

    if-gtz v12, :cond_0

    .line 380
    iput-wide p1, v7, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    .line 382
    new-instance v5, Ljava/io/File;

    iget-object v12, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v5, v12, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 383
    .local v5, "file":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    iget-object v12, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v7}, Lcom/android/internal/util/FileRotator$FileInfo;->build()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 384
    .local v3, "destFile":Ljava/io/File;
    invoke-virtual {v5, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_1

    .line 386
    .end local v3    # "destFile":Ljava/io/File;
    .end local v5    # "file":Ljava/io/File;
    :cond_2
    iget-wide v12, v7, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    cmp-long v12, v12, v1

    if-gtz v12, :cond_0

    .line 390
    new-instance v5, Ljava/io/File;

    iget-object v12, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v5, v12, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 391
    .restart local v5    # "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 396
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "name":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public readMatching(Lcom/android/internal/util/FileRotator$Reader;JJ)V
    .locals 9
    .param p1, "reader"    # Lcom/android/internal/util/FileRotator$Reader;
    .param p2, "matchStartMillis"    # J
    .param p4, "matchEndMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    new-instance v4, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v7, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v4, v7}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 309
    .local v4, "info":Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v7, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {p0, v7}, Lcom/android/internal/util/FileRotator;->getListDirectory(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "dirList":[Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 311
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v6, v0, v3

    .line 312
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v4, v6}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 311
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 315
    :cond_1
    iget-wide v7, v4, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    cmp-long v7, v7, p4

    if-gtz v7, :cond_0

    iget-wide v7, v4, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    cmp-long v7, p2, v7

    if-gtz v7, :cond_0

    .line 318
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v2, v7, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 319
    .local v2, "file":Ljava/io/File;
    invoke-static {v2, p1}, Lcom/android/internal/util/FileRotator;->readFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Reader;)V

    goto :goto_1

    .line 324
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V
    .locals 1
    .param p1, "rewriter"    # Lcom/android/internal/util/FileRotator$Rewriter;
    .param p2, "currentTimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/FileRotator;->getActiveName(J)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "activeName":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/FileRotator;->rewriteSingle(Lcom/android/internal/util/FileRotator$Rewriter;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public rewriteAll(Lcom/android/internal/util/FileRotator$Rewriter;)V
    .locals 7
    .param p1, "rewriter"    # Lcom/android/internal/util/FileRotator$Rewriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    new-instance v3, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v6, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v3, v6}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 235
    .local v3, "info":Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v6, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {p0, v6}, Lcom/android/internal/util/FileRotator;->getListDirectory(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "dirList":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 237
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v0, v2

    .line 238
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v3, v5}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 237
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    :cond_0
    invoke-direct {p0, p1, v5}, Lcom/android/internal/util/FileRotator;->rewriteSingle(Lcom/android/internal/util/FileRotator$Rewriter;Ljava/lang/String;)V

    goto :goto_1

    .line 245
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "name":Ljava/lang/String;
    :cond_1
    return-void
.end method
