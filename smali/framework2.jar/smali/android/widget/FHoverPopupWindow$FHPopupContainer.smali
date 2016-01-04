.class Landroid/widget/FHoverPopupWindow$FHPopupContainer;
.super Landroid/widget/HoverPopupWindow$HoverPopupContainer;
.source "FHoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/FHoverPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FHPopupContainer"
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "FHPopupContainer"


# instance fields
.field private final DEFAULT_BG_OUTLINE_THICKNESS:F

.field private final DEFAULT_BG_PADDING:F

.field private POPUPSTATE_CENTER:I

.field private POPUPSTATE_LEFT:I

.field private POPUPSTATE_RIGHT:I

.field private ani:Landroid/view/animation/Animation;

.field private isFHmoveAnimation:Z

.field private mAnimationAreaOffset:I

.field private mBGPaddingBottomPX:F

.field private mBGPaddingTopPX:F

.field private mFHPopCContext:Landroid/content/Context;

.field private mLeftLimit:I

.field private mPickerHeightPX:F

.field private mPickerLineColor:I

.field private mPickerLineColorOnBottom:I

.field private mPickerOutlineThicknessPX:I

.field private mPickerSpaceColor:I

.field private mPickerWidthPX:F

.field private mPopupState:I

.field private mRightLimit:I

.field private mTopPickerOffset:I

.field private mTotalLeftLimit:F

.field private mTotalRightLimit:F

.field private misMovetoRight:Z

.field final synthetic this$0:Landroid/widget/FHoverPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/FHoverPopupWindow;Landroid/content/Context;)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v6, -0x40800000    # -1.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 901
    iput-object p1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    .line 902
    invoke-direct {p0, p1, p2}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;-><init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V

    .line 852
    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->DEFAULT_BG_PADDING:F

    .line 855
    const/high16 v1, 0x3fc00000    # 1.5f

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->DEFAULT_BG_OUTLINE_THICKNESS:F

    .line 857
    iput-boolean v3, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->isFHmoveAnimation:Z

    .line 859
    iput-object v5, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->ani:Landroid/view/animation/Animation;

    .line 861
    iput-object v5, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mFHPopCContext:Landroid/content/Context;

    .line 863
    iput-boolean v3, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->misMovetoRight:Z

    .line 865
    iput v2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    .line 867
    iput v2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    .line 869
    iput v2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    .line 871
    iput v3, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_RIGHT:I

    .line 873
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_LEFT:I

    .line 875
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    .line 877
    iput v2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerLineColor:I

    .line 879
    iput v2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerLineColorOnBottom:I

    .line 881
    iput v2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerSpaceColor:I

    .line 883
    iput v3, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    .line 885
    iput v4, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    .line 887
    iput v4, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerHeightPX:F

    .line 889
    iput v6, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingTopPX:F

    .line 891
    iput v6, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingBottomPX:F

    .line 893
    iput v3, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTopPickerOffset:I

    .line 895
    const/16 v1, 0x64

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mAnimationAreaOffset:I

    .line 897
    iput v4, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalLeftLimit:F

    .line 899
    iput v4, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalRightLimit:F

    .line 903
    iput-object p2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mFHPopCContext:Landroid/content/Context;

    .line 904
    iget v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    .line 908
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 909
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x150

    const v2, -0xb88f7e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerLineColor:I

    .line 910
    const/16 v1, 0x151

    const v2, -0xa57f6f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerLineColorOnBottom:I

    .line 911
    const/16 v1, 0x152

    const v2, -0xd0a99c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerSpaceColor:I

    .line 913
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 915
    iput v6, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingBottomPX:F

    iput v6, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingTopPX:F

    .line 917
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105012d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    .line 918
    # getter for: Landroid/widget/FHoverPopupWindow;->TW:F
    invoke-static {p1}, Landroid/widget/FHoverPopupWindow;->access$1100(Landroid/widget/FHoverPopupWindow;)F

    move-result v1

    invoke-virtual {p1, v1, v5}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    .line 919
    # getter for: Landroid/widget/FHoverPopupWindow;->H:F
    invoke-static {p1}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)F

    move-result v1

    invoke-virtual {p1, v1, v5}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerHeightPX:F

    .line 920
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 28
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 947
    invoke-super/range {p0 .. p1}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->draw(Landroid/graphics/Canvas;)V

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->isScaleWindow()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1333
    :cond_0
    :goto_0
    return-void

    .line 958
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    # setter for: Landroid/widget/FHoverPopupWindow;->W:F
    invoke-static/range {v23 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1302(Landroid/widget/FHoverPopupWindow;F)F

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    if-nez v23, :cond_2

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    new-instance v24, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->W:F
    invoke-static/range {v25 .. v25}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)F

    move-result v25

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerHeightPX:F

    move/from16 v26, v0

    invoke-direct/range {v24 .. v26}, Landroid/graphics/PointF;-><init>(FF)V

    # setter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1402(Landroid/widget/FHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    new-instance v24, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->W:F
    invoke-static/range {v25 .. v25}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)F

    move-result v25

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    sub-float v25, v25, v26

    const/16 v26, 0x0

    invoke-direct/range {v24 .. v26}, Landroid/graphics/PointF;-><init>(FF)V

    # setter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1502(Landroid/widget/FHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    new-instance v24, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->W:F
    invoke-static/range {v25 .. v25}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)F

    move-result v25

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    add-float v25, v25, v26

    const/16 v26, 0x0

    invoke-direct/range {v24 .. v26}, Landroid/graphics/PointF;-><init>(FF)V

    # setter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1602(Landroid/widget/FHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 971
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingTopPX:F

    move/from16 v23, v0

    const/16 v24, 0x0

    cmpg-float v23, v23, v24

    if-gez v23, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingBottomPX:F

    move/from16 v23, v0

    const/16 v24, 0x0

    cmpg-float v23, v23, v24

    if-gez v23, :cond_4

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x105012b

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingTopPX:F

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x105012c

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingBottomPX:F

    .line 978
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v23

    if-lez v23, :cond_4

    .line 979
    const/4 v14, 0x0

    .line 980
    .local v14, "d":Landroid/graphics/drawable/Drawable;
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 981
    .local v12, "child":Landroid/view/View;
    if-eqz v12, :cond_3

    .line 982
    invoke-virtual {v12}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 985
    :cond_3
    if-eqz v14, :cond_4

    .line 986
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    .line 987
    .local v22, "r":Landroid/graphics/Rect;
    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 988
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    .line 989
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingTopPX:F

    move/from16 v23, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingTopPX:F

    .line 996
    .end local v12    # "child":Landroid/view/View;
    .end local v14    # "d":Landroid/graphics/drawable/Drawable;
    .end local v22    # "r":Landroid/graphics/Rect;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineEndX()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 997
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_d

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineStartY()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerHeightPX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingBottomPX:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 1004
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineEndX()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->W:F
    invoke-static/range {v25 .. v25}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)F

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v26, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->W:F
    invoke-static/range {v26 .. v26}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)F

    move-result v26

    div-float v25, v25, v26

    mul-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1005
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_e

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineStartY()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingBottomPX:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 1012
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 1028
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_f

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWidth()I

    move-result v23

    div-int/lit8 v13, v23, 0x2

    .line 1033
    .local v13, "contentViewHalfWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    move/from16 v23, v0

    add-int v23, v23, v13

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalLeftLimit:F

    .line 1034
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    move/from16 v23, v0

    sub-int v23, v23, v13

    add-int/lit8 v23, v23, 0xa

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalRightLimit:F

    .line 1048
    .end local v13    # "contentViewHalfWidth":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getWidth()I

    move-result v24

    sub-int v23, v23, v24

    div-int/lit8 v15, v23, 0x2

    .line 1057
    .local v15, "movelength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalLeftLimit:F

    move/from16 v24, v0

    cmpg-float v23, v23, v24

    if-gez v23, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    .line 1061
    .local v21, "previousRightX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    .line 1062
    .local v20, "previousLeftX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    .line 1070
    .local v19, "previousCenterX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mPickerPadding:F
    invoke-static/range {v25 .. v25}, Landroid/widget/FHoverPopupWindow;->access$1700(Landroid/widget/FHoverPopupWindow;)F

    move-result v25

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mContainerLeftOnWindow:I
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1800(Landroid/widget/FHoverPopupWindow;)I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    cmpl-float v23, v23, v24

    if-ltz v23, :cond_10

    if-gtz v15, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_10

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move/from16 v0, v21

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move/from16 v0, v20

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move/from16 v0, v19

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1097
    .end local v19    # "previousCenterX":F
    .end local v20    # "previousLeftX":F
    .end local v21    # "previousRightX":F
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalRightLimit:F

    move/from16 v24, v0

    cmpl-float v23, v23, v24

    if-lez v23, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    .line 1101
    .restart local v21    # "previousRightX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    .line 1102
    .restart local v20    # "previousLeftX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    .line 1110
    .restart local v19    # "previousCenterX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mPickerPadding:F
    invoke-static/range {v25 .. v25}, Landroid/widget/FHoverPopupWindow;->access$1700(Landroid/widget/FHoverPopupWindow;)F

    move-result v25

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getRight()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mContainerLeftOnWindow:I
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1800(Landroid/widget/FHoverPopupWindow;)I

    move-result v24

    sub-int v23, v23, v24

    if-lez v23, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getRight()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mContainerLeftOnWindow:I
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1800(Landroid/widget/FHoverPopupWindow;)I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    cmpg-float v23, v23, v24

    if-gtz v23, :cond_11

    if-gtz v15, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_11

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move/from16 v0, v21

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1123
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move/from16 v0, v20

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move/from16 v0, v19

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1135
    .end local v19    # "previousCenterX":F
    .end local v20    # "previousLeftX":F
    .end local v21    # "previousRightX":F
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_RIGHT:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalLeftLimit:F

    move/from16 v24, v0

    cmpl-float v23, v23, v24

    if-lez v23, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_12

    .line 1147
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1162
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_LEFT:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalRightLimit:F

    move/from16 v24, v0

    cmpg-float v23, v23, v24

    if-gez v23, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_13

    .line 1174
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1202
    :cond_8
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_a

    .line 1209
    const/4 v11, 0x0

    .line 1211
    .local v11, "anchorViewCenter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1900(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/Rect;

    move-result-object v23

    if-eqz v23, :cond_9

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1900(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/Rect;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getWidth()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mContainerLeftOnWindow:I
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1800(Landroid/widget/FHoverPopupWindow;)I

    move-result v24

    sub-int v11, v23, v24

    .line 1227
    :cond_9
    if-eqz v11, :cond_a

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mPickerXoffset:I
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$2000(Landroid/widget/FHoverPopupWindow;)I

    move-result v24

    add-int v24, v24, v11

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v25, v0

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1241
    .end local v11    # "anchorViewCenter":I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    move/from16 v23, v0

    rem-int/lit8 v23, v23, 0x2

    if-eqz v23, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    :goto_8
    div-int/lit8 v6, v23, 0x2

    .line 1242
    .local v6, "adjustPointer":I
    const/4 v7, 0x0

    .local v7, "adjustedLPointX":F
    const/4 v8, 0x0

    .local v8, "adjustedLPointY":F
    const/4 v9, 0x0

    .local v9, "adjustedRPointX":F
    const/4 v10, 0x0

    .line 1243
    .local v10, "adjustedRPointY":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_16

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    int-to-float v0, v6

    move/from16 v24, v0

    sub-float v7, v23, v24

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    int-to-float v0, v6

    move/from16 v24, v0

    add-float v9, v23, v24

    .line 1246
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_15

    .line 1247
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    int-to-float v0, v6

    move/from16 v24, v0

    sub-float v8, v23, v24

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    int-to-float v0, v6

    move/from16 v24, v0

    sub-float v10, v23, v24

    .line 1263
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_0

    .line 1268
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 1269
    .local v4, "a":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsSetInfoPickerColorToAndMoreBottomImg:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_17

    .line 1270
    const/16 v23, 0x153

    const v24, -0xa29283

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerSpaceColor:I

    .line 1274
    :goto_a
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1277
    new-instance v3, Landroid/graphics/Paint;

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 1278
    .local v3, "Pnt":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1279
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerSpaceColor:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1280
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1285
    new-instance v16, Landroid/graphics/Path;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Path;-><init>()V

    .line 1286
    .local v16, "path1":Landroid/graphics/Path;
    sget-object v23, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1287
    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v24, v0

    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1289
    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1290
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Path;->close()V

    .line 1291
    sget-object v23, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1292
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1295
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    .line 1296
    .local v17, "path2":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_18

    .line 1297
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerLineColor:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1302
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1303
    sget-object v23, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1304
    sget-object v23, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1305
    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1306
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1307
    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1308
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Path;->close()V

    .line 1309
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1316
    new-instance v18, Landroid/graphics/Path;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Path;-><init>()V

    .line 1317
    .local v18, "path3":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    move/from16 v23, v0

    rem-int/lit8 v5, v23, 0x2

    .line 1318
    .local v5, "adjustLineOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    .line 1319
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    int-to-float v0, v6

    move/from16 v24, v0

    sub-float v7, v23, v24

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    int-to-float v0, v6

    move/from16 v24, v0

    add-float v9, v23, v24

    .line 1322
    :cond_c
    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1323
    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1325
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    move/from16 v23, v0

    add-int v23, v23, v5

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1326
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1327
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerSpaceColor:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1328
    sget-object v23, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1329
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->close()V

    .line 1330
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1000
    .end local v3    # "Pnt":Landroid/graphics/Paint;
    .end local v4    # "a":Landroid/content/res/TypedArray;
    .end local v5    # "adjustLineOffset":I
    .end local v6    # "adjustPointer":I
    .end local v7    # "adjustedLPointX":F
    .end local v8    # "adjustedLPointY":F
    .end local v9    # "adjustedRPointX":F
    .end local v10    # "adjustedRPointY":F
    .end local v15    # "movelength":I
    .end local v16    # "path1":Landroid/graphics/Path;
    .end local v17    # "path2":Landroid/graphics/Path;
    .end local v18    # "path3":Landroid/graphics/Path;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineStartY()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerHeightPX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingTopPX:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->y:F

    goto/16 :goto_1

    .line 1008
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineStartY()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingTopPX:F

    move/from16 v25, v0

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->y:F

    goto/16 :goto_2

    .line 1039
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mPickerPadding:F
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1700(Landroid/widget/FHoverPopupWindow;)F

    move-result v24

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mAnimationAreaOffset:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalLeftLimit:F

    .line 1040
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mPickerPadding:F
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1700(Landroid/widget/FHoverPopupWindow;)F

    move-result v24

    sub-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mAnimationAreaOffset:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalRightLimit:F

    goto/16 :goto_3

    .line 1088
    .restart local v15    # "movelength":I
    .restart local v19    # "previousCenterX":F
    .restart local v20    # "previousLeftX":F
    .restart local v21    # "previousRightX":F
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_RIGHT:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_RIGHT:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_4

    .line 1130
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_LEFT:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_LEFT:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 1156
    .end local v19    # "previousCenterX":F
    .end local v20    # "previousLeftX":F
    .end local v21    # "previousRightX":F
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mPickerPadding:F
    invoke-static/range {v25 .. v25}, Landroid/widget/FHoverPopupWindow;->access$1700(Landroid/widget/FHoverPopupWindow;)F

    move-result v25

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    goto/16 :goto_6

    .line 1183
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mPickerPadding:F
    invoke-static/range {v25 .. v25}, Landroid/widget/FHoverPopupWindow;->access$1700(Landroid/widget/FHoverPopupWindow;)F

    move-result v25

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    goto/16 :goto_7

    .line 1241
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    move/from16 v23, v0

    goto/16 :goto_8

    .line 1251
    .restart local v6    # "adjustPointer":I
    .restart local v7    # "adjustedLPointX":F
    .restart local v8    # "adjustedLPointY":F
    .restart local v9    # "adjustedRPointX":F
    .restart local v10    # "adjustedRPointY":F
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    int-to-float v0, v6

    move/from16 v24, v0

    add-float v8, v23, v24

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    int-to-float v0, v6

    move/from16 v24, v0

    add-float v10, v23, v24

    goto/16 :goto_9

    .line 1256
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v7, v0, Landroid/graphics/PointF;->x:F

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v9, v0, Landroid/graphics/PointF;->x:F

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v8, v0, Landroid/graphics/PointF;->y:F

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v10, v0, Landroid/graphics/PointF;->y:F

    goto/16 :goto_9

    .line 1272
    .restart local v4    # "a":Landroid/content/res/TypedArray;
    :cond_17
    const/16 v23, 0x152

    const v24, -0xa29283

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerSpaceColor:I

    goto/16 :goto_a

    .line 1300
    .restart local v3    # "Pnt":Landroid/graphics/Paint;
    .restart local v16    # "path1":Landroid/graphics/Path;
    .restart local v17    # "path2":Landroid/graphics/Path;
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerLineColorOnBottom:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_b
.end method

.method public setFHmoveAnimation(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 923
    iput-boolean p1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->isFHmoveAnimation:Z

    .line 924
    return-void
.end method

.method public setFHmoveAnimationOffset(I)V
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 940
    const-string v0, "FHPopupContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FHPopupContainer(): setFHmoveAnimationOffset: offset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iput p1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mAnimationAreaOffset:I

    .line 942
    const-string v0, "FHPopupContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FHPopupContainer(): setFHmoveAnimationOffset: mAnimationAreaOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mAnimationAreaOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    return-void
.end method

.method public setOverTopPickerOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 932
    iput p1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTopPickerOffset:I

    .line 933
    return-void
.end method

.method public setPickerLimit(II)V
    .locals 0
    .param p1, "leftlimit"    # I
    .param p2, "rightlimit"    # I

    .prologue
    .line 927
    iput p1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    .line 928
    iput p2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    .line 929
    return-void
.end method

.method public setPopupState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 936
    iput p1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    .line 937
    return-void
.end method
