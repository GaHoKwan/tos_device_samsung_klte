.class public final Llidroid/content/res/ThemeResourcesSystem;
.super Llidroid/content/res/ThemeResources;
.source "ThemeResourcesSystem.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ThemeResourcesSystem"

.field private static sInstance:Llidroid/content/res/ThemeResourcesSystem;


# instance fields
.field private mAnimZipFile:Llidroid/content/res/ThemeZipFile;

.field private mIconZipFile:Llidroid/content/res/ThemeZipFile;

.field private mLidroidZipFile:Llidroid/content/res/ThemeZipFile;

.field private mSamsungZipFile:Llidroid/content/res/ThemeZipFile;


# direct methods
.method protected constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v1, 0x1

    .line 29
    const-string v0, "framework-res"

    invoke-direct {p0, p1, v0}, Llidroid/content/res/ThemeResources;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 31
    const-string/jumbo v0, "twframework-res"

    invoke-static {v0, p1, v1}, Llidroid/content/res/ThemeZipFile;->getThemeZipFile(Ljava/lang/String;Landroid/content/res/Resources;Z)Llidroid/content/res/ThemeZipFile;

    move-result-object v0

    iput-object v0, p0, Llidroid/content/res/ThemeResourcesSystem;->mSamsungZipFile:Llidroid/content/res/ThemeZipFile;

    .line 32
    const-string v0, "lidroid-res"

    invoke-static {v0, p1, v1}, Llidroid/content/res/ThemeZipFile;->getThemeZipFile(Ljava/lang/String;Landroid/content/res/Resources;Z)Llidroid/content/res/ThemeZipFile;

    move-result-object v0

    iput-object v0, p0, Llidroid/content/res/ThemeResourcesSystem;->mLidroidZipFile:Llidroid/content/res/ThemeZipFile;

    .line 33
    const-string v0, "icons"

    invoke-static {v0, p1, v1}, Llidroid/content/res/ThemeZipFile;->getThemeZipFile(Ljava/lang/String;Landroid/content/res/Resources;Z)Llidroid/content/res/ThemeZipFile;

    move-result-object v0

    iput-object v0, p0, Llidroid/content/res/ThemeResourcesSystem;->mIconZipFile:Llidroid/content/res/ThemeZipFile;

    .line 35
    const-string v0, "anim"

    invoke-static {v0, p1, v1}, Llidroid/content/res/ThemeZipFile;->getThemeZipFile(Ljava/lang/String;Landroid/content/res/Resources;Z)Llidroid/content/res/ThemeZipFile;

    move-result-object v0

    iput-object v0, p0, Llidroid/content/res/ThemeResourcesSystem;->mAnimZipFile:Llidroid/content/res/ThemeZipFile;

    .line 37
    iget-object v0, p0, Llidroid/content/res/ThemeResourcesSystem;->mSamsungZipFile:Llidroid/content/res/ThemeZipFile;

    invoke-virtual {v0}, Llidroid/content/res/ThemeZipFile;->checkUpdate()Z

    .line 38
    iget-object v0, p0, Llidroid/content/res/ThemeResourcesSystem;->mLidroidZipFile:Llidroid/content/res/ThemeZipFile;

    invoke-virtual {v0}, Llidroid/content/res/ThemeZipFile;->checkUpdate()Z

    .line 39
    iget-object v0, p0, Llidroid/content/res/ThemeResourcesSystem;->mIconZipFile:Llidroid/content/res/ThemeZipFile;

    invoke-virtual {v0}, Llidroid/content/res/ThemeZipFile;->checkUpdate()Z

    .line 40
    iget-object v0, p0, Llidroid/content/res/ThemeResourcesSystem;->mAnimZipFile:Llidroid/content/res/ThemeZipFile;

    invoke-virtual {v0}, Llidroid/content/res/ThemeZipFile;->checkUpdate()Z

    .line 41
    return-void
.end method

.method public static getTopLevelThemeResources(Landroid/content/res/Resources;)Llidroid/content/res/ThemeResourcesSystem;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 44
    sget-object v0, Llidroid/content/res/ThemeResourcesSystem;->sInstance:Llidroid/content/res/ThemeResourcesSystem;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Llidroid/content/res/ThemeResourcesSystem;

    invoke-direct {v0, p0}, Llidroid/content/res/ThemeResourcesSystem;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Llidroid/content/res/ThemeResourcesSystem;->sInstance:Llidroid/content/res/ThemeResourcesSystem;

    .line 48
    :cond_0
    sget-object v0, Llidroid/content/res/ThemeResourcesSystem;->sInstance:Llidroid/content/res/ThemeResourcesSystem;

    return-object v0
.end method


# virtual methods
.method public checkAnimUpdate()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Llidroid/content/res/ThemeResourcesSystem;->mAnimZipFile:Llidroid/content/res/ThemeZipFile;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Llidroid/content/res/ThemeResourcesSystem;->mAnimZipFile:Llidroid/content/res/ThemeZipFile;

    invoke-virtual {v0}, Llidroid/content/res/ThemeZipFile;->checkUpdate()Z

    move-result v0

    .line 122
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkIconUpdate()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Llidroid/content/res/ThemeResourcesSystem;->mIconZipFile:Llidroid/content/res/ThemeZipFile;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Llidroid/content/res/ThemeResourcesSystem;->mIconZipFile:Llidroid/content/res/ThemeZipFile;

    invoke-virtual {v0}, Llidroid/content/res/ThemeZipFile;->checkUpdate()Z

    move-result v0

    .line 114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkUpdate()Z
    .locals 2

    .prologue
    .line 96
    const/4 v0, 0x1

    .line 97
    .local v0, "retval":Z
    iget-object v1, p0, Llidroid/content/res/ThemeResourcesSystem;->mSamsungZipFile:Llidroid/content/res/ThemeZipFile;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Llidroid/content/res/ThemeResourcesSystem;->mSamsungZipFile:Llidroid/content/res/ThemeZipFile;

    invoke-virtual {v1}, Llidroid/content/res/ThemeZipFile;->checkUpdate()Z

    move-result v1

    and-int/2addr v0, v1

    .line 100
    :cond_0
    iget-object v1, p0, Llidroid/content/res/ThemeResourcesSystem;->mLidroidZipFile:Llidroid/content/res/ThemeZipFile;

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Llidroid/content/res/ThemeResourcesSystem;->mLidroidZipFile:Llidroid/content/res/ThemeZipFile;

    invoke-virtual {v1}, Llidroid/content/res/ThemeZipFile;->checkUpdate()Z

    move-result v1

    and-int/2addr v0, v1

    .line 103
    :cond_1
    invoke-virtual {p0}, Llidroid/content/res/ThemeResourcesSystem;->checkIconUpdate()Z

    move-result v1

    and-int/2addr v0, v1

    .line 104
    invoke-virtual {p0}, Llidroid/content/res/ThemeResourcesSystem;->checkAnimUpdate()Z

    move-result v1

    and-int/2addr v0, v1

    .line 106
    invoke-super {p0}, Llidroid/content/res/ThemeResources;->checkUpdate()Z

    move-result v1

    and-int/2addr v0, v1

    return v0
.end method

.method public getIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 55
    .local v3, "themeFileInfo":Llidroid/content/res/ThemeZipFile$ThemeFileInfo;
    const/4 v1, 0x0

    .line 57
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    :try_start_0
    invoke-virtual {p0, p2}, Llidroid/content/res/ThemeResourcesSystem;->getIconStream(Ljava/lang/String;)Llidroid/content/res/ThemeZipFile$ThemeFileInfo;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 58
    if-nez v3, :cond_1

    .line 75
    if-eqz v3, :cond_0

    .line 76
    :try_start_1
    iget-object v5, v3, Llidroid/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 84
    :cond_0
    :goto_0
    return-object v4

    .line 62
    :cond_1
    :try_start_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    :try_start_3
    iget v4, v3, Llidroid/content/res/ThemeZipFile$ThemeFileInfo;->mDensity:I

    if-lez v4, :cond_2

    .line 64
    iget v4, v3, Llidroid/content/res/ThemeZipFile$ThemeFileInfo;->mDensity:I

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 67
    :cond_2
    iget-object v4, v3, Llidroid/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 75
    if-eqz v3, :cond_3

    .line 76
    :try_start_4
    iget-object v4, v3, Llidroid/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    move-object v1, v2

    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_4
    :goto_1
    move-object v4, v0

    .line 84
    goto :goto_0

    .line 79
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v4

    move-object v1, v2

    .line 82
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    goto :goto_1

    .line 70
    :catch_1
    move-exception v4

    .line 75
    :goto_2
    if-eqz v3, :cond_4

    .line 76
    :try_start_5
    iget-object v4, v3, Llidroid/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 79
    :catch_2
    move-exception v4

    goto :goto_1

    .line 74
    :catchall_0
    move-exception v4

    .line 75
    :goto_3
    if-eqz v3, :cond_5

    .line 76
    :try_start_6
    iget-object v5, v3, Llidroid/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 81
    :cond_5
    :goto_4
    throw v4

    .line 79
    :catch_3
    move-exception v5

    goto :goto_4

    .line 74
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    goto :goto_3

    .line 70
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_4
    move-exception v4

    move-object v1, v2

    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    goto :goto_2

    .line 79
    :catch_5
    move-exception v5

    goto :goto_0
.end method

.method public getIconStream(Ljava/lang/String;)Llidroid/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "relativeFilePath"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Llidroid/content/res/ThemeResourcesSystem;->mIconZipFile:Llidroid/content/res/ThemeZipFile;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Llidroid/content/res/ThemeResourcesSystem;->mIconZipFile:Llidroid/content/res/ThemeZipFile;

    invoke-virtual {v0, p1}, Llidroid/content/res/ThemeZipFile;->getInputStream(Ljava/lang/String;)Llidroid/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getThemeCharSequence(ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/high16 v2, -0x1000000

    .line 158
    and-int v0, p1, v2

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_0

    .line 159
    invoke-super {p0, p1, p2}, Llidroid/content/res/ThemeResources;->getThemeCharSequence(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    .line 161
    :cond_0
    and-int v0, p1, v2

    const/high16 v1, 0x2000000

    if-ne v0, v1, :cond_1

    .line 162
    iget-object v0, p0, Llidroid/content/res/ThemeResourcesSystem;->mSamsungZipFile:Llidroid/content/res/ThemeZipFile;

    invoke-virtual {v0, p1, p2}, Llidroid/content/res/ThemeZipFile;->getThemeCharSequence(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 164
    :cond_1
    and-int v0, p1, v2

    const/high16 v1, 0x5000000

    if-ne v0, v1, :cond_2

    .line 165
    iget-object v0, p0, Llidroid/content/res/ThemeResourcesSystem;->mLidroidZipFile:Llidroid/content/res/ThemeZipFile;

    invoke-virtual {v0, p1, p2}, Llidroid/content/res/ThemeZipFile;->getThemeCharSequence(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 168
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getThemeFileStream(ILjava/lang/String;Ljava/lang/String;)Llidroid/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "cookieType"    # I
    .param p2, "relativeFilePath"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 126
    const-string v0, "anim"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llidroid/content/res/ThemeResourcesSystem;->mAnimZipFile:Llidroid/content/res/ThemeZipFile;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Llidroid/content/res/ThemeResourcesSystem;->mAnimZipFile:Llidroid/content/res/ThemeZipFile;

    invoke-virtual {v0, p2}, Llidroid/content/res/ThemeZipFile;->getInputStream(Ljava/lang/String;)Llidroid/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    .line 130
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 131
    invoke-virtual {p0, p2}, Llidroid/content/res/ThemeResourcesSystem;->getThemeFileStream(Ljava/lang/String;)Llidroid/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 134
    iget-object v0, p0, Llidroid/content/res/ThemeResourcesSystem;->mSamsungZipFile:Llidroid/content/res/ThemeZipFile;

    invoke-virtual {v0, p2}, Llidroid/content/res/ThemeZipFile;->getInputStream(Ljava/lang/String;)Llidroid/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 137
    iget-object v0, p0, Llidroid/content/res/ThemeResourcesSystem;->mLidroidZipFile:Llidroid/content/res/ThemeZipFile;

    invoke-virtual {v0, p2}, Llidroid/content/res/ThemeZipFile;->getInputStream(Ljava/lang/String;)Llidroid/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getThemeInt(ILjava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/high16 v2, -0x1000000

    .line 144
    and-int v0, p1, v2

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_0

    .line 145
    invoke-super {p0, p1, p2}, Llidroid/content/res/ThemeResources;->getThemeInt(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    .line 147
    :cond_0
    and-int v0, p1, v2

    const/high16 v1, 0x2000000

    if-ne v0, v1, :cond_1

    .line 148
    iget-object v0, p0, Llidroid/content/res/ThemeResourcesSystem;->mSamsungZipFile:Llidroid/content/res/ThemeZipFile;

    invoke-virtual {v0, p1, p2}, Llidroid/content/res/ThemeZipFile;->getThemeInt(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 150
    :cond_1
    and-int v0, p1, v2

    const/high16 v1, 0x5000000

    if-ne v0, v1, :cond_2

    .line 151
    iget-object v0, p0, Llidroid/content/res/ThemeResourcesSystem;->mLidroidZipFile:Llidroid/content/res/ThemeZipFile;

    invoke-virtual {v0, p1, p2}, Llidroid/content/res/ThemeZipFile;->getThemeInt(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValues()Z
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Llidroid/content/res/ThemeResources;->hasValues()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Llidroid/content/res/ThemeResourcesSystem;->mSamsungZipFile:Llidroid/content/res/ThemeZipFile;

    invoke-virtual {v0}, Llidroid/content/res/ThemeZipFile;->hasValues()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Llidroid/content/res/ThemeResourcesSystem;->mLidroidZipFile:Llidroid/content/res/ThemeZipFile;

    invoke-virtual {v0}, Llidroid/content/res/ThemeZipFile;->hasValues()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
