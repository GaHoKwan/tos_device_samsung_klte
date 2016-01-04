.class public Lcom/android/server/sec/ClippedItemViewContainer;
.super Landroid/widget/FrameLayout;
.source "ClippedItemViewContainer.java"


# instance fields
.field private mColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mDisableColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mIsDisabled:Z

.field private mIsPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/sec/ClippedItemViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsPressed:Z

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsDisabled:Z

    .line 63
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const v1, 0x4d3abcff    # 1.95809264E8f

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 64
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v1, -0x80000000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mDisableColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 72
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 114
    iget-boolean v12, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsPressed:Z

    if-nez v12, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v12

    if-nez v12, :cond_15

    .line 116
    :cond_0
    iget-object v3, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 117
    .local v3, "colorFilter":Landroid/graphics/PorterDuffColorFilter;
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v12

    if-nez v12, :cond_1

    iget-object v3, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mDisableColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 119
    :cond_1
    instance-of v12, p2, Landroid/widget/ImageView;

    if-eqz v12, :cond_6

    move-object v7, p2

    .line 121
    check-cast v7, Landroid/widget/ImageView;

    .line 122
    .local v7, "iv":Landroid/widget/ImageView;
    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 124
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 125
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 127
    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 129
    :cond_3
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v9

    .line 131
    .local v9, "ret":Z
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 132
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 207
    .end local v1    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v3    # "colorFilter":Landroid/graphics/PorterDuffColorFilter;
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    .end local v7    # "iv":Landroid/widget/ImageView;
    .end local v9    # "ret":Z
    :cond_5
    :goto_0
    return v9

    .line 136
    .restart local v3    # "colorFilter":Landroid/graphics/PorterDuffColorFilter;
    :cond_6
    instance-of v12, p2, Landroid/webkit/WebView;

    if-eqz v12, :cond_8

    .line 138
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 139
    .restart local v1    # "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_7

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 141
    :cond_7
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v9

    .line 143
    .restart local v9    # "ret":Z
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0

    .line 148
    .end local v1    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v9    # "ret":Z
    :cond_8
    instance-of v12, p2, Landroid/widget/TextView;

    if-eqz v12, :cond_f

    move-object v10, p2

    .line 150
    check-cast v10, Landroid/widget/TextView;

    .line 151
    .local v10, "textChild":Landroid/widget/TextView;
    invoke-virtual {v10}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 153
    .restart local v1    # "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_9

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 154
    :cond_9
    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 155
    .local v5, "drawable":[Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v12, v5

    if-ge v6, v12, :cond_b

    .line 156
    aget-object v12, v5, v6

    if-eqz v12, :cond_a

    .line 157
    aget-object v12, v5, v6

    invoke-virtual {v12, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 155
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 161
    :cond_b
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 163
    .local v0, "before":Landroid/graphics/ColorFilter;
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 165
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v9

    .line 168
    .restart local v9    # "ret":Z
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 169
    :cond_c
    const/4 v6, 0x0

    :goto_2
    array-length v12, v5

    if-ge v6, v12, :cond_e

    .line 170
    aget-object v12, v5, v6

    if-eqz v12, :cond_d

    .line 171
    aget-object v12, v5, v6

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 169
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 174
    :cond_e
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 177
    .end local v0    # "before":Landroid/graphics/ColorFilter;
    .end local v1    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v5    # "drawable":[Landroid/graphics/drawable/Drawable;
    .end local v6    # "i":I
    .end local v9    # "ret":Z
    .end local v10    # "textChild":Landroid/widget/TextView;
    :cond_f
    instance-of v12, p2, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_15

    move-object v8, p2

    .line 178
    check-cast v8, Landroid/widget/LinearLayout;

    .line 179
    .local v8, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 180
    .restart local v1    # "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_10

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 182
    :cond_10
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 183
    .local v2, "childCount":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    if-ge v6, v2, :cond_12

    .line 184
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 185
    .local v11, "v":Landroid/view/View;
    instance-of v12, v11, Landroid/widget/ImageView;

    if-eqz v12, :cond_11

    move-object v7, v11

    .line 186
    check-cast v7, Landroid/widget/ImageView;

    .line 187
    .restart local v7    # "iv":Landroid/widget/ImageView;
    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 188
    .restart local v4    # "d":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_11

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 183
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    .end local v7    # "iv":Landroid/widget/ImageView;
    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 191
    .end local v11    # "v":Landroid/view/View;
    :cond_12
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v9

    .line 192
    .restart local v9    # "ret":Z
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 193
    :cond_13
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v2, :cond_5

    .line 194
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 195
    .restart local v11    # "v":Landroid/view/View;
    instance-of v12, v11, Landroid/widget/ImageView;

    if-eqz v12, :cond_14

    move-object v7, v11

    .line 196
    check-cast v7, Landroid/widget/ImageView;

    .line 197
    .restart local v7    # "iv":Landroid/widget/ImageView;
    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 198
    .restart local v4    # "d":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_14

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 193
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    .end local v7    # "iv":Landroid/widget/ImageView;
    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 207
    .end local v1    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "childCount":I
    .end local v3    # "colorFilter":Landroid/graphics/PorterDuffColorFilter;
    .end local v6    # "i":I
    .end local v8    # "layout":Landroid/widget/LinearLayout;
    .end local v9    # "ret":Z
    .end local v11    # "v":Landroid/view/View;
    :cond_15
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v9

    goto/16 :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 77
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 82
    .local v2, "state":[I
    array-length v0, v2

    .line 83
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 86
    aget v3, v2, v1

    const v4, 0x101009e

    if-ne v3, v4, :cond_0

    .line 87
    iput-boolean v5, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsDisabled:Z

    .line 90
    :cond_0
    aget v3, v2, v1

    const v4, 0x10100a7

    if-ne v3, v4, :cond_2

    .line 91
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsPressed:Z

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 93
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "ClipboardServiceEx"

    const-string v4, "pressed !!! "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_1
    :goto_1
    return-void

    .line 83
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsPressed:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsDisabled:Z

    if-eqz v3, :cond_1

    .line 102
    :cond_4
    iput-boolean v5, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsPressed:Z

    .line 103
    iput-boolean v5, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsDisabled:Z

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1
.end method
