.class public Lcom/android/internal/widget/Smileys;
.super Ljava/lang/Object;
.source "Smileys.java"


# static fields
.field public static ANGEL:I

.field public static COOL:I

.field public static CRYING:I

.field public static EMBARRASSED:I

.field public static FOOT_IN_MOUTH:I

.field public static HAPPY:I

.field public static KISSING:I

.field public static LAUGHING:I

.field public static LIPS_ARE_SEALED:I

.field public static MONEY_MOUTH:I

.field public static SAD:I

.field public static SURPRISED:I

.field public static TONGUE_STICKING_OUT:I

.field public static UNDECIDED:I

.field public static WINKING:I

.field public static WTF:I

.field public static YELLING:I

.field private static final sIconIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/widget/Smileys;->sIconIds:[I

    const/4 v0, 0x0

    sput v0, Lcom/android/internal/widget/Smileys;->HAPPY:I

    const/4 v0, 0x1

    sput v0, Lcom/android/internal/widget/Smileys;->SAD:I

    const/4 v0, 0x2

    sput v0, Lcom/android/internal/widget/Smileys;->WINKING:I

    const/4 v0, 0x3

    sput v0, Lcom/android/internal/widget/Smileys;->TONGUE_STICKING_OUT:I

    const/4 v0, 0x4

    sput v0, Lcom/android/internal/widget/Smileys;->SURPRISED:I

    const/4 v0, 0x5

    sput v0, Lcom/android/internal/widget/Smileys;->KISSING:I

    const/4 v0, 0x6

    sput v0, Lcom/android/internal/widget/Smileys;->YELLING:I

    const/4 v0, 0x7

    sput v0, Lcom/android/internal/widget/Smileys;->COOL:I

    const/16 v0, 0x8

    sput v0, Lcom/android/internal/widget/Smileys;->MONEY_MOUTH:I

    const/16 v0, 0x9

    sput v0, Lcom/android/internal/widget/Smileys;->FOOT_IN_MOUTH:I

    const/16 v0, 0xa

    sput v0, Lcom/android/internal/widget/Smileys;->EMBARRASSED:I

    const/16 v0, 0xb

    sput v0, Lcom/android/internal/widget/Smileys;->ANGEL:I

    const/16 v0, 0xc

    sput v0, Lcom/android/internal/widget/Smileys;->UNDECIDED:I

    const/16 v0, 0xd

    sput v0, Lcom/android/internal/widget/Smileys;->CRYING:I

    const/16 v0, 0xe

    sput v0, Lcom/android/internal/widget/Smileys;->LIPS_ARE_SEALED:I

    const/16 v0, 0xf

    sput v0, Lcom/android/internal/widget/Smileys;->LAUGHING:I

    const/16 v0, 0x10

    sput v0, Lcom/android/internal/widget/Smileys;->WTF:I

    return-void

    :array_0
    .array-data 4
        0x10802fe
        0x1080303
        0x1080329
        0x1080305
        0x1080304
        0x10802ff
        0x108032b
        0x10802fa
        0x1080302
        0x10802fd
        0x10802fc
        0x10802f9
        0x1080306
        0x10802fb
        0x1080301
        0x1080300
        0x108032a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSmileyResource(I)I
    .locals 1

    sget-object v0, Lcom/android/internal/widget/Smileys;->sIconIds:[I

    aget v0, v0, p0

    return v0
.end method
