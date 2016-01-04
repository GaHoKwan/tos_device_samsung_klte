.class public Lcom/samsung/android/multiwindow/MultiWindowStyle;
.super Ljava/lang/Object;
.source "MultiWindowStyle.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;,
        Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/multiwindow/MultiWindowStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOTIFY_REASON_ARRANGE_MINIMIZED:I = 0x2

.field public static final NOTIFY_REASON_FOCUS_CHANGED:I = 0x4

.field public static final NOTIFY_REASON_SIZE_CHANGED:I = 0x1

.field public static final NOTIFY_REASON_STYLE_CHANGED:I = 0x0

.field public static final OPTION_EXTERNAL_DISP:I = 0x400

.field public static final OPTION_FIXED_RATIO:I = 0x8000

.field public static final OPTION_FIXED_SIZE:I = 0x10000

.field public static final OPTION_FORCE_CONTROL_RESIZE:I = 0x4000

.field public static final OPTION_FORCE_MAKE_PHONEWINDOW:I = 0x40000

.field public static final OPTION_FORCE_MULTIPLE_TASK:I = 0x80000

.field public static final OPTION_FORCE_TITLE_BAR:I = 0x20

.field public static final OPTION_FULLSCREEN_MINIMIZABLE:I = 0x20000

.field public static final OPTION_HIDDEN:I = 0x8

.field public static final OPTION_INHERIT_STACK:I = 0x2000

.field public static final OPTION_ISOLATED_SPLIT:I = 0x1000

.field public static final OPTION_MINIMIZED:I = 0x4

.field public static final OPTION_NO_TITLE_BAR:I = 0x10

.field public static final OPTION_PINUP:I = 0x1

.field public static final OPTION_RESIZE:I = 0x2

.field public static final OPTION_SCALE:I = 0x800

.field public static final OPTION_TOOLKIT:I = 0x200

.field private static final STYLE_ACTIVITY_FORCE_TITLE_BAR:Ljava/lang/String; = "forceTitleBar"

.field private static final STYLE_ACTIVITY_FULLSCREEN_ONLY:Ljava/lang/String; = "fullscreenOnly"

.field private static final STYLE_ACTIVITY_RESIZE_ONLY:Ljava/lang/String; = "resizeOnly"

.field private static final STYLE_FIXED_RATIO:Ljava/lang/String; = "fixedRatio"

.field private static final STYLE_FIXED_SIZE:Ljava/lang/String; = "fixedSize"

.field private static final STYLE_FREESTYLE_ONLY:Ljava/lang/String; = "freestyleOnly"

.field private static final STYLE_ISOLATED_SPLIT:Ljava/lang/String; = "isolatedSplit"

.field private static final STYLE_NO_TITLE_BAR:Ljava/lang/String; = "noTitleBar"

.field public static final TYPE_CASCADE:I = 0x2

.field public static final TYPE_NORMAL:I = 0x0

.field public static final TYPE_SPLIT:I = 0x1

.field private static final UNIQUE_OPTIONS:I = 0x23032

.field public static final ZONE_A:I = 0x3

.field public static final ZONE_B:I = 0xc

.field public static final ZONE_C:I = 0x1

.field public static final ZONE_D:I = 0x2

.field public static final ZONE_E:I = 0x4

.field public static final ZONE_F:I = 0x8

.field public static final ZONE_FULL:I = 0xf

.field public static final ZONE_UNKNOWN:I

.field public static sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field private static sStyleStrings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sTypeStrings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppRequestOrientation:I

.field private mBounds:Landroid/graphics/Rect;

.field private mIsNull:Z

.field private mIsolatedCenterPoint:Landroid/graphics/Point;

.field private mMinBoundForLandscapeMode:Landroid/graphics/Rect;

.field private mMinBoundForPortraitMode:Landroid/graphics/Rect;

.field private mOptionFlags:I

.field private mType:I

.field private mZone:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 304
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle$1;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle$1;-><init>()V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 634
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sStyleStrings:Ljava/util/HashMap;

    .line 635
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sTypeStrings:Ljava/util/HashMap;

    .line 637
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sStyleStrings:Ljava/util/HashMap;

    const-string/jumbo v1, "noTitleBar"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sStyleStrings:Ljava/util/HashMap;

    const-string v1, "forceTitleBar"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sStyleStrings:Ljava/util/HashMap;

    const-string v1, "isolatedSplit"

    const/16 v2, 0x1000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sStyleStrings:Ljava/util/HashMap;

    const-string v1, "fixedSize"

    const/high16 v2, 0x10000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sStyleStrings:Ljava/util/HashMap;

    const-string v1, "fixedRatio"

    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sTypeStrings:Ljava/util/HashMap;

    const-string v1, "freestyleOnly"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sTypeStrings:Ljava/util/HashMap;

    const-string v1, "fullscreenOnly"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle$2;

    invoke-direct {v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle$2;-><init>(I)V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mMinBoundForPortraitMode:Landroid/graphics/Rect;

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mMinBoundForLandscapeMode:Landroid/graphics/Rect;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mAppRequestOrientation:I

    .line 82
    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    .line 258
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    .line 417
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsNull:Z

    .line 147
    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    .line 148
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mMinBoundForPortraitMode:Landroid/graphics/Rect;

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mMinBoundForLandscapeMode:Landroid/graphics/Rect;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mAppRequestOrientation:I

    .line 82
    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    .line 258
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    .line 417
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsNull:Z

    .line 155
    iput p1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcelledData"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mMinBoundForPortraitMode:Landroid/graphics/Rect;

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mMinBoundForLandscapeMode:Landroid/graphics/Rect;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mAppRequestOrientation:I

    .line 82
    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    .line 258
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    .line 417
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsNull:Z

    .line 151
    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->readFromParcel(Landroid/os/Parcel;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 2
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mMinBoundForPortraitMode:Landroid/graphics/Rect;

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mMinBoundForLandscapeMode:Landroid/graphics/Rect;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mAppRequestOrientation:I

    .line 82
    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    .line 258
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    .line 417
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsNull:Z

    .line 159
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 160
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "isNull"    # Z

    .prologue
    const/4 v1, 0x0

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mMinBoundForPortraitMode:Landroid/graphics/Rect;

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mMinBoundForLandscapeMode:Landroid/graphics/Rect;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mAppRequestOrientation:I

    .line 82
    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    .line 258
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    .line 417
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsNull:Z

    .line 420
    iput-boolean p1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsNull:Z

    .line 421
    return-void
.end method

.method private parseStyleOptions(Ljava/lang/String;)V
    .locals 5
    .param p1, "stylesString"    # Ljava/lang/String;

    .prologue
    .line 706
    if-nez p1, :cond_0

    .line 723
    :goto_0
    return-void

    .line 710
    :cond_0
    const/4 v1, 0x0

    .line 711
    .local v1, "options":I
    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "\\|"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 712
    .local v3, "styles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 713
    .local v2, "style":Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sStyleStrings:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 714
    sget-object v4, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sStyleStrings:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    or-int/2addr v1, v4

    goto :goto_1

    .line 715
    :cond_2
    sget-object v4, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sTypeStrings:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 716
    sget-object v4, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sTypeStrings:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 717
    const-string v4, "fullscreenOnly"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 718
    iget v4, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    and-int/lit8 v4, v4, -0x3

    iput v4, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    goto :goto_1

    .line 722
    .end local v2    # "style":Ljava/lang/String;
    :cond_3
    iget v4, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    or-int/2addr v4, v1

    iput v4, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    goto :goto_0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcelledData"    # Landroid/os/Parcel;

    .prologue
    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    .line 299
    :cond_0
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mMinBoundForPortraitMode:Landroid/graphics/Rect;

    .line 300
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mMinBoundForLandscapeMode:Landroid/graphics/Rect;

    .line 301
    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    .line 302
    return-void
.end method

.method public static zoneToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "zone"    # I

    .prologue
    .line 368
    packed-switch p0, :pswitch_data_0

    .line 384
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invaild vaue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 370
    :pswitch_1
    const-string v0, "ZONE_A"

    goto :goto_0

    .line 372
    :pswitch_2
    const-string v0, "ZONE_B"

    goto :goto_0

    .line 374
    :pswitch_3
    const-string v0, "ZONE_C"

    goto :goto_0

    .line 376
    :pswitch_4
    const-string v0, "ZONE_D"

    goto :goto_0

    .line 378
    :pswitch_5
    const-string v0, "ZONE_E"

    goto :goto_0

    .line 380
    :pswitch_6
    const-string v0, "ZONE_F"

    goto :goto_0

    .line 382
    :pswitch_7
    const-string v0, "ZONE_UNKNOWN"

    goto :goto_0

    .line 368
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public convertToMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 445
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;

    invoke-direct {v0, p0, p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    .line 446
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    return-object v1
.end method

.method public convertToWindowMode()I
    .locals 4

    .prologue
    .line 440
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    iget v2, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    iget v3, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;III)V

    .line 441
    .local v0, "mode":Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->getCurrentMode()I

    move-result v1

    return v1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .locals 3
    .param p1, "other"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v0, 0x0

    .line 315
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    iget v2, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    if-eq v1, v2, :cond_1

    .line 334
    :cond_0
    :goto_0
    return v0

    .line 319
    :cond_1
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    iget v2, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    if-ne v1, v2, :cond_0

    .line 323
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    iget v2, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    if-ne v1, v2, :cond_0

    .line 327
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    iget-object v2, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAppRequestOrientation()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mAppRequestOrientation:I

    return v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFirstZone()Z
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    packed-switch v0, :pswitch_data_0

    .line 127
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 124
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getIsolatedCenterPoint()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public getMinimumBoundForLandscapeOrientation()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mMinBoundForLandscapeMode:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getMinimumBoundForPortraitOrientation()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mMinBoundForPortraitMode:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    return v0
.end method

.method public getZone()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    return v0
.end method

.method public getZoneByType()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 102
    const/16 v0, 0xf

    :goto_0
    return v0

    .line 96
    :pswitch_0
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getZoneLevel()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    packed-switch v0, :pswitch_data_0

    .line 143
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 134
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 140
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "option"    # I

    .prologue
    .line 199
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInValidZone()Z
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    packed-switch v0, :pswitch_data_0

    .line 116
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 113
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isMultiPhoneWindowNeeded()Z
    .locals 1

    .prologue
    .line 207
    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    :cond_0
    const/4 v0, 0x1

    .line 212
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull()Z
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsNull:Z

    return v0
.end method

.method public isSupportingMultiWindow()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public parseStyleOptions(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V
    .locals 12
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 669
    if-nez p2, :cond_1

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    iget-object v10, p2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v10, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 674
    .local v3, "applicationMetaData":Landroid/os/Bundle;
    if-eqz v3, :cond_2

    .line 675
    const-string v10, "com.sec.android.multiwindow.STYLE"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->parseStyleOptions(Ljava/lang/String;)V

    .line 678
    :cond_2
    iget-object v2, p2, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 679
    .local v2, "activityMetaData":Landroid/os/Bundle;
    if-eqz v2, :cond_3

    .line 680
    const-string v10, "com.sec.android.multiwindow.activity.STYLE"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->parseStyleOptions(Ljava/lang/String;)V

    .line 683
    :cond_3
    const/16 v10, 0x1000

    invoke-virtual {p0, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 685
    const-string v0, "com.sec.android.multiwindow.isolatedSplit.centerPoint.portrait.x"

    .line 686
    .local v0, "METADATA_ISOLATED_SPLIT_CENTER_POINT_X":Ljava/lang/String;
    const-string v1, "com.sec.android.multiwindow.isolatedSplit.centerPoint.portrait.y"

    .line 688
    .local v1, "METADATA_ISOLATED_SPLIT_CENTER_POINT_Y":Ljava/lang/String;
    const-string v10, "com.sec.android.multiwindow.isolatedSplit.centerPoint.portrait.x"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 689
    .local v8, "isolatedCenterPointXResId":I
    const-string v10, "com.sec.android.multiwindow.isolatedSplit.centerPoint.portrait.y"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 693
    .local v9, "isolatedCenterPointYResId":I
    :try_start_0
    iget-object v10, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 694
    .local v6, "context":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 695
    .local v4, "centerPointX":I
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 696
    .local v5, "centerPointY":I
    iget-object v10, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    invoke-virtual {v10, v4, v5}, Landroid/graphics/Point;->set(II)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 697
    .end local v4    # "centerPointX":I
    .end local v5    # "centerPointY":I
    .end local v6    # "context":Landroid/content/Context;
    :catch_0
    move-exception v10

    goto :goto_0

    .line 698
    :catch_1
    move-exception v7

    .line 699
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setAppRequestOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mAppRequestOrientation:I

    .line 54
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 216
    if-nez p1, :cond_0

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rect is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    .line 228
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    goto :goto_0

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public setIsolatedCenterPoint(Landroid/graphics/Point;)V
    .locals 3
    .param p1, "centerPoint"    # Landroid/graphics/Point;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 262
    return-void
.end method

.method public setMinBoundForLandscapeOrientation(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mMinBoundForLandscapeMode:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 252
    return-void
.end method

.method public setMinBoundForPortraitOrientation(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mMinBoundForPortraitMode:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 242
    return-void
.end method

.method public setNull(Z)V
    .locals 0
    .param p1, "isNull"    # Z

    .prologue
    .line 424
    iput-boolean p1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsNull:Z

    .line 425
    return-void
.end method

.method public setOption(II)V
    .locals 2
    .param p1, "option"    # I
    .param p2, "mask"    # I

    .prologue
    .line 187
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    .line 188
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    .line 189
    return-void
.end method

.method public setOption(IZ)V
    .locals 2
    .param p1, "option"    # I
    .param p2, "value"    # Z

    .prologue
    .line 192
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    .line 193
    if-eqz p2, :cond_0

    .line 194
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    .line 196
    :cond_0
    return-void
.end method

.method public setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 1
    .param p1, "other"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 338
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 339
    return-void
.end method

.method public setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V
    .locals 3
    .param p1, "other"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p2, "includeUniqueOptions"    # Z

    .prologue
    .line 342
    if-nez p1, :cond_0

    .line 365
    :goto_0
    return-void

    .line 345
    :cond_0
    iget v0, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    .line 346
    iget v0, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    .line 348
    if-nez p2, :cond_1

    iget v0, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_4

    .line 349
    :cond_1
    iget v0, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    .line 350
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    .line 355
    :goto_1
    iget-object v0, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    .line 356
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    .line 358
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mMinBoundForPortraitMode:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mMinBoundForPortraitMode:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 359
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mMinBoundForLandscapeMode:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mMinBoundForLandscapeMode:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 360
    iget-object v0, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    if-eqz v0, :cond_3

    .line 361
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    .line 364
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsNull:Z

    goto :goto_0

    .line 352
    :cond_4
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    const v1, 0x23032

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    .line 353
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    iget v1, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    const v2, -0x23033

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    goto :goto_1
.end method

.method public setType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    .line 63
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    .line 66
    :cond_0
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    const v1, 0x23032

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    .line 67
    return-void
.end method

.method public setType(IZ)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "resetOptions"    # Z

    .prologue
    .line 45
    if-eqz p2, :cond_0

    .line 46
    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    iput p1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    goto :goto_0
.end method

.method public setZone(I)V
    .locals 0
    .param p1, "zone"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 390
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    const-string/jumbo v1, "{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 393
    const-string v1, ",zone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    const-string v1, ",option=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    const-string v1, "%08x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string v1, ",bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 399
    const-string v1, ",min_bound{port=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mMinBoundForPortraitMode:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 401
    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mMinBoundForPortraitMode:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 403
    const-string v1, "), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    const-string v1, "land=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mMinBoundForLandscapeMode:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 406
    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mMinBoundForLandscapeMode:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 408
    const-string v1, ")}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    const-string v1, ",isNull="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNull()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 411
    const-string v1, ",isolatedCenterPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 413
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 275
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 279
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 287
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mMinBoundForPortraitMode:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 288
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mMinBoundForLandscapeMode:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 289
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 290
    return-void

    .line 282
    :cond_0
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 283
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". But the Bound is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
