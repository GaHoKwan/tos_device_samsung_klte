.class Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EdgeInspector"
.end annotation


# static fields
.field public static final BOTTOM:I = 0x2

.field public static final LEFT:I = 0x4

.field public static final NONE:I = 0x0

.field public static final RIGHT:I = 0x8

.field public static final TOP:I = 0x1


# instance fields
.field private mBound:Landroid/graphics/Rect;

.field private mDir:I

.field private mIsCandidate:Z

.field private mPadding:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bound"    # Landroid/graphics/Rect;
    .param p2, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 1430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1425
    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    .line 1428
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mIsCandidate:Z

    .line 1431
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->set(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1432
    return-void
.end method


# virtual methods
.method public check(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x1

    .line 1466
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    if-le v0, p1, :cond_4

    .line 1467
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    .line 1475
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    if-ge v0, p2, :cond_1

    .line 1476
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    .line 1479
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    if-nez v0, :cond_3

    .line 1480
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    if-le v0, p1, :cond_5

    .line 1481
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mIsCandidate:Z

    .line 1486
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mIsCandidate:Z

    if-nez v0, :cond_3

    .line 1487
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-le v0, p2, :cond_6

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-le p2, v0, :cond_6

    .line 1488
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mIsCandidate:Z

    .line 1495
    :cond_3
    :goto_2
    return-void

    .line 1468
    :cond_4
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    .line 1469
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    goto :goto_0

    .line 1482
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_2

    .line 1483
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mIsCandidate:Z

    goto :goto_1

    .line 1489
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-ge v0, p2, :cond_3

    .line 1490
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mIsCandidate:Z

    goto :goto_2
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1460
    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    .line 1461
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mIsCandidate:Z

    .line 1462
    return-void
.end method

.method public isCandidate()Z
    .locals 1

    .prologue
    .line 1456
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mIsCandidate:Z

    return v0
.end method

.method public isDiagonal()Z
    .locals 1

    .prologue
    .line 1436
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 1437
    :cond_1
    const/4 v0, 0x1

    .line 1439
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEdge()Z
    .locals 1

    .prologue
    .line 1449
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEdge(I)Z
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 1453
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bound"    # Landroid/graphics/Rect;
    .param p2, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 1443
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mBound:Landroid/graphics/Rect;

    .line 1444
    iput-object p2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mPadding:Landroid/graphics/Rect;

    .line 1445
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mIsCandidate:Z

    .line 1446
    return-void
.end method
