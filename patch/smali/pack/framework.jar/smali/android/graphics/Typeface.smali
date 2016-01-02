.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLD_ITALIC:I = 0x3

.field private static final DEBUG:Z = false

.field public static final DEFAULT:Landroid/graphics/Typeface;

.field public static final DEFAULT_BOLD:Landroid/graphics/Typeface;

.field private static final DROIDSANS:Ljava/lang/String; = "DroidSans.ttf"

.field private static final DROIDSANS_BOLD:Ljava/lang/String; = "DroidSans-Bold.ttf"

.field private static final FLIP_ALL_APPS:Z = true

.field private static final FONTS_FOLDER:Ljava/lang/String; = "/system/fonts/"

.field private static final FlipFontAppList:[Ljava/lang/String;

.field private static FlipFontPath:Ljava/lang/String; = null

.field private static final FontsLikeDefault:[Ljava/lang/String;

.field public static final ITALIC:I = 0x2

.field public static final MONOSPACE:Landroid/graphics/Typeface;

.field private static final MONOSPACE_INDEX:I = 0x3

.field public static final NORMAL:I = 0x0

.field private static final OWNER_SANS_LOC_PATH:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts/sans.loc"

.field private static final SANS_INDEX:I = 0x1

.field public static final SANS_SERIF:Landroid/graphics/Typeface;

.field public static final SERIF:Landroid/graphics/Typeface;

.field private static final SERIF_INDEX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Monotype"

.field private static UIFontBoldPath:Ljava/lang/String; = null

.field private static UIFontPath:Ljava/lang/String; = null

.field private static final USER_SANS_LOC_POST:Ljava/lang/String; = "/com.android.settings/app_fonts/sans.loc"

.field private static final USER_SANS_LOC_PRE:Ljava/lang/String; = "/data/user/"

.field public static isFlipFontUsed:Z

.field private static lastAppInList:Z

.field private static lastAppNameString:Ljava/lang/String;

.field static sDefaults:[Landroid/graphics/Typeface;

.field private static final sStaticDefaults:[Landroid/graphics/Typeface;

.field private static final sTypefaceCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public isLikeDefault:Z

.field private mStyle:I

.field native_instance:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v5}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/SparseArray;

    .line 87
    const-string v0, ""

    sput-object v0, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    .line 99
    sput-object v1, Landroid/graphics/Typeface;->lastAppNameString:Ljava/lang/String;

    .line 100
    sput-boolean v4, Landroid/graphics/Typeface;->lastAppInList:Z

    .line 103
    sput-object v1, Landroid/graphics/Typeface;->UIFontPath:Ljava/lang/String;

    .line 104
    sput-object v1, Landroid/graphics/Typeface;->UIFontBoldPath:Ljava/lang/String;

    .line 111
    sput-boolean v4, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    .line 120
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "android"

    aput-object v2, v0, v4

    const-string v2, "com.android.*"

    aput-object v2, v0, v6

    const-string v2, "com.cooliris.media"

    aput-object v2, v0, v7

    const-string v2, "jp.co.omronsoft.openwnn"

    aput-object v2, v0, v5

    const/4 v2, 0x4

    const-string v3, "com.monotypeimaging.*"

    aput-object v3, v0, v2

    sput-object v0, Landroid/graphics/Typeface;->FlipFontAppList:[Ljava/lang/String;

    .line 128
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "sans-serif"

    aput-object v2, v0, v4

    const-string v2, "sans-serif-light"

    aput-object v2, v0, v6

    const-string v2, "sans-serif-thin"

    aput-object v2, v0, v7

    const-string v2, "sec-roboto-light"

    aput-object v2, v0, v5

    sput-object v0, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    move-object v0, v1

    .line 343
    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 344
    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 345
    const-string v0, "sans-serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 346
    const-string v0, "serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 347
    const-string v0, "monospace"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 349
    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v0, v2, v4

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v0, v2, v6

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v7

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v5

    sput-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    .line 356
    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Typeface;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v4

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v6

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v7

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v5

    sput-object v2, Landroid/graphics/Typeface;->sStaticDefaults:[Landroid/graphics/Typeface;

    .line 363
    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .param p1, "ni"    # I

    .prologue
    const/4 v0, 0x0

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 117
    iput-boolean v0, p0, Landroid/graphics/Typeface;->isLikeDefault:Z

    .line 333
    if-nez p1, :cond_0

    .line 334
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "native typeface cannot be made"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_0
    iput p1, p0, Landroid/graphics/Typeface;->native_instance:I

    .line 338
    invoke-static {p1}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 339
    return-void
.end method

.method public static SetAppTypeFace(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sAppName"    # Ljava/lang/String;

    .prologue
    .line 826
    invoke-static {p1}, Landroid/graphics/Typeface;->isAppInFlipList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    invoke-static {p0}, Landroid/graphics/Typeface;->SetFlipFonts(Landroid/content/Context;)V

    .line 836
    :cond_0
    return-void
.end method

.method private static SetFlipFonts(Landroid/content/Context;)V
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 690
    const-string v2, ""

    .line 693
    .local v2, "strFontPathBold":Ljava/lang/String;
    invoke-static {p0, v5}, Landroid/graphics/Typeface;->getFontPathFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 696
    .local v1, "strFontPath":Ljava/lang/String;
    const-string v3, "default"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 700
    sput-boolean v6, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    .line 740
    :goto_0
    sget-object v3, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 813
    :goto_1
    return-void

    .line 731
    :cond_0
    sput-boolean v5, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    .line 733
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DroidSans-Bold.ttf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 734
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DroidSans.ttf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 745
    :cond_1
    sput-object v1, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    .line 758
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v0, v3, Landroid/graphics/Typeface;->native_instance:I

    .line 759
    .local v0, "iNative":I
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 760
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v9, v6}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->native_instance:I

    .line 767
    :cond_2
    :goto_2
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v4, v4, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v4}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->mStyle:I

    .line 768
    invoke-static {v0}, Landroid/graphics/Typeface;->nativeUnref(I)V

    .line 772
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget v0, v3, Landroid/graphics/Typeface;->native_instance:I

    .line 773
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 774
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v9, v5}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->native_instance:I

    .line 781
    :cond_3
    :goto_3
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget v4, v4, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v4}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->mStyle:I

    .line 782
    invoke-static {v0}, Landroid/graphics/Typeface;->nativeUnref(I)V

    .line 786
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v3, v3, v6

    iget v0, v3, Landroid/graphics/Typeface;->native_instance:I

    .line 787
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v3, v3, v6

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v4, v4, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v4, v6}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->native_instance:I

    .line 788
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v3, v3, v6

    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v4, v6

    iget v4, v4, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v4}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->mStyle:I

    .line 789
    invoke-static {v0}, Landroid/graphics/Typeface;->nativeUnref(I)V

    .line 792
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v3, v3, v5

    iget v0, v3, Landroid/graphics/Typeface;->native_instance:I

    .line 793
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v3, v3, v5

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget v4, v4, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->native_instance:I

    .line 794
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v3, v3, v5

    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v4}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->mStyle:I

    .line 795
    invoke-static {v0}, Landroid/graphics/Typeface;->nativeUnref(I)V

    .line 798
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v3, v3, v7

    iget v0, v3, Landroid/graphics/Typeface;->native_instance:I

    .line 799
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v3, v3, v7

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v4, v4, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v4, v7}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->native_instance:I

    .line 800
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v3, v3, v7

    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v4}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->mStyle:I

    .line 801
    invoke-static {v0}, Landroid/graphics/Typeface;->nativeUnref(I)V

    .line 804
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v3, v3, v8

    iget v0, v3, Landroid/graphics/Typeface;->native_instance:I

    .line 805
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v3, v3, v8

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget v4, v4, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v4, v8}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->native_instance:I

    .line 806
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v3, v3, v8

    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v4, v8

    iget v4, v4, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v4}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->mStyle:I

    .line 807
    invoke-static {v0}, Landroid/graphics/Typeface;->nativeUnref(I)V

    goto/16 :goto_1

    .line 763
    :cond_4
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->native_instance:I

    .line 764
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v3, v3, Landroid/graphics/Typeface;->native_instance:I

    if-nez v3, :cond_2

    .line 765
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v9, v6}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->native_instance:I

    goto/16 :goto_2

    .line 777
    :cond_5
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v2}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->native_instance:I

    .line 778
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget v3, v3, Landroid/graphics/Typeface;->native_instance:I

    if-nez v3, :cond_3

    .line 779
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v9, v5}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->native_instance:I

    goto/16 :goto_3
.end method

.method private static _create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "style"    # I

    .prologue
    .line 155
    new-instance v0, Landroid/graphics/Typeface;

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "family"    # Landroid/graphics/Typeface;
    .param p1, "style"    # I

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 236
    .local v0, "ni":I
    if-ltz p1, :cond_0

    const/4 v3, 0x3

    if-le p1, v3, :cond_1

    .line 237
    :cond_0
    const/4 p1, 0x0

    .line 240
    :cond_1
    if-eqz p0, :cond_8

    .line 242
    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v3, p1, :cond_3

    move-object v2, p0

    .line 284
    :cond_2
    :goto_0
    return-object v2

    .line 247
    :cond_3
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    iget v4, p0, Landroid/graphics/Typeface;->mStyle:I

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 248
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v2, v3, p1

    goto :goto_0

    .line 251
    :cond_4
    iget v0, p0, Landroid/graphics/Typeface;->native_instance:I

    .line 260
    sget-object v3, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 262
    .local v1, "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    if-eqz v1, :cond_5

    .line 263
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    .line 264
    .local v2, "typeface":Landroid/graphics/Typeface;
    if-nez v2, :cond_2

    .line 269
    .end local v2    # "typeface":Landroid/graphics/Typeface;
    :cond_5
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/Typeface;-><init>(I)V

    .line 273
    .restart local v2    # "typeface":Landroid/graphics/Typeface;
    if-eqz v2, :cond_6

    if-eqz p0, :cond_6

    .line 275
    iget-boolean v3, p0, Landroid/graphics/Typeface;->isLikeDefault:Z

    iput-boolean v3, v2, Landroid/graphics/Typeface;->isLikeDefault:Z

    .line 278
    :cond_6
    if-nez v1, :cond_7

    .line 279
    new-instance v1, Landroid/util/SparseArray;

    .end local v1    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    const/4 v3, 0x4

    invoke-direct {v1, v3}, Landroid/util/SparseArray;-><init>(I)V

    .line 280
    .restart local v1    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    sget-object v3, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 282
    :cond_7
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 254
    .end local v1    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    .end local v2    # "typeface":Landroid/graphics/Typeface;
    :cond_8
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v2, v3, p1

    goto :goto_0
.end method

.method public static create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 3
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "style"    # I

    .prologue
    .line 177
    if-ltz p1, :cond_0

    const/4 v2, 0x3

    if-le p1, v2, :cond_1

    .line 178
    :cond_0
    const/4 p1, 0x0

    .line 181
    :cond_1
    if-nez p0, :cond_3

    .line 182
    sget-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v1, v2, p1

    .line 211
    :cond_2
    :goto_0
    return-object v1

    .line 187
    :cond_3
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 196
    .local v1, "tf":Landroid/graphics/Typeface;
    if-eqz v1, :cond_4

    sget-object v2, Landroid/graphics/Typeface;->sStaticDefaults:[Landroid/graphics/Typeface;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 198
    sget-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v1, v2, p1

    goto :goto_0

    .line 202
    :cond_4
    const/4 v0, 0x0

    .local v0, "ix":I
    :goto_1
    sget-object v2, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 204
    sget-object v2, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 206
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/Typeface;->isLikeDefault:Z

    goto :goto_0

    .line 202
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 308
    new-instance v0, Landroid/graphics/Typeface;

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->nativeCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 318
    new-instance v0, Landroid/graphics/Typeface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 328
    new-instance v0, Landroid/graphics/Typeface;

    invoke-static {p0}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static defaultFromStyle(I)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "style"    # I

    .prologue
    .line 295
    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-le p0, v0, :cond_1

    .line 296
    :cond_0
    const/4 p0, 0x0

    .line 298
    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getFontNameFlipFont(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "typefaceIndex"    # I

    .prologue
    .line 472
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->getFullFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, "sx":Ljava/lang/String;
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "parts":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 480
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 481
    const-string v2, "default"

    .line 485
    :goto_0
    return-object v2

    .line 483
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 485
    :cond_1
    const/4 v2, 0x1

    aget-object v2, v0, v2

    goto :goto_0
.end method

.method public static getFontPathFlipFont(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "typefaceIndex"    # I

    .prologue
    .line 495
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->getFullFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 498
    .local v1, "sx":Ljava/lang/String;
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    return-object v2
.end method

.method private static getFullFlipFont(Landroid/content/Context;I)Ljava/lang/String;
    .locals 13
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "typefaceIndex"    # I

    .prologue
    .line 510
    const-string v9, "default"

    .line 512
    .local v9, "systemFont":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 681
    :cond_0
    :goto_0
    :pswitch_0
    if-nez v9, :cond_1

    .line 682
    const-string v9, "default"

    .line 684
    .end local v9    # "systemFont":Ljava/lang/String;
    :cond_1
    return-object v9

    .line 515
    .restart local v9    # "systemFont":Ljava/lang/String;
    :pswitch_1
    const-string v7, ""

    .line 516
    .local v7, "sans_path":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 519
    .local v2, "currentUser":I
    if-eqz p0, :cond_2

    if-nez v2, :cond_2

    .line 530
    :cond_2
    if-nez v2, :cond_6

    .line 531
    const-string v7, "/data/data/com.android.settings/app_fonts/sans.loc"

    .line 534
    const-string v10, "persist.sys.flipfontpath"

    const-string v11, "empty"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 538
    const-string v10, "empty"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 540
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 542
    .local v4, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 543
    .local v5, "fis":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 544
    .local v8, "string":Ljava/lang/String;
    const/4 v0, 0x0

    .line 547
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1c
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 549
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 552
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 553
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1d
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 562
    if-eqz v6, :cond_3

    .line 563
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 569
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :cond_4
    :goto_1
    move-object v9, v8

    .line 572
    :try_start_4
    const-string v10, "persist.sys.flipfontpath"

    invoke-static {v10, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 573
    :catch_0
    move-exception v3

    .line 574
    .local v3, "e":Ljava/lang/Exception;
    const-string v10, "FLIPFONT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "systemFont = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Exception = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 565
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v10

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 568
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 555
    :catch_2
    move-exception v3

    .line 556
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    const-string v8, "default"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 562
    if-eqz v5, :cond_4

    .line 563
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 565
    :catch_3
    move-exception v10

    goto :goto_1

    .line 557
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v3

    .line 558
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    const-string v8, "default"

    .line 559
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 562
    if-eqz v5, :cond_4

    .line 563
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_1

    .line 565
    :catch_5
    move-exception v10

    goto :goto_1

    .line 561
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 562
    :goto_4
    if-eqz v5, :cond_5

    .line 563
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_11

    .line 567
    :cond_5
    :goto_5
    throw v10

    .line 577
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "string":Ljava/lang/String;
    :cond_6
    if-eqz v2, :cond_a

    .line 580
    const-string v7, "/data/data/com.android.settings/app_fonts/sans.loc"

    .line 583
    const-string v10, "persist.sys.flipfontpath"

    const-string v11, "empty"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 587
    const-string v10, "empty"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 589
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 591
    .restart local v4    # "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 592
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 593
    .restart local v8    # "string":Ljava/lang/String;
    const/4 v0, 0x0

    .line 596
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :try_start_a
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 597
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :try_start_b
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_1a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_18
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 598
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 601
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 602
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_1b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_19
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 611
    if-eqz v6, :cond_7

    .line 612
    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    :cond_7
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 618
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :cond_8
    :goto_6
    move-object v9, v8

    .line 621
    :try_start_e
    const-string v10, "persist.sys.flipfontpath"

    invoke-static {v10, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_0

    .line 622
    :catch_6
    move-exception v3

    .line 623
    .local v3, "e":Ljava/lang/Exception;
    const-string v10, "FLIPFONT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "systemFont = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Exception = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 614
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v10

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 617
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .line 604
    :catch_8
    move-exception v3

    .line 605
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_7
    :try_start_f
    const-string v8, "default"
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 611
    if-eqz v5, :cond_8

    .line 612
    :try_start_10
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    goto :goto_6

    .line 614
    :catch_9
    move-exception v10

    goto :goto_6

    .line 606
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_a
    move-exception v3

    .line 607
    .local v3, "e":Ljava/io/IOException;
    :goto_8
    :try_start_11
    const-string v8, "default"

    .line 608
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 611
    if-eqz v5, :cond_8

    .line 612
    :try_start_12
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    goto :goto_6

    .line 614
    :catch_b
    move-exception v10

    goto :goto_6

    .line 610
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v10

    .line 611
    :goto_9
    if-eqz v5, :cond_9

    .line 612
    :try_start_13
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_12

    .line 616
    :cond_9
    :goto_a
    throw v10

    .line 627
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "string":Ljava/lang/String;
    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/data/user/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/com.android.settings/app_fonts/sans.loc"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 631
    const-string v9, "empty"

    .line 634
    const-string v10, "empty"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 636
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 638
    .restart local v4    # "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 639
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 640
    .restart local v8    # "string":Ljava/lang/String;
    const/4 v0, 0x0

    .line 643
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :try_start_14
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_d
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 644
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :try_start_15
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_16
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_14
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 645
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :try_start_16
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 648
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 649
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_17
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_15
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 658
    if-eqz v6, :cond_b

    .line 659
    :try_start_17
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_c

    :cond_b
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 665
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :cond_c
    :goto_b
    move-object v9, v8

    goto/16 :goto_0

    .line 661
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_c
    move-exception v10

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 664
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_b

    .line 651
    :catch_d
    move-exception v3

    .line 652
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_c
    :try_start_18
    const-string v8, "default"
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 658
    if-eqz v5, :cond_c

    .line 659
    :try_start_19
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_e

    goto :goto_b

    .line 661
    :catch_e
    move-exception v10

    goto :goto_b

    .line 653
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_f
    move-exception v3

    .line 654
    .local v3, "e":Ljava/io/IOException;
    :goto_d
    :try_start_1a
    const-string v8, "default"

    .line 655
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 658
    if-eqz v5, :cond_c

    .line 659
    :try_start_1b
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_10

    goto :goto_b

    .line 661
    :catch_10
    move-exception v10

    goto :goto_b

    .line 657
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v10

    .line 658
    :goto_e
    if-eqz v5, :cond_d

    .line 659
    :try_start_1c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_13

    .line 663
    :cond_d
    :goto_f
    throw v10

    .line 565
    :catch_11
    move-exception v11

    goto/16 :goto_5

    .line 614
    :catch_12
    move-exception v11

    goto :goto_a

    .line 661
    :catch_13
    move-exception v11

    goto :goto_f

    .line 657
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v10

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_e

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catchall_4
    move-exception v10

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_e

    .line 653
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_14
    move-exception v3

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_d

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_15
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_d

    .line 651
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_16
    move-exception v3

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_c

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_17
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_c

    .line 610
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catchall_5
    move-exception v10

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_9

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catchall_6
    move-exception v10

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_9

    .line 606
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_18
    move-exception v3

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_8

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_19
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_8

    .line 604
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_1a
    move-exception v3

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_7

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_1b
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_7

    .line 561
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catchall_7
    move-exception v10

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catchall_8
    move-exception v10

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 557
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_1c
    move-exception v3

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_1d
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 555
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_1e
    move-exception v3

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_1f
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 512
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isAppInFlipList(Ljava/lang/String;)Z
    .locals 1
    .param p0, "appNameString"    # Ljava/lang/String;

    .prologue
    .line 424
    const/4 v0, 0x1

    return v0
.end method

.method private static loadAppList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    sget-object v0, Landroid/graphics/Typeface;->FlipFontAppList:[Ljava/lang/String;

    return-object v0
.end method

.method private static native nativeCreate(Ljava/lang/String;I)I
.end method

.method private static native nativeCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)I
.end method

.method private static native nativeCreateFromFile(Ljava/lang/String;)I
.end method

.method private static native nativeCreateFromTypeface(II)I
.end method

.method private static native nativeGetStyle(I)I
.end method

.method private static native nativeUnref(I)V
.end method

.method public static native setGammaForText(FF)V
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 375
    if-ne p0, p1, :cond_1

    .line 380
    :cond_0
    :goto_0
    return v1

    .line 376
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 378
    check-cast v0, Landroid/graphics/Typeface;

    .line 380
    .local v0, "typeface":Landroid/graphics/Typeface;
    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    iget v4, v0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/graphics/Typeface;->native_instance:I

    iget v4, v0, Landroid/graphics/Typeface;->native_instance:I

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 367
    :try_start_0
    iget v0, p0, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Typeface;->nativeUnref(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 371
    return-void

    .line 369
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 385
    iget v0, p0, Landroid/graphics/Typeface;->native_instance:I

    .line 386
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Typeface;->mStyle:I

    add-int v0, v1, v2

    .line 387
    return v0
.end method

.method public final isBold()Z
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isItalic()Z
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
