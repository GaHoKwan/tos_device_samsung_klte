.class public Llidroid/content/res/DisplayUtils;
.super Ljava/lang/Object;
.source "DisplayUtils.java"


# static fields
.field private static final DENSITIES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Llidroid/content/res/DisplayUtils;->DENSITIES:[I

    return-void

    :array_0
    .array-data 4
        0x280
        0x1e0
        0x140
        0xf0
        0xa0
        0x78
        0x1
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBestDensityOrder(I)[I
    .locals 7
    .param p0, "currentDensity"    # I

    .prologue
    .line 21
    const/4 v1, 0x1

    .line 22
    .local v1, "i":I
    const/4 v0, 0x0

    .line 23
    .local v0, "densities":[I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    sget-object v6, Llidroid/content/res/DisplayUtils;->DENSITIES:[I

    array-length v6, v6

    if-ge v2, v6, :cond_3

    .line 24
    sget-object v6, Llidroid/content/res/DisplayUtils;->DENSITIES:[I

    aget v6, v6, v2

    if-ne p0, v6, :cond_0

    .line 25
    const/4 v1, 0x0

    .line 26
    :cond_0
    sget-object v6, Llidroid/content/res/DisplayUtils;->DENSITIES:[I

    array-length v6, v6

    add-int/2addr v6, v1

    new-array v0, v6, [I

    .line 27
    const/4 v6, 0x0

    aput p0, v0, v6

    .line 28
    move v3, v1

    .line 29
    .local v3, "k":I
    const/4 v4, 0x1

    .line 30
    .local v4, "m":I
    :goto_1
    sget-object v6, Llidroid/content/res/DisplayUtils;->DENSITIES:[I

    array-length v6, v6

    if-ge v3, v6, :cond_2

    .line 31
    sget-object v6, Llidroid/content/res/DisplayUtils;->DENSITIES:[I

    aget v6, v6, v3

    if-eq p0, v6, :cond_1

    .line 32
    add-int/lit8 v5, v4, 0x1

    .line 33
    .local v5, "n":I
    sget-object v6, Llidroid/content/res/DisplayUtils;->DENSITIES:[I

    aget v6, v6, v3

    aput v6, v0, v4

    .line 34
    move v4, v5

    .line 36
    .end local v5    # "n":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 23
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    .end local v3    # "k":I
    .end local v4    # "m":I
    :cond_3
    return-object v0
.end method

.method public static getDensityName(I)Ljava/lang/String;
    .locals 5
    .param p0, "density"    # I

    .prologue
    .line 46
    sparse-switch p0, :sswitch_data_0

    .line 73
    sget-object v3, Llidroid/content/res/DisplayUtils;->DENSITIES:[I

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .line 74
    .local v0, "i":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "j":I
    :goto_0
    if-lez v1, :cond_1

    .line 75
    sget-object v3, Llidroid/content/res/DisplayUtils;->DENSITIES:[I

    aget v3, v3, v1

    sub-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sget-object v4, Llidroid/content/res/DisplayUtils;->DENSITIES:[I

    aget v4, v4, v0

    sub-int/2addr v4, p0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 76
    move v0, v1

    .line 74
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 48
    .end local v0    # "i":I
    .end local v1    # "j":I
    :sswitch_0
    const-string v2, "ldpi"

    .line 81
    .local v2, "name":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 51
    .end local v2    # "name":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v2, "mdpi"

    .line 52
    .restart local v2    # "name":Ljava/lang/String;
    goto :goto_1

    .line 54
    .end local v2    # "name":Ljava/lang/String;
    :sswitch_2
    const-string v2, "hdpi"

    .line 55
    .restart local v2    # "name":Ljava/lang/String;
    goto :goto_1

    .line 57
    .end local v2    # "name":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v2, "xhdpi"

    .line 58
    .restart local v2    # "name":Ljava/lang/String;
    goto :goto_1

    .line 60
    .end local v2    # "name":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v2, "xxhdpi"

    .line 61
    .restart local v2    # "name":Ljava/lang/String;
    goto :goto_1

    .line 63
    .end local v2    # "name":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v2, "xxxhdpi"

    .line 64
    .restart local v2    # "name":Ljava/lang/String;
    goto :goto_1

    .line 66
    .end local v2    # "name":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v2, "nodpi"

    .line 67
    .restart local v2    # "name":Ljava/lang/String;
    goto :goto_1

    .line 69
    .end local v2    # "name":Ljava/lang/String;
    :sswitch_7
    const-string v2, ""

    .line 70
    .restart local v2    # "name":Ljava/lang/String;
    goto :goto_1

    .line 77
    .end local v2    # "name":Ljava/lang/String;
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    :cond_1
    sget-object v3, Llidroid/content/res/DisplayUtils;->DENSITIES:[I

    aget v3, v3, v0

    invoke-static {v3}, Llidroid/content/res/DisplayUtils;->getDensityName(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "name":Ljava/lang/String;
    goto :goto_1

    .line 46
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x1 -> :sswitch_6
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_3
        0x1e0 -> :sswitch_4
        0x280 -> :sswitch_5
    .end sparse-switch
.end method

.method public static getDensitySuffix(I)Ljava/lang/String;
    .locals 3
    .param p0, "paramInt"    # I

    .prologue
    .line 85
    invoke-static {p0}, Llidroid/content/res/DisplayUtils;->getDensityName(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "str":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_0
    return-object v0
.end method

.method public static getDrawbleDensityFolder(I)Ljava/lang/String;
    .locals 2
    .param p0, "paramInt"    # I

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Llidroid/content/res/DisplayUtils;->getDrawbleDensityName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawbleDensityName(I)Ljava/lang/String;
    .locals 2
    .param p0, "paramInt"    # I

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Llidroid/content/res/DisplayUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
