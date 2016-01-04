.class public final Landroid/content/res/LidroidResources;
.super Landroid/content/res/Resources;
.source "LidroidResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/LidroidResources$LidroidTheme;
    }
.end annotation


# static fields
.field public static final DBG:Z = false

.field public static final TAG:Ljava/lang/String; = "LidroidResources"

.field public static final sCookieTypeFramework:I = 0x1

.field public static final sCookieTypeLidroid:I = 0x3

.field public static final sCookieTypeOther:I = 0x4

.field public static final sCookieTypeSamsung:I = 0x2

.field public static final sCookieTypeUnknown:I


# instance fields
.field private mActivityIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mCachedXmlBlockIds:[I

.field final mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

.field private mCharSequences:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mCookieType:Landroid/util/SparseIntArray;

.field private mHasValues:Z

.field private mIntegers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mLastCachedXmlBlockIndex:I

.field final mLzDrawableCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSkipFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeResources:Llidroid/content/res/ThemeResources;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 80
    invoke-direct {p0}, Landroid/content/res/Resources;-><init>()V

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/LidroidResources;->mSkipFiles:Landroid/util/SparseArray;

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/LidroidResources;->mCharSequences:Landroid/util/SparseArray;

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/LidroidResources;->mIntegers:Landroid/util/SparseArray;

    .line 66
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/LidroidResources;->mCookieType:Landroid/util/SparseIntArray;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/LidroidResources;->mLastCachedXmlBlockIndex:I

    .line 73
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/content/res/LidroidResources;->mCachedXmlBlockIds:[I

    .line 74
    new-array v0, v1, [Landroid/content/res/XmlBlock;

    iput-object v0, p0, Landroid/content/res/LidroidResources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 76
    new-instance v0, Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/LidroidResources;->mLzDrawableCache:Landroid/util/LongSparseArray;

    .line 81
    return-void

    .line 73
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/LidroidResources;->mSkipFiles:Landroid/util/SparseArray;

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/LidroidResources;->mCharSequences:Landroid/util/SparseArray;

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/LidroidResources;->mIntegers:Landroid/util/SparseArray;

    .line 66
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/LidroidResources;->mCookieType:Landroid/util/SparseIntArray;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/LidroidResources;->mLastCachedXmlBlockIndex:I

    .line 73
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/content/res/LidroidResources;->mCachedXmlBlockIds:[I

    .line 74
    new-array v0, v2, [Landroid/content/res/XmlBlock;

    iput-object v0, p0, Landroid/content/res/LidroidResources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 76
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/LidroidResources;->mLzDrawableCache:Landroid/util/LongSparseArray;

    .line 85
    invoke-virtual {p0, v1}, Landroid/content/res/LidroidResources;->init(Z)V

    .line 86
    return-void

    .line 73
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .param p4, "compInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p5, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 90
    invoke-direct/range {p0 .. p5}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)V

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/LidroidResources;->mSkipFiles:Landroid/util/SparseArray;

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/LidroidResources;->mCharSequences:Landroid/util/SparseArray;

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/LidroidResources;->mIntegers:Landroid/util/SparseArray;

    .line 66
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/LidroidResources;->mCookieType:Landroid/util/SparseIntArray;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/LidroidResources;->mLastCachedXmlBlockIndex:I

    .line 73
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/content/res/LidroidResources;->mCachedXmlBlockIds:[I

    .line 74
    new-array v0, v2, [Landroid/content/res/XmlBlock;

    iput-object v0, p0, Landroid/content/res/LidroidResources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 76
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/LidroidResources;->mLzDrawableCache:Landroid/util/LongSparseArray;

    .line 91
    invoke-virtual {p0, v1}, Landroid/content/res/LidroidResources;->init(Z)V

    .line 92
    return-void

    .line 73
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Landroid/content/res/LidroidResources;Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
    .locals 1
    .param p0, "x0"    # Landroid/content/res/LidroidResources;
    .param p1, "x1"    # Landroid/content/res/TypedArray;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/content/res/LidroidResources;->replaceTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method private getCachedDrawable(J)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "key"    # J

    .prologue
    .line 338
    iget-object v3, p0, Landroid/content/res/LidroidResources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 339
    :try_start_0
    iget-object v2, p0, Landroid/content/res/LidroidResources;->mLzDrawableCache:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 340
    .local v1, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v1, :cond_1

    .line 341
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 342
    .local v0, "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    monitor-exit v3

    .line 350
    .end local v0    # "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_0
    return-object v2

    .line 346
    .restart local v0    # "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    iget-object v2, p0, Landroid/content/res/LidroidResources;->mLzDrawableCache:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 349
    .end local v0    # "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    monitor-exit v3

    .line 350
    const/4 v2, 0x0

    goto :goto_0

    .line 349
    .end local v1    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getCookieType(I)I
    .locals 3
    .param p1, "cookie"    # I

    .prologue
    .line 245
    iget-object v2, p0, Landroid/content/res/LidroidResources;->mCookieType:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 247
    .local v1, "type":I
    if-nez v1, :cond_0

    .line 248
    iget-object v2, p0, Landroid/content/res/LidroidResources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->getCookieName(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "name":Ljava/lang/String;
    const-string v2, "/system/framework/framework-res.apk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    const/4 v1, 0x1

    .line 264
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 253
    .restart local v0    # "name":Ljava/lang/String;
    :cond_1
    const-string v2, "/system/framework/twframework-res.apk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 254
    const/4 v1, 0x2

    goto :goto_0

    .line 256
    :cond_2
    const-string v2, "/system/framework/lidroid-res.apk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 257
    const/4 v1, 0x3

    goto :goto_0

    .line 260
    :cond_3
    const/4 v1, 0x4

    goto :goto_0
.end method

.method private static getTypedValueType(Landroid/util/TypedValue;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Landroid/util/TypedValue;

    .prologue
    .line 234
    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 235
    const-string v0, "dimension"

    .line 241
    :goto_0
    return-object v0

    .line 237
    :cond_0
    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_1

    .line 238
    const-string v0, "int"

    goto :goto_0

    .line 241
    :cond_1
    const-string/jumbo v0, "unknown"

    goto :goto_0
.end method

.method private static isThemeInt(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 308
    const/16 v0, 0x10

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f

    if-le p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadIcon(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I

    .prologue
    .line 421
    invoke-virtual {p0, p2}, Landroid/content/res/LidroidResources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 422
    .local v3, "packageName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    iget-object v5, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 424
    .local v2, "fileName":Ljava/lang/String;
    invoke-static {v3, v2}, Llidroid/content/res/IconCustomizer;->getCustomizedIconDrawableWithFileName(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 425
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 436
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v1, "drawable":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 427
    .end local v1    # "drawable":Ljava/lang/Object;
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-static {v3}, Llidroid/content/res/IconCustomizer;->getCustomizedIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 428
    if-eqz v0, :cond_1

    move-object v1, v0

    .restart local v1    # "drawable":Ljava/lang/Object;
    goto :goto_0

    .line 430
    .end local v1    # "drawable":Ljava/lang/Object;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 431
    if-eqz v0, :cond_2

    .line 432
    invoke-static {v0}, Llidroid/content/res/IconCustomizer;->generateIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 433
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v0

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v5, v4}, Llidroid/content/res/IconCustomizer;->saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_2
    move-object v1, v0

    .line 436
    .restart local v1    # "drawable":Ljava/lang/Object;
    goto :goto_0
.end method

.method private replaceTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
    .locals 7
    .param p1, "array"    # Landroid/content/res/TypedArray;

    .prologue
    .line 271
    iget-object v5, p0, Landroid/content/res/LidroidResources;->mThemeResources:Llidroid/content/res/ThemeResources;

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Landroid/content/res/LidroidResources;->mHasValues:Z

    if-eqz v5, :cond_1

    .line 272
    iget-object v0, p1, Landroid/content/res/TypedArray;->mData:[I

    .line 273
    .local v0, "data":[I
    const/4 v2, 0x0

    .line 275
    .local v2, "index":I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_1

    .line 276
    add-int/lit8 v5, v2, 0x0

    aget v4, v0, v5

    .line 278
    .local v4, "type":I
    invoke-static {v4}, Landroid/content/res/LidroidResources;->isThemeInt(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 279
    add-int/lit8 v5, v2, 0x3

    aget v1, v0, v5

    .line 281
    .local v1, "id":I
    if-lez v1, :cond_0

    .line 282
    invoke-virtual {p0, v1}, Landroid/content/res/LidroidResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v3

    .line 283
    .local v3, "themeInteger":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 284
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v5

    .line 300
    .end local v1    # "id":I
    .end local v3    # "themeInteger":Ljava/lang/Integer;
    :cond_0
    add-int/lit8 v2, v2, 0x6

    .line 301
    goto :goto_0

    .line 304
    .end local v0    # "data":[I
    .end local v2    # "index":I
    .end local v4    # "type":I
    :cond_1
    return-object p1
.end method


# virtual methods
.method protected getActivityIcons(Ljava/lang/String;)V
    .locals 10
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 95
    iget-object v7, p0, Landroid/content/res/LidroidResources;->mActivityIcons:Ljava/util/List;

    if-eqz v7, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/content/res/LidroidResources;->mActivityIcons:Ljava/util/List;

    .line 99
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 100
    .local v5, "pm":Landroid/content/pm/IPackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 101
    .local v4, "mainIntent":Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_0
    invoke-interface {v5, v4, v7, v8, v9}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    .line 108
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    .line 109
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 110
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v3, v7, Landroid/content/pm/ActivityInfo;->icon:I

    .line 111
    .local v3, "icon":I
    if-nez v3, :cond_2

    .line 112
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v5, p1, v7, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 114
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 117
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    iget-object v7, p0, Landroid/content/res/LidroidResources;->mActivityIcons:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 120
    .end local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "icon":I
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Landroid/content/res/LidroidResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 173
    .local v0, "cs":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 174
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 177
    :cond_0
    return-object v0
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "id"    # I
    .param p2, "def"    # Ljava/lang/CharSequence;

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Landroid/content/res/LidroidResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 183
    .local v0, "cs":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 184
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 187
    :cond_0
    return-object v0
.end method

.method getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 191
    const/4 v3, 0x0

    .line 193
    .local v3, "value":Ljava/lang/CharSequence;
    iget-object v5, p0, Landroid/content/res/LidroidResources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v5

    .line 194
    :try_start_0
    iget-boolean v4, p0, Landroid/content/res/LidroidResources;->mHasValues:Z

    if-eqz v4, :cond_0

    .line 195
    iget-object v4, p0, Landroid/content/res/LidroidResources;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 197
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 198
    iget-object v4, p0, Landroid/content/res/LidroidResources;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/CharSequence;

    move-object v3, v0

    .line 211
    .end local v1    # "index":I
    :cond_0
    :goto_0
    monitor-exit v5

    .line 213
    return-object v3

    .line 200
    .restart local v1    # "index":I
    :cond_1
    if-lez p1, :cond_0

    .line 201
    invoke-virtual {p0, p1}, Landroid/content/res/LidroidResources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Landroid/content/res/LidroidResources;->mThemeResources:Llidroid/content/res/ThemeResources;

    invoke-virtual {v4, p1, v2}, Llidroid/content/res/ThemeResources;->getThemeCharSequence(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 206
    if-eqz v3, :cond_0

    .line 207
    iget-object v4, p0, Landroid/content/res/LidroidResources;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 211
    .end local v1    # "index":I
    .end local v2    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method getThemeInt(I)Ljava/lang/Integer;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 313
    const/4 v2, 0x0

    .line 315
    .local v2, "value":Ljava/lang/Integer;
    iget-boolean v3, p0, Landroid/content/res/LidroidResources;->mHasValues:Z

    if-eqz v3, :cond_0

    .line 316
    iget-object v3, p0, Landroid/content/res/LidroidResources;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 317
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 318
    iget-object v3, p0, Landroid/content/res/LidroidResources;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "value":Ljava/lang/Integer;
    check-cast v2, Ljava/lang/Integer;

    .line 334
    .end local v0    # "index":I
    .restart local v2    # "value":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-object v2

    .line 320
    .restart local v0    # "index":I
    :cond_1
    if-lez p1, :cond_0

    .line 321
    invoke-virtual {p0, p1}, Landroid/content/res/LidroidResources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Landroid/content/res/LidroidResources;->mThemeResources:Llidroid/content/res/ThemeResources;

    invoke-virtual {v3, p1, v1}, Llidroid/content/res/ThemeResources;->getThemeInt(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 326
    if-eqz v2, :cond_0

    .line 327
    iget-object v3, p0, Landroid/content/res/LidroidResources;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z

    .prologue
    .line 218
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 220
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-le v1, v2, :cond_1

    :cond_0
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 222
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/LidroidResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 227
    .local v0, "integer":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 228
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p2, Landroid/util/TypedValue;->data:I

    .line 231
    .end local v0    # "integer":Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method public init(Z)V
    .locals 6
    .param p1, "isSystem"    # Z

    .prologue
    .line 132
    if-eqz p1, :cond_2

    .line 133
    invoke-static {p0}, Llidroid/content/res/ThemeResources;->getSystem(Landroid/content/res/Resources;)Llidroid/content/res/ThemeResources;

    move-result-object v5

    iput-object v5, p0, Landroid/content/res/LidroidResources;->mThemeResources:Llidroid/content/res/ThemeResources;

    .line 165
    :cond_0
    :goto_0
    iget-object v5, p0, Landroid/content/res/LidroidResources;->mThemeResources:Llidroid/content/res/ThemeResources;

    if-eqz v5, :cond_1

    .line 166
    iget-object v5, p0, Landroid/content/res/LidroidResources;->mThemeResources:Llidroid/content/res/ThemeResources;

    invoke-virtual {v5}, Llidroid/content/res/ThemeResources;->hasValues()Z

    move-result v5

    iput-boolean v5, p0, Landroid/content/res/LidroidResources;->mHasValues:Z

    .line 168
    :cond_1
    return-void

    .line 136
    :cond_2
    const/16 v5, 0x9

    new-array v1, v5, [I

    fill-array-data v1, :array_0

    .line 141
    .local v1, "guessIds":[I
    const/4 v4, 0x0

    .line 142
    .local v4, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_3

    .line 143
    aget v3, v1, v2

    .line 145
    .local v3, "id":I
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/content/res/LidroidResources;->getResourcePackageName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 146
    if-eqz v4, :cond_4

    .line 155
    .end local v3    # "id":I
    :cond_3
    if-eqz v4, :cond_0

    .line 156
    invoke-static {p0, v4}, Llidroid/content/res/ThemeResourcesPackage;->getThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Llidroid/content/res/ThemeResourcesPackage;

    move-result-object v5

    iput-object v5, p0, Landroid/content/res/LidroidResources;->mThemeResources:Llidroid/content/res/ThemeResources;

    .line 159
    iget-object v5, p0, Landroid/content/res/LidroidResources;->mActivityIcons:Ljava/util/List;

    if-nez v5, :cond_0

    .line 160
    invoke-virtual {p0, v4}, Landroid/content/res/LidroidResources;->getActivityIcons(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    .restart local v3    # "id":I
    :catch_0
    move-exception v0

    .line 142
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 136
    nop

    :array_0
    .array-data 4
        0x7f010000
        0x7f020000
        0x7f030000
        0x7f040000
        0x7f050000
        0x7f060000
        0x7f070000
        0x7f080000
        0x7f090000
    .end array-data
.end method

.method loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 354
    iget-boolean v9, p0, Landroid/content/res/LidroidResources;->mPreloading:Z

    if-eqz v9, :cond_1

    .line 355
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 417
    :cond_0
    :goto_0
    return-object v2

    .line 358
    :cond_1
    iget v9, p1, Landroid/util/TypedValue;->type:I

    const/16 v10, 0x1c

    if-lt v9, v10, :cond_3

    iget v9, p1, Landroid/util/TypedValue;->type:I

    const/16 v10, 0x1f

    if-gt v9, v10, :cond_3

    .line 360
    invoke-virtual {p0, p2}, Landroid/content/res/LidroidResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 361
    .local v0, "color":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 362
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v2, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    .line 364
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 369
    .end local v0    # "color":Ljava/lang/Integer;
    :cond_3
    iget v9, p1, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v9, v9

    const/16 v11, 0x20

    shl-long/2addr v9, v11

    iget v11, p1, Landroid/util/TypedValue;->data:I

    int-to-long v11, v11

    or-long v5, v9, v11

    .line 370
    .local v5, "key":J
    invoke-direct {p0, v5, v6}, Landroid/content/res/LidroidResources;->getCachedDrawable(J)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 372
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_0

    .line 376
    iget-object v9, p0, Landroid/content/res/LidroidResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v9, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_5

    .line 377
    iget-object v9, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 378
    .local v4, "file":Ljava/lang/String;
    const-string v9, ".xml"

    invoke-virtual {v4, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 379
    const/4 v8, 0x0

    .line 381
    .local v8, "rp":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget v9, p1, Landroid/util/TypedValue;->assetCookie:I

    const-string v10, "drawable"

    invoke-virtual {p0, v4, p2, v9, v10}, Landroid/content/res/LidroidResources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 383
    invoke-static {p0, v8}, Landroid/graphics/drawable/Drawable;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 392
    if-eqz v8, :cond_4

    :try_start_1
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 400
    .end local v8    # "rp":Landroid/content/res/XmlResourceParser;
    :cond_4
    :goto_1
    if-eqz v2, :cond_8

    .line 401
    iget v9, p1, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 402
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 403
    .local v1, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v1, :cond_5

    .line 404
    iget-object v10, p0, Landroid/content/res/LidroidResources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v10

    .line 405
    :try_start_2
    iget-object v9, p0, Landroid/content/res/LidroidResources;->mLzDrawableCache:Landroid/util/LongSparseArray;

    new-instance v11, Ljava/lang/ref/WeakReference;

    invoke-direct {v11, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v9, v5, v6, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 406
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 413
    .end local v1    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v4    # "file":Ljava/lang/String;
    :cond_5
    :goto_2
    if-nez v2, :cond_0

    .line 414
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 384
    .restart local v4    # "file":Ljava/lang/String;
    .restart local v8    # "rp":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v3

    .line 385
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v7, Landroid/content/res/Resources$NotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from drawable resource ID #0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 388
    .local v7, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v7, v3}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 389
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 392
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v7    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v9

    if-eqz v8, :cond_6

    :try_start_4
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_6
    :goto_3
    throw v9

    .line 395
    .end local v8    # "rp":Landroid/content/res/XmlResourceParser;
    :cond_7
    iget-object v10, p0, Landroid/content/res/LidroidResources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v10

    .line 396
    :try_start_5
    invoke-virtual {p0, p1, p2}, Landroid/content/res/LidroidResources;->loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 397
    monitor-exit v10

    goto :goto_1

    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v9

    .line 406
    .restart local v1    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :catchall_2
    move-exception v9

    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v9

    .line 409
    .end local v1    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_8
    iget-object v9, p0, Landroid/content/res/LidroidResources;->mSkipFiles:Landroid/util/SparseArray;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, p2, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 392
    .restart local v8    # "rp":Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v9

    goto :goto_1

    :catch_2
    move-exception v10

    goto :goto_3
.end method

.method loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I

    .prologue
    .line 442
    const/4 v0, 0x0

    .line 445
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Landroid/content/res/LidroidResources;->mActivityIcons:Ljava/util/List;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/content/res/LidroidResources;->mActivityIcons:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 446
    invoke-direct {p0, p1, p2}, Landroid/content/res/LidroidResources;->loadIcon(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 447
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 489
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 452
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v4, 0x0

    .line 455
    .local v4, "info":Llidroid/content/res/ThemeZipFile$ThemeFileInfo;
    :try_start_0
    iget-object v7, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 457
    .local v3, "file":Ljava/lang/String;
    iget-object v7, p0, Landroid/content/res/LidroidResources;->mThemeResources:Llidroid/content/res/ThemeResources;

    iget v8, p1, Landroid/util/TypedValue;->assetCookie:I

    invoke-direct {p0, v8}, Landroid/content/res/LidroidResources;->getCookieType(I)I

    move-result v8

    invoke-virtual {v7, v8, v3}, Llidroid/content/res/ThemeResources;->getThemeFileStream(ILjava/lang/String;)Llidroid/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v4

    .line 460
    if-nez v4, :cond_1

    const-string v7, "-sw"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 461
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    const/16 v9, 0x2d

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2d

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 462
    iget-object v7, p0, Landroid/content/res/LidroidResources;->mThemeResources:Llidroid/content/res/ThemeResources;

    iget v8, p1, Landroid/util/TypedValue;->assetCookie:I

    invoke-direct {p0, v8}, Landroid/content/res/LidroidResources;->getCookieType(I)I

    move-result v8

    invoke-virtual {v7, v8, v3}, Llidroid/content/res/ThemeResources;->getThemeFileStream(ILjava/lang/String;)Llidroid/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v4

    .line 465
    :cond_1
    if-eqz v4, :cond_4

    .line 466
    const/4 v6, 0x0

    .line 467
    .local v6, "opts":Landroid/graphics/BitmapFactory$Options;
    iget v7, v4, Llidroid/content/res/ThemeZipFile$ThemeFileInfo;->mDensity:I

    if-lez v7, :cond_2

    iget v7, p1, Landroid/util/TypedValue;->density:I

    const v8, 0xffff

    if-eq v7, v8, :cond_2

    .line 468
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    .end local v6    # "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 469
    .restart local v6    # "opts":Landroid/graphics/BitmapFactory$Options;
    iget v7, v4, Llidroid/content/res/ThemeZipFile$ThemeFileInfo;->mDensity:I

    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 472
    :cond_2
    iget-object v5, v4, Llidroid/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    .line 474
    .local v5, "inputStream":Ljava/io/InputStream;
    const-string v7, ".9.png"

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 475
    invoke-static {v5}, Landroid/content/res/SimulateNinePngUtil;->convertIntoNinePngStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v5

    .line 478
    :cond_3
    invoke-static {p0, p1, v5, v3, v6}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 485
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_4
    if-eqz v4, :cond_5

    iget-object v7, v4, Llidroid/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    if-eqz v7, :cond_5

    .line 486
    :try_start_1
    iget-object v7, v4, Llidroid/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .end local v3    # "file":Ljava/lang/String;
    :cond_5
    :goto_1
    move-object v1, v0

    .line 489
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 481
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v2

    .line 482
    .local v2, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 485
    if-eqz v4, :cond_5

    iget-object v7, v4, Llidroid/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    if-eqz v7, :cond_5

    .line 486
    :try_start_2
    iget-object v7, v4, Llidroid/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v7

    goto :goto_1

    .line 485
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    if-eqz v4, :cond_6

    iget-object v8, v4, Llidroid/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    if-eqz v8, :cond_6

    .line 486
    :try_start_3
    iget-object v8, v4, Llidroid/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_6
    :goto_2
    throw v7

    :catch_2
    move-exception v8

    goto :goto_2

    .restart local v3    # "file":Ljava/lang/String;
    :catch_3
    move-exception v7

    goto :goto_1
.end method

.method loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 8
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "assetCookie"    # I
    .param p4, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 538
    if-nez p2, :cond_0

    .line 539
    new-instance v5, Landroid/content/res/Resources$NotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from xml type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " resource ID #0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 544
    :cond_0
    iget-object v5, p0, Landroid/content/res/LidroidResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 545
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 580
    :goto_0
    return-object v5

    .line 549
    :cond_1
    :try_start_0
    iget-object v6, p0, Landroid/content/res/LidroidResources;->mCachedXmlBlockIds:[I

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :try_start_1
    iget-object v5, p0, Landroid/content/res/LidroidResources;->mCachedXmlBlockIds:[I

    array-length v4, v5

    .line 551
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_3

    .line 552
    iget-object v5, p0, Landroid/content/res/LidroidResources;->mCachedXmlBlockIds:[I

    aget v5, v5, v1

    if-ne v5, p2, :cond_2

    .line 553
    iget-object v5, p0, Landroid/content/res/LidroidResources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v5

    monitor-exit v6

    goto :goto_0

    .line 574
    .end local v1    # "i":I
    .end local v4    # "size":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 576
    :catch_0
    move-exception v5

    .line 580
    :goto_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    goto :goto_0

    .line 551
    .restart local v1    # "i":I
    .restart local v4    # "size":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 557
    :cond_3
    :try_start_3
    invoke-virtual {p0, p2, p3, p1, p4}, Landroid/content/res/LidroidResources;->openThemeXmlBlock(IILjava/lang/String;Ljava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v0

    .line 559
    .local v0, "block":Landroid/content/res/XmlBlock;
    if-eqz v0, :cond_6

    .line 560
    iget v5, p0, Landroid/content/res/LidroidResources;->mLastCachedXmlBlockIndex:I

    add-int/lit8 v3, v5, 0x1

    .line 561
    .local v3, "pos":I
    if-lt v3, v4, :cond_4

    const/4 v3, 0x0

    .line 563
    :cond_4
    iput v3, p0, Landroid/content/res/LidroidResources;->mLastCachedXmlBlockIndex:I

    .line 564
    iget-object v5, p0, Landroid/content/res/LidroidResources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aget-object v2, v5, v3

    .line 565
    .local v2, "oldBlock":Landroid/content/res/XmlBlock;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/content/res/XmlBlock;->close()V

    .line 567
    :cond_5
    iget-object v5, p0, Landroid/content/res/LidroidResources;->mCachedXmlBlockIds:[I

    aput p2, v5, v3

    .line 568
    iget-object v5, p0, Landroid/content/res/LidroidResources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aput-object v0, v5, v3

    .line 570
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v5

    monitor-exit v6

    goto :goto_0

    .line 572
    .end local v2    # "oldBlock":Landroid/content/res/XmlBlock;
    .end local v3    # "pos":I
    :cond_6
    iget-object v5, p0, Landroid/content/res/LidroidResources;->mSkipFiles:Landroid/util/SparseArray;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, p2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 574
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public final newTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 663
    new-instance v0, Landroid/content/res/LidroidResources$LidroidTheme;

    invoke-direct {v0, p0}, Landroid/content/res/LidroidResources$LidroidTheme;-><init>(Landroid/content/res/LidroidResources;)V

    return-object v0
.end method

.method public obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I

    .prologue
    .line 585
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/res/LidroidResources;->replaceTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public obtainTypedArray(I)Landroid/content/res/TypedArray;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 590
    invoke-super {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/res/LidroidResources;->replaceTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 6
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/util/TypedValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 597
    const/4 v2, 0x0

    .line 598
    .local v2, "is":Ljava/io/InputStream;
    iget-object v3, p0, Landroid/content/res/LidroidResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 599
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v3

    .line 618
    :goto_0
    return-object v3

    .line 602
    :cond_0
    const/4 v1, 0x0

    .line 604
    .local v1, "info":Llidroid/content/res/ThemeZipFile$ThemeFileInfo;
    invoke-virtual {p0, p1, p2, v5}, Landroid/content/res/LidroidResources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 606
    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, "file":Ljava/lang/String;
    iget-object v3, p0, Landroid/content/res/LidroidResources;->mThemeResources:Llidroid/content/res/ThemeResources;

    iget v4, p2, Landroid/util/TypedValue;->assetCookie:I

    invoke-direct {p0, v4}, Landroid/content/res/LidroidResources;->getCookieType(I)I

    move-result v4

    invoke-virtual {v3, v4, v0}, Llidroid/content/res/ThemeResources;->getThemeFileStream(ILjava/lang/String;)Llidroid/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v1

    .line 609
    if-nez v1, :cond_1

    .line 610
    iget-object v3, p0, Landroid/content/res/LidroidResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 612
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v2

    :goto_1
    move-object v3, v2

    .line 618
    goto :goto_0

    .line 615
    :cond_1
    iget-object v2, v1, Llidroid/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    goto :goto_1
.end method

.method openThemeXmlBlock(IILjava/lang/String;Ljava/lang/String;)Landroid/content/res/XmlBlock;
    .locals 11
    .param p1, "id"    # I
    .param p2, "cookie"    # I
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    .line 493
    const/4 v2, 0x0

    .line 494
    .local v2, "file":Ljava/lang/String;
    const/4 v3, 0x0

    .line 496
    .local v3, "info":Llidroid/content/res/ThemeZipFile$ThemeFileInfo;
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 497
    .local v7, "value":Landroid/util/TypedValue;
    const/4 v8, 0x1

    invoke-virtual {p0, p1, v7, v8}, Landroid/content/res/LidroidResources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 499
    const/4 v5, 0x0

    .line 502
    .local v5, "retval":Landroid/content/res/XmlBlock;
    :try_start_0
    iget-object v8, v7, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 504
    iget-object v8, p0, Landroid/content/res/LidroidResources;->mThemeResources:Llidroid/content/res/ThemeResources;

    invoke-virtual {v8, p2, v2, p4}, Llidroid/content/res/ThemeResources;->getThemeFileStream(ILjava/lang/String;Ljava/lang/String;)Llidroid/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v3

    .line 507
    if-nez v3, :cond_0

    const-string v8, "-sw"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 508
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    const/16 v10, 0x2d

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2d

    invoke-virtual {v2, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 509
    iget-object v8, p0, Landroid/content/res/LidroidResources;->mThemeResources:Llidroid/content/res/ThemeResources;

    invoke-virtual {v8, p2, v2, p4}, Llidroid/content/res/ThemeResources;->getThemeFileStream(ILjava/lang/String;Ljava/lang/String;)Llidroid/content/res/ThemeZipFile$ThemeFileInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 512
    :cond_0
    if-nez v3, :cond_2

    const/4 v8, 0x0

    .line 528
    if-eqz v3, :cond_1

    .line 529
    :try_start_1
    iget-object v9, v3, Llidroid/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 533
    :cond_1
    :goto_0
    return-object v8

    .line 514
    :cond_2
    const/16 v8, 0x200

    :try_start_2
    new-array v1, v8, [B

    .line 515
    .local v1, "buf":[B
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v8, 0x1000

    invoke-direct {v0, v8}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 516
    .local v0, "bab":Lorg/apache/http/util/ByteArrayBuffer;
    const/4 v4, 0x0

    .line 518
    .local v4, "len":I
    :goto_1
    iget-object v8, v3, Llidroid/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v8, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_4

    .line 519
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8, v4}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 524
    .end local v0    # "bab":Lorg/apache/http/util/ByteArrayBuffer;
    .end local v1    # "buf":[B
    .end local v4    # "len":I
    :catch_0
    move-exception v8

    .line 528
    if-eqz v3, :cond_3

    .line 529
    :try_start_3
    iget-object v8, v3, Llidroid/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_2
    move-object v8, v5

    .line 533
    goto :goto_0

    .line 522
    .restart local v0    # "bab":Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v1    # "buf":[B
    .restart local v4    # "len":I
    :cond_4
    :try_start_4
    new-instance v6, Landroid/content/res/XmlBlock;

    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/content/res/XmlBlock;-><init>([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 528
    .end local v5    # "retval":Landroid/content/res/XmlBlock;
    .local v6, "retval":Landroid/content/res/XmlBlock;
    if-eqz v3, :cond_6

    .line 529
    :try_start_5
    iget-object v8, v3, Llidroid/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object v5, v6

    .end local v6    # "retval":Landroid/content/res/XmlBlock;
    .restart local v5    # "retval":Landroid/content/res/XmlBlock;
    goto :goto_2

    .end local v5    # "retval":Landroid/content/res/XmlBlock;
    .restart local v6    # "retval":Landroid/content/res/XmlBlock;
    :catch_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "retval":Landroid/content/res/XmlBlock;
    .restart local v5    # "retval":Landroid/content/res/XmlBlock;
    goto :goto_2

    .line 528
    .end local v0    # "bab":Lorg/apache/http/util/ByteArrayBuffer;
    .end local v1    # "buf":[B
    .end local v4    # "len":I
    :catchall_0
    move-exception v8

    if-eqz v3, :cond_5

    .line 529
    :try_start_6
    iget-object v9, v3, Llidroid/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_5
    :goto_3
    throw v8

    :catch_2
    move-exception v9

    goto :goto_3

    :catch_3
    move-exception v8

    goto :goto_2

    :catch_4
    move-exception v9

    goto :goto_0

    .end local v5    # "retval":Landroid/content/res/XmlBlock;
    .restart local v0    # "bab":Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v1    # "buf":[B
    .restart local v4    # "len":I
    .restart local v6    # "retval":Landroid/content/res/XmlBlock;
    :cond_6
    move-object v5, v6

    .end local v6    # "retval":Landroid/content/res/XmlBlock;
    .restart local v5    # "retval":Landroid/content/res/XmlBlock;
    goto :goto_2
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 4
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 627
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 628
    iget-object v2, p0, Landroid/content/res/LidroidResources;->mThemeResources:Llidroid/content/res/ThemeResources;

    if-nez v2, :cond_0

    .line 629
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/content/res/LidroidResources;->init(Z)V

    .line 658
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 659
    return-void

    .line 632
    :cond_1
    iget-object v3, p0, Landroid/content/res/LidroidResources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 633
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/LidroidResources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 636
    .local v1, "currentConfig":Landroid/content/res/Configuration;
    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    .line 637
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 643
    .local v0, "configChanges":I
    :goto_1
    const/high16 v2, -0x80000000

    and-int/2addr v2, v0

    if-eqz v2, :cond_6

    .line 645
    iget-object v2, p0, Landroid/content/res/LidroidResources;->mThemeResources:Llidroid/content/res/ThemeResources;

    if-eqz v2, :cond_6

    .line 646
    iget-object v2, p0, Landroid/content/res/LidroidResources;->mIntegers:Landroid/util/SparseArray;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/content/res/LidroidResources;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 647
    :cond_2
    iget-object v2, p0, Landroid/content/res/LidroidResources;->mCharSequences:Landroid/util/SparseArray;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/content/res/LidroidResources;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 648
    :cond_3
    iget-object v2, p0, Landroid/content/res/LidroidResources;->mSkipFiles:Landroid/util/SparseArray;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/content/res/LidroidResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 649
    :cond_4
    iget-object v2, p0, Landroid/content/res/LidroidResources;->mLzDrawableCache:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/content/res/LidroidResources;->mLzDrawableCache:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 651
    :cond_5
    iget-object v2, p0, Landroid/content/res/LidroidResources;->mThemeResources:Llidroid/content/res/ThemeResources;

    invoke-virtual {v2}, Llidroid/content/res/ThemeResources;->checkUpdate()Z

    .line 652
    iget-object v2, p0, Landroid/content/res/LidroidResources;->mThemeResources:Llidroid/content/res/ThemeResources;

    invoke-virtual {v2}, Llidroid/content/res/ThemeResources;->hasValues()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/res/LidroidResources;->mHasValues:Z

    .line 655
    :cond_6
    monitor-exit v3

    goto :goto_0

    .end local v0    # "configChanges":I
    .end local v1    # "currentConfig":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 640
    .restart local v1    # "currentConfig":Landroid/content/res/Configuration;
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "configChanges":I
    goto :goto_1
.end method
