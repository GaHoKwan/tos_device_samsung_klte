.class Landroid/webkitsec/WebDragHandler$MyDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "WebDragHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebDragHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyDragShadowBuilder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 113
    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 132
    const/4 v2, 0x3

    # getter for: Landroid/webkitsec/WebDragHandler;->mType:I
    invoke-static {}, Landroid/webkitsec/WebDragHandler;->access$000()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 136
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 137
    .local v0, "paint":Landroid/graphics/Paint;
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 138
    const v2, -0xff0001

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    new-instance v1, Landroid/graphics/Rect;

    # getter for: Landroid/webkitsec/WebDragHandler;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/webkitsec/WebDragHandler;->access$100()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    # getter for: Landroid/webkitsec/WebDragHandler;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/webkitsec/WebDragHandler;->access$100()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 140
    .local v1, "rect":Landroid/graphics/Rect;
    # getter for: Landroid/webkitsec/WebDragHandler;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/webkitsec/WebDragHandler;->access$100()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1, v2, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 144
    .end local v0    # "paint":Landroid/graphics/Paint;
    .end local v1    # "rect":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 142
    :cond_0
    # getter for: Landroid/webkitsec/WebDragHandler;->mPicture:Landroid/graphics/Picture;
    invoke-static {}, Landroid/webkitsec/WebDragHandler;->access$200()Landroid/graphics/Picture;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    goto :goto_0
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 4
    .param p1, "size"    # Landroid/graphics/Point;
    .param p2, "touch"    # Landroid/graphics/Point;

    .prologue
    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, "width":I
    const/4 v0, 0x0

    .line 119
    .local v0, "height":I
    const/4 v2, 0x3

    # getter for: Landroid/webkitsec/WebDragHandler;->mType:I
    invoke-static {}, Landroid/webkitsec/WebDragHandler;->access$000()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 120
    # getter for: Landroid/webkitsec/WebDragHandler;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/webkitsec/WebDragHandler;->access$100()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 121
    # getter for: Landroid/webkitsec/WebDragHandler;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/webkitsec/WebDragHandler;->access$100()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 126
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->set(II)V

    .line 127
    div-int/lit8 v2, v1, 0x2

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 128
    return-void

    .line 123
    :cond_0
    # getter for: Landroid/webkitsec/WebDragHandler;->mPicture:Landroid/graphics/Picture;
    invoke-static {}, Landroid/webkitsec/WebDragHandler;->access$200()Landroid/graphics/Picture;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    .line 124
    # getter for: Landroid/webkitsec/WebDragHandler;->mPicture:Landroid/graphics/Picture;
    invoke-static {}, Landroid/webkitsec/WebDragHandler;->access$200()Landroid/graphics/Picture;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    goto :goto_0
.end method
