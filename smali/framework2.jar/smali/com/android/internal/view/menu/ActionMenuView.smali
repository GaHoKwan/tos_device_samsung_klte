.class public Lcom/android/internal/view/menu/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;,
        Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mIsParentThemeDeviceDefault:Z

.field private mLandscapeDividerPadding:I

.field private mMaxItemHeight:I

.field private mMeasuredExtraWidth:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMinCellSize:I

.field private mOriginalEndPadding:I

.field private mOriginalStartPadding:I

.field private mPortraitDividerPadding:I

.field private mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

.field private mReserveOverflow:Z

.field private mScafe:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const-string/jumbo v3, "ro.build.scafe"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mScafe:Ljava/lang/String;

    .line 74
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 76
    .local v1, "density":F
    const/high16 v3, 0x42600000    # 56.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    .line 77
    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    .line 79
    sget-object v3, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v4, 0x10102ce

    invoke-virtual {p1, p2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 81
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    .line 82
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    sget-object v3, Lcom/android/internal/R$styleable;->View:[I

    const v4, 0x10102d8

    invoke-virtual {p1, p2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    const/16 v3, 0x41

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mOriginalStartPadding:I

    .line 88
    const/16 v3, 0x42

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mOriginalEndPadding:I

    .line 89
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 93
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x101046c

    invoke-virtual {v3, v4, v2, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 94
    iget v3, v2, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_0

    .line 95
    iput-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mIsParentThemeDeviceDefault:Z

    .line 99
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mIsParentThemeDeviceDefault:Z

    if-eqz v3, :cond_1

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10500c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mLandscapeDividerPadding:I

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10500c3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPortraitDividerPadding:I

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 105
    iget v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mLandscapeDividerPadding:I

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 107
    :cond_2
    iget v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPortraitDividerPadding:I

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    goto :goto_0
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 13
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    .prologue
    .line 453
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 455
    .local v8, "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    sub-int v2, v11, p4

    .line 457
    .local v2, "childHeightSize":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 458
    .local v1, "childHeightMode":I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 460
    .local v3, "childHeightSpec":I
    instance-of v11, p0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v11, :cond_3

    move-object v11, p0

    check-cast v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move-object v7, v11

    .line 462
    .local v7, "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :goto_0
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v6, 0x1

    .line 464
    .local v6, "hasText":Z
    :goto_1
    const/4 v0, 0x0

    .line 465
    .local v0, "cellsUsed":I
    if-lez p2, :cond_2

    if-eqz v6, :cond_0

    const/4 v11, 0x2

    if-lt p2, v11, :cond_2

    .line 466
    :cond_0
    mul-int v11, p1, p2

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 468
    .local v4, "childWidthSpec":I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 470
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 471
    .local v9, "measuredWidth":I
    div-int v0, v9, p1

    .line 472
    rem-int v11, v9, p1

    if-eqz v11, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 473
    :cond_1
    if-eqz v6, :cond_2

    const/4 v11, 0x2

    if-ge v0, v11, :cond_2

    const/4 v0, 0x2

    .line 476
    .end local v4    # "childWidthSpec":I
    .end local v9    # "measuredWidth":I
    :cond_2
    iget-boolean v11, v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_5

    if-eqz v6, :cond_5

    const/4 v5, 0x1

    .line 477
    .local v5, "expandable":Z
    :goto_2
    iput-boolean v5, v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 479
    iput v0, v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 480
    mul-int v10, v0, p1

    .line 481
    .local v10, "targetWidth":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v3}, Landroid/view/View;->measure(II)V

    .line 483
    return v0

    .line 460
    .end local v0    # "cellsUsed":I
    .end local v5    # "expandable":Z
    .end local v6    # "hasText":Z
    .end local v7    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    .end local v10    # "targetWidth":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 462
    .restart local v7    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 476
    .restart local v0    # "cellsUsed":I
    .restart local v6    # "hasText":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private onMeasureExactFormat(II)V
    .locals 43
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 195
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 196
    .local v18, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v38

    .line 197
    .local v38, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v20

    .line 199
    .local v20, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v39

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v40

    add-int v37, v39, v40

    .line 200
    .local v37, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v39

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v40

    add-int v19, v39, v40

    .line 202
    .local v19, "heightPadding":I
    const/high16 v39, 0x40000000    # 2.0f

    move/from16 v0, v18

    move/from16 v1, v39

    if-ne v0, v1, :cond_0

    sub-int v39, v20, v19

    const/high16 v40, 0x40000000    # 2.0f

    invoke-static/range {v39 .. v40}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    .line 207
    .local v23, "itemHeightSpec":I
    :goto_0
    sub-int v38, v38, v37

    .line 210
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v39, v0

    div-int v4, v38, v39

    .line 211
    .local v4, "cellCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v39, v0

    rem-int v6, v38, v39

    .line 213
    .local v6, "cellSizeRemaining":I
    if-nez v4, :cond_1

    .line 215
    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 436
    :goto_1
    return-void

    .line 202
    .end local v4    # "cellCount":I
    .end local v6    # "cellSizeRemaining":I
    .end local v23    # "itemHeightSpec":I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    move/from16 v39, v0

    sub-int v40, v20, v19

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->min(II)I

    move-result v39

    const/high16 v40, -0x80000000

    invoke-static/range {v39 .. v40}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    goto :goto_0

    .line 219
    .restart local v4    # "cellCount":I
    .restart local v6    # "cellSizeRemaining":I
    .restart local v23    # "itemHeightSpec":I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v39, v0

    div-int v40, v6, v4

    add-int v5, v39, v40

    .line 221
    .local v5, "cellSize":I
    move v8, v4

    .line 222
    .local v8, "cellsRemaining":I
    const/16 v26, 0x0

    .line 223
    .local v26, "maxChildHeight":I
    const/16 v25, 0x0

    .line 224
    .local v25, "maxCellsUsed":I
    const/4 v15, 0x0

    .line 225
    .local v15, "expandableItemCount":I
    const/16 v35, 0x0

    .line 226
    .local v35, "visibleItemCount":I
    const/16 v17, 0x0

    .line 229
    .local v17, "hasOverflow":Z
    const-wide/16 v33, 0x0

    .line 231
    .local v33, "smallestItemsAt":J
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    .line 234
    .local v12, "childCount":I
    const/4 v13, 0x0

    .line 237
    .local v13, "childOfMax":Landroid/view/View;
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_2
    move/from16 v0, v21

    if-ge v0, v12, :cond_b

    .line 238
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 239
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v39

    const/16 v40, 0x8

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_3

    .line 237
    :cond_2
    :goto_3
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 241
    :cond_3
    instance-of v0, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v22, v0

    .line 242
    .local v22, "isGeneratedItem":Z
    add-int/lit8 v35, v35, 0x1

    .line 244
    if-eqz v22, :cond_4

    .line 247
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v41, v0

    const/16 v42, 0x0

    move/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 250
    :cond_4
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 251
    .local v24, "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 252
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 253
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 254
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 255
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 256
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 257
    if-eqz v22, :cond_9

    move-object/from16 v39, v11

    check-cast v39, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v39

    if-eqz v39, :cond_9

    const/16 v39, 0x1

    :goto_4
    move/from16 v0, v39

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 260
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mIsParentThemeDeviceDefault:Z

    move/from16 v39, v0

    if-eqz v39, :cond_5

    .line 261
    move/from16 v0, v22

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 266
    :cond_5
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v39, v0

    if-eqz v39, :cond_a

    const/4 v7, 0x1

    .line 268
    .local v7, "cellsAvailable":I
    :goto_5
    move/from16 v0, v23

    move/from16 v1, v19

    invoke-static {v11, v5, v7, v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    .line 273
    .local v9, "cellsUsed":I
    move/from16 v0, v25

    if-ge v0, v9, :cond_6

    .line 274
    move/from16 v25, v9

    .line 275
    move-object v13, v11

    .line 279
    :cond_6
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v39, v0

    if-eqz v39, :cond_7

    add-int/lit8 v15, v15, 0x1

    .line 280
    :cond_7
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v39, v0

    if-eqz v39, :cond_8

    const/16 v17, 0x1

    .line 282
    :cond_8
    sub-int/2addr v8, v9

    .line 283
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v39

    move/from16 v0, v26

    move/from16 v1, v39

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v26

    .line 284
    const/16 v39, 0x1

    move/from16 v0, v39

    if-ne v9, v0, :cond_2

    const/16 v39, 0x1

    shl-int v39, v39, v21

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v39, v0

    or-long v33, v33, v39

    goto/16 :goto_3

    .line 257
    .end local v7    # "cellsAvailable":I
    .end local v9    # "cellsUsed":I
    :cond_9
    const/16 v39, 0x0

    goto :goto_4

    :cond_a
    move v7, v8

    .line 266
    goto :goto_5

    .line 288
    .end local v11    # "child":Landroid/view/View;
    .end local v22    # "isGeneratedItem":Z
    .end local v24    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_b
    if-gez v8, :cond_c

    add-int v39, v25, v8

    if-lez v39, :cond_c

    .line 289
    add-int v39, v25, v8

    move/from16 v0, v39

    move/from16 v1, v23

    move/from16 v2, v19

    invoke-static {v13, v5, v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    .line 296
    :cond_c
    if-eqz v17, :cond_e

    const/16 v39, 0x2

    move/from16 v0, v35

    move/from16 v1, v39

    if-ne v0, v1, :cond_e

    const/4 v10, 0x1

    .line 301
    .local v10, "centerSingleExpandedItem":Z
    :goto_6
    const/16 v31, 0x0

    .line 302
    .local v31, "needsExpansion":Z
    :goto_7
    if-lez v15, :cond_12

    if-lez v8, :cond_12

    .line 303
    const v27, 0x7fffffff

    .line 304
    .local v27, "minCells":I
    const-wide/16 v28, 0x0

    .line 305
    .local v28, "minCellsAt":J
    const/16 v30, 0x0

    .line 306
    .local v30, "minCellsItemCount":I
    const/16 v21, 0x0

    :goto_8
    move/from16 v0, v21

    if-ge v0, v12, :cond_11

    .line 307
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 308
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 311
    .restart local v24    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v39, v0

    if-nez v39, :cond_f

    .line 306
    :cond_d
    :goto_9
    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    .line 296
    .end local v10    # "centerSingleExpandedItem":Z
    .end local v11    # "child":Landroid/view/View;
    .end local v24    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v27    # "minCells":I
    .end local v28    # "minCellsAt":J
    .end local v30    # "minCellsItemCount":I
    .end local v31    # "needsExpansion":Z
    :cond_e
    const/4 v10, 0x0

    goto :goto_6

    .line 314
    .restart local v10    # "centerSingleExpandedItem":Z
    .restart local v11    # "child":Landroid/view/View;
    .restart local v24    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .restart local v27    # "minCells":I
    .restart local v28    # "minCellsAt":J
    .restart local v30    # "minCellsItemCount":I
    .restart local v31    # "needsExpansion":Z
    :cond_f
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v39, v0

    move/from16 v0, v39

    move/from16 v1, v27

    if-ge v0, v1, :cond_10

    .line 315
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v27, v0

    .line 316
    const/16 v39, 0x1

    shl-int v39, v39, v21

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v28, v0

    .line 317
    const/16 v30, 0x1

    goto :goto_9

    .line 318
    :cond_10
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v39, v0

    move/from16 v0, v39

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    .line 319
    const/16 v39, 0x1

    shl-int v39, v39, v21

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v39, v0

    or-long v28, v28, v39

    .line 320
    add-int/lit8 v30, v30, 0x1

    goto :goto_9

    .line 325
    .end local v11    # "child":Landroid/view/View;
    .end local v24    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_11
    or-long v33, v33, v28

    .line 327
    move/from16 v0, v30

    if-le v0, v8, :cond_17

    .line 360
    .end local v27    # "minCells":I
    .end local v28    # "minCellsAt":J
    .end local v30    # "minCellsItemCount":I
    :cond_12
    if-nez v17, :cond_1c

    const/16 v39, 0x1

    move/from16 v0, v35

    move/from16 v1, v39

    if-ne v0, v1, :cond_1c

    const/16 v32, 0x1

    .line 361
    .local v32, "singleItem":Z
    :goto_a
    if-lez v8, :cond_24

    const-wide/16 v39, 0x0

    cmp-long v39, v33, v39

    if-eqz v39, :cond_24

    add-int/lit8 v39, v35, -0x1

    move/from16 v0, v39

    if-lt v8, v0, :cond_13

    if-nez v32, :cond_13

    const/16 v39, 0x1

    move/from16 v0, v25

    move/from16 v1, v39

    if-le v0, v1, :cond_24

    .line 363
    :cond_13
    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->bitCount(J)I

    move-result v39

    move/from16 v0, v39

    int-to-float v14, v0

    .line 365
    .local v14, "expandCount":F
    if-nez v32, :cond_15

    .line 367
    const-wide/16 v39, 0x1

    and-long v39, v39, v33

    const-wide/16 v41, 0x0

    cmp-long v39, v39, v41

    if-eqz v39, :cond_14

    .line 368
    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 369
    .restart local v24    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v39, v0

    if-nez v39, :cond_14

    const/high16 v39, 0x3f000000    # 0.5f

    sub-float v14, v14, v39

    .line 371
    .end local v24    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_14
    const/16 v39, 0x1

    add-int/lit8 v40, v12, -0x1

    shl-int v39, v39, v40

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v39, v0

    and-long v39, v39, v33

    const-wide/16 v41, 0x0

    cmp-long v39, v39, v41

    if-eqz v39, :cond_15

    .line 372
    add-int/lit8 v39, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 373
    .restart local v24    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v39, v0

    if-nez v39, :cond_15

    const/high16 v39, 0x3f000000    # 0.5f

    sub-float v14, v14, v39

    .line 377
    .end local v24    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_15
    const/16 v39, 0x0

    cmpl-float v39, v14, v39

    if-lez v39, :cond_1d

    mul-int v39, v8, v5

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    div-float v39, v39, v14

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v16, v0

    .line 380
    .local v16, "extraPixels":I
    :goto_b
    const/16 v21, 0x0

    :goto_c
    move/from16 v0, v21

    if-ge v0, v12, :cond_23

    .line 381
    const/16 v39, 0x1

    shl-int v39, v39, v21

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v39, v0

    and-long v39, v39, v33

    const-wide/16 v41, 0x0

    cmp-long v39, v39, v41

    if-nez v39, :cond_1e

    .line 380
    :cond_16
    :goto_d
    add-int/lit8 v21, v21, 0x1

    goto :goto_c

    .line 330
    .end local v14    # "expandCount":F
    .end local v16    # "extraPixels":I
    .end local v32    # "singleItem":Z
    .restart local v27    # "minCells":I
    .restart local v28    # "minCellsAt":J
    .restart local v30    # "minCellsItemCount":I
    :cond_17
    add-int/lit8 v27, v27, 0x1

    .line 332
    const/16 v21, 0x0

    :goto_e
    move/from16 v0, v21

    if-ge v0, v12, :cond_1b

    .line 333
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 334
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 335
    .restart local v24    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v39, 0x1

    shl-int v39, v39, v21

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v39, v0

    and-long v39, v39, v28

    const-wide/16 v41, 0x0

    cmp-long v39, v39, v41

    if-nez v39, :cond_19

    .line 337
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v39, v0

    move/from16 v0, v39

    move/from16 v1, v27

    if-ne v0, v1, :cond_18

    const/16 v39, 0x1

    shl-int v39, v39, v21

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v39, v0

    or-long v33, v33, v39

    .line 332
    :cond_18
    :goto_f
    add-int/lit8 v21, v21, 0x1

    goto :goto_e

    .line 341
    :cond_19
    if-eqz v10, :cond_1a

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v39, v0

    if-eqz v39, :cond_1a

    const/16 v39, 0x1

    move/from16 v0, v39

    if-ne v8, v0, :cond_1a

    .line 343
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mIsParentThemeDeviceDefault:Z

    move/from16 v39, v0

    if-nez v39, :cond_1a

    .line 345
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v39, v0

    add-int v39, v39, v5

    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v41, v0

    const/16 v42, 0x0

    move/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 349
    :cond_1a
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v39, v0

    add-int/lit8 v39, v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 350
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 351
    add-int/lit8 v8, v8, -0x1

    goto :goto_f

    .line 354
    .end local v11    # "child":Landroid/view/View;
    .end local v24    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_1b
    const/16 v31, 0x1

    .line 355
    goto/16 :goto_7

    .line 360
    .end local v27    # "minCells":I
    .end local v28    # "minCellsAt":J
    .end local v30    # "minCellsItemCount":I
    :cond_1c
    const/16 v32, 0x0

    goto/16 :goto_a

    .line 377
    .restart local v14    # "expandCount":F
    .restart local v32    # "singleItem":Z
    :cond_1d
    const/16 v16, 0x0

    goto/16 :goto_b

    .line 383
    .restart local v16    # "extraPixels":I
    :cond_1e
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 384
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 385
    .restart local v24    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    instance-of v0, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v39, v0

    if-eqz v39, :cond_20

    .line 387
    move/from16 v0, v16

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 388
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 389
    if-nez v21, :cond_1f

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v39, v0

    if-nez v39, :cond_1f

    .line 392
    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v39, v0

    div-int/lit8 v39, v39, 0x2

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 394
    :cond_1f
    const/16 v31, 0x1

    goto/16 :goto_d

    .line 395
    :cond_20
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v39, v0

    if-eqz v39, :cond_21

    .line 396
    move/from16 v0, v16

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 397
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 398
    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v39, v0

    div-int/lit8 v39, v39, 0x2

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 399
    const/16 v31, 0x1

    goto/16 :goto_d

    .line 404
    :cond_21
    if-eqz v21, :cond_22

    .line 405
    div-int/lit8 v39, v16, 0x2

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 407
    :cond_22
    add-int/lit8 v39, v12, -0x1

    move/from16 v0, v21

    move/from16 v1, v39

    if-eq v0, v1, :cond_16

    .line 408
    div-int/lit8 v39, v16, 0x2

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_d

    .line 413
    .end local v11    # "child":Landroid/view/View;
    .end local v24    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_23
    const/4 v8, 0x0

    .line 417
    .end local v14    # "expandCount":F
    .end local v16    # "extraPixels":I
    :cond_24
    if-eqz v31, :cond_26

    .line 418
    const/16 v21, 0x0

    :goto_10
    move/from16 v0, v21

    if-ge v0, v12, :cond_26

    .line 419
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 420
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 422
    .restart local v24    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    move/from16 v39, v0

    if-nez v39, :cond_25

    .line 418
    :goto_11
    add-int/lit8 v21, v21, 0x1

    goto :goto_10

    .line 424
    :cond_25
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v39, v0

    mul-int v39, v39, v5

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v40, v0

    add-int v36, v39, v40

    .line 425
    .local v36, "width":I
    const/high16 v39, 0x40000000    # 2.0f

    move/from16 v0, v36

    move/from16 v1, v39

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v39

    move/from16 v0, v39

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_11

    .line 430
    .end local v11    # "child":Landroid/view/View;
    .end local v24    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v36    # "width":I
    :cond_26
    const/high16 v39, 0x40000000    # 2.0f

    move/from16 v0, v18

    move/from16 v1, v39

    if-eq v0, v1, :cond_27

    .line 431
    move/from16 v20, v26

    .line 434
    :cond_27
    move-object/from16 v0, p0

    move/from16 v1, v38

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 435
    mul-int v39, v8, v5

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView;->mMeasuredExtraWidth:I

    goto/16 :goto_1
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 635
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 691
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 608
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(II)V

    .line 610
    .local v0, "params":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 611
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 616
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 621
    if-eqz p1, :cond_2

    .line 622
    instance-of v1, p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    check-cast p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;)V

    .line 625
    .local v0, "result":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :goto_0
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    .line 626
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 630
    .end local v0    # "result":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_0
    :goto_1
    return-object v0

    .line 622
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 630
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_1
.end method

.method public generateOverflowButtonLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 640
    .local v0, "result":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 641
    return-object v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 649
    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 5
    .param p1, "childIndex"    # I

    .prologue
    .line 659
    iget-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mIsParentThemeDeviceDefault:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mScafe:Ljava/lang/String;

    const-string v4, "capuccino"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mScafe:Ljava/lang/String;

    const-string/jumbo v4, "macchiato"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 660
    :cond_0
    if-nez p1, :cond_2

    .line 661
    const/4 v2, 0x0

    .line 687
    :cond_1
    :goto_0
    return v2

    .line 666
    :cond_2
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 667
    .local v1, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 668
    .local v0, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 671
    .local v2, "result":Z
    iget-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mIsParentThemeDeviceDefault:Z

    if-eqz v3, :cond_4

    .line 672
    iget-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-nez v3, :cond_3

    if-ltz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_3

    .line 673
    const/4 v2, 0x1

    .line 675
    :cond_3
    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v3, :cond_4

    .line 676
    const/4 v2, 0x0

    .line 681
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_5

    instance-of v3, v1, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_5

    .line 682
    check-cast v1, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .end local v1    # "childBefore":Landroid/view/View;
    invoke-interface {v1}, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 684
    :cond_5
    if-lez p1, :cond_1

    instance-of v3, v0, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_1

    .line 685
    check-cast v0, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0}, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 653
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 654
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isExpandedFormat()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 599
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 131
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mIsParentThemeDeviceDefault:Z

    if-eqz v0, :cond_0

    .line 132
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 133
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mLandscapeDividerPadding:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    .line 140
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 146
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isSubMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->updateSubMenu()V

    .line 154
    :cond_3
    return-void

    .line 135
    :cond_4
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPortraitDividerPadding:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 594
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 595
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 596
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 32
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 488
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    move/from16 v30, v0

    if-nez v30, :cond_1

    .line 489
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 494
    .local v6, "childCount":I
    add-int v30, p3, p5

    div-int/lit8 v15, v30, 0x2

    .line 495
    .local v15, "midVertical":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getDividerWidth()I

    move-result v7

    .line 496
    .local v7, "dividerWidth":I
    const/16 v18, 0x0

    .line 497
    .local v18, "overflowWidth":I
    const/16 v17, 0x0

    .line 498
    .local v17, "nonOverflowWidth":I
    const/16 v16, 0x0

    .line 499
    .local v16, "nonOverflowCount":I
    sub-int v30, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v31

    sub-int v30, v30, v31

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v31

    sub-int v29, v30, v31

    .line 500
    .local v29, "widthRemaining":I
    const/4 v8, 0x0

    .line 501
    .local v8, "hasOverflow":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v11

    .line 502
    .local v11, "isLayoutRtl":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v6, :cond_7

    .line 503
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 504
    .local v27, "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    .line 502
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 508
    :cond_2
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 509
    .local v19, "p":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v30, v0

    if-eqz v30, :cond_5

    .line 510
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 511
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v30

    if-eqz v30, :cond_3

    .line 512
    add-int v18, v18, v7

    .line 515
    :cond_3
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 518
    .local v9, "height":I
    if-eqz v11, :cond_4

    .line 519
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v30

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v12, v30, v31

    .line 520
    .local v12, "l":I
    add-int v20, v12, v18

    .line 525
    .local v20, "r":I
    :goto_3
    div-int/lit8 v30, v9, 0x2

    sub-int v26, v15, v30

    .line 526
    .local v26, "t":I
    add-int v5, v26, v9

    .line 527
    .local v5, "b":I
    move-object/from16 v0, v27

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-virtual {v0, v12, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 529
    sub-int v29, v29, v18

    .line 530
    const/4 v8, 0x1

    .line 531
    goto :goto_2

    .line 522
    .end local v5    # "b":I
    .end local v12    # "l":I
    .end local v20    # "r":I
    .end local v26    # "t":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v31

    sub-int v30, v30, v31

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v31, v0

    sub-int v20, v30, v31

    .line 523
    .restart local v20    # "r":I
    sub-int v12, v20, v18

    .restart local v12    # "l":I
    goto :goto_3

    .line 532
    .end local v9    # "height":I
    .end local v12    # "l":I
    .end local v20    # "r":I
    :cond_5
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v31, v0

    add-int v21, v30, v31

    .line 533
    .local v21, "size":I
    add-int v17, v17, v21

    .line 534
    sub-int v29, v29, v21

    .line 535
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v30

    if-eqz v30, :cond_6

    .line 536
    add-int v17, v17, v7

    .line 538
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 542
    .end local v19    # "p":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v21    # "size":I
    .end local v27    # "v":Landroid/view/View;
    :cond_7
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v6, v0, :cond_8

    if-nez v8, :cond_8

    .line 544
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 545
    .restart local v27    # "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    .line 546
    .local v28, "width":I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 547
    .restart local v9    # "height":I
    sub-int v30, p4, p2

    div-int/lit8 v14, v30, 0x2

    .line 548
    .local v14, "midHorizontal":I
    div-int/lit8 v30, v28, 0x2

    sub-int v12, v14, v30

    .line 549
    .restart local v12    # "l":I
    div-int/lit8 v30, v9, 0x2

    sub-int v26, v15, v30

    .line 550
    .restart local v26    # "t":I
    add-int v30, v12, v28

    add-int v31, v26, v9

    move-object/from16 v0, v27

    move/from16 v1, v26

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 554
    .end local v9    # "height":I
    .end local v12    # "l":I
    .end local v14    # "midHorizontal":I
    .end local v26    # "t":I
    .end local v27    # "v":Landroid/view/View;
    .end local v28    # "width":I
    :cond_8
    if-eqz v8, :cond_a

    const/16 v30, 0x0

    :goto_4
    sub-int v22, v16, v30

    .line 555
    .local v22, "spacerCount":I
    const/16 v31, 0x0

    if-lez v22, :cond_b

    div-int v30, v29, v22

    :goto_5
    move/from16 v0, v31

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 557
    .local v23, "spacerSize":I
    if-eqz v11, :cond_d

    .line 558
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v31

    sub-int v25, v30, v31

    .line 559
    .local v25, "startRight":I
    const/4 v10, 0x0

    :goto_6
    if-ge v10, v6, :cond_0

    .line 560
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 561
    .restart local v27    # "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 562
    .local v13, "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_9

    iget-boolean v0, v13, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v30, v0

    if-eqz v30, :cond_c

    .line 559
    :cond_9
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 554
    .end local v13    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v22    # "spacerCount":I
    .end local v23    # "spacerSize":I
    .end local v25    # "startRight":I
    .end local v27    # "v":Landroid/view/View;
    :cond_a
    const/16 v30, 0x1

    goto :goto_4

    .line 555
    .restart local v22    # "spacerCount":I
    :cond_b
    const/16 v30, 0x0

    goto :goto_5

    .line 566
    .restart local v13    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .restart local v23    # "spacerSize":I
    .restart local v25    # "startRight":I
    .restart local v27    # "v":Landroid/view/View;
    :cond_c
    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v30, v0

    sub-int v25, v25, v30

    .line 567
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    .line 568
    .restart local v28    # "width":I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 569
    .restart local v9    # "height":I
    div-int/lit8 v30, v9, 0x2

    sub-int v26, v15, v30

    .line 570
    .restart local v26    # "t":I
    sub-int v30, v25, v28

    add-int v31, v26, v9

    move-object/from16 v0, v27

    move/from16 v1, v30

    move/from16 v2, v26

    move/from16 v3, v25

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 571
    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v30, v0

    add-int v30, v30, v28

    add-int v30, v30, v23

    sub-int v25, v25, v30

    goto :goto_7

    .line 574
    .end local v9    # "height":I
    .end local v13    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v25    # "startRight":I
    .end local v26    # "t":I
    .end local v27    # "v":Landroid/view/View;
    .end local v28    # "width":I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v24

    .line 575
    .local v24, "startLeft":I
    const/4 v10, 0x0

    :goto_8
    if-ge v10, v6, :cond_0

    .line 576
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 577
    .restart local v27    # "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 578
    .restart local v13    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_e

    iget-boolean v0, v13, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v30, v0

    if-eqz v30, :cond_f

    .line 575
    :cond_e
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 582
    :cond_f
    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v30, v0

    add-int v24, v24, v30

    .line 583
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    .line 584
    .restart local v28    # "width":I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 585
    .restart local v9    # "height":I
    div-int/lit8 v30, v9, 0x2

    sub-int v26, v15, v30

    .line 586
    .restart local v26    # "t":I
    add-int v30, v24, v28

    add-int v31, v26, v9

    move-object/from16 v0, v27

    move/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 587
    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v30, v0

    add-int v30, v30, v28

    add-int v30, v30, v23

    add-int v24, v24, v30

    goto :goto_9
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 159
    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 160
    .local v4, "wasFormatted":Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v6, v9, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 162
    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eq v4, v6, :cond_0

    .line 163
    iput v8, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 168
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 169
    .local v5, "widthSize":I
    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    if-eq v5, v6, :cond_1

    .line 170
    iput v5, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 171
    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 174
    :cond_1
    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_3

    .line 175
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenuView;->onMeasureExactFormat(II)V

    .line 191
    :goto_1
    return-void

    .end local v5    # "widthSize":I
    :cond_2
    move v6, v8

    .line 160
    goto :goto_0

    .line 178
    .restart local v5    # "widthSize":I
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 179
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_6

    .line 180
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 181
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 182
    .local v3, "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 184
    instance-of v6, v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-nez v6, :cond_4

    iget-boolean v6, v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v6, :cond_5

    .line 185
    :cond_4
    iget v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mOriginalStartPadding:I

    iget v7, p0, Lcom/android/internal/view/menu/ActionMenuView;->mOriginalEndPadding:I

    invoke-virtual {v0, v6, v8, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 179
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 189
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_1
.end method

.method public setMaxItemHeight(I)V
    .locals 0
    .param p1, "maxItemHeight"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 124
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 603
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    .line 604
    return-void
.end method

.method public setPresenter(Lcom/android/internal/view/menu/ActionMenuPresenter;)V
    .locals 0
    .param p1, "presenter"    # Lcom/android/internal/view/menu/ActionMenuPresenter;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 115
    return-void
.end method
