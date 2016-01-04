.class public Lcom/android/server/sec/ClippedDataPickerGridView;
.super Landroid/widget/GridView;
.source "ClippedDataPickerGridView.java"


# instance fields
.field final ANIMATION_DELAY:I

.field final ANIMATION_TIME:I

.field COLUMN_COUNT:I

.field final TAG:Ljava/lang/String;

.field delCnt:I

.field delayTime:I

.field deleteItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field deleteItemSize:I

.field private isAnimating:Z

.field isDelete:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/sec/ClippedDataPickerGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const-string v1, "ClippedDataPickerGridView"

    iput-object v1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->TAG:Ljava/lang/String;

    .line 35
    const/16 v1, 0x1f4

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->ANIMATION_TIME:I

    .line 36
    iput v2, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->ANIMATION_DELAY:I

    .line 38
    iput v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->COLUMN_COUNT:I

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemList:Ljava/util/ArrayList;

    .line 42
    iput-boolean v2, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->isDelete:Z

    .line 44
    iput v2, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemSize:I

    .line 45
    iput v2, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    .line 46
    iput v2, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delayTime:I

    .line 48
    iput-boolean v2, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->isAnimating:Z

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 58
    .local v0, "cfg":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_1

    .line 59
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->COLUMN_COUNT:I

    .line 64
    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 65
    return-void

    .line 60
    :cond_1
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 61
    iput v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->COLUMN_COUNT:I

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/server/sec/ClippedDataPickerGridView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/sec/ClippedDataPickerGridView;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->isAnimating:Z

    return p1
.end method

.method private checkDeleteCount(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 149
    const/4 v1, 0x0

    .line 150
    .local v1, "n":I
    move v2, p1

    .line 152
    .local v2, "prevIndex":I
    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    .line 154
    iget v0, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemSize:I

    if-ge v0, v3, :cond_0

    .line 155
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 157
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 158
    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    .line 159
    move v2, v1

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_0
    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemSize:I

    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    if-le v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .end local p1    # "index":I
    :cond_1
    return p1
.end method

.method private getAnim(III)Landroid/view/animation/TranslateAnimation;
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 82
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-direct {v0, v2, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 83
    .local v0, "anim":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 84
    iget v2, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delayTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 85
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 87
    move v1, p3

    .line 88
    .local v1, "currIndex":I
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    add-int v3, v1, v2

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_1

    .line 89
    new-instance v2, Lcom/android/server/sec/ClippedDataPickerGridView$1;

    invoke-direct {v2, p0, v1}, Lcom/android/server/sec/ClippedDataPickerGridView$1;-><init>(Lcom/android/server/sec/ClippedDataPickerGridView;I)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 131
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delayTime:I

    add-int/lit8 v2, v2, 0x0

    iput v2, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delayTime:I

    .line 133
    return-object v0

    .line 110
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 111
    new-instance v2, Lcom/android/server/sec/ClippedDataPickerGridView$2;

    invoke-direct {v2, p0}, Lcom/android/server/sec/ClippedDataPickerGridView$2;-><init>(Lcom/android/server/sec/ClippedDataPickerGridView;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private requestAnimation(Landroid/view/View;I)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 137
    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    add-int/2addr v4, p2

    iget v5, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->COLUMN_COUNT:I

    rem-int/2addr v4, v5

    iget v5, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->COLUMN_COUNT:I

    rem-int v5, p2, v5

    sub-int v2, v4, v5

    .line 138
    .local v2, "indexW":I
    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    add-int/2addr v4, p2

    int-to-double v4, v4

    iget v6, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->COLUMN_COUNT:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-double v5, p2

    iget v7, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->COLUMN_COUNT:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    sub-int v1, v4, v5

    .line 141
    .local v1, "indexH":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    mul-int v0, v4, v2

    .line 142
    .local v0, "horizontalAnimationWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int v3, v4, v1

    .line 144
    .local v3, "verticalAnimationHeight":I
    invoke-direct {p0, v0, v3, p2}, Lcom/android/server/sec/ClippedDataPickerGridView;->getAnim(III)Landroid/view/animation/TranslateAnimation;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 146
    return-void
.end method


# virtual methods
.method public isLayoutAnimating()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->isAnimating:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 170
    invoke-super {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 172
    iget-boolean v6, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->isDelete:Z

    if-eqz v6, :cond_3

    .line 175
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 176
    .local v2, "len":I
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    .line 177
    .local v0, "first":I
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 178
    .local v4, "startItemIndex":I
    move v3, v4

    .line 180
    .local v3, "nextItemIndex":I
    iput v8, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    .line 181
    iput v8, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delayTime:I

    .line 183
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 185
    add-int v6, v0, v1

    if-lt v6, v4, :cond_1

    .line 186
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 188
    .local v5, "view":Landroid/view/View;
    add-int v6, v0, v1

    iget v7, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    sub-int v7, v3, v7

    if-ne v6, v7, :cond_0

    .line 189
    invoke-direct {p0, v3}, Lcom/android/server/sec/ClippedDataPickerGridView;->checkDeleteCount(I)I

    move-result v3

    .line 192
    :cond_0
    invoke-direct {p0, v5, v1}, Lcom/android/server/sec/ClippedDataPickerGridView;->requestAnimation(Landroid/view/View;I)V

    .line 183
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    :cond_2
    iput-boolean v8, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->isDelete:Z

    .line 197
    .end local v0    # "first":I
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "nextItemIndex":I
    .end local v4    # "startItemIndex":I
    :cond_3
    return-void
.end method

.method public setDeletedItems(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "deleteItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 70
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 71
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemList:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemSize:I

    .line 76
    iget v1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemSize:I

    if-lez v1, :cond_1

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->isDelete:Z

    .line 79
    :cond_1
    return-void
.end method

.method public setLayoutAnimationState(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->isAnimating:Z

    if-eq v0, p1, :cond_0

    .line 205
    iput-boolean p1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->isAnimating:Z

    .line 207
    :cond_0
    return-void
.end method
