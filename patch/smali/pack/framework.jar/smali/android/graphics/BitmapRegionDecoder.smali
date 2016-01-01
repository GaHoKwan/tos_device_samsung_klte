.class public final Landroid/graphics/BitmapRegionDecoder;
.super Ljava/lang/Object;
.source "BitmapRegionDecoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapRegionDecoder"


# instance fields
.field private mNativeBitmapRegionDecoder:I

.field private final mNativeLock:Ljava/lang/Object;

.field private mRecycled:Z


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .param p1, "decoder"    # I

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    .line 354
    iput p1, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:I

    .line 355
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    .line 356
    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 428
    iget-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 429
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_0
    return-void
.end method

.method private static native nativeClean(I)V
.end method

.method private static native nativeDecodeRegion(IIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeGetHeight(I)I
.end method

.method private static native nativeGetWidth(I)I
.end method

.method private static native nativeNewInstance(IZ)Landroid/graphics/BitmapRegionDecoder;
.end method

.method private static native nativeNewInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
.end method

.method private static native nativeNewInstance(Ljava/io/InputStream;[BZ)Landroid/graphics/BitmapRegionDecoder;
.end method

.method private static native nativeNewInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;
.end method

.method public static newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "isShareable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "isShareable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    instance-of v1, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v1, :cond_0

    .line 127
    check-cast p0, Landroid/content/res/AssetManager$AssetInputStream;

    .end local p0    # "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getAssetInt()I

    move-result v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance(IZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    .line 135
    :goto_0
    return-object v1

    .line 134
    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_0
    const/16 v1, 0x4000

    new-array v0, v1, [B

    .line 135
    .local v0, "tempStorage":[B
    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance(Ljava/io/InputStream;[BZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 14
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "isShareable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "decoder":Landroid/graphics/BitmapRegionDecoder;
    const/4 v9, 0x0

    .line 162
    .local v9, "stream":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 164
    .local v5, "mime":Ljava/lang/String;
    const-string v11, ".dcf"

    invoke-virtual {p0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 167
    const-string v5, "application/vnd.oma.drm.content"

    .line 168
    new-instance v2, Landroid/drm/DrmManagerClient;

    const/4 v11, 0x0

    invoke-direct {v2, v11}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 169
    .local v2, "drmclient":Landroid/drm/DrmManagerClient;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 170
    .local v3, "fileLength":J
    const/4 v11, 0x7

    invoke-virtual {v2, p0, v11}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v7

    .line 171
    .local v7, "rightStatus":I
    if-nez v7, :cond_3

    .line 174
    new-instance v1, Landroid/drm/DrmInfoRequest;

    const/16 v11, 0xa

    invoke-direct {v1, v11, v5}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 175
    .local v1, "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    const-string v11, "drm_path"

    invoke-virtual {v1, v11, p0}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    const-string v11, "LENGTH"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    const-string v11, "preview_option"

    const-string v12, "false"

    invoke-virtual {v1, v11, v12}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    invoke-virtual {v2, v1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v6

    .line 182
    .local v6, "resultInfo":Landroid/drm/DrmInfo;
    const-string v11, "status"

    invoke-virtual {v6, v11}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 184
    .local v8, "status_req1":Ljava/lang/String;
    const-string v11, "success"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 186
    invoke-virtual {v6}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v11

    if-eqz v11, :cond_1

    .line 187
    new-instance v9, Ljava/io/ByteArrayInputStream;

    .end local v9    # "stream":Ljava/io/InputStream;
    invoke-virtual {v6}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 188
    .restart local v9    # "stream":Ljava/io/InputStream;
    invoke-static {v9, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    .line 205
    .end local v1    # "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    .end local v6    # "resultInfo":Landroid/drm/DrmInfo;
    .end local v8    # "status_req1":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    .line 207
    invoke-virtual {v2}, Landroid/drm/DrmManagerClient;->release()V

    .line 227
    .end local v2    # "drmclient":Landroid/drm/DrmManagerClient;
    .end local v3    # "fileLength":J
    .end local v7    # "rightStatus":I
    :cond_0
    :goto_1
    return-object v0

    .line 192
    .restart local v1    # "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    .restart local v2    # "drmclient":Landroid/drm/DrmManagerClient;
    .restart local v3    # "fileLength":J
    .restart local v6    # "resultInfo":Landroid/drm/DrmInfo;
    .restart local v7    # "rightStatus":I
    .restart local v8    # "status_req1":Ljava/lang/String;
    :cond_1
    const-string v11, "BitmapRegionDecoder"

    const-string v12, "newInstance :: custom api returned null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 197
    :cond_2
    const-string v11, "BitmapRegionDecoder"

    const-string v12, "newInstance :: Plug-In Returned FAIL as STATUS "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 202
    .end local v1    # "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    .end local v6    # "resultInfo":Landroid/drm/DrmInfo;
    .end local v8    # "status_req1":Ljava/lang/String;
    :cond_3
    const-string v11, "BitmapRegionDecoder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "newInstance :: Rights are not Present for the file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 214
    .end local v2    # "drmclient":Landroid/drm/DrmManagerClient;
    .end local v3    # "fileLength":J
    .end local v7    # "rightStatus":I
    :cond_4
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    .end local v9    # "stream":Ljava/io/InputStream;
    .local v10, "stream":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v10, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 217
    if-eqz v10, :cond_6

    .line 219
    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v9, v10

    .line 222
    .end local v10    # "stream":Ljava/io/InputStream;
    .restart local v9    # "stream":Ljava/io/InputStream;
    goto :goto_1

    .line 220
    .end local v9    # "stream":Ljava/io/InputStream;
    .restart local v10    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v11

    move-object v9, v10

    .line 222
    .end local v10    # "stream":Ljava/io/InputStream;
    .restart local v9    # "stream":Ljava/io/InputStream;
    goto :goto_1

    .line 217
    :catchall_0
    move-exception v11

    :goto_2
    if-eqz v9, :cond_5

    .line 219
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 222
    :cond_5
    :goto_3
    throw v11

    .line 220
    :catch_1
    move-exception v12

    goto :goto_3

    .line 217
    .end local v9    # "stream":Ljava/io/InputStream;
    .restart local v10    # "stream":Ljava/io/InputStream;
    :catchall_1
    move-exception v11

    move-object v9, v10

    .end local v10    # "stream":Ljava/io/InputStream;
    .restart local v9    # "stream":Ljava/io/InputStream;
    goto :goto_2

    .end local v9    # "stream":Ljava/io/InputStream;
    .restart local v10    # "stream":Ljava/io/InputStream;
    :cond_6
    move-object v9, v10

    .end local v10    # "stream":Ljava/io/InputStream;
    .restart local v9    # "stream":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static newInstance(Ljava/lang/String;ZZ)Landroid/graphics/BitmapRegionDecoder;
    .locals 14
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "isShareable"    # Z
    .param p2, "isPreview"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "decoder":Landroid/graphics/BitmapRegionDecoder;
    const/4 v9, 0x0

    .line 278
    .local v9, "stream":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 280
    .local v5, "mime":Ljava/lang/String;
    const-string v11, ".dcf"

    invoke-virtual {p0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 283
    const-string v5, "application/vnd.oma.drm.content"

    .line 284
    new-instance v2, Landroid/drm/DrmManagerClient;

    const/4 v11, 0x0

    invoke-direct {v2, v11}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 285
    .local v2, "drmclient":Landroid/drm/DrmManagerClient;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 286
    .local v3, "fileLength":J
    const/4 v11, 0x7

    invoke-virtual {v2, p0, v11}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v7

    .line 288
    .local v7, "rightStatus":I
    if-nez v7, :cond_4

    .line 291
    new-instance v1, Landroid/drm/DrmInfoRequest;

    const/16 v11, 0xa

    invoke-direct {v1, v11, v5}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 292
    .local v1, "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    const-string v11, "drm_path"

    invoke-virtual {v1, v11, p0}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    const-string v11, "LENGTH"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    const-string v12, "preview_option"

    if-eqz p2, :cond_1

    const-string v11, "true"

    :goto_0
    invoke-virtual {v1, v12, v11}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 298
    invoke-virtual {v2, v1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v6

    .line 299
    .local v6, "resultInfo":Landroid/drm/DrmInfo;
    const-string v11, "status"

    invoke-virtual {v6, v11}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 300
    .local v8, "status_req1":Ljava/lang/String;
    const-string v11, "success"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 302
    invoke-virtual {v6}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v11

    if-eqz v11, :cond_2

    .line 303
    new-instance v9, Ljava/io/ByteArrayInputStream;

    .end local v9    # "stream":Ljava/io/InputStream;
    invoke-virtual {v6}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 304
    .restart local v9    # "stream":Ljava/io/InputStream;
    invoke-static {v9, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    .line 321
    .end local v1    # "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    .end local v6    # "resultInfo":Landroid/drm/DrmInfo;
    .end local v8    # "status_req1":Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_0

    .line 323
    invoke-virtual {v2}, Landroid/drm/DrmManagerClient;->release()V

    .line 344
    .end local v2    # "drmclient":Landroid/drm/DrmManagerClient;
    .end local v3    # "fileLength":J
    .end local v7    # "rightStatus":I
    :cond_0
    :goto_2
    return-object v0

    .line 296
    .restart local v1    # "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    .restart local v2    # "drmclient":Landroid/drm/DrmManagerClient;
    .restart local v3    # "fileLength":J
    .restart local v7    # "rightStatus":I
    :cond_1
    const-string v11, "false"

    goto :goto_0

    .line 308
    .restart local v6    # "resultInfo":Landroid/drm/DrmInfo;
    .restart local v8    # "status_req1":Ljava/lang/String;
    :cond_2
    const-string v11, "BitmapRegionDecoder"

    const-string v12, "newInstance + isPreview :: custom api returned null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 313
    :cond_3
    const-string v11, "BitmapRegionDecoder"

    const-string v12, "newInstance + isPreview :: Plug-In Returned FAIL as STATUS "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 318
    .end local v1    # "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    .end local v6    # "resultInfo":Landroid/drm/DrmInfo;
    .end local v8    # "status_req1":Ljava/lang/String;
    :cond_4
    const-string v11, "BitmapRegionDecoder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "newInstance + isPreview :: Rights are not Present for the file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 330
    .end local v2    # "drmclient":Landroid/drm/DrmManagerClient;
    .end local v3    # "fileLength":J
    .end local v7    # "rightStatus":I
    :cond_5
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    .end local v9    # "stream":Ljava/io/InputStream;
    .local v10, "stream":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v10, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 333
    if-eqz v10, :cond_7

    .line 335
    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v9, v10

    .line 338
    .end local v10    # "stream":Ljava/io/InputStream;
    .restart local v9    # "stream":Ljava/io/InputStream;
    goto :goto_2

    .line 336
    .end local v9    # "stream":Ljava/io/InputStream;
    .restart local v10    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v11

    move-object v9, v10

    .line 338
    .end local v10    # "stream":Ljava/io/InputStream;
    .restart local v9    # "stream":Ljava/io/InputStream;
    goto :goto_2

    .line 333
    :catchall_0
    move-exception v11

    :goto_3
    if-eqz v9, :cond_6

    .line 335
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 338
    :cond_6
    :goto_4
    throw v11

    .line 336
    :catch_1
    move-exception v12

    goto :goto_4

    .line 333
    .end local v9    # "stream":Ljava/io/InputStream;
    .restart local v10    # "stream":Ljava/io/InputStream;
    :catchall_1
    move-exception v11

    move-object v9, v10

    .end local v10    # "stream":Ljava/io/InputStream;
    .restart local v9    # "stream":Ljava/io/InputStream;
    goto :goto_3

    .end local v9    # "stream":Ljava/io/InputStream;
    .restart local v10    # "stream":Ljava/io/InputStream;
    :cond_7
    move-object v9, v10

    .end local v10    # "stream":Ljava/io/InputStream;
    .restart local v9    # "stream":Ljava/io/InputStream;
    goto :goto_2
.end method

.method public static newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "isShareable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    or-int v0, p1, p2

    if-ltz v0, :cond_0

    array-length v0, p0

    add-int v1, p1, p2

    if-ge v0, v1, :cond_1

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 76
    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 368
    iget-object v6, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v6

    .line 369
    :try_start_0
    const-string v0, "decodeRegion called on recycled region decoder"

    invoke-direct {p0, v0}, Landroid/graphics/BitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    .line 370
    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-lez v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 372
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rectangle is outside the image"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 373
    :cond_1
    :try_start_1
    iget v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/graphics/BitmapRegionDecoder;->nativeDecodeRegion(IIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 436
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 440
    return-void

    .line 438
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 388
    iget-object v1, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 389
    :try_start_0
    const-string v0, "getHeight called on recycled region decoder"

    invoke-direct {p0, v0}, Landroid/graphics/BitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    .line 390
    iget v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:I

    invoke-static {v0}, Landroid/graphics/BitmapRegionDecoder;->nativeGetHeight(I)I

    move-result v0

    monitor-exit v1

    return v0

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 380
    iget-object v1, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 381
    :try_start_0
    const-string v0, "getWidth called on recycled region decoder"

    invoke-direct {p0, v0}, Landroid/graphics/BitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    .line 382
    iget v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:I

    invoke-static {v0}, Landroid/graphics/BitmapRegionDecoder;->nativeGetWidth(I)I

    move-result v0

    monitor-exit v1

    return v0

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isRecycled()Z
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    return v0
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 405
    iget-object v1, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 406
    :try_start_0
    iget-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    if-nez v0, :cond_0

    .line 407
    iget v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:I

    invoke-static {v0}, Landroid/graphics/BitmapRegionDecoder;->nativeClean(I)V

    .line 408
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    .line 410
    :cond_0
    monitor-exit v1

    .line 411
    return-void

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
