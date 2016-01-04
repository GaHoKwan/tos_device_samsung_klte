.class Lcom/android/server/power/ShutdownThread$LogFileWriter;
.super Ljava/lang/Object;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogFileWriter"
.end annotation


# static fields
.field private static final FILELOG_EXTENTION:Ljava/lang/String; = "txt"

.field private static final MAX_TIMESTAMP_FILELOG:I = 0x5


# instance fields
.field private fos:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1445
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/ShutdownThread$LogFileWriter;->generateFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1447
    .local v1, "filename":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1453
    :goto_0
    return-void

    .line 1448
    :catch_0
    move-exception v0

    .line 1449
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "ShutdownThread"

    const-string v3, "LogFileWriter.LogFileWriter error"

    invoke-static {v2, v3, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0

    .line 1450
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 1451
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "ShutdownThread"

    const-string v3, "LogFileWriter.LogFileWriter error"

    invoke-static {v2, v3, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0
.end method

.method private generateFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1456
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1457
    .local v4, "folder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 1458
    .local v8, "listOfFiles":[Ljava/io/File;
    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    .line 1459
    .local v9, "loglist":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Long;Ljava/lang/String;>;"
    move-object v1, v8

    .local v1, "arr$":[Ljava/io/File;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v2, v1, v5

    .line 1460
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1461
    .local v3, "fname":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1462
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    .line 1463
    .local v12, "moddate":J
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v9, v14, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1459
    .end local v12    # "moddate":J
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1467
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fname":Ljava/lang/String;
    :cond_1
    invoke-virtual {v9}, Ljava/util/TreeMap;->size()I

    move-result v14

    const/4 v15, 0x5

    if-ge v14, v15, :cond_2

    .line 1468
    const-string v14, "%s.%d.%s"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p2, v15, v16

    const/16 v16, 0x1

    invoke-virtual {v9}, Ljava/util/TreeMap;->size()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-string/jumbo v17, "txt"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1473
    :goto_1
    return-object v14

    .line 1471
    :cond_2
    invoke-virtual {v9}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1472
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 1473
    .local v10, "modDate":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public save()V
    .locals 3

    .prologue
    .line 1500
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    if-nez v1, :cond_0

    .line 1508
    :goto_0
    return-void

    .line 1504
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1505
    :catch_0
    move-exception v0

    .line 1506
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ShutdownThread"

    const-string v2, "LogFileWriter.save fail"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0
.end method

.method public saveAndClose()V
    .locals 4

    .prologue
    .line 1511
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    if-nez v1, :cond_1

    .line 1530
    :cond_0
    :goto_0
    return-void

    .line 1515
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 1516
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 1517
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1522
    :try_start_1
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 1523
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 1524
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1526
    :catch_0
    move-exception v0

    .line 1527
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ShutdownThread"

    const-string v2, "LogFileWriter.saveAndClose error"

    :goto_1
    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0

    .line 1518
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1519
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    const-string v1, "ShutdownThread"

    const-string v2, "LogFileWriter.saveAndClose fail"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1522
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 1523
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 1524
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1526
    :catch_2
    move-exception v0

    .line 1527
    const-string v1, "ShutdownThread"

    const-string v2, "LogFileWriter.saveAndClose error"

    goto :goto_1

    .line 1521
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 1522
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_2

    .line 1523
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1524
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1521
    :cond_2
    :goto_2
    throw v1

    .line 1526
    :catch_3
    move-exception v0

    .line 1527
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "ShutdownThread"

    const-string v3, "LogFileWriter.saveAndClose error"

    invoke-static {v2, v3, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_2
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    .line 1478
    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    if-nez v3, :cond_0

    .line 1479
    const-string v3, "fos is null"

    invoke-static {p1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    :goto_0
    return-void

    .line 1482
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1484
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1485
    .local v1, "oCalendar":Ljava/util/Calendar;
    const-string v3, "%02d-%02d %02d:%02d:%02d %s\n"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x3

    const/16 v6, 0xc

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0xd

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object p2, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1493
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1494
    :catch_0
    move-exception v0

    .line 1495
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "LogFileWriter.write fail"

    invoke-static {p1, v3, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0
.end method
