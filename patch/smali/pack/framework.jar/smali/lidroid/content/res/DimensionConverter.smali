.class public Llidroid/content/res/DimensionConverter;
.super Ljava/lang/Object;
.source "DimensionConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llidroid/content/res/DimensionConverter$InternalDimension;
    }
.end annotation


# static fields
.field private static final DIMENSION_PATTERN:Ljava/util/regex/Pattern;

.field private static final sDimensionConstantLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Llidroid/content/res/DimensionConverter;->initDimensionConstantLookup()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Llidroid/content/res/DimensionConverter;->sDimensionConstantLookup:Ljava/util/Map;

    .line 28
    const-string v0, "^\\s*(\\d+(\\.\\d+)*)\\s*([a-zA-Z]+)\\s*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Llidroid/content/res/DimensionConverter;->DIMENSION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method private static initDimensionConstantLookup()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string/jumbo v1, "px"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string v1, "dip"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string v1, "dp"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string/jumbo v1, "sp"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string/jumbo v1, "pt"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v1, "in"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string/jumbo v1, "mm"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public static stringToDimension(Ljava/lang/String;Landroid/util/DisplayMetrics;)F
    .locals 3
    .param p0, "dimension"    # Ljava/lang/String;
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 58
    invoke-static {p0}, Llidroid/content/res/DimensionConverter;->stringToInternalDimension(Ljava/lang/String;)Llidroid/content/res/DimensionConverter$InternalDimension;

    move-result-object v0

    .line 61
    .local v0, "internalDimension":Llidroid/content/res/DimensionConverter$InternalDimension;
    iget v1, v0, Llidroid/content/res/DimensionConverter$InternalDimension;->unit:I

    iget v2, v0, Llidroid/content/res/DimensionConverter$InternalDimension;->value:F

    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    return v1
.end method

.method public static stringToDimensionPixelOffset(Ljava/lang/String;Landroid/util/DisplayMetrics;)I
    .locals 3
    .param p0, "dimension"    # Ljava/lang/String;
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 33
    invoke-static {p0}, Llidroid/content/res/DimensionConverter;->stringToInternalDimension(Ljava/lang/String;)Llidroid/content/res/DimensionConverter$InternalDimension;

    move-result-object v0

    .line 36
    .local v0, "internalDimension":Llidroid/content/res/DimensionConverter$InternalDimension;
    iget v1, v0, Llidroid/content/res/DimensionConverter$InternalDimension;->value:F

    .line 37
    .local v1, "value":F
    iget v2, v0, Llidroid/content/res/DimensionConverter$InternalDimension;->unit:I

    invoke-static {v2, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    return v2
.end method

.method public static stringToDimensionPixelSize(Ljava/lang/String;Landroid/util/DisplayMetrics;)I
    .locals 6
    .param p0, "dimension"    # Ljava/lang/String;
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    const/4 v5, 0x0

    .line 43
    invoke-static {p0}, Llidroid/content/res/DimensionConverter;->stringToInternalDimension(Ljava/lang/String;)Llidroid/content/res/DimensionConverter$InternalDimension;

    move-result-object v1

    .line 46
    .local v1, "internalDimension":Llidroid/content/res/DimensionConverter$InternalDimension;
    iget v3, v1, Llidroid/content/res/DimensionConverter$InternalDimension;->value:F

    .line 47
    .local v3, "value":F
    iget v4, v1, Llidroid/content/res/DimensionConverter$InternalDimension;->unit:I

    invoke-static {v4, v3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 49
    .local v0, "f":F
    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v4, v0

    float-to-int v2, v4

    .line 50
    .local v2, "res":I
    if-eqz v2, :cond_0

    .line 53
    .end local v2    # "res":I
    :goto_0
    return v2

    .line 51
    .restart local v2    # "res":I
    :cond_0
    cmpl-float v4, v3, v5

    if-nez v4, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 52
    :cond_1
    cmpl-float v4, v3, v5

    if-lez v4, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    .line 53
    :cond_2
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private static stringToInternalDimension(Ljava/lang/String;)Llidroid/content/res/DimensionConverter$InternalDimension;
    .locals 6
    .param p0, "dimension"    # Ljava/lang/String;

    .prologue
    .line 67
    sget-object v4, Llidroid/content/res/DimensionConverter;->DIMENSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 68
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 71
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 73
    .local v3, "value":F
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "unit":Ljava/lang/String;
    sget-object v4, Llidroid/content/res/DimensionConverter;->sDimensionConstantLookup:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 76
    .local v0, "dimensionUnit":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 78
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4}, Ljava/lang/NumberFormatException;-><init>()V

    throw v4

    .line 81
    :cond_0
    new-instance v4, Llidroid/content/res/DimensionConverter$InternalDimension;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v3, v5}, Llidroid/content/res/DimensionConverter$InternalDimension;-><init>(FI)V

    return-object v4

    .line 85
    .end local v0    # "dimensionUnit":Ljava/lang/Integer;
    .end local v2    # "unit":Ljava/lang/String;
    .end local v3    # "value":F
    :cond_1
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4}, Ljava/lang/NumberFormatException;-><init>()V

    throw v4
.end method
