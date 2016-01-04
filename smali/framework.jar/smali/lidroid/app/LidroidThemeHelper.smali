.class public final Llidroid/app/LidroidThemeHelper;
.super Ljava/lang/Object;
.source "LidroidThemeHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LidroidThemeHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExtraAssets(Landroid/content/res/AssetManager;)V
    .locals 7
    .param p0, "am"    # Landroid/content/res/AssetManager;

    .prologue
    .line 15
    new-instance v3, Ljava/io/File;

    const-string v6, "/system/framework"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    .local v3, "frdir":Ljava/io/File;
    new-instance v6, Llidroid/app/LidroidThemeHelper$1;

    invoke-direct {v6}, Llidroid/app/LidroidThemeHelper$1;-><init>()V

    invoke-virtual {v3, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 25
    .local v1, "apks":[Ljava/io/File;
    move-object v2, v1

    .local v2, "arr$":[Ljava/io/File;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v2, v4

    .line 26
    .local v0, "apk":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 25
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 27
    .end local v0    # "apk":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public static needReloadPreloaded(ILandroid/content/res/Configuration;)Z
    .locals 2
    .param p0, "changes"    # I
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 40
    const/high16 v1, -0x80000000

    and-int/2addr v1, p0

    if-nez v1, :cond_0

    .line 41
    const/4 v1, 0x0

    .line 44
    :goto_0
    return v1

    .line 43
    :cond_0
    iget-object v1, p1, Landroid/content/res/Configuration;->extra:Llidroid/content/res/ExtraConfiguration;

    iget v0, v1, Llidroid/content/res/ExtraConfiguration;->themeChangedFlags:I

    .line 44
    .local v0, "flags":I
    invoke-static {v0}, Llidroid/content/res/ExtraConfiguration;->needReloadPreloaded(I)Z

    move-result v1

    goto :goto_0
.end method

.method public static needRestartActivity(Ljava/lang/String;ILandroid/content/res/Configuration;)Z
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "changes"    # I
    .param p2, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 31
    const/high16 v1, -0x80000000

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    .line 32
    const/4 v1, 0x0

    .line 35
    :goto_0
    return v1

    .line 34
    :cond_0
    iget-object v1, p2, Landroid/content/res/Configuration;->extra:Llidroid/content/res/ExtraConfiguration;

    iget v0, v1, Llidroid/content/res/ExtraConfiguration;->themeChangedFlags:I

    .line 35
    .local v0, "flags":I
    invoke-static {p0, v0}, Llidroid/content/res/ExtraConfiguration;->needRestartPackage(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0
.end method
