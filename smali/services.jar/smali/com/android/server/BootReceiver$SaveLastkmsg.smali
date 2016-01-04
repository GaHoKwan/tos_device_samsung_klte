.class Lcom/android/server/BootReceiver$SaveLastkmsg;
.super Ljava/lang/Thread;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BootReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveLastkmsg"
.end annotation


# static fields
.field private static final KERNEL_VERSION:Ljava/lang/String; = "/proc/version"

.field private static final LAST_KMSG:Ljava/lang/String; = "/proc/last_kmsg"

.field private static final LAST_KMSG_SAVE:Ljava/lang/String; = "/data/log/dumpstate_lastkmsg"

.field private static final MAX_LAST_KMSG:I = 0x5


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BootReceiver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/BootReceiver$1;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/server/BootReceiver$SaveLastkmsg;-><init>()V

    return-void
.end method

.method private logLastKmsg()V
    .locals 22

    .prologue
    .line 181
    new-instance v12, Ljava/io/File;

    const-string v19, "/proc/last_kmsg"

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v12, "lk_proc":Ljava/io/File;
    new-instance v18, Ljava/io/File;

    const-string v19, "/proc/version"

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v18, "version_proc":Ljava/io/File;
    const/16 v19, 0x800

    move/from16 v0, v19

    new-array v1, v0, [B

    .line 184
    .local v1, "buffer":[B
    const/4 v4, 0x0

    .line 185
    .local v4, "fin":Ljava/io/FileInputStream;
    const/16 v16, 0x0

    .line 186
    .local v16, "ver_fin":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 187
    .local v6, "fout":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 188
    .local v8, "gout":Ljava/util/zip/GZIPOutputStream;
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .line 190
    .local v15, "time":Landroid/text/format/Time;
    const-string v19, "BootReceiver"

    const-string v20, "logLastKmsg - Start"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v19

    if-nez v19, :cond_0

    .line 249
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-virtual {v15}, Landroid/text/format/Time;->setToNow()V

    .line 196
    const-string v19, "%Y%m%d_%H%M%S"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "date":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/data/log/dumpstate_lastkmsg_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".log.gz"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v13, "lk_save":Ljava/io/File;
    const/4 v10, 0x0

    .line 202
    .local v10, "len":I
    :try_start_0
    const-string v19, "%Y-%m-%d %H:%M:%S"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 204
    const-string v11, "========================================================\n"

    .line 205
    .local v11, "line":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "== dumpstate lastkmsg : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 207
    .local v14, "text":Ljava/lang/String;
    const-string v19, "BootReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "logLastKmsg - New filename is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .local v5, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 211
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .local v7, "fout":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v9, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v9, v7}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_10
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 213
    .end local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    .local v9, "gout":Ljava/util/zip/GZIPOutputStream;
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/io/OutputStream;->write([B)V

    .line 214
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/io/OutputStream;->write([B)V

    .line 215
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/io/OutputStream;->write([B)V

    .line 217
    const-string v14, "\n[Kernel version]: "

    .line 218
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/io/OutputStream;->write([B)V

    .line 220
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->isFile()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 221
    new-instance v17, Ljava/io/FileInputStream;

    invoke-direct/range {v17 .. v18}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 222
    .end local v16    # "ver_fin":Ljava/io/FileInputStream;
    .local v17, "ver_fin":Ljava/io/FileInputStream;
    :goto_1
    :try_start_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_f

    .line 223
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v1, v0, v10}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_1

    .line 240
    :catch_0
    move-exception v3

    move-object v8, v9

    .end local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "ver_fin":Ljava/io/FileInputStream;
    .restart local v16    # "ver_fin":Ljava/io/FileInputStream;
    move-object v4, v5

    .line 241
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "line":Ljava/lang/String;
    .end local v14    # "text":Ljava/lang/String;
    .local v3, "e":Ljava/io/IOException;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :goto_2
    :try_start_5
    const-string v19, "BootReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "logLastKmsg - File copy error"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 243
    if-eqz v4, :cond_1

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 244
    :cond_1
    :goto_3
    if-eqz v16, :cond_2

    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 245
    :cond_2
    :goto_4
    if-eqz v8, :cond_3

    :try_start_8
    invoke-virtual {v8}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 246
    :cond_3
    :goto_5
    if-eqz v6, :cond_4

    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 248
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    :goto_6
    const-string v19, "BootReceiver"

    const-string v20, "logLastKmsg - Save Complete"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 226
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .end local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v14    # "text":Ljava/lang/String;
    :cond_5
    :try_start_a
    const-string/jumbo v14, "unknown"

    .line 227
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/io/OutputStream;->write([B)V

    .line 230
    :goto_7
    const-string v14, "[Build Fingerprint]: "

    .line 231
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/io/OutputStream;->write([B)V

    .line 233
    const-string v19, "ro.build.fingerprint"

    const-string/jumbo v20, "unknown"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 234
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 235
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/io/OutputStream;->write([B)V

    .line 237
    :goto_8
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_6

    .line 238
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v1, v0, v10}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_8

    .line 240
    :catch_1
    move-exception v3

    move-object v8, v9

    .end local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 243
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .end local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    :cond_6
    if-eqz v5, :cond_7

    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    .line 244
    :cond_7
    :goto_9
    if-eqz v16, :cond_8

    :try_start_c
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 245
    :cond_8
    :goto_a
    if-eqz v9, :cond_9

    :try_start_d
    invoke-virtual {v9}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    .line 246
    :cond_9
    :goto_b
    if-eqz v7, :cond_a

    :try_start_e
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    :cond_a
    :goto_c
    move-object v8, v9

    .end local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v4, v5

    .line 247
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto :goto_6

    .line 243
    .end local v11    # "line":Ljava/lang/String;
    .end local v14    # "text":Ljava/lang/String;
    :catchall_0
    move-exception v19

    :goto_d
    if-eqz v4, :cond_b

    :try_start_f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    .line 244
    :cond_b
    :goto_e
    if-eqz v16, :cond_c

    :try_start_10
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3

    .line 245
    :cond_c
    :goto_f
    if-eqz v8, :cond_d

    :try_start_11
    invoke-virtual {v8}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4

    .line 246
    :cond_d
    :goto_10
    if-eqz v6, :cond_e

    :try_start_12
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5

    .line 243
    :cond_e
    :goto_11
    throw v19

    :catch_2
    move-exception v20

    goto :goto_e

    .line 244
    :catch_3
    move-exception v20

    goto :goto_f

    .line 245
    :catch_4
    move-exception v20

    goto :goto_10

    .line 246
    :catch_5
    move-exception v20

    goto :goto_11

    .line 243
    .restart local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v19

    goto/16 :goto_3

    .line 244
    :catch_7
    move-exception v19

    goto/16 :goto_4

    .line 245
    :catch_8
    move-exception v19

    goto/16 :goto_5

    .line 246
    :catch_9
    move-exception v19

    goto/16 :goto_6

    .line 243
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .end local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v14    # "text":Ljava/lang/String;
    :catch_a
    move-exception v19

    goto :goto_9

    .line 244
    :catch_b
    move-exception v19

    goto :goto_a

    .line 245
    :catch_c
    move-exception v19

    goto :goto_b

    .line 246
    :catch_d
    move-exception v19

    goto :goto_c

    .line 243
    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .end local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    :catchall_1
    move-exception v19

    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto :goto_d

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v19

    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto :goto_d

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .end local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    :catchall_3
    move-exception v19

    move-object v8, v9

    .end local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto :goto_d

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .end local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    .end local v16    # "ver_fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v17    # "ver_fin":Ljava/io/FileInputStream;
    :catchall_4
    move-exception v19

    move-object v8, v9

    .end local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "ver_fin":Ljava/io/FileInputStream;
    .restart local v16    # "ver_fin":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto :goto_d

    .line 240
    .end local v11    # "line":Ljava/lang/String;
    .end local v14    # "text":Ljava/lang/String;
    :catch_e
    move-exception v3

    goto/16 :goto_2

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v14    # "text":Ljava/lang/String;
    :catch_f
    move-exception v3

    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    :catch_10
    move-exception v3

    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .end local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    .end local v16    # "ver_fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v17    # "ver_fin":Ljava/io/FileInputStream;
    :cond_f
    move-object/from16 v16, v17

    .end local v17    # "ver_fin":Ljava/io/FileInputStream;
    .restart local v16    # "ver_fin":Ljava/io/FileInputStream;
    goto/16 :goto_7
.end method

.method private trimLastKmsg()V
    .locals 12

    .prologue
    .line 144
    new-instance v8, Ljava/io/File;

    const-string v9, "/data/log"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v8, "logFolder":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 146
    .local v6, "listOfAllFiles":[Ljava/io/File;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v7, "listOfLastkmsg":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 150
    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    move-object v0, v6

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    .line 155
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "fname":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "dumpstate_lastkmsg"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 157
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 161
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fname":Ljava/lang/String;
    :cond_3
    new-instance v9, Lcom/android/server/BootReceiver$SaveLastkmsg$1;

    invoke-direct {v9, p0}, Lcom/android/server/BootReceiver$SaveLastkmsg$1;-><init>(Lcom/android/server/BootReceiver$SaveLastkmsg;)V

    invoke-static {v7, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 168
    const-string v9, "BootReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "trimLastKmsg - Num of existing listOfLastkmsg is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x5

    if-lt v9, v10, :cond_0

    .line 171
    const-string v10, "BootReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "trimLastKmsg - Delete file"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 173
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 175
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "BootReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "trimLastKmsg error"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/android/server/BootReceiver$SaveLastkmsg;->trimLastKmsg()V

    .line 254
    invoke-direct {p0}, Lcom/android/server/BootReceiver$SaveLastkmsg;->logLastKmsg()V

    .line 255
    return-void
.end method
