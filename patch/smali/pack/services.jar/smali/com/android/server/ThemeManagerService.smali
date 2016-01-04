.class public Lcom/android/server/ThemeManagerService;
.super Llidroid/content/res/IThemeManagerService$Stub;
.source "ThemeManagerService.java"


# static fields
.field private static final DBG:Z = true

.field public static final ICONS_DIR:Ljava/lang/String; = "/data/theme/customized_icons"

.field private static final TAG:Ljava/lang/String; = "ThemeManagerService"

.field public static final THEME_DIR:Ljava/lang/String; = "/data/theme"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Llidroid/content/res/IThemeManagerService$Stub;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/server/ThemeManagerService;->mContext:Landroid/content/Context;

    .line 26
    invoke-static {}, Lcom/android/server/ThemeManagerService;->createThemeDirs()V

    .line 27
    return-void
.end method

.method private static createIconDir()V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/theme/customized_icons"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "themeDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    invoke-static {v0}, Lcom/android/server/ThemeManagerService;->setDirPermission(Ljava/io/File;)V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const-string v1, "ThemeManagerService"

    const-string v2, "create /data/theme/customized_icons failed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static createThemeDirs()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/theme"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "themeDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    invoke-static {v0}, Lcom/android/server/ThemeManagerService;->setDirPermission(Ljava/io/File;)V

    .line 48
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/ThemeManagerService;->createIconDir()V

    .line 49
    return-void

    .line 44
    :cond_1
    const-string v1, "ThemeManagerService"

    const-string v2, "create /data/themefailed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static deleteDir(Ljava/lang/String;)V
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 99
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 102
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 104
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 105
    .local v2, "files":[Ljava/io/File;
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 107
    .local v5, "subFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 108
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/ThemeManagerService;->deleteDir(Ljava/lang/String;)V

    .line 105
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 113
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "subFile":Ljava/io/File;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 115
    :cond_2
    return-void
.end method

.method private static iconsDirExists()Z
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/theme/customized_icons"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private static setDirPermission(Ljava/io/File;)V
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 30
    if-eqz p0, :cond_0

    .line 31
    invoke-virtual {p0, v1, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 32
    invoke-virtual {p0, v1, v0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 33
    invoke-virtual {p0, v1, v0}, Ljava/io/File;->setWritable(ZZ)Z

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public clearCustomizedIcon()V
    .locals 1

    .prologue
    .line 95
    const-string v0, "/data/theme/customized_icons"

    invoke-static {v0}, Lcom/android/server/ThemeManagerService;->deleteDir(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public saveCustomizedIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 68
    invoke-static {}, Lcom/android/server/ThemeManagerService;->iconsDirExists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/android/server/ThemeManagerService;->createIconDir()V

    .line 70
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/theme/customized_icons"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "pathName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 75
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p2, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 83
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 84
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    :goto_0
    invoke-virtual {v1, v8, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 91
    invoke-virtual {v1, v8, v7}, Ljava/io/File;->setWritable(ZZ)Z

    move-object v2, v3

    .line 92
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outputStream":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v5

    goto :goto_0
.end method
