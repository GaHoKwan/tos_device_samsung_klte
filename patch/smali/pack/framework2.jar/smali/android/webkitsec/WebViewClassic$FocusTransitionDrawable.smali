.class Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FocusTransitionDrawable"
.end annotation


# instance fields
.field mMaxAlpha:I

.field mNewRegion:Landroid/graphics/Region;

.field mPaint:Landroid/graphics/Paint;

.field mPreviousRegion:Landroid/graphics/Region;

.field mProgress:F

.field mTranslate:Landroid/graphics/Point;

.field mWebView:Landroid/webkitsec/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/webkitsec/WebViewClassic;)V
    .locals 2
    .param p1, "view"    # Landroid/webkitsec/WebViewClassic;

    .prologue
    .line 13739
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 13733
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mProgress:F

    .line 13740
    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mWebView:Landroid/webkitsec/WebViewClassic;

    .line 13741
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mWebView:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mTouchHightlightPaint:Landroid/graphics/Paint;
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$12500(Landroid/webkitsec/WebViewClassic;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mPaint:Landroid/graphics/Paint;

    .line 13742
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, p0, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mMaxAlpha:I

    .line 13743
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v13, 0x1

    .line 13773
    iget-object v9, p0, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mTranslate:Landroid/graphics/Point;

    if-nez v9, :cond_0

    .line 13774
    iget-object v9, p0, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mPreviousRegion:Landroid/graphics/Region;

    invoke-virtual {v9}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 13775
    .local v1, "bounds":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    invoke-direct {v2, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 13776
    .local v2, "from":Landroid/graphics/Point;
    iget-object v9, p0, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mNewRegion:Landroid/graphics/Region;

    invoke-virtual {v9, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 13777
    new-instance v6, Landroid/graphics/Point;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    invoke-direct {v6, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 13778
    .local v6, "to":Landroid/graphics/Point;
    new-instance v9, Landroid/graphics/Point;

    iget v10, v2, Landroid/graphics/Point;->x:I

    iget v11, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v10, v11

    iget v11, v2, Landroid/graphics/Point;->y:I

    iget v12, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v11, v12

    invoke-direct {v9, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    iput-object v9, p0, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mTranslate:Landroid/graphics/Point;

    .line 13780
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "from":Landroid/graphics/Point;
    .end local v6    # "to":Landroid/graphics/Point;
    :cond_0
    iget v9, p0, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mProgress:F

    iget v10, p0, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mMaxAlpha:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v0, v9

    .line 13781
    .local v0, "alpha":I
    new-instance v3, Landroid/graphics/RegionIterator;

    iget-object v9, p0, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mPreviousRegion:Landroid/graphics/Region;

    invoke-direct {v3, v9}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 13782
    .local v3, "iter":Landroid/graphics/RegionIterator;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 13783
    .local v4, "r":Landroid/graphics/Rect;
    iget-object v9, p0, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mMaxAlpha:I

    sub-int/2addr v10, v0

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 13784
    iget-object v9, p0, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mTranslate:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v10, p0, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mProgress:F

    mul-float v7, v9, v10

    .line 13785
    .local v7, "tx":F
    iget-object v9, p0, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mTranslate:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    iget v10, p0, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mProgress:F

    mul-float v8, v9, v10

    .line 13786
    .local v8, "ty":F
    invoke-virtual {p1, v13}, Landroid/graphics/Canvas;->save(I)I

    move-result v5

    .line 13787
    .local v5, "save":I
    neg-float v9, v7

    neg-float v10, v8

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13788
    :goto_0
    invoke-virtual {v3, v4}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 13789
    iget-object v9, p0, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 13791
    :cond_1
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 13792
    new-instance v3, Landroid/graphics/RegionIterator;

    .end local v3    # "iter":Landroid/graphics/RegionIterator;
    iget-object v9, p0, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mNewRegion:Landroid/graphics/Region;

    invoke-direct {v3, v9}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 13793
    .restart local v3    # "iter":Landroid/graphics/RegionIterator;
    new-instance v4, Landroid/graphics/Rect;

    .end local v4    # "r":Landroid/graphics/Rect;
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 13794
    .restart local v4    # "r":Landroid/graphics/Rect;
    iget-object v9, p0, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 13795
    invoke-virtual {p1, v13}, Landroid/graphics/Canvas;->save(I)I

    move-result v5

    .line 13796
    iget-object v9, p0, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mTranslate:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    sub-float v7, v9, v7

    .line 13797
    iget-object v9, p0, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mTranslate:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    sub-float v8, v9, v8

    .line 13798
    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13799
    :goto_1
    invoke-virtual {v3, v4}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 13800
    iget-object v9, p0, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 13802
    :cond_2
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 13803
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 13755
    const/4 v0, 0x0

    return v0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 13768
    iget v0, p0, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mProgress:F

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 13751
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 13747
    return-void
.end method

.method public setProgress(F)V
    .locals 2
    .param p1, "p"    # F

    .prologue
    .line 13759
    iput p1, p0, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mProgress:F

    .line 13760
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mWebView:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mFocusTransition:Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$12600(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 13761
    iget v0, p0, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 13762
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mWebView:Landroid/webkitsec/WebViewClassic;

    const/4 v1, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic;->mFocusTransition:Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewClassic;->access$12602(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;)Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;

    .line 13763
    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    .line 13765
    :cond_1
    return-void
.end method
