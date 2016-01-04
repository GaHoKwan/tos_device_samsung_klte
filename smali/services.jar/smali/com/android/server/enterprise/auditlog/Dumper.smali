.class public Lcom/android/server/enterprise/auditlog/Dumper;
.super Ljava/lang/Thread;
.source "Dumper.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBegin:J

.field private mDeviceInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpFilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpResult:Z

.field private mEnd:J

.field private mFilter:Lcom/android/server/enterprise/auditlog/Filter;

.field private mHeaderDate:Ljava/text/SimpleDateFormat;

.field private mIsFullDump:Z

.field private mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

.field private mPackageName:Ljava/lang/String;

.field private mPfd:Landroid/os/ParcelFileDescriptor;

.field private mZos:Ljava/util/zip/GZIPOutputStream;


# direct methods
.method public constructor <init>(JJLandroid/os/ParcelFileDescriptor;Ljava/util/ArrayList;Lcom/android/server/enterprise/auditlog/IObserver;)V
    .locals 2
    .param p1, "begin"    # J
    .param p3, "end"    # J
    .param p5, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p7, "obs"    # Lcom/android/server/enterprise/auditlog/IObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;",
            "Lcom/android/server/enterprise/auditlog/IObserver;",
            ")V"
        }
    .end annotation

    .prologue
    .local p6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 49
    const-string v0, "Dumper"

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->TAG:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    .line 65
    iput-object p5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 66
    iput-object p6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    .line 67
    iput-object p7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    .line 68
    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    .line 69
    iput-wide p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    .line 70
    iput-wide p3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    .line 73
    return-void
.end method

.method private fullDump()V
    .locals 10

    .prologue
    .line 252
    const/4 v5, 0x0

    .line 253
    .local v5, "raf":Ljava/io/RandomAccessFile;
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    move-object v6, v5

    .line 260
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .local v6, "raf":Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 261
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 262
    .local v4, "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 263
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v7

    const-string v8, "r"

    invoke-direct {v5, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-eqz v7, :cond_3

    .line 266
    :cond_1
    :goto_1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 267
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    invoke-virtual {v7, v3}, Lcom/android/server/enterprise/auditlog/Filter;->filtering(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 268
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 279
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 280
    .end local v4    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const/4 v7, 0x0

    :try_start_2
    iput-boolean v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    .line 281
    const-string v7, "Dumper"

    const-string v8, "fullDump.Exception"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v0, v8}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 284
    if-eqz v5, :cond_2

    .line 286
    :try_start_3
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 292
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    return-void

    .line 272
    .restart local v4    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :cond_3
    :try_start_4
    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v1, v7, [B

    .line 273
    .local v1, "fileBytes":[B
    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v5, v1, v7, v8}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 274
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v7, v1}, Ljava/io/OutputStream;->write([B)V

    .line 276
    .end local v1    # "fileBytes":[B
    :cond_4
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v6, v5

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_0

    .line 284
    .end local v4    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :cond_5
    if-eqz v6, :cond_6

    .line 286
    :try_start_5
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_6
    :goto_4
    move-object v5, v6

    .line 291
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 284
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v7

    move-object v5, v6

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :goto_5
    if-eqz v5, :cond_7

    .line 286
    :try_start_6
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 284
    :cond_7
    :goto_6
    throw v7

    .line 287
    :catch_1
    move-exception v0

    .line 288
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "Dumper"

    const-string v9, "fullDump.IOException"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 288
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "Dumper"

    const-string v8, "fullDump.IOException"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 287
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v0

    .line 288
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "Dumper"

    const-string v8, "fullDump.IOException"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 284
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v7

    goto :goto_5

    .line 279
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    move-object v5, v6

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method private readFileLineByLine(Ljava/io/File;)V
    .locals 10
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 174
    const/4 v4, 0x0

    .line 175
    .local v4, "raf":Ljava/io/RandomAccessFile;
    const-wide/16 v0, 0x0

    .line 180
    .local v0, "aTime":J
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v7, "r"

    invoke-direct {v5, p1, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 182
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .local v5, "raf":Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 183
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 186
    .local v6, "time":[Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_2
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v0

    .line 191
    :try_start_3
    iget-wide v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    cmp-long v7, v0, v7

    if-lez v7, :cond_4

    .line 208
    .end local v6    # "time":[Ljava/lang/String;
    :cond_1
    if-eqz v5, :cond_2

    .line 210
    :try_start_4
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_2
    :goto_1
    move-object v4, v5

    .line 216
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :cond_3
    :goto_2
    return-void

    .line 187
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "time":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 188
    .local v2, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 194
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    :try_start_5
    iget-wide v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    cmp-long v7, v0, v7

    if-ltz v7, :cond_0

    iget-wide v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    cmp-long v7, v0, v7

    if-gez v7, :cond_0

    .line 195
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-eqz v7, :cond_5

    .line 196
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    invoke-virtual {v7, v3}, Lcom/android/server/enterprise/auditlog/Filter;->filtering(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 197
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 204
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "time":[Ljava/lang/String;
    :catch_1
    move-exception v2

    move-object v4, v5

    .line 205
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :goto_3
    :try_start_6
    const-string v7, "Dumper"

    const-string v8, "readFileLineByLine.IOException"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 208
    if-eqz v4, :cond_3

    .line 210
    :try_start_7
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 211
    :catch_2
    move-exception v2

    .line 212
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "Dumper"

    const-string v8, "readFileLineByLine.IOException"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 200
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "time":[Ljava/lang/String;
    :cond_5
    :try_start_8
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 208
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "time":[Ljava/lang/String;
    :catchall_0
    move-exception v7

    move-object v4, v5

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :goto_4
    if-eqz v4, :cond_6

    .line 210
    :try_start_9
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 208
    :cond_6
    :goto_5
    throw v7

    .line 211
    :catch_3
    move-exception v2

    .line 212
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "Dumper"

    const-string v9, "readFileLineByLine.IOException"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 211
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v2

    .line 212
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "Dumper"

    const-string v8, "readFileLineByLine.IOException"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 208
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v7

    goto :goto_4

    .line 204
    :catch_5
    move-exception v2

    goto :goto_3
.end method

.method private readFullFile(Ljava/io/File;)V
    .locals 8
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 219
    const/4 v3, 0x0

    .line 223
    .local v3, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 224
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .local v4, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-eqz v5, :cond_4

    .line 227
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 228
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    invoke-virtual {v5, v2}, Lcom/android/server/enterprise/auditlog/Filter;->filtering(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 229
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 238
    .end local v2    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 239
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    if-eqz v3, :cond_1

    .line 243
    :try_start_3
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 249
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :cond_2
    move-object v3, v4

    .line 241
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :cond_3
    :goto_3
    if-eqz v3, :cond_1

    .line 243
    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 244
    :catch_1
    move-exception v0

    .line 245
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "Dumper"

    const-string v6, "readFullFile.IOException"

    :goto_4
    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 233
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :cond_4
    :try_start_5
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v1, v5, [B

    .line 234
    .local v1, "fileBytes":[B
    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v4, v1, v5, v6}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 235
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v5, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v3, v4

    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 241
    .end local v1    # "fileBytes":[B
    :catchall_0
    move-exception v5

    :goto_5
    if-eqz v3, :cond_5

    .line 243
    :try_start_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 241
    :cond_5
    :goto_6
    throw v5

    .line 244
    :catch_2
    move-exception v0

    .line 245
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "Dumper"

    const-string v7, "readFullFile.IOException"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 245
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "Dumper"

    const-string v6, "readFullFile.IOException"

    goto :goto_4

    .line 241
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_5

    .line 238
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method private selectDumpInterval()V
    .locals 7

    .prologue
    .line 145
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 146
    .local v1, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    const/4 v2, 0x0

    .line 147
    .local v2, "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    const/4 v0, 0x1

    .line 149
    .local v0, "firstFile":Z
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 151
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    check-cast v2, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 153
    .restart local v2    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getTimestamp()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 156
    if-eqz v0, :cond_1

    .line 157
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/auditlog/Dumper;->readFileLineByLine(Ljava/io/File;)V

    .line 159
    const/4 v0, 0x0

    .line 160
    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getTimestamp()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    .line 164
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/auditlog/Dumper;->readFullFile(Ljava/io/File;)V

    goto :goto_0

    .line 166
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/auditlog/Dumper;->readFileLineByLine(Ljava/io/File;)V

    .line 171
    :cond_3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 85
    const/4 v2, 0x0

    .line 88
    .local v2, "fileStreamOut":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 89
    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .local v3, "fileStreamOut":Ljava/io/OutputStream;
    :try_start_1
    new-instance v7, Ljava/util/zip/GZIPOutputStream;

    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v7, v8}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    .line 93
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "yyyy-MM-dd \'at\' HH:mm:ss z"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeaderDate:Ljava/text/SimpleDateFormat;

    .line 94
    const-string v5, "----------------------------------------------\n"

    .line 95
    .local v5, "separator":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 97
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDeviceInfo:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 98
    .local v4, "it":Ljava/util/Iterator;
    if-eqz v4, :cond_2

    .line 99
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 100
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, "temp":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v5    # "separator":Ljava/lang/String;
    .end local v6    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 119
    .end local v3    # "fileStreamOut":Ljava/io/OutputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    const-string v7, "Dumper"

    const-string v8, "run.IOException"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    .line 121
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v1, v8}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iget-boolean v9, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    invoke-interface {v7, v8, v9}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    .line 126
    :try_start_3
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    if-eqz v7, :cond_0

    .line 127
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 128
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v7}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 135
    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    .line 136
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 141
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    return-void

    .line 106
    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v3    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v4    # "it":Ljava/util/Iterator;
    .restart local v5    # "separator":Ljava/lang/String;
    :cond_2
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dump Log Generated: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeaderDate:Ljava/text/SimpleDateFormat;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "dateAndTime":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 109
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 110
    iget-wide v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    cmp-long v7, v7, v10

    if-ltz v7, :cond_3

    iget-wide v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    cmp-long v7, v7, v10

    if-gez v7, :cond_7

    .line 111
    :cond_3
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->fullDump()V

    .line 112
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-nez v7, :cond_4

    .line 113
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 123
    :cond_4
    :goto_4
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iget-boolean v9, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    invoke-interface {v7, v8, v9}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    .line 126
    :try_start_6
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    if-eqz v7, :cond_5

    .line 127
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 128
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v7}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 135
    :cond_5
    :goto_5
    if-eqz v3, :cond_6

    .line 136
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_6
    :goto_6
    move-object v2, v3

    .line 140
    .end local v3    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    goto :goto_3

    .line 115
    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v3    # "fileStreamOut":Ljava/io/OutputStream;
    :cond_7
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->selectDumpInterval()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    .line 123
    .end local v0    # "dateAndTime":Ljava/lang/String;
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v5    # "separator":Ljava/lang/String;
    :catchall_0
    move-exception v7

    move-object v2, v3

    .end local v3    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    :goto_7
    iget-object v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v9, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iget-boolean v10, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    invoke-interface {v8, v9, v10}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    .line 126
    :try_start_9
    iget-object v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    if-eqz v8, :cond_8

    .line 127
    iget-object v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 128
    iget-object v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v8}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 135
    :cond_8
    :goto_8
    if-eqz v2, :cond_9

    .line 136
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 123
    :cond_9
    :goto_9
    throw v7

    .line 130
    :catch_1
    move-exception v1

    .line 131
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "Dumper"

    const-string v9, "run.IOException"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 137
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 138
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "Dumper"

    const-string v9, "run.IOException"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 130
    :catch_3
    move-exception v1

    .line 131
    const-string v7, "Dumper"

    const-string v8, "run.IOException"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 137
    :catch_4
    move-exception v1

    .line 138
    const-string v7, "Dumper"

    const-string v8, "run.IOException"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 130
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v0    # "dateAndTime":Ljava/lang/String;
    .restart local v3    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v4    # "it":Ljava/util/Iterator;
    .restart local v5    # "separator":Ljava/lang/String;
    :catch_5
    move-exception v1

    .line 131
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "Dumper"

    const-string v8, "run.IOException"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 137
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 138
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "Dumper"

    const-string v8, "run.IOException"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 123
    .end local v0    # "dateAndTime":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v5    # "separator":Ljava/lang/String;
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    :catchall_1
    move-exception v7

    goto :goto_7

    .line 118
    :catch_7
    move-exception v1

    goto/16 :goto_1
.end method

.method public setDeviceInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDeviceInfo:Ljava/util/List;

    .line 77
    return-void
.end method

.method public setFilter(Lcom/android/server/enterprise/auditlog/Filter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/server/enterprise/auditlog/Filter;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    .line 296
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    .line 81
    return-void
.end method
