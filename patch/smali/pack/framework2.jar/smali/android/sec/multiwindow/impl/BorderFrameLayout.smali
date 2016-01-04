.class public Landroid/sec/multiwindow/impl/BorderFrameLayout;
.super Landroid/widget/FrameLayout;
.source "BorderFrameLayout.java"


# instance fields
.field private mBorderPaintInner:Landroid/graphics/Paint;

.field private mBorderPaintOut:Landroid/graphics/Paint;

.field private mIsBorder:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mIsBorder:Z

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mIsBorder:Z

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mIsBorder:Z

    .line 25
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 47
    iget-boolean v0, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mIsBorder:Z

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintInner:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintInner:Landroid/graphics/Paint;

    .line 50
    iget-object v0, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintInner:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget-object v0, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintInner:Landroid/graphics/Paint;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 54
    :cond_0
    iget-object v0, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintOut:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintOut:Landroid/graphics/Paint;

    .line 56
    iget-object v0, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintOut:Landroid/graphics/Paint;

    const v2, -0x6d6d6e

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v0, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintOut:Landroid/graphics/Paint;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 61
    .local v9, "right":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 63
    .local v8, "bottom":I
    int-to-float v3, v9

    iget-object v5, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintInner:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 64
    int-to-float v2, v8

    int-to-float v3, v9

    int-to-float v4, v8

    iget-object v5, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintInner:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 65
    int-to-float v3, v9

    int-to-float v5, v9

    int-to-float v6, v8

    iget-object v7, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintInner:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 66
    int-to-float v4, v8

    iget-object v5, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintInner:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 68
    int-to-float v3, v9

    iget-object v5, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintOut:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 69
    int-to-float v2, v8

    int-to-float v3, v9

    int-to-float v4, v8

    iget-object v5, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintOut:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 70
    int-to-float v3, v9

    int-to-float v5, v9

    int-to-float v6, v8

    iget-object v7, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintOut:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 71
    int-to-float v4, v8

    iget-object v5, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintOut:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 73
    .end local v8    # "bottom":I
    .end local v9    # "right":I
    :cond_2
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 33
    iget-boolean v0, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mIsBorder:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintInner:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 34
    if-eqz p1, :cond_1

    .line 35
    iget-object v0, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintInner:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 41
    :cond_0
    return-void

    .line 37
    :cond_1
    iget-object v0, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintInner:Landroid/graphics/Paint;

    const v1, -0x6d6d6e

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public setBorderEnable(Z)V
    .locals 0
    .param p1, "isEnable"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mIsBorder:Z

    .line 29
    return-void
.end method
