.class public Llidroid/content/res/IconCustomizer;
.super Ljava/lang/Object;
.source "IconCustomizer.java"


# static fields
.field private static final DBG:Z = false

.field private static final SRGBMask:I = 0xffffff

.field private static final TAG:Ljava/lang/String; = "IconCustomizer"

.field private static final sAlphaShift:I = 0x18

.field private static sCache:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sCanvas:Landroid/graphics/Canvas;

.field private static final sCustomizedIconHeight:I

.field private static final sCustomizedIconWidth:I

.field private static final sDensities:[I

.field private static final sDensity:I

.field private static sFilterPaint:Landroid/graphics/Paint; = null

.field private static final sIconHeight:I

.field private static final sIconWidth:I

.field private static final sOldBounds:Landroid/graphics/Rect;

.field private static final sPathPrefix:Ljava/lang/String; = "/data/theme/customized_icons/"

.field private static final sSystemResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v2, 0x5a

    const/16 v1, 0x48

    .line 40
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Llidroid/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    .line 41
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Llidroid/content/res/IconCustomizer;->sSystemResources:Landroid/content/res/Resources;

    .line 42
    sget-object v0, Llidroid/content/res/IconCustomizer;->sSystemResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v0, Llidroid/content/res/IconCustomizer;->sDensity:I

    .line 43
    sget v0, Llidroid/content/res/IconCustomizer;->sDensity:I

    invoke-static {v0}, Llidroid/content/res/DisplayUtils;->getBestDensityOrder(I)[I

    move-result-object v0

    sput-object v0, Llidroid/content/res/IconCustomizer;->sDensities:[I

    .line 44
    invoke-static {v2}, Llidroid/content/res/IconCustomizer;->scalePixel(I)I

    move-result v0

    sput v0, Llidroid/content/res/IconCustomizer;->sCustomizedIconHeight:I

    .line 45
    invoke-static {v2}, Llidroid/content/res/IconCustomizer;->scalePixel(I)I

    move-result v0

    sput v0, Llidroid/content/res/IconCustomizer;->sCustomizedIconWidth:I

    .line 48
    invoke-static {v1}, Llidroid/content/res/IconCustomizer;->scalePixel(I)I

    move-result v0

    sput v0, Llidroid/content/res/IconCustomizer;->sIconHeight:I

    .line 49
    invoke-static {v1}, Llidroid/content/res/IconCustomizer;->scalePixel(I)I

    move-result v0

    sput v0, Llidroid/content/res/IconCustomizer;->sIconWidth:I

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Llidroid/content/res/IconCustomizer;->sOldBounds:Landroid/graphics/Rect;

    .line 58
    sget-object v0, Llidroid/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Llidroid/content/res/IconCustomizer;->sCache:Ljava/util/HashMap;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCache()V
    .locals 2

    .prologue
    .line 63
    sget-object v1, Llidroid/content/res/IconCustomizer;->sCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 64
    :try_start_0
    sget-object v0, Llidroid/content/res/IconCustomizer;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 65
    monitor-exit v1

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static composeIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "base"    # Landroid/graphics/Bitmap;

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 70
    .local v3, "baseWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 71
    .local v7, "baseHeight":I
    mul-int v2, v3, v7

    new-array v1, v2, [I

    .line 72
    .local v1, "basePixels":[I
    const/4 v12, 0x0

    .line 74
    .local v12, "isComposed":Z
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 75
    invoke-static {v3, v7, v1}, Llidroid/content/res/IconCustomizer;->cutEdge(II[I)V

    .line 77
    sget v2, Llidroid/content/res/IconCustomizer;->sCustomizedIconWidth:I

    sget v4, Llidroid/content/res/IconCustomizer;->sCustomizedIconHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 79
    .local v13, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 81
    .local v0, "canvas":Landroid/graphics/Canvas;
    const-string v2, "icon_background.png"

    invoke-static {v2}, Llidroid/content/res/IconCustomizer;->getCachedThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 82
    .local v10, "background":Landroid/graphics/Bitmap;
    const-string v2, "icon_foreground.png"

    invoke-static {v2}, Llidroid/content/res/IconCustomizer;->getCachedThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 84
    .local v11, "foreground":Landroid/graphics/Bitmap;
    if-nez v10, :cond_0

    if-eqz v11, :cond_3

    :cond_0
    const/4 v12, 0x1

    .line 85
    :goto_0
    if-eqz v12, :cond_4

    .line 86
    if-eqz v10, :cond_1

    .line 87
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v10, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 90
    :cond_1
    const/4 v2, 0x0

    sget v4, Llidroid/content/res/IconCustomizer;->sCustomizedIconWidth:I

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    sget v5, Llidroid/content/res/IconCustomizer;->sCustomizedIconHeight:I

    sub-int/2addr v5, v7

    div-int/lit8 v5, v5, 0x2

    const/4 v8, 0x1

    sget-object v9, Llidroid/content/res/IconCustomizer;->sFilterPaint:Landroid/graphics/Paint;

    move v6, v3

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 93
    if-eqz v11, :cond_2

    .line 94
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v11, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 101
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 102
    return-object v13

    .line 84
    :cond_3
    const/4 v12, 0x0

    goto :goto_0

    .line 98
    :cond_4
    invoke-static {p0}, Llidroid/content/res/IconCustomizer;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Llidroid/content/res/IconCustomizer;->sFilterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method private static cutEdge(II[I)V
    .locals 11
    .param p0, "baseWidth"    # I
    .param p1, "baseHeight"    # I
    .param p2, "basePixels"    # [I

    .prologue
    .line 165
    const-string v2, "icon_mask.png"

    invoke-static {v2}, Llidroid/content/res/IconCustomizer;->getCachedThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 166
    .local v0, "alphaCutter":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 180
    :cond_0
    return-void

    .line 169
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 170
    .local v9, "alphaWidth":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 172
    .local v8, "alphaHeight":I
    if-lt v9, p0, :cond_0

    if-lt v8, p1, :cond_0

    .line 173
    mul-int v2, v9, v8

    new-array v1, v2, [I

    .line 174
    .local v1, "alphaPixels":[I
    const/4 v2, 0x0

    sub-int v3, v9, p0

    div-int/lit8 v4, v3, 0x2

    sub-int v3, v8, p1

    div-int/lit8 v5, v3, 0x2

    move v3, p0

    move v6, p0

    move v7, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 176
    mul-int v2, p0, p1

    add-int/lit8 v10, v2, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_0

    .line 177
    aget v2, p2, v10

    const v3, 0xffffff

    aget v4, p2, v10

    ushr-int/lit8 v4, v4, 0x18

    aget v5, v1, v10

    ushr-int/lit8 v5, v5, 0x18

    mul-int/2addr v4, v5

    div-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    add-int/2addr v3, v4

    and-int/2addr v2, v3

    aput v2, p2, v10

    .line 176
    add-int/lit8 v10, v10, -0x1

    goto :goto_0
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 247
    sget-object v2, Llidroid/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    .line 248
    .local v2, "canvas":Landroid/graphics/Canvas;
    sget v10, Llidroid/content/res/IconCustomizer;->sIconWidth:I

    .line 249
    .local v10, "targetWidth":I
    sget v9, Llidroid/content/res/IconCustomizer;->sIconHeight:I

    .line 250
    .local v9, "targetHeight":I
    instance-of v13, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v13, :cond_3

    move-object v5, p0

    .line 251
    check-cast v5, Landroid/graphics/drawable/PaintDrawable;

    .line 252
    .local v5, "painter":Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v5, v10}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 253
    invoke-virtual {v5, v9}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 260
    .end local v5    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_0
    :goto_0
    move v12, v10

    .line 261
    .local v12, "width":I
    move v3, v9

    .line 262
    .local v3, "height":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 263
    .local v8, "sourceWidth":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 264
    .local v7, "sourceHeight":I
    if-lez v8, :cond_2

    if-lez v8, :cond_2

    .line 265
    if-lt v12, v8, :cond_1

    if-ge v3, v7, :cond_5

    .line 266
    :cond_1
    int-to-float v13, v8

    int-to-float v14, v7

    div-float v6, v13, v14

    .line 267
    .local v6, "ratio":F
    if-le v8, v7, :cond_4

    .line 268
    int-to-float v13, v12

    div-float/2addr v13, v6

    float-to-int v3, v13

    .line 277
    .end local v6    # "ratio":F
    :cond_2
    :goto_1
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v9, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 278
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 279
    sub-int v13, v10, v12

    div-int/lit8 v4, v13, 0x2

    .line 280
    .local v4, "left":I
    sub-int v13, v9, v3

    div-int/lit8 v11, v13, 0x2

    .line 281
    .local v11, "top":I
    sget-object v13, Llidroid/content/res/IconCustomizer;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 282
    add-int v13, v4, v12

    add-int v14, v11, v3

    invoke-virtual {p0, v4, v11, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 283
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 284
    sget-object v13, Llidroid/content/res/IconCustomizer;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v13}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 285
    return-object v0

    .line 254
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "height":I
    .end local v4    # "left":I
    .end local v7    # "sourceHeight":I
    .end local v8    # "sourceWidth":I
    .end local v11    # "top":I
    .end local v12    # "width":I
    :cond_3
    instance-of v13, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v13, :cond_0

    move-object v1, p0

    .line 255
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 256
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v13

    if-nez v13, :cond_0

    .line 257
    sget-object v13, Llidroid/content/res/IconCustomizer;->sSystemResources:Landroid/content/res/Resources;

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 269
    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v3    # "height":I
    .restart local v6    # "ratio":F
    .restart local v7    # "sourceHeight":I
    .restart local v8    # "sourceWidth":I
    .restart local v12    # "width":I
    :cond_4
    if-le v7, v8, :cond_2

    .line 270
    int-to-float v13, v3

    mul-float/2addr v13, v6

    float-to-int v12, v13

    goto :goto_1

    .line 271
    .end local v6    # "ratio":F
    :cond_5
    if-ge v8, v12, :cond_2

    if-ge v7, v3, :cond_2

    .line 272
    move v12, v8

    .line 273
    move v3, v7

    goto :goto_1
.end method

.method public static generateIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "base"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 243
    invoke-static {p0}, Llidroid/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Llidroid/content/res/IconCustomizer;->composeIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Llidroid/content/res/IconCustomizer;->scaleDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static getCachedThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 106
    sget v0, Llidroid/content/res/IconCustomizer;->sCustomizedIconWidth:I

    sget v1, Llidroid/content/res/IconCustomizer;->sCustomizedIconHeight:I

    invoke-static {p0, v0, v1}, Llidroid/content/res/IconCustomizer;->getCachedThemeIcon(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getCachedThemeIcon(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "result":Landroid/graphics/Bitmap;
    sget-object v2, Llidroid/content/res/IconCustomizer;->sCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 113
    .local v1, "soft":Ljava/lang/ref/SoftReference;
    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 117
    .restart local v0    # "result":Landroid/graphics/Bitmap;
    :cond_0
    if-nez v0, :cond_1

    .line 118
    invoke-static {p0}, Llidroid/content/res/IconCustomizer;->getThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    sget-object v2, Llidroid/content/res/IconCustomizer;->sCache:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_1
    invoke-static {v0, p1, p2}, Llidroid/content/res/IconCustomizer;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static getCustomizedIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "file":Ljava/lang/String;
    invoke-static {v0}, Llidroid/content/res/IconCustomizer;->getIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Llidroid/content/res/IconCustomizer;->scaleDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static getCustomizedIconDrawableWithFileName(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "file":Ljava/lang/String;
    invoke-static {v0}, Llidroid/content/res/IconCustomizer;->getIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Llidroid/content/res/IconCustomizer;->scaleDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static getIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-static {p0}, Llidroid/content/res/IconCustomizer;->getThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 208
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/theme/customized_icons/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "pathName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v1, "localFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 213
    if-nez v0, :cond_1

    .line 214
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 221
    .end local v1    # "localFile":Ljava/io/File;
    .end local v2    # "pathName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 216
    .restart local v1    # "localFile":Ljava/io/File;
    .restart local v2    # "pathName":Ljava/lang/String;
    :cond_1
    sget v3, Llidroid/content/res/IconCustomizer;->sDensity:I

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_0
.end method

.method private static getThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 143
    const/4 v1, 0x0

    .line 145
    .local v1, "icon":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Llidroid/content/res/IconCustomizer;->sDensities:[I

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Llidroid/content/res/IconCustomizer;->sDensities:[I

    aget v5, v5, v0

    invoke-static {v5}, Llidroid/content/res/DisplayUtils;->getDrawbleDensityFolder(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "str":Ljava/lang/String;
    invoke-static {}, Llidroid/content/res/ThemeResources;->getSystem()Llidroid/content/res/ThemeResourcesSystem;

    move-result-object v4

    sget-object v5, Llidroid/content/res/IconCustomizer;->sSystemResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v5, v3}, Llidroid/content/res/ThemeResourcesSystem;->getIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 148
    if-eqz v1, :cond_0

    .line 149
    sget-object v4, Llidroid/content/res/IconCustomizer;->sDensities:[I

    aget v4, v4, v0

    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    move-object v2, v1

    .line 161
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    .end local v3    # "str":Ljava/lang/String;
    .local v2, "icon":Landroid/graphics/Bitmap;
    :goto_1
    return-object v2

    .line 153
    .end local v2    # "icon":Landroid/graphics/Bitmap;
    .restart local v1    # "icon":Landroid/graphics/Bitmap;
    .restart local v3    # "str":Ljava/lang/String;
    :cond_0
    invoke-static {}, Llidroid/content/res/ThemeResources;->getSystem()Llidroid/content/res/ThemeResourcesSystem;

    move-result-object v4

    sget-object v5, Llidroid/content/res/IconCustomizer;->sSystemResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v5, p0}, Llidroid/content/res/ThemeResourcesSystem;->getIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 154
    if-eqz v1, :cond_1

    .line 155
    const/16 v4, 0xf0

    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    move-object v2, v1

    .line 156
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    .restart local v2    # "icon":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 145
    .end local v2    # "icon":Landroid/graphics/Bitmap;
    .restart local v1    # "icon":Landroid/graphics/Bitmap;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v3    # "str":Ljava/lang/String;
    :cond_2
    move-object v2, v1

    .line 161
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    .restart local v2    # "icon":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method public static saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 183
    const-string v1, "ThemeService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Llidroid/content/res/IThemeManagerService$Stub;->asInterface(Landroid/os/IBinder;)Llidroid/content/res/IThemeManagerService;

    move-result-object v0

    .line 185
    .local v0, "ts":Llidroid/content/res/IThemeManagerService;
    :try_start_0
    invoke-interface {v0, p0, p1}, Llidroid/content/res/IThemeManagerService;->saveCustomizedIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 126
    sget v0, Llidroid/content/res/IconCustomizer;->sCustomizedIconWidth:I

    sget v1, Llidroid/content/res/IconCustomizer;->sCustomizedIconHeight:I

    invoke-static {p0, v0, v1}, Llidroid/content/res/IconCustomizer;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "icon"    # Landroid/graphics/Bitmap;
    .param p1, "iconWidth"    # I
    .param p2, "iconHeight"    # I

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez p0, :cond_1

    .line 132
    const/4 p0, 0x0

    .line 139
    .end local p0    # "icon":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 134
    .restart local p0    # "icon":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-eq v1, p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v1, p2, :cond_0

    .line 137
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 138
    sget v1, Llidroid/content/res/IconCustomizer;->sDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    move-object p0, v0

    .line 139
    goto :goto_0
.end method

.method private static scaleDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .param p0, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 236
    if-eqz p0, :cond_0

    .line 237
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Llidroid/content/res/IconCustomizer;->sSystemResources:Landroid/content/res/Resources;

    invoke-static {p0}, Llidroid/content/res/IconCustomizer;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 239
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static scalePixel(I)I
    .locals 3
    .param p0, "px"    # I

    .prologue
    .line 193
    sget v0, Llidroid/content/res/IconCustomizer;->sDensity:I

    .line 194
    .local v0, "density":I
    if-gtz v0, :cond_0

    .line 195
    const/16 v0, 0xf0

    .line 198
    :cond_0
    sget v1, Llidroid/content/res/IconCustomizer;->sDensity:I

    const/16 v2, 0x140

    if-ne v1, v2, :cond_1

    .line 199
    const/16 v0, 0x168

    .line 202
    :cond_1
    mul-int v1, p0, v0

    div-int/lit16 v1, v1, 0xf0

    return v1
.end method
