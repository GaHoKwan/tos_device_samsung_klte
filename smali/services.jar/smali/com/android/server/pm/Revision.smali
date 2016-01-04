.class public Lcom/android/server/pm/Revision;
.super Ljava/lang/Object;
.source "Revision.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Revision"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get_sepolicy_build_date()Ljava/lang/String;
    .locals 16

    .prologue
    .line 370
    const/4 v3, 0x0

    .line 371
    .local v3, "buildDate":Ljava/lang/String;
    const/4 v9, 0x0

    .line 372
    .local v9, "line":Ljava/lang/String;
    const/4 v10, 0x0

    .line 373
    .local v10, "name":Ljava/lang/String;
    const/4 v11, 0x0

    .line 374
    .local v11, "priority":I
    const/4 v8, 0x0

    .line 376
    .local v8, "index":I
    const/4 v1, 0x0

    .line 377
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 379
    .local v6, "in":Ljava/io/DataInputStream;
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v11

    .line 380
    const/4 v12, 0x4

    new-array v0, v12, [Ljava/io/File;

    const/4 v12, 0x0

    new-instance v13, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v14

    const-string v15, "security/sepolicy"

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v13, v0, v12

    const/4 v12, 0x1

    new-instance v13, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v14

    const-string v15, "security/spota/sepolicy_version"

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v13, v0, v12

    const/4 v12, 0x2

    new-instance v13, Ljava/io/File;

    const-string v14, "sepolicy_version"

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v13, v0, v12

    const/4 v12, 0x3

    const/4 v13, 0x0

    aput-object v13, v0, v12

    .line 388
    .local v0, "SEPOLICY_VERSION_FILE":[Ljava/io/File;
    :try_start_0
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v12, Ljava/io/FileInputStream;

    add-int/lit8 v13, v11, -0x1

    aget-object v13, v0, v13

    invoke-direct {v12, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 389
    .end local v6    # "in":Ljava/io/DataInputStream;
    .local v7, "in":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 390
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v12, 0x1

    if-eq v11, v12, :cond_5

    .line 393
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 394
    if-nez v9, :cond_3

    .line 395
    new-instance v12, Ljava/io/IOException;

    invoke-direct {v12}, Ljava/io/IOException;-><init>()V

    throw v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 405
    :catch_0
    move-exception v5

    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .line 406
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .local v5, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 410
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v1, :cond_1

    .line 411
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 412
    const/4 v1, 0x0

    .line 414
    :cond_1
    if-eqz v6, :cond_2

    .line 415
    invoke-virtual {v6}, Ljava/io/FilterInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 416
    const/4 v6, 0x0

    .line 422
    :cond_2
    :goto_2
    return-object v3

    .line 397
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :cond_3
    const/16 v12, 0x3d

    :try_start_4
    invoke-virtual {v9, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 398
    const/4 v12, -0x1

    if-ne v8, v12, :cond_4

    .line 399
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-direct {v12}, Ljava/lang/NumberFormatException;-><init>()V

    throw v12

    .line 401
    :cond_4
    const/4 v12, 0x0

    invoke-virtual {v9, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 402
    const-string v12, "BD"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 403
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .end local v3    # "buildDate":Ljava/lang/String;
    .local v4, "buildDate":Ljava/lang/String;
    move-object v3, v4

    .end local v4    # "buildDate":Ljava/lang/String;
    .restart local v3    # "buildDate":Ljava/lang/String;
    :cond_5
    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .line 407
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 418
    :catch_1
    move-exception v5

    .line 419
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 405
    .end local v5    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    goto :goto_0

    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :catch_3
    move-exception v5

    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    goto :goto_0
.end method

.method public static get_sepolicy_info()[Ljava/lang/String;
    .locals 17

    .prologue
    .line 426
    const/4 v13, 0x2

    new-array v9, v13, [Ljava/lang/String;

    .line 427
    .local v9, "info":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 428
    .local v10, "line":Ljava/lang/String;
    const/4 v11, 0x0

    .line 429
    .local v11, "name":Ljava/lang/String;
    const/4 v12, 0x0

    .line 430
    .local v12, "priority":I
    const/4 v8, 0x0

    .line 432
    .local v8, "index":I
    new-instance v3, Ljava/lang/String;

    const-string v13, "SEPF_XXX_XX_0000"

    invoke-direct {v3, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 434
    .local v3, "default_version":Ljava/lang/String;
    const/4 v1, 0x0

    .line 435
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 437
    .local v6, "in":Ljava/io/DataInputStream;
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v12

    .line 438
    const/4 v13, 0x4

    new-array v0, v13, [Ljava/io/File;

    const/4 v13, 0x0

    new-instance v14, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v15

    const-string v16, "security/sepolicy"

    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v14, v0, v13

    const/4 v13, 0x1

    new-instance v14, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v15

    const-string v16, "security/spota/sepolicy_version"

    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v14, v0, v13

    const/4 v13, 0x2

    new-instance v14, Ljava/io/File;

    const-string v15, "sepolicy_version"

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v14, v0, v13

    const/4 v13, 0x3

    const/4 v14, 0x0

    aput-object v14, v0, v13

    .line 443
    .local v0, "SEPOLICY_VERSION_FILE":[Ljava/io/File;
    const-string v13, "GOOGLE_POLICY"

    const-string v14, "selinux.policy_version"

    const-string v15, "Unknown"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 444
    const/4 v13, 0x0

    const-string v14, "GOOGLE_POLICY"

    aput-object v14, v9, v13

    .line 445
    const/4 v13, 0x1

    const-string v14, ""

    aput-object v14, v9, v13

    .line 506
    :cond_0
    :goto_0
    return-object v9

    .line 450
    :cond_1
    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    .line 451
    const/4 v13, 0x0

    :try_start_0
    const-string v14, "Enterprise Policy"

    aput-object v14, v9, v13

    .line 452
    const/4 v13, 0x1

    const-string v14, ""

    aput-object v14, v9, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 495
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 496
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 497
    const/4 v1, 0x0

    .line 499
    :cond_3
    if-eqz v6, :cond_0

    .line 500
    invoke-virtual {v6}, Ljava/io/FilterInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 501
    const/4 v6, 0x0

    goto :goto_0

    .line 454
    :cond_4
    :try_start_2
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v13, Ljava/io/FileInputStream;

    add-int/lit8 v14, v12, -0x1

    aget-object v14, v0, v14

    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 455
    .end local v6    # "in":Ljava/io/DataInputStream;
    .local v7, "in":Ljava/io/DataInputStream;
    :try_start_3
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 457
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :cond_5
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 458
    const-string v13, "VE="

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 459
    const/16 v13, 0x3d

    invoke-virtual {v10, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 460
    const/4 v13, 0x0

    new-instance v14, Ljava/lang/String;

    add-int/lit8 v15, v8, 0x1

    invoke-virtual {v10, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v14, v9, v13

    .line 463
    :cond_6
    const-string v13, "BD="

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 464
    const/16 v13, 0x3d

    invoke-virtual {v10, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 465
    const/4 v13, 0x1

    new-instance v14, Ljava/lang/String;

    add-int/lit8 v15, v8, 0x1

    invoke-virtual {v10, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v14, v9, v13

    .line 468
    :cond_7
    const/4 v13, 0x0

    aget-object v13, v9, v13

    if-nez v13, :cond_8

    .line 469
    const/4 v13, 0x0

    const-string v14, ""

    aput-object v14, v9, v13

    .line 472
    :cond_8
    const/4 v13, 0x1

    aget-object v13, v9, v13

    if-nez v13, :cond_5

    .line 473
    const/4 v13, 0x1

    const-string v14, ""

    aput-object v14, v9, v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 478
    :catch_0
    move-exception v4

    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .line 480
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/lang/Exception;
    :goto_3
    if-eqz v1, :cond_9

    .line 481
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 482
    const/4 v1, 0x0

    .line 484
    :cond_9
    if-eqz v6, :cond_2

    .line 485
    invoke-virtual {v6}, Ljava/io/FilterInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 486
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 488
    :catch_1
    move-exception v5

    .line 489
    .local v5, "ie":Ljava/io/IOException;
    const-string v13, "Revision"

    const-string v14, "Couldn\'t close BufferedReader or DataInputStream"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 503
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "ie":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 504
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 478
    .end local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    goto :goto_3

    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :catch_4
    move-exception v4

    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    goto :goto_3

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :cond_a
    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method

.method public static get_sepolicy_version()Ljava/lang/String;
    .locals 17

    .prologue
    .line 290
    const/4 v11, 0x0

    .line 291
    .local v11, "version":Ljava/lang/String;
    const/4 v9, 0x0

    .line 292
    .local v9, "line":Ljava/lang/String;
    const/4 v10, 0x0

    .line 293
    .local v10, "priority":I
    const/4 v8, 0x0

    .line 294
    .local v8, "index":I
    new-instance v3, Ljava/lang/String;

    const-string v13, "SEPF_XXX_XX_0000"

    invoke-direct {v3, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 296
    .local v3, "default_version":Ljava/lang/String;
    const/4 v1, 0x0

    .line 297
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 300
    .local v6, "in":Ljava/io/DataInputStream;
    const-string v13, "GOOGLE_POLICY"

    const-string v14, "selinux.policy_version"

    const-string v15, "Unknown"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 301
    new-instance v11, Ljava/lang/String;

    .end local v11    # "version":Ljava/lang/String;
    const-string v13, "GOOGLE_POLICY"

    invoke-direct {v11, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 365
    :goto_0
    return-object v11

    .line 304
    .restart local v11    # "version":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v10

    .line 305
    const/4 v13, 0x4

    new-array v0, v13, [Ljava/io/File;

    const/4 v13, 0x0

    new-instance v14, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v15

    const-string v16, "security/sepolicy"

    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v14, v0, v13

    const/4 v13, 0x1

    new-instance v14, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v15

    const-string v16, "security/spota/sepolicy_version"

    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v14, v0, v13

    const/4 v13, 0x2

    new-instance v14, Ljava/io/File;

    const-string v15, "sepolicy_version"

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v14, v0, v13

    const/4 v13, 0x3

    const/4 v14, 0x0

    aput-object v14, v0, v13

    .line 312
    .local v0, "SEPOLICY_VERSION_FILE":[Ljava/io/File;
    :try_start_0
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v13, Ljava/io/FileInputStream;

    add-int/lit8 v14, v10, -0x1

    aget-object v14, v0, v14

    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 314
    .end local v6    # "in":Ljava/io/DataInputStream;
    .local v7, "in":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 315
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v13, 0x1

    if-ne v10, v13, :cond_1

    .line 316
    :try_start_2
    new-instance v12, Ljava/lang/String;

    const-string v13, "Enterprise Policy"

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v11    # "version":Ljava/lang/String;
    .local v12, "version":Ljava/lang/String;
    move-object v11, v12

    .line 353
    .end local v12    # "version":Ljava/lang/String;
    .restart local v11    # "version":Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_8

    .line 354
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 355
    const/4 v1, 0x0

    .line 357
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :goto_2
    if-eqz v7, :cond_7

    .line 358
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FilterInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 359
    const/4 v6, 0x0

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    goto :goto_0

    .line 318
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :cond_1
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 320
    if-nez v9, :cond_5

    .line 321
    new-instance v13, Ljava/io/IOException;

    invoke-direct {v13}, Ljava/io/IOException;-><init>()V

    throw v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 331
    :catch_0
    move-exception v4

    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .line 333
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/lang/Exception;
    :goto_3
    if-eqz v1, :cond_2

    .line 334
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 335
    const/4 v1, 0x0

    .line 337
    :cond_2
    if-eqz v6, :cond_3

    .line 338
    invoke-virtual {v6}, Ljava/io/FilterInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 339
    const/4 v6, 0x0

    .line 344
    :cond_3
    :goto_4
    if-eqz v11, :cond_4

    .line 345
    const/4 v11, 0x0

    .line 348
    :cond_4
    const-string v13, "Revision"

    const-string v14, "Couldn\'t load policy "

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v3

    .line 349
    goto/16 :goto_0

    .line 324
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :cond_5
    const/16 v13, 0x3d

    :try_start_7
    invoke-virtual {v9, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 325
    const/4 v13, -0x1

    if-ne v8, v13, :cond_6

    .line 326
    new-instance v13, Ljava/lang/NullPointerException;

    invoke-direct {v13}, Ljava/lang/NullPointerException;-><init>()V

    throw v13

    .line 329
    :cond_6
    new-instance v12, Ljava/lang/String;

    add-int/lit8 v13, v8, 0x1

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .end local v11    # "version":Ljava/lang/String;
    .restart local v12    # "version":Ljava/lang/String;
    move-object v11, v12

    .end local v12    # "version":Ljava/lang/String;
    .restart local v11    # "version":Ljava/lang/String;
    goto :goto_1

    .line 341
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    :catch_1
    move-exception v5

    .line 342
    .local v5, "ie":Ljava/io/IOException;
    const-string v13, "Revision"

    const-string v14, "Couldn\'t close BufferedReader or DataInputStream"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 361
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "ie":Ljava/io/IOException;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :catch_2
    move-exception v4

    move-object v1, v2

    .line 362
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/io/IOException;
    :goto_5
    const-string v13, "Revision"

    const-string v14, "Couldn\'t close BufferedReader or DataInputStream"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Ljava/io/IOException;
    :cond_7
    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    goto/16 :goto_0

    .line 361
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :catch_3
    move-exception v4

    goto :goto_5

    .line 331
    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    :catch_4
    move-exception v4

    goto :goto_3

    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :catch_5
    move-exception v4

    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    goto :goto_3

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :cond_8
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static selinux_android_load_priority()I
    .locals 23

    .prologue
    .line 90
    const-wide/16 v13, 0x0

    .line 91
    .local v13, "sepolicy_version_highest":J
    const-wide/16 v15, 0x0

    .line 92
    .local v15, "sepolicy_version_new":J
    const/4 v7, 0x0

    .line 93
    .local v7, "i":I
    const/4 v5, 0x0

    .line 94
    .local v5, "cmp_value":I
    const/4 v3, 0x0

    .line 95
    .local v3, "br":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 96
    .local v8, "in":Ljava/io/FileInputStream;
    const/16 v18, 0x0

    .line 97
    .local v18, "tmp_version":Ljava/lang/String;
    const/4 v10, 0x0

    .line 98
    .local v10, "mdm_policy_status":Ljava/lang/String;
    new-instance v17, Ljava/lang/String;

    const-string v19, "SEPF_SPD_XX_0000"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 99
    .local v17, "spd_and_version":Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    const-string v19, "SEPF_RAM_XX_0000"

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 100
    .local v11, "ram_and_version":Ljava/lang/String;
    const/4 v12, 0x0

    .line 101
    .local v12, "selinux_policy_priority":I
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v2, v0, [Ljava/io/File;

    const/16 v19, 0x0

    new-instance v20, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v21

    const-string v22, "security/sepolicy"

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v20, v2, v19

    const/16 v19, 0x1

    new-instance v20, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v21

    const-string v22, "security/spota/sepolicy_version"

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v20, v2, v19

    const/16 v19, 0x2

    new-instance v20, Ljava/io/File;

    const-string v21, "sepolicy_version"

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v20, v2, v19

    const/16 v19, 0x3

    const/16 v20, 0x0

    aput-object v20, v2, v19

    .line 109
    .local v2, "SEPOLICY_VERSION_FILE":[Ljava/io/File;
    const-string v19, "GOOGLE_POLICY"

    const-string v20, "selinux.policy_version"

    const-string v21, "Unknown"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 110
    const/16 v19, 0x3

    .line 193
    :goto_0
    return v19

    .line 125
    .end local v8    # "in":Ljava/io/FileInputStream;
    .local v9, "in":Ljava/io/FileInputStream;
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 126
    .end local v3    # "br":Ljava/io/BufferedReader;
    .local v4, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-static {v4}, Lcom/android/server/pm/Revision;->selinux_get_full_version(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v18

    .line 127
    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/Revision;->selinux_get_version(Ljava/lang/String;)J

    move-result-wide v15

    .line 129
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v7, v0, :cond_a

    .line 130
    cmp-long v19, v15, v13

    if-lez v19, :cond_1

    .line 131
    move-wide v13, v15

    .line 133
    :cond_1
    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/Revision;->selinux_get_android_version(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v17

    .line 134
    add-int/lit8 v12, v7, 0x1

    :cond_2
    :goto_1
    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    move-object v3, v4

    .line 156
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :goto_2
    if-eqz v3, :cond_3

    .line 157
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 158
    const/4 v3, 0x0

    .line 160
    :cond_3
    if-eqz v8, :cond_4

    .line 161
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 162
    const/4 v8, 0x0

    .line 168
    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 113
    :cond_5
    aget-object v19, v2, v7

    if-eqz v19, :cond_6

    .line 115
    :try_start_3
    new-instance v9, Ljava/io/FileInputStream;

    aget-object v19, v2, v7

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 117
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    if-nez v7, :cond_0

    .line 118
    :try_start_4
    const-string v19, "persist.security.mdm.policy"

    const-string v20, "0"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 119
    const-string v19, "1"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v19

    if-eqz v19, :cond_0

    .line 120
    add-int/lit8 v12, v7, 0x1

    move-object v8, v9

    .line 171
    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    :cond_6
    :goto_4
    if-eqz v3, :cond_7

    .line 172
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 173
    const/4 v3, 0x0

    .line 175
    :cond_7
    if-eqz v8, :cond_8

    .line 176
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 177
    const/4 v8, 0x0

    .line 183
    :cond_8
    :goto_5
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v12, v0, :cond_9

    .line 184
    invoke-static {}, Lcom/android/server/pm/PolicyVerification;->verifySEAndroidPolicy()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 185
    const/4 v12, 0x2

    .line 186
    const-string v19, "Revision"

    const-string/jumbo v20, "verifySEAndroidPolicy is true !! "

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_6
    move/from16 v19, v12

    .line 193
    goto :goto_0

    .line 136
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :cond_a
    :try_start_6
    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/Revision;->selinux_get_android_version(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 137
    move-object/from16 v0, v17

    invoke-static {v0, v11}, Lcom/android/server/pm/Revision;->selinux_cmp_android_version(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result v5

    .line 140
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_b

    .line 141
    cmp-long v19, v15, v13

    if-lez v19, :cond_2

    .line 142
    add-int/lit8 v12, v7, 0x1

    goto :goto_1

    .line 145
    :cond_b
    add-int/lit8 v12, v7, 0x1

    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    move-object v3, v4

    .line 146
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 149
    :catch_0
    move-exception v6

    .line 150
    .local v6, "e":Ljava/io/FileNotFoundException;
    :goto_7
    const-string v19, "Revision"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "File not found at: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-object v21, v2, v7

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 151
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    .line 152
    .local v6, "e":Ljava/lang/Exception;
    :goto_8
    const-string v19, "Revision"

    const-string v20, "selinux_android_load_priority : Couldn\'t compute selinux_policy_priority "

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 164
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    .line 165
    .local v6, "e":Ljava/io/IOException;
    const-string v19, "Revision"

    const-string v20, "selinux_android_load_priority : Couldn\'t close BufferedReader "

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 179
    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 180
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v19, "Revision"

    const-string v20, "Couldn\'t close BufferedReader or DataInputStream"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 189
    .end local v6    # "e":Ljava/io/IOException;
    :cond_c
    const/4 v12, 0x3

    .line 190
    const-string v19, "Revision"

    const-string/jumbo v20, "verifySEAndroidPolicy is false !! "

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 151
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :catch_4
    move-exception v6

    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    goto :goto_8

    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :catch_5
    move-exception v6

    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    move-object v3, v4

    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    goto :goto_8

    .line 149
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :catch_6
    move-exception v6

    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :catch_7
    move-exception v6

    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    move-object v3, v4

    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    goto :goto_7
.end method

.method private static selinux_cmp_android_version(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "spd_and_version"    # Ljava/lang/String;
    .param p1, "ram_and_version"    # Ljava/lang/String;

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, "cmp_val":I
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    .line 82
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static selinux_compare_spd_ram()I
    .locals 21

    .prologue
    .line 198
    const-wide/16 v11, 0x0

    .line 199
    .local v11, "sepolicy_version_highest":J
    const-wide/16 v13, 0x0

    .line 200
    .local v13, "sepolicy_version_new":J
    const/4 v6, 0x0

    .line 201
    .local v6, "i":I
    const/4 v4, 0x0

    .line 202
    .local v4, "cmp_value":I
    const/4 v2, 0x0

    .line 203
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 204
    .local v7, "in":Ljava/io/FileInputStream;
    const/16 v16, 0x0

    .line 205
    .local v16, "tmp_version":Ljava/lang/String;
    new-instance v15, Ljava/lang/String;

    const-string v17, "SEPF_SPD_XX_0000"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 206
    .local v15, "spd_and_version":Ljava/lang/String;
    new-instance v9, Ljava/lang/String;

    const-string v17, "SEPF_RAM_XX_0000"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 207
    .local v9, "ram_and_version":Ljava/lang/String;
    const/4 v10, 0x0

    .line 209
    .local v10, "selinux_policy_priority":I
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v1, v0, [Ljava/io/File;

    const/16 v17, 0x0

    new-instance v18, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v19

    const-string v20, "security/spota/sepolicy_version"

    invoke-direct/range {v18 .. v20}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v18, v1, v17

    const/16 v17, 0x1

    new-instance v18, Ljava/io/File;

    const-string v19, "sepolicy_version"

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v18, v1, v17

    const/16 v17, 0x2

    const/16 v18, 0x0

    aput-object v18, v1, v17

    .line 215
    .local v1, "SEPOLICY_VERSION_FILE":[Ljava/io/File;
    const-string v17, "GOOGLE_POLICY"

    const-string v18, "selinux.policy_version"

    const-string v19, "Unknown"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 216
    const/16 v17, 0x3

    .line 285
    :goto_0
    return v17

    .line 219
    :cond_0
    :goto_1
    aget-object v17, v1, v6

    if-eqz v17, :cond_7

    .line 221
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    aget-object v17, v1, v6

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .end local v7    # "in":Ljava/io/FileInputStream;
    .local v8, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 223
    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-static {v3}, Lcom/android/server/pm/Revision;->selinux_get_full_version(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v16

    .line 224
    invoke-static/range {v16 .. v16}, Lcom/android/server/pm/Revision;->selinux_get_version(Ljava/lang/String;)J

    move-result-wide v13

    .line 226
    if-nez v6, :cond_5

    .line 227
    cmp-long v17, v13, v11

    if-lez v17, :cond_1

    .line 228
    move-wide v11, v13

    .line 230
    :cond_1
    invoke-static/range {v16 .. v16}, Lcom/android/server/pm/Revision;->selinux_get_android_version(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v15

    .line 231
    add-int/lit8 v10, v6, 0x1

    :cond_2
    :goto_2
    move-object v7, v8

    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v7    # "in":Ljava/io/FileInputStream;
    move-object v2, v3

    .line 250
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :goto_3
    if-eqz v2, :cond_3

    .line 251
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 252
    const/4 v2, 0x0

    .line 254
    :cond_3
    if-eqz v7, :cond_4

    .line 255
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 256
    const/4 v7, 0x0

    .line 261
    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 233
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v7    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    :cond_5
    :try_start_4
    invoke-static/range {v16 .. v16}, Lcom/android/server/pm/Revision;->selinux_get_android_version(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 234
    invoke-static {v15, v9}, Lcom/android/server/pm/Revision;->selinux_cmp_android_version(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v4

    .line 237
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_6

    .line 238
    cmp-long v17, v13, v11

    if-lez v17, :cond_2

    .line 239
    add-int/lit8 v10, v6, 0x1

    goto :goto_2

    .line 242
    :cond_6
    add-int/lit8 v10, v6, 0x1

    move-object v7, v8

    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v7    # "in":Ljava/io/FileInputStream;
    move-object v2, v3

    .line 264
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :cond_7
    if-eqz v2, :cond_8

    .line 265
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 266
    const/4 v2, 0x0

    .line 268
    :cond_8
    if-eqz v7, :cond_9

    .line 269
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 270
    const/4 v7, 0x0

    .line 276
    :cond_9
    :goto_5
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_a

    .line 277
    invoke-static {}, Lcom/android/server/pm/PolicyVerification;->verifySEAndroidPolicy()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 278
    const-string v17, "Revision"

    const-string/jumbo v18, "verifySEAndroidPolicy is true !! "

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_6
    move/from16 v17, v10

    .line 285
    goto :goto_0

    .line 246
    :catch_0
    move-exception v5

    .line 247
    .local v5, "e":Ljava/lang/Exception;
    :goto_7
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 258
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 259
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 272
    .end local v5    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 273
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v17, "Revision"

    const-string v18, "Couldn\'t close BufferedReader or DataInputStream"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 281
    .end local v5    # "e":Ljava/io/IOException;
    :cond_b
    add-int/lit8 v10, v10, 0x1

    .line 282
    const-string v17, "Revision"

    const-string/jumbo v18, "verifySEAndroidPolicy is false !! "

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 246
    .end local v7    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    :catch_3
    move-exception v5

    move-object v7, v8

    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v7    # "in":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v7    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    :catch_4
    move-exception v5

    move-object v7, v8

    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v7    # "in":Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_7
.end method

.method private static selinux_get_android_version(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "and_version":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    const-string v3, "0.0"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 50
    .local v1, "default_version":Ljava/lang/String;
    const/16 v3, 0x5f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 51
    .local v2, "index":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 56
    .end local v1    # "default_version":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 54
    .restart local v1    # "default_version":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 56
    goto :goto_0
.end method

.method private static selinux_get_full_version(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 6
    .param p0, "br"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    const/4 v3, 0x0

    .line 26
    .local v3, "version":[Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    const-string v4, "SEPF_XXX_XX_0000"

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, "default_full_name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 32
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v2    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 37
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Revision"

    const-string v5, "selinux_get_full_version : Couldn\'t extract version name "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .end local v0    # "default_full_name":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0

    .line 34
    .restart local v0    # "default_full_name":Ljava/lang/String;
    .restart local v2    # "line":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 42
    const/4 v4, 0x1

    aget-object v0, v3, v4

    goto :goto_0
.end method

.method private static selinux_get_version(Ljava/lang/String;)J
    .locals 6
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 61
    move-object v3, p0

    .line 62
    .local v3, "line":Ljava/lang/String;
    const-wide/16 v0, 0x0

    .line 64
    .local v0, "default_version":J
    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 65
    .local v2, "index":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 69
    .end local v0    # "default_version":J
    :goto_0
    return-wide v0

    .restart local v0    # "default_version":J
    :cond_0
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    goto :goto_0
.end method
