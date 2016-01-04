.class public final Llidroid/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llidroid/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final SequenceView:[I

.field public static final SequenceView_layout_maxHeight:I = 0x0

.field public static final StatusBarWidget:[I

.field public static final StatusBarWidget_keyCode:I = 0x0

.field public static final StatusBarWidget_keyRepeat:I = 0x1

.field public static final StatusBarWidget_observerKey:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 255
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, 0x5010000

    aput v2, v0, v1

    sput-object v0, Llidroid/R$styleable;->SequenceView:[I

    .line 288
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Llidroid/R$styleable;->StatusBarWidget:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x5010001
        0x5010002
        0x5010003
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
