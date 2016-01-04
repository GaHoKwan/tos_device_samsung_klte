.class public Lcom/samsung/android/cover/CoverState;
.super Ljava/lang/Object;
.source "CoverState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final COLOR_BLACK:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_BLUSH_PINK:I = 0x3

.field public static final COLOR_CARBON_METAL:I = 0x9

.field public static final COLOR_CHARCOAL_GRAY:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_CLASSIC_WHITE:I = 0x2

.field public static final COLOR_DEFAULT:I = 0x0

.field public static final COLOR_GRAYISH_BLUE:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_INDIGO_BLUE:I = 0x6

.field public static final COLOR_JET_BLACK:I = 0x1

.field public static final COLOR_MAGENTA:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_MINT_BLUE:I = 0x8

.field public static final COLOR_MUSTARD_YELLOW:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_OATMEAL:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_OATMEAL_BEIGE:I = 0x5

.field public static final COLOR_ORANGE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_PEAKCOCK_GREEN:I = 0xa

.field public static final COLOR_PEARL_WHITE:I = 0xd

.field public static final COLOR_PINK:I = 0xc

.field public static final COLOR_PLUM_RED:I = 0x7

.field public static final COLOR_ROSE_GOLD:I = 0xb

.field public static final COLOR_SOFT_PINK:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_WHITE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_WILD_ORANGE:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/cover/CoverState;",
            ">;"
        }
    .end annotation
.end field

.field public static final SWITCH_STATE_COVER_CLOSE:Z = false

.field public static final SWITCH_STATE_COVER_OPEN:Z = true

.field private static final TAG:Ljava/lang/String; = "CoverState"

.field public static final TYPE_FLIP_COVER:I = 0x0

.field public static final TYPE_HEALTH_COVER:I = 0x4

.field public static final TYPE_MINI_SVIEW_COVER:I = 0x63
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_NONE:I = 0x2

.field public static final TYPE_SVIEW_CHARGER_COVER:I = 0x3

.field public static final TYPE_SVIEW_COVER:I = 0x1

.field public static final TYPE_S_CHARGER_COVER:I = 0x5


# instance fields
.field public color:I

.field public heightPixel:I

.field public switchState:Z

.field public type:I

.field public widthPixel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 340
    new-instance v0, Lcom/samsung/android/cover/CoverState$1;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cover/CoverState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 252
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 253
    iput v1, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 254
    iput v1, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 255
    iput v1, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 256
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "defaultType"    # I
    .param p2, "defaultWidthPixel"    # I
    .param p3, "defaultHeightPixel"    # I

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 268
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 269
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 270
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 271
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 272
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    invoke-direct {p0, p1}, Lcom/samsung/android/cover/CoverState;->readFromParcel(Landroid/os/Parcel;)V

    .line 298
    return-void
.end method

.method public constructor <init>(ZIIII)V
    .locals 0
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 285
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 286
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 287
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 288
    iput p5, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 289
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 335
    return-void

    .line 330
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->color:I

    return v0
.end method

.method public getSwitchState()Z
    .locals 1

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    return v0
.end method

.method public getWindowHeight()I
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    return v0
.end method

.method public getWindowWidth()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    return v0
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 415
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 416
    return-void
.end method

.method public setSwitchState(Z)V
    .locals 0
    .param p1, "switchState"    # Z

    .prologue
    .line 389
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 390
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 402
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 403
    return-void
.end method

.method public setWindowHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 441
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 442
    return-void
.end method

.method public setWindowWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 428
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 429
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 359
    const-string v0, "CoverState(switchState=%b type=%d color=%d widthPixel=%d heightPixel=%d)"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCoverState(ZIIII)V
    .locals 0
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I

    .prologue
    .line 366
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 367
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 368
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 369
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 370
    iput p5, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 371
    return-void
.end method

.method public updateCoverWindowSize(II)V
    .locals 0
    .param p1, "widthPixel"    # I
    .param p2, "heightPixel"    # I

    .prologue
    .line 374
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 375
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 376
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
