.class public final Llidroid/content/res/ThemeZipFile;
.super Ljava/lang/Object;
.source "ThemeZipFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llidroid/content/res/ThemeZipFile$ThemeFileInfo;
    }
.end annotation


# static fields
.field private static final BOOLS:Ljava/lang/String; = "bools"

.field private static final COLORS:Ljava/lang/String; = "colors"

.field private static final DBG:Z = false

.field private static final DIMS:Ljava/lang/String; = "dimens"

.field private static final FRAMES:[Ljava/lang/String;

.field private static final STRINGS:Ljava/lang/String; = "strs"

.field private static final TAG:Ljava/lang/String; = "ThemeZipFile"

.field private static final THEME_VALUE_FILE:Ljava/lang/String; = "theme_%s.xml"

.field private static sComponentMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDensities:[I

.field private static final sDensity:I

.field private static sThemePathes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBools:Ljava/util/Properties;

.field private mColors:Ljava/util/Properties;

.field private mDimens:Ljava/util/Properties;

.field private mIsSystem:Z

.field private mLastModifyTime:J

.field mPackageName:Ljava/lang/String;

.field mPath:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mStrings:Ljava/util/Properties;

.field private mSysBools:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Properties;",
            ">;"
        }
    .end annotation
.end field

.field private mSysColors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Properties;",
            ">;"
        }
    .end annotation
.end field

.field private mSysDimens:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Properties;",
            ">;"
        }
    .end annotation
.end field

.field private mSysStrings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Properties;",
            ">;"
        }
    .end annotation
.end field

.field private mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Llidroid/content/res/ThemeZipFile;->sDensity:I

    .line 31
    sget v0, Llidroid/content/res/ThemeZipFile;->sDensity:I

    invoke-static {v0}, Llidroid/content/res/DisplayUtils;->getBestDensityOrder(I)[I

    move-result-object v0

    sput-object v0, Llidroid/content/res/ThemeZipFile;->sDensities:[I

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "touchwiz"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "lidroid"

    aput-object v2, v0, v1

    sput-object v0, Llidroid/content/res/ThemeZipFile;->FRAMES:[Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Llidroid/content/res/ThemeZipFile;->sComponentMaps:Ljava/util/HashMap;

    .line 59
    sget-object v0, Llidroid/content/res/ThemeZipFile;->sComponentMaps:Ljava/util/HashMap;

    const-string v1, "framework-res"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Llidroid/content/res/ThemeZipFile;->sComponentMaps:Ljava/util/HashMap;

    const-string/jumbo v1, "twframework-res"

    const-string/jumbo v2, "touchwiz"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Llidroid/content/res/ThemeZipFile;->sComponentMaps:Ljava/util/HashMap;

    const-string v1, "lidroid-res"

    const-string v2, "lidroid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Llidroid/content/res/ThemeZipFile;->sThemePathes:Ljava/util/ArrayList;

    .line 64
    sget-object v0, Llidroid/content/res/ThemeZipFile;->sThemePathes:Ljava/util/ArrayList;

    const-string v1, "/data/theme"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Llidroid/content/res/ThemeZipFile;->sThemePathes:Ljava/util/ArrayList;

    const-string v1, "/system/theme"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "zipFilePath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Llidroid/content/res/ThemeZipFile;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Z)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Z)V
    .locals 2
    .param p1, "zipFilePath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "isSystem"    # Z

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Llidroid/content/res/ThemeZipFile;->mColors:Ljava/util/Properties;

    .line 35
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Llidroid/content/res/ThemeZipFile;->mBools:Ljava/util/Properties;

    .line 36
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Llidroid/content/res/ThemeZipFile;->mDimens:Ljava/util/Properties;

    .line 37
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Llidroid/content/res/ThemeZipFile;->mStrings:Ljava/util/Properties;

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Llidroid/content/res/ThemeZipFile;->mSysColors:Landroid/util/SparseArray;

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Llidroid/content/res/ThemeZipFile;->mSysBools:Landroid/util/SparseArray;

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Llidroid/content/res/ThemeZipFile;->mSysDimens:Landroid/util/SparseArray;

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Llidroid/content/res/ThemeZipFile;->mSysStrings:Landroid/util/SparseArray;

    .line 50
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Llidroid/content/res/ThemeZipFile;->mLastModifyTime:J

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Llidroid/content/res/ThemeZipFile;->mIsSystem:Z

    .line 75
    iput-object p3, p0, Llidroid/content/res/ThemeZipFile;->mResources:Landroid/content/res/Resources;

    .line 76
    iput-object p2, p0, Llidroid/content/res/ThemeZipFile;->mPackageName:Ljava/lang/String;

    .line 77
    invoke-static {p2}, Llidroid/content/res/ThemeZipFile;->getComponentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llidroid/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    .line 79
    iput-boolean p4, p0, Llidroid/content/res/ThemeZipFile;->mIsSystem:Z

    .line 80
    return-void
.end method

.method private static checkComponentPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "componentName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 449
    sget-object v3, Llidroid/content/res/ThemeZipFile;->sThemePathes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 450
    .local v0, "dir":Ljava/lang/String;
    const-string v3, "%s/%s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object p0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 451
    .local v2, "path":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 461
    .end local v0    # "dir":Ljava/lang/String;
    .end local v2    # "path":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 455
    .restart local v0    # "dir":Ljava/lang/String;
    .restart local v2    # "path":Ljava/lang/String;
    :cond_1
    const-string v3, "%s/%s.zip"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object p0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 456
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 461
    .end local v0    # "dir":Ljava/lang/String;
    .end local v2    # "path":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Llidroid/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    .line 84
    :try_start_0
    iget-object v0, p0, Llidroid/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Llidroid/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    .line 89
    :cond_0
    iget-object v0, p0, Llidroid/content/res/ThemeZipFile;->mColors:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clear()V

    .line 90
    iget-object v0, p0, Llidroid/content/res/ThemeZipFile;->mBools:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clear()V

    .line 91
    iget-object v0, p0, Llidroid/content/res/ThemeZipFile;->mDimens:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clear()V

    .line 92
    iget-object v0, p0, Llidroid/content/res/ThemeZipFile;->mStrings:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clear()V

    .line 94
    iget-object v0, p0, Llidroid/content/res/ThemeZipFile;->mSysColors:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Llidroid/content/res/ThemeZipFile;->clearSparseArray(Landroid/util/SparseArray;)V

    .line 95
    iget-object v0, p0, Llidroid/content/res/ThemeZipFile;->mSysBools:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Llidroid/content/res/ThemeZipFile;->clearSparseArray(Landroid/util/SparseArray;)V

    .line 96
    iget-object v0, p0, Llidroid/content/res/ThemeZipFile;->mSysDimens:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Llidroid/content/res/ThemeZipFile;->clearSparseArray(Landroid/util/SparseArray;)V

    .line 97
    iget-object v0, p0, Llidroid/content/res/ThemeZipFile;->mSysStrings:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Llidroid/content/res/ThemeZipFile;->clearSparseArray(Landroid/util/SparseArray;)V

    .line 98
    return-void

    .line 84
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private clearSparseArray(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Properties;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Properties;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 102
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 103
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Properties;

    .line 104
    .local v1, "props":Ljava/util/Properties;
    invoke-virtual {v1}, Ljava/util/Properties;->clear()V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "props":Ljava/util/Properties;
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 108
    return-void
.end method

.method private static floatToComplex(F)I
    .locals 11
    .param p0, "value"    # F

    .prologue
    const-wide/16 v9, 0x0

    .line 551
    const/4 v5, 0x0

    .line 552
    .local v5, "ret":I
    const/4 v7, 0x0

    cmpg-float v7, p0, v7

    if-gez v7, :cond_2

    const/4 v3, 0x1

    .line 553
    .local v3, "neg":Z
    :goto_0
    if-eqz v3, :cond_0

    .line 554
    neg-float p0, p0

    .line 555
    :cond_0
    const/high16 v7, 0x4b000000    # 8388608.0f

    mul-float/2addr v7, p0

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-long v0, v7

    .line 558
    .local v0, "bits":J
    const-wide/32 v7, 0x7fffff

    and-long/2addr v7, v0

    cmp-long v7, v7, v9

    if-nez v7, :cond_3

    .line 559
    const/4 v4, 0x0

    .line 560
    .local v4, "radix":I
    const/16 v6, 0x17

    .line 575
    .local v6, "shift":I
    :goto_1
    shr-long v7, v0, v6

    const-wide/32 v9, 0xffffff

    and-long/2addr v7, v9

    long-to-int v2, v7

    .line 576
    .local v2, "mantissa":I
    if-eqz v3, :cond_1

    .line 577
    neg-int v7, v2

    const v8, 0xffffff

    and-int v2, v7, v8

    .line 579
    :cond_1
    shl-int/lit8 v7, v4, 0x4

    shl-int/lit8 v8, v2, 0x8

    or-int/2addr v7, v8

    or-int/2addr v5, v7

    .line 581
    return v5

    .line 552
    .end local v0    # "bits":J
    .end local v2    # "mantissa":I
    .end local v3    # "neg":Z
    .end local v4    # "radix":I
    .end local v6    # "shift":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 561
    .restart local v0    # "bits":J
    .restart local v3    # "neg":Z
    :cond_3
    const-wide/32 v7, -0x800000

    and-long/2addr v7, v0

    cmp-long v7, v7, v9

    if-nez v7, :cond_4

    .line 562
    const/4 v4, 0x3

    .line 563
    .restart local v4    # "radix":I
    const/4 v6, 0x0

    .restart local v6    # "shift":I
    goto :goto_1

    .line 564
    .end local v4    # "radix":I
    .end local v6    # "shift":I
    :cond_4
    const-wide/32 v7, -0x80000000

    and-long/2addr v7, v0

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    .line 565
    const/4 v4, 0x2

    .line 566
    .restart local v4    # "radix":I
    const/16 v6, 0x8

    .restart local v6    # "shift":I
    goto :goto_1

    .line 567
    .end local v4    # "radix":I
    .end local v6    # "shift":I
    :cond_5
    const-wide v7, -0x8000000000L

    and-long/2addr v7, v0

    cmp-long v7, v7, v9

    if-nez v7, :cond_6

    .line 568
    const/4 v4, 0x1

    .line 569
    .restart local v4    # "radix":I
    const/16 v6, 0x10

    .restart local v6    # "shift":I
    goto :goto_1

    .line 571
    .end local v4    # "radix":I
    .end local v6    # "shift":I
    :cond_6
    const/4 v4, 0x0

    .line 572
    .restart local v4    # "radix":I
    const/16 v6, 0x17

    .restart local v6    # "shift":I
    goto :goto_1
.end method

.method private static getComponentPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "componentName"    # Ljava/lang/String;

    .prologue
    .line 465
    invoke-static {p0}, Llidroid/content/res/ThemeZipFile;->checkComponentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, "path":Ljava/lang/String;
    if-nez v1, :cond_0

    sget-object v2, Llidroid/content/res/ThemeZipFile;->sComponentMaps:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    sget-object v2, Llidroid/content/res/ThemeZipFile;->sComponentMaps:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 468
    .local v0, "mappedComponentName":Ljava/lang/String;
    invoke-static {v0}, Llidroid/content/res/ThemeZipFile;->checkComponentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 471
    .end local v0    # "mappedComponentName":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private static getFrameKey(Ljava/lang/String;)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 240
    const-string v0, "android"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 245
    :goto_0
    return v0

    .line 241
    :cond_0
    const-string/jumbo v0, "touchwiz"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 243
    :cond_1
    const-string v0, "lidroid"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    .line 245
    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method protected static getThemeZipFile(Ljava/lang/String;Landroid/content/res/Resources;)Llidroid/content/res/ThemeZipFile;
    .locals 2
    .param p0, "componentName"    # Ljava/lang/String;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 475
    new-instance v0, Llidroid/content/res/ThemeZipFile;

    invoke-static {p0}, Llidroid/content/res/ThemeZipFile;->getComponentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Llidroid/content/res/ThemeZipFile;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method protected static getThemeZipFile(Ljava/lang/String;Landroid/content/res/Resources;Z)Llidroid/content/res/ThemeZipFile;
    .locals 2
    .param p0, "componentName"    # Ljava/lang/String;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "isSystem"    # Z

    .prologue
    .line 480
    new-instance v0, Llidroid/content/res/ThemeZipFile;

    invoke-static {p0}, Llidroid/content/res/ThemeZipFile;->getComponentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Llidroid/content/res/ThemeZipFile;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Z)V

    return-object v0
.end method

.method private static getValueFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 249
    const-string/jumbo v0, "theme_%s.xml"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getZipInputStream(Ljava/lang/String;)Llidroid/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 6
    .param p1, "relativeFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 429
    invoke-direct {p0}, Llidroid/content/res/ThemeZipFile;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-object v1

    .line 433
    :cond_1
    const/4 v0, 0x0

    .line 435
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    :try_start_0
    iget-object v2, p0, Llidroid/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v2, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 436
    if-eqz v0, :cond_0

    .line 438
    new-instance v2, Llidroid/content/res/ThemeZipFile$ThemeFileInfo;

    iget-object v3, p0, Llidroid/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v3, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Llidroid/content/res/ThemeZipFile$ThemeFileInfo;-><init>(Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 441
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private isValid()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Llidroid/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadProperties(Ljava/util/Properties;Ljava/lang/String;)Z
    .locals 6
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "xml"    # Ljava/lang/String;

    .prologue
    .line 253
    const/4 v2, 0x0

    .line 254
    .local v2, "is":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 257
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    :try_start_0
    iget-object v4, p0, Llidroid/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v4, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_0

    .line 261
    iget-object v4, p0, Llidroid/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v4, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 262
    new-instance v3, Llidroid/io/UnicodeInputStream;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Llidroid/io/UnicodeInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    .end local v2    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p1, v3}, Ljava/util/Properties;->loadFromXML(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 272
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :cond_0
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 275
    :cond_1
    :goto_0
    const/4 v4, 0x1

    :cond_2
    :goto_1
    return v4

    .line 266
    :catch_0
    move-exception v1

    .line 267
    .local v1, "ex":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 269
    const/4 v4, 0x0

    .line 272
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_1

    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_4
    throw v4

    :catch_2
    move-exception v4

    goto :goto_0

    :catch_3
    move-exception v5

    goto :goto_4

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 266
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_2
.end method

.method private loadThemeValues()V
    .locals 7

    .prologue
    .line 158
    invoke-direct {p0}, Llidroid/content/res/ThemeZipFile;->isValid()Z

    move-result v5

    if-nez v5, :cond_1

    .line 237
    :cond_0
    return-void

    .line 162
    :cond_1
    iget-object v5, p0, Llidroid/content/res/ThemeZipFile;->mColors:Ljava/util/Properties;

    const-string v6, "colors"

    invoke-static {v6}, Llidroid/content/res/ThemeZipFile;->getValueFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Llidroid/content/res/ThemeZipFile;->loadProperties(Ljava/util/Properties;Ljava/lang/String;)Z

    .line 163
    iget-object v5, p0, Llidroid/content/res/ThemeZipFile;->mBools:Ljava/util/Properties;

    const-string v6, "bools"

    invoke-static {v6}, Llidroid/content/res/ThemeZipFile;->getValueFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Llidroid/content/res/ThemeZipFile;->loadProperties(Ljava/util/Properties;Ljava/lang/String;)Z

    .line 164
    iget-object v5, p0, Llidroid/content/res/ThemeZipFile;->mDimens:Ljava/util/Properties;

    const-string v6, "dimens"

    invoke-static {v6}, Llidroid/content/res/ThemeZipFile;->getValueFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Llidroid/content/res/ThemeZipFile;->loadProperties(Ljava/util/Properties;Ljava/lang/String;)Z

    .line 165
    iget-object v5, p0, Llidroid/content/res/ThemeZipFile;->mStrings:Ljava/util/Properties;

    const-string/jumbo v6, "strs"

    invoke-static {v6}, Llidroid/content/res/ThemeZipFile;->getValueFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Llidroid/content/res/ThemeZipFile;->loadProperties(Ljava/util/Properties;Ljava/lang/String;)Z

    .line 167
    iget-boolean v5, p0, Llidroid/content/res/ThemeZipFile;->mIsSystem:Z

    if-nez v5, :cond_0

    .line 168
    sget-object v0, Llidroid/content/res/ThemeZipFile;->FRAMES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 169
    .local v1, "frame":Ljava/lang/String;
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 171
    .local v4, "props":Ljava/util/Properties;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "colors"

    invoke-static {v6}, Llidroid/content/res/ThemeZipFile;->getValueFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Llidroid/content/res/ThemeZipFile;->loadProperties(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 172
    iget-object v5, p0, Llidroid/content/res/ThemeZipFile;->mSysColors:Landroid/util/SparseArray;

    invoke-static {v1}, Llidroid/content/res/ThemeZipFile;->getFrameKey(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 175
    :cond_2
    new-instance v4, Ljava/util/Properties;

    .end local v4    # "props":Ljava/util/Properties;
    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 176
    .restart local v4    # "props":Ljava/util/Properties;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "bools"

    invoke-static {v6}, Llidroid/content/res/ThemeZipFile;->getValueFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Llidroid/content/res/ThemeZipFile;->loadProperties(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 177
    iget-object v5, p0, Llidroid/content/res/ThemeZipFile;->mSysBools:Landroid/util/SparseArray;

    invoke-static {v1}, Llidroid/content/res/ThemeZipFile;->getFrameKey(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 180
    :cond_3
    new-instance v4, Ljava/util/Properties;

    .end local v4    # "props":Ljava/util/Properties;
    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 181
    .restart local v4    # "props":Ljava/util/Properties;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dimens"

    invoke-static {v6}, Llidroid/content/res/ThemeZipFile;->getValueFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Llidroid/content/res/ThemeZipFile;->loadProperties(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 182
    iget-object v5, p0, Llidroid/content/res/ThemeZipFile;->mSysDimens:Landroid/util/SparseArray;

    invoke-static {v1}, Llidroid/content/res/ThemeZipFile;->getFrameKey(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 185
    :cond_4
    new-instance v4, Ljava/util/Properties;

    .end local v4    # "props":Ljava/util/Properties;
    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 186
    .restart local v4    # "props":Ljava/util/Properties;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "strs"

    invoke-static {v6}, Llidroid/content/res/ThemeZipFile;->getValueFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Llidroid/content/res/ThemeZipFile;->loadProperties(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 187
    iget-object v5, p0, Llidroid/content/res/ThemeZipFile;->mSysStrings:Landroid/util/SparseArray;

    invoke-static {v1}, Llidroid/content/res/ThemeZipFile;->getFrameKey(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 168
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method private openZipFile()V
    .locals 6

    .prologue
    .line 112
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Llidroid/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Llidroid/content/res/ThemeZipFile;->mLastModifyTime:J

    .line 114
    iget-wide v2, p0, Llidroid/content/res/ThemeZipFile;->mLastModifyTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 116
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Llidroid/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseDimension(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 15
    .param p0, "dimension"    # Ljava/lang/String;

    .prologue
    const/16 v14, 0x39

    const/16 v13, 0x30

    const/4 v12, -0x3

    .line 498
    const/4 v6, -0x4

    .line 499
    .local v6, "intPos":I
    const/4 v3, -0x3

    .line 500
    .local v3, "dotPos":I
    const/4 v5, -0x2

    .line 501
    .local v5, "fractionPos":I
    const/4 v8, -0x1

    .line 502
    .local v8, "unitPos":I
    const/4 v7, 0x0

    .line 506
    .local v7, "n":I
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v7, v11, :cond_4

    .line 507
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 508
    .local v0, "c":C
    const/4 v11, -0x4

    if-ne v6, v11, :cond_0

    if-lt v0, v13, :cond_0

    if-gt v0, v14, :cond_0

    .line 509
    move v6, v7

    .line 510
    :cond_0
    if-ne v3, v12, :cond_1

    const/16 v11, 0x2e

    if-ne v0, v11, :cond_1

    .line 511
    move v3, v7

    .line 512
    :cond_1
    if-eq v3, v12, :cond_2

    if-lt v0, v13, :cond_2

    if-gt v0, v14, :cond_2

    .line 513
    move v5, v7

    .line 514
    :cond_2
    const/4 v11, -0x1

    if-ne v8, v11, :cond_3

    const/16 v11, 0x61

    if-lt v0, v11, :cond_3

    const/16 v11, 0x7a

    if-gt v0, v11, :cond_3

    .line 515
    move v8, v7

    .line 506
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 517
    .end local v0    # "c":C
    :cond_4
    const/4 v11, 0x0

    invoke-virtual {p0, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 518
    .local v10, "value":Ljava/lang/String;
    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 524
    .local v9, "units":Ljava/lang/String;
    :try_start_0
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    invoke-static {v11}, Llidroid/content/res/ThemeZipFile;->floatToComplex(F)I

    move-result v1

    .line 525
    .local v1, "dim":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 526
    .local v2, "dm":Landroid/util/DisplayMetrics;
    const-string v11, "dp"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "dip"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 527
    :cond_5
    or-int/lit8 v1, v1, 0x1

    .line 539
    :cond_6
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 542
    .end local v1    # "dim":I
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    :goto_2
    return-object v11

    .line 528
    .restart local v1    # "dim":I
    .restart local v2    # "dm":Landroid/util/DisplayMetrics;
    :cond_7
    const-string/jumbo v11, "sp"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 529
    or-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 530
    :cond_8
    const-string v11, "in"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 531
    or-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 532
    :cond_9
    const-string/jumbo v11, "mm"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 533
    or-int/lit8 v1, v1, 0x5

    goto :goto_1

    .line 534
    :cond_a
    const-string/jumbo v11, "pt"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eqz v11, :cond_6

    .line 535
    or-int/lit8 v1, v1, 0x3

    goto :goto_1

    .line 540
    .end local v1    # "dim":I
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    :catch_0
    move-exception v4

    .line 542
    .local v4, "e":Ljava/lang/NumberFormatException;
    const/4 v11, 0x0

    goto :goto_2
.end method


# virtual methods
.method public checkUpdate()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 126
    iget-object v3, p0, Llidroid/content/res/ThemeZipFile;->mPackageName:Ljava/lang/String;

    invoke-static {v3}, Llidroid/content/res/ThemeZipFile;->getComponentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Llidroid/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    .line 129
    iget-object v3, p0, Llidroid/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 131
    monitor-enter p0

    .line 132
    :try_start_0
    invoke-direct {p0}, Llidroid/content/res/ThemeZipFile;->clear()V

    .line 133
    monitor-exit p0

    .line 150
    :goto_0
    return v2

    .line 133
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 137
    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Llidroid/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 139
    .local v0, "lastModified":J
    iget-object v3, p0, Llidroid/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v3, :cond_1

    iget-wide v3, p0, Llidroid/content/res/ThemeZipFile;->mLastModifyTime:J

    cmp-long v3, v3, v0

    if-eqz v3, :cond_2

    .line 140
    :cond_1
    monitor-enter p0

    .line 141
    :try_start_1
    invoke-direct {p0}, Llidroid/content/res/ThemeZipFile;->clear()V

    .line 142
    invoke-direct {p0}, Llidroid/content/res/ThemeZipFile;->openZipFile()V

    .line 143
    invoke-direct {p0}, Llidroid/content/res/ThemeZipFile;->loadThemeValues()V

    .line 145
    monitor-exit p0

    goto :goto_0

    .line 146
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 150
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public containsEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 279
    invoke-direct {p0}, Llidroid/content/res/ThemeZipFile;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llidroid/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public exists()Z
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Llidroid/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 285
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Llidroid/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method public getInputStream(Ljava/lang/String;)Llidroid/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 10
    .param p1, "relativeFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 289
    invoke-direct {p0, p1}, Llidroid/content/res/ThemeZipFile;->getZipInputStream(Ljava/lang/String;)Llidroid/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v3

    .line 290
    .local v3, "result":Llidroid/content/res/ThemeZipFile$ThemeFileInfo;
    if-nez v3, :cond_1

    .line 291
    const-string v5, "dpi/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 292
    .local v0, "index":I
    if-lez v0, :cond_1

    .line 293
    add-int/lit8 v5, v0, 0x3

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, "suffix":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {p1, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, "prefix":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    sget-object v5, Llidroid/content/res/ThemeZipFile;->sDensities:[I

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 298
    const-string v5, "%s%s%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v8

    sget-object v7, Llidroid/content/res/ThemeZipFile;->sDensities:[I

    aget v7, v7, v1

    invoke-static {v7}, Llidroid/content/res/DisplayUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x2

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Llidroid/content/res/ThemeZipFile;->getZipInputStream(Ljava/lang/String;)Llidroid/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v3

    .line 300
    if-eqz v3, :cond_2

    .line 301
    sget-object v5, Llidroid/content/res/ThemeZipFile;->sDensities:[I

    aget v5, v5, v1

    if-le v5, v9, :cond_1

    .line 302
    sget-object v5, Llidroid/content/res/ThemeZipFile;->sDensities:[I

    aget v5, v5, v1

    iput v5, v3, Llidroid/content/res/ThemeZipFile$ThemeFileInfo;->mDensity:I

    .line 309
    .end local v0    # "index":I
    .end local v1    # "j":I
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v4    # "suffix":Ljava/lang/String;
    :cond_1
    return-object v3

    .line 297
    .restart local v0    # "index":I
    .restart local v1    # "j":I
    .restart local v2    # "prefix":Ljava/lang/String;
    .restart local v4    # "suffix":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Llidroid/content/res/ThemeZipFile;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeCharSequence(ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 317
    iget-object v3, p0, Llidroid/content/res/ThemeZipFile;->mStrings:Ljava/util/Properties;

    invoke-virtual {v3, p2, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "retval":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 331
    .end local v1    # "retval":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 323
    .restart local v1    # "retval":Ljava/lang/String;
    :cond_0
    const/high16 v3, -0x1000000

    and-int/2addr v3, p1

    const/high16 v4, 0x7f000000

    if-ge v3, v4, :cond_1

    .line 324
    iget-object v3, p0, Llidroid/content/res/ThemeZipFile;->mSysStrings:Landroid/util/SparseArray;

    shr-int/lit8 v4, p1, 0x18

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    .line 325
    .local v0, "p":Ljava/util/Properties;
    if-eqz v0, :cond_1

    .line 326
    invoke-virtual {v0, p2, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .end local v0    # "p":Ljava/util/Properties;
    :cond_1
    move-object v1, v2

    .line 331
    goto :goto_0
.end method

.method public getThemeInt(ILjava/lang/String;)Ljava/lang/Integer;
    .locals 10
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x6

    const/4 v5, 0x0

    const/high16 v8, -0x1000000

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 335
    iget-object v6, p0, Llidroid/content/res/ThemeZipFile;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, "type":Ljava/lang/String;
    const-string v6, "dimen"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 339
    iget-object v6, p0, Llidroid/content/res/ThemeZipFile;->mDimens:Ljava/util/Properties;

    invoke-virtual {v6, p2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 342
    invoke-static {v3}, Llidroid/content/res/ThemeZipFile;->parseDimension(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 418
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 346
    :cond_1
    const-string v6, "bool"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 347
    iget-object v6, p0, Llidroid/content/res/ThemeZipFile;->mBools:Ljava/util/Properties;

    invoke-virtual {v6, p2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 348
    .restart local v3    # "value":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 350
    const-string/jumbo v6, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .line 354
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    const-string v6, "color"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "drawable"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 355
    :cond_4
    iget-object v6, p0, Llidroid/content/res/ThemeZipFile;->mColors:Ljava/util/Properties;

    invoke-virtual {v6, p2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 356
    .restart local v3    # "value":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 359
    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 360
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 363
    :cond_5
    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 364
    .local v1, "retval":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v9, :cond_0

    .line 365
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    or-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 372
    .end local v1    # "retval":Ljava/lang/Integer;
    .end local v3    # "value":Ljava/lang/String;
    :cond_6
    shr-int/lit8 v6, p1, 0x18

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x7f

    if-ge v6, v7, :cond_0

    .line 374
    const-string v6, "dimen"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 375
    iget-object v4, p0, Llidroid/content/res/ThemeZipFile;->mSysDimens:Landroid/util/SparseArray;

    shr-int/lit8 v5, p1, 0x18

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    .line 376
    .local v0, "p":Ljava/util/Properties;
    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v0, p2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 380
    .restart local v3    # "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 381
    invoke-static {v3}, Llidroid/content/res/ThemeZipFile;->parseDimension(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 386
    .end local v0    # "p":Ljava/util/Properties;
    .end local v3    # "value":Ljava/lang/String;
    :cond_7
    const-string v6, "bool"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 387
    iget-object v6, p0, Llidroid/content/res/ThemeZipFile;->mSysBools:Landroid/util/SparseArray;

    shr-int/lit8 v7, p1, 0x18

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    .line 388
    .restart local v0    # "p":Ljava/util/Properties;
    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v0, p2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 391
    .restart local v3    # "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 392
    const-string/jumbo v6, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    :cond_8
    move v4, v5

    goto :goto_2

    .line 397
    .end local v0    # "p":Ljava/util/Properties;
    .end local v3    # "value":Ljava/lang/String;
    :cond_9
    const-string v5, "color"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "drawable"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 398
    :cond_a
    iget-object v5, p0, Llidroid/content/res/ThemeZipFile;->mSysColors:Landroid/util/SparseArray;

    shr-int/lit8 v6, p1, 0x18

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    .line 399
    .restart local v0    # "p":Ljava/util/Properties;
    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0, p2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 403
    .restart local v3    # "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 404
    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 405
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 407
    :cond_b
    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 408
    .restart local v1    # "retval":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v9, :cond_0

    .line 409
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    or-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public hasValues()Z
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Llidroid/content/res/ThemeZipFile;->mColors:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Llidroid/content/res/ThemeZipFile;->mBools:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Llidroid/content/res/ThemeZipFile;->mDimens:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Llidroid/content/res/ThemeZipFile;->mStrings:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Llidroid/content/res/ThemeZipFile;->mSysColors:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Llidroid/content/res/ThemeZipFile;->mSysBools:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Llidroid/content/res/ThemeZipFile;->mSysDimens:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Llidroid/content/res/ThemeZipFile;->mSysStrings:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
