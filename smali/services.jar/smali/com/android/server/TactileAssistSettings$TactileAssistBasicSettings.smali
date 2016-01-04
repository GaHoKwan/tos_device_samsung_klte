.class Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;
.super Ljava/lang/Object;
.source "TactileAssistSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TactileAssistSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TactileAssistBasicSettings"
.end annotation


# static fields
.field static final density_ERM:[I

.field static final density_LRA:[I

.field static final density_PIEZO:[I

.field static final density_Slow_ERM:[I

.field static final sharpness_ERM:[I

.field static final sharpness_LRA:[I

.field static final sharpness_PIEZO:[I

.field static final sharpness_Slow_ERM:[I

.field static final strength_ERM:[I

.field static final strength_LRA:[I

.field static final strength_PIEZO:[I

.field static final strength_Slow_ERM:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 662
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->strength_ERM:[I

    .line 665
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->density_ERM:[I

    .line 668
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->sharpness_ERM:[I

    .line 671
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->strength_Slow_ERM:[I

    .line 674
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->density_Slow_ERM:[I

    .line 677
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->sharpness_Slow_ERM:[I

    .line 680
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->strength_LRA:[I

    .line 683
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->density_LRA:[I

    .line 686
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->sharpness_LRA:[I

    .line 689
    new-array v0, v1, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->strength_PIEZO:[I

    .line 692
    new-array v0, v1, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->density_PIEZO:[I

    .line 695
    new-array v0, v1, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->sharpness_PIEZO:[I

    return-void

    .line 662
    :array_0
    .array-data 4
        0xf
        0xf
        0xf
    .end array-data

    .line 665
    :array_1
    .array-data 4
        0x0
        0x5
        0xa
    .end array-data

    .line 668
    :array_2
    .array-data 4
        0xf
        0xf
        0xf
    .end array-data

    .line 671
    :array_3
    .array-data 4
        0x4
        0x6
        0x9
    .end array-data

    .line 674
    :array_4
    .array-data 4
        0x5
        0x7
        0x7
    .end array-data

    .line 677
    :array_5
    .array-data 4
        0x3
        0x3
        0x3
    .end array-data

    .line 680
    :array_6
    .array-data 4
        0x0
        0x7
        0xf
    .end array-data

    .line 683
    :array_7
    .array-data 4
        0x0
        0xa
        0xa
    .end array-data

    .line 686
    :array_8
    .array-data 4
        0x0
        0xa
        0xf
    .end array-data

    .line 689
    :array_9
    .array-data 4
        0x3
        0x8
        0xf
    .end array-data

    .line 692
    :array_a
    .array-data 4
        0xa
        0xa
        0xa
    .end array-data

    .line 695
    :array_b
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDensity(II)I
    .locals 2
    .param p0, "actuator"    # I
    .param p1, "intensity"    # I

    .prologue
    .line 726
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 727
    sget-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->density_PIEZO:[I

    invoke-static {p1}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getIntensity(I)I

    move-result v1

    aget v0, v0, v1

    .line 733
    :goto_0
    return v0

    .line 728
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 729
    sget-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->density_LRA:[I

    invoke-static {p1}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getIntensity(I)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0

    .line 730
    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    .line 731
    sget-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->density_Slow_ERM:[I

    invoke-static {p1}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getIntensity(I)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0

    .line 733
    :cond_2
    sget-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->density_ERM:[I

    invoke-static {p1}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getIntensity(I)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0
.end method

.method private static getIntensity(I)I
    .locals 1
    .param p0, "intensity"    # I

    .prologue
    .line 701
    if-lez p0, :cond_1

    .line 703
    const/4 v0, 0x3

    if-le p0, v0, :cond_0

    .line 704
    const/4 p0, 0x3

    .line 707
    :cond_0
    add-int/lit8 p0, p0, -0x1

    .line 709
    .end local p0    # "intensity":I
    :cond_1
    return p0
.end method

.method public static getSharpness(II)I
    .locals 2
    .param p0, "actuator"    # I
    .param p1, "intensity"    # I

    .prologue
    .line 738
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 739
    sget-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->sharpness_PIEZO:[I

    invoke-static {p1}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getIntensity(I)I

    move-result v1

    aget v0, v0, v1

    .line 745
    :goto_0
    return v0

    .line 740
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 741
    sget-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->sharpness_LRA:[I

    invoke-static {p1}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getIntensity(I)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0

    .line 742
    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    .line 743
    sget-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->sharpness_Slow_ERM:[I

    invoke-static {p1}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getIntensity(I)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0

    .line 745
    :cond_2
    sget-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->sharpness_ERM:[I

    invoke-static {p1}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getIntensity(I)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public static getStrength(II)I
    .locals 2
    .param p0, "actuator"    # I
    .param p1, "intensity"    # I

    .prologue
    .line 714
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 715
    sget-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->strength_PIEZO:[I

    invoke-static {p1}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getIntensity(I)I

    move-result v1

    aget v0, v0, v1

    .line 721
    :goto_0
    return v0

    .line 716
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 717
    sget-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->strength_LRA:[I

    invoke-static {p1}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getIntensity(I)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0

    .line 718
    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    .line 719
    sget-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->strength_Slow_ERM:[I

    invoke-static {p1}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getIntensity(I)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0

    .line 721
    :cond_2
    sget-object v0, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->strength_ERM:[I

    invoke-static {p1}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getIntensity(I)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0
.end method
