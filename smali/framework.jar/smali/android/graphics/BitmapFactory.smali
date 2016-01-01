.class public Landroid/graphics/BitmapFactory;
.super Ljava/lang/Object;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BitmapFactory$Options;
    }
.end annotation


# static fields
.field private static final DECODE_BUFFER_SIZE:I = 0x4000

.field private static final TAG:Ljava/lang/String; = "BitmapFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static decodeByteArray([BII)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 619
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const-wide/16 v3, 0x2

    .line 588
    or-int v1, p1, p2

    if-ltz v1, :cond_0

    array-length v1, p0

    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    .line 589
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 594
    :cond_1
    const-string v1, "decodeBitmap"

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 596
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapFactory;->nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 598
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    iget-object v1, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 599
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Problem decoding into existing bitmap"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v1

    .line 601
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_2
    :try_start_1
    invoke-static {v0, p3}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 603
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 606
    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    .line 486
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 16
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 385
    const/4 v1, 0x0

    .line 386
    .local v1, "bm":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 390
    .local v11, "stream":Ljava/io/InputStream;
    if-eqz p0, :cond_0

    .line 394
    const/4 v7, 0x0

    .line 396
    .local v7, "mimeType":Ljava/lang/String;
    :try_start_0
    const-string v13, ".dcf"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 397
    const-string v7, "application/vnd.oma.drm.content"

    .line 398
    new-instance v3, Landroid/drm/DrmManagerClient;

    const/4 v13, 0x0

    invoke-direct {v3, v13}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 399
    .local v3, "drmclient":Landroid/drm/DrmManagerClient;
    const/4 v11, 0x0

    .line 402
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 404
    .local v5, "fileLength":J
    const/4 v13, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v13}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v9

    .line 406
    .local v9, "rightStatus":I
    if-nez v9, :cond_8

    .line 407
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v13, 0xa

    invoke-direct {v2, v13, v7}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 408
    .local v2, "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    const-string v13, "drm_path"

    move-object/from16 v0, p0

    invoke-virtual {v2, v13, v0}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 409
    const-string v13, "LENGTH"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 412
    const-string v14, "preview_option"

    move-object/from16 v0, p1

    iget-boolean v13, v0, Landroid/graphics/BitmapFactory$Options;->isPreview:Z

    if-eqz v13, :cond_4

    const-string v13, "true"

    :goto_0
    invoke-virtual {v2, v14, v13}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    invoke-virtual {v3, v2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v8

    .line 415
    .local v8, "resultInfo":Landroid/drm/DrmInfo;
    const-string v13, "status"

    invoke-virtual {v8, v13}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 416
    .local v10, "status_req1":Ljava/lang/String;
    const-string v13, "BitmapFactory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "decodeFile :: processRequest status is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const-string v13, "success"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 420
    invoke-virtual {v8}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v13

    if-eqz v13, :cond_5

    .line 421
    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v8}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .end local v11    # "stream":Ljava/io/InputStream;
    .local v12, "stream":Ljava/io/InputStream;
    move-object v11, v12

    .line 433
    .end local v2    # "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    .end local v8    # "resultInfo":Landroid/drm/DrmInfo;
    .end local v10    # "status_req1":Ljava/lang/String;
    .end local v12    # "stream":Ljava/io/InputStream;
    .restart local v11    # "stream":Ljava/io/InputStream;
    :goto_1
    if-eqz v3, :cond_0

    .line 435
    invoke-virtual {v3}, Landroid/drm/DrmManagerClient;->release()V

    .line 446
    .end local v3    # "drmclient":Landroid/drm/DrmManagerClient;
    .end local v5    # "fileLength":J
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v9    # "rightStatus":I
    :cond_0
    :goto_2
    if-eqz v11, :cond_1

    .line 447
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v11, v13, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 448
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    :cond_1
    if-eqz v11, :cond_2

    .line 464
    :try_start_1
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 471
    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    .line 472
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->setImagePath(Ljava/lang/String;)V

    .line 475
    :cond_3
    return-object v1

    .line 412
    .restart local v2    # "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    .restart local v3    # "drmclient":Landroid/drm/DrmManagerClient;
    .restart local v5    # "fileLength":J
    .restart local v7    # "mimeType":Ljava/lang/String;
    .restart local v9    # "rightStatus":I
    :cond_4
    :try_start_2
    const-string v13, "false"

    goto :goto_0

    .line 423
    .restart local v8    # "resultInfo":Landroid/drm/DrmInfo;
    .restart local v10    # "status_req1":Ljava/lang/String;
    :cond_5
    const-string v13, "BitmapFactory"

    const-string v14, "decodeFile :: custom api returned null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 456
    .end local v2    # "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    .end local v3    # "drmclient":Landroid/drm/DrmManagerClient;
    .end local v5    # "fileLength":J
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v8    # "resultInfo":Landroid/drm/DrmInfo;
    .end local v9    # "rightStatus":I
    .end local v10    # "status_req1":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 460
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v13, "BitmapFactory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to decode stream: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 462
    if-eqz v11, :cond_2

    .line 464
    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 465
    :catch_1
    move-exception v13

    goto :goto_3

    .line 426
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    .restart local v3    # "drmclient":Landroid/drm/DrmManagerClient;
    .restart local v5    # "fileLength":J
    .restart local v7    # "mimeType":Ljava/lang/String;
    .restart local v8    # "resultInfo":Landroid/drm/DrmInfo;
    .restart local v9    # "rightStatus":I
    .restart local v10    # "status_req1":Ljava/lang/String;
    :cond_6
    :try_start_5
    const-string v13, "BitmapFactory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "decodeFile :: FAIL reason is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "INFO"

    invoke-virtual {v8, v15}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 462
    .end local v2    # "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    .end local v3    # "drmclient":Landroid/drm/DrmManagerClient;
    .end local v5    # "fileLength":J
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v8    # "resultInfo":Landroid/drm/DrmInfo;
    .end local v9    # "rightStatus":I
    .end local v10    # "status_req1":Ljava/lang/String;
    :catchall_0
    move-exception v13

    if-eqz v11, :cond_7

    .line 464
    :try_start_6
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 467
    :cond_7
    :goto_4
    throw v13

    .line 429
    .restart local v3    # "drmclient":Landroid/drm/DrmManagerClient;
    .restart local v5    # "fileLength":J
    .restart local v7    # "mimeType":Ljava/lang/String;
    .restart local v9    # "rightStatus":I
    :cond_8
    :try_start_7
    const-string v13, "BitmapFactory"

    const-string v14, "decodeFile :: Rights not present. Handle here and show pop up for no license present"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 441
    .end local v3    # "drmclient":Landroid/drm/DrmManagerClient;
    .end local v5    # "fileLength":J
    .end local v9    # "rightStatus":I
    :cond_9
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v11    # "stream":Ljava/io/InputStream;
    .restart local v12    # "stream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "stream":Ljava/io/InputStream;
    .restart local v11    # "stream":Ljava/io/InputStream;
    goto :goto_2

    .line 465
    .end local v7    # "mimeType":Ljava/lang/String;
    :catch_2
    move-exception v13

    goto :goto_3

    :catch_3
    move-exception v14

    goto :goto_4
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    const/4 v0, 0x0

    .line 778
    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const-wide/16 v4, 0x2

    .line 743
    const-string v2, "decodeFileDescriptor"

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 745
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->nativeIsSeekable(Ljava/io/FileDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 746
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 758
    .local v0, "bm":Landroid/graphics/Bitmap;
    :goto_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 759
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Problem decoding into existing bitmap"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    .line 748
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 750
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_2
    invoke-static {v1, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStreamInternal(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 753
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 754
    :catch_0
    move-exception v2

    goto :goto_0

    .line 752
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v2

    .line 753
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 754
    :goto_1
    :try_start_5
    throw v2

    .line 762
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 764
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 766
    return-object v0

    .line 754
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 571
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 534
    const/4 v0, 0x0

    .line 535
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 538
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 539
    .local v2, "value":Landroid/util/TypedValue;
    invoke-virtual {p0, p1, v2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 541
    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, p2}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 549
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 555
    .end local v2    # "value":Landroid/util/TypedValue;
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    iget-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 556
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Problem decoding into existing bitmap"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 542
    :catch_0
    move-exception v3

    .line 549
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 550
    :catch_1
    move-exception v3

    goto :goto_0

    .line 548
    :catchall_0
    move-exception v3

    .line 549
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 552
    :cond_1
    :goto_1
    throw v3

    .line 550
    .restart local v2    # "value":Landroid/util/TypedValue;
    :catch_2
    move-exception v3

    goto :goto_0

    .end local v2    # "value":Landroid/util/TypedValue;
    :catch_3
    move-exception v4

    goto :goto_1

    .line 559
    :cond_2
    return-object v0
.end method

.method public static decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "pad"    # Landroid/graphics/Rect;
    .param p4, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 496
    if-nez p4, :cond_0

    .line 497
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    .end local p4    # "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 500
    .restart local p4    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    iget v2, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 501
    iget v0, p1, Landroid/util/TypedValue;->density:I

    .line 502
    .local v0, "density":I
    if-nez v0, :cond_4

    .line 503
    const/16 v2, 0xa0

    iput v2, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 509
    .end local v0    # "density":I
    :cond_1
    :goto_0
    iget v2, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-nez v2, :cond_2

    if-eqz p0, :cond_2

    .line 510
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 513
    :cond_2
    invoke-static {p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 514
    .local v1, "tmpBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 515
    invoke-virtual {v1, p1}, Landroid/graphics/Bitmap;->setImagePath(Landroid/util/TypedValue;)V

    .line 518
    :cond_3
    return-object v1

    .line 504
    .end local v1    # "tmpBitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "density":I
    :cond_4
    const v2, 0xffff

    if-eq v0, v2, :cond_1

    .line 505
    iput v0, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_0
.end method

.method public static decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v0, 0x0

    .line 723
    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const-wide/16 v4, 0x2

    .line 673
    if-nez p0, :cond_0

    .line 674
    const/4 v1, 0x0

    .line 697
    .end local p0    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v1

    .line 677
    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_0
    const/4 v1, 0x0

    .line 679
    .local v1, "bm":Landroid/graphics/Bitmap;
    const-string v2, "decodeBitmap"

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 681
    :try_start_0
    instance-of v2, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v2, :cond_1

    .line 682
    check-cast p0, Landroid/content/res/AssetManager$AssetInputStream;

    .end local p0    # "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getAssetInt()I

    move-result v0

    .line 683
    .local v0, "asset":I
    invoke-static {v0, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeAsset(ILandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 688
    .end local v0    # "asset":I
    :goto_1
    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 689
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Problem decoding into existing bitmap"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    :catchall_0
    move-exception v2

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    .line 685
    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_1
    :try_start_1
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStreamInternal(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 692
    .end local p0    # "is":Ljava/io/InputStream;
    :cond_2
    invoke-static {v1, p2}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 694
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0
.end method

.method private static decodeStreamInternal(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 706
    const/4 v0, 0x0

    .line 707
    .local v0, "tempStorage":[B
    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 708
    :cond_0
    if-nez v0, :cond_1

    const/16 v1, 0x4000

    new-array v0, v1, [B

    .line 709
    :cond_1
    invoke-static {p0, v0, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static native nativeDecodeAsset(ILandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeIsSeekable(Ljava/io/FileDescriptor;)Z
.end method

.method private static setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    .locals 5
    .param p0, "outputBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 626
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 629
    .local v0, "density":I
    if-eqz v0, :cond_4

    .line 630
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 631
    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 632
    .local v3, "targetDensity":I
    if-eqz v3, :cond_0

    if-eq v0, v3, :cond_0

    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    if-eq v0, v4, :cond_0

    .line 636
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    .line 637
    .local v2, "np":[B
    if-eqz v2, :cond_3

    invoke-static {v2}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    .line 638
    .local v1, "isNinePatch":Z
    :goto_1
    iget-boolean v4, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-nez v4, :cond_2

    if-eqz v1, :cond_0

    .line 639
    :cond_2
    invoke-virtual {p0, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_0

    .line 637
    .end local v1    # "isNinePatch":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 641
    .end local v2    # "np":[B
    .end local v3    # "targetDensity":I
    :cond_4
    iget-object v4, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 643
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_0
.end method
