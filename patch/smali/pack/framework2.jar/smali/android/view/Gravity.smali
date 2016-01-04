.class public Landroid/view/Gravity;
.super Ljava/lang/Object;
.source "Gravity.java"


# static fields
.field public static final ARRANGE_UPPER_SIDE_INPUT_METHOD_MASK:I = -0x20000000

.field public static final AXIS_CLIP:I = 0x8

.field public static final AXIS_PULL_AFTER:I = 0x4

.field public static final AXIS_PULL_BEFORE:I = 0x2

.field public static final AXIS_SPECIFIED:I = 0x1

.field public static final AXIS_X_SHIFT:I = 0x0

.field public static final AXIS_Y_SHIFT:I = 0x4

.field public static final BOTTOM:I = 0x50

.field public static final BOTTOM_ARRANGE_UPPER_SIDE_INPUT_METHOD:I = -0x80000000

.field public static final CENTER:I = 0x11

.field public static final CENTER_ARRANGE_UPPER_SIDE_INPUT_METHOD:I = 0x20000000

.field public static final CENTER_HORIZONTAL:I = 0x1

.field public static final CENTER_VERTICAL:I = 0x10

.field public static final CLIP_HORIZONTAL:I = 0x8

.field public static final CLIP_VERTICAL:I = 0x80

.field public static final DISPLAY_CLIP_HORIZONTAL:I = 0x1000000

.field public static final DISPLAY_CLIP_VERTICAL:I = 0x10000000

.field public static final END:I = 0x800005

.field public static final FILL:I = 0x77

.field public static final FILL_HORIZONTAL:I = 0x7

.field public static final FILL_VERTICAL:I = 0x70

.field public static final FULL_ARRANGE_UPPER_SIDE_INPUT_METHOD:I = 0x40000000

.field public static final HORIZONTAL_GRAVITY_MASK:I = 0x7

.field public static final LEFT:I = 0x3

.field public static final NO_GRAVITY:I = 0x0

.field public static final RELATIVE_HORIZONTAL_GRAVITY_MASK:I = 0x800007

.field public static final RELATIVE_LAYOUT_DIRECTION:I = 0x800000

.field public static final RIGHT:I = 0x5

.field public static final START:I = 0x800003

.field public static final TOP:I = 0x30

.field public static final VERTICAL_GRAVITY_MASK:I = 0x70


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 5
    .param p0, "gravity"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "container"    # Landroid/graphics/Rect;
    .param p4, "xAdj"    # I
    .param p5, "yAdj"    # I
    .param p6, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/16 v4, 0x80

    const/16 v3, 0x8

    .line 214
    and-int/lit8 v0, p0, 0x6

    packed-switch v0, :pswitch_data_0

    .line 250
    :pswitch_0
    iget v0, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 251
    iget v0, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 256
    :cond_0
    :goto_0
    const/high16 v0, -0x20000000

    and-int/2addr v0, p0

    sparse-switch v0, :sswitch_data_0

    .line 274
    and-int/lit8 v0, p0, 0x60

    sparse-switch v0, :sswitch_data_1

    .line 310
    iget v0, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 311
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 314
    :cond_1
    :goto_1
    return-void

    .line 216
    :pswitch_1
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 218
    iget v0, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 219
    and-int/lit8 v0, p0, 0x8

    if-ne v0, v3, :cond_0

    .line 221
    iget v0, p6, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_2

    .line 222
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 224
    :cond_2
    iget v0, p6, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_0

    .line 225
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iput v0, p6, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 230
    :pswitch_2
    iget v0, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 231
    iget v0, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 232
    and-int/lit8 v0, p0, 0x8

    if-ne v0, v3, :cond_0

    .line 234
    iget v0, p6, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_0

    .line 235
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iput v0, p6, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 240
    :pswitch_3
    iget v0, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 241
    iget v0, p6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p1

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 242
    and-int/lit8 v0, p0, 0x8

    if-ne v0, v3, :cond_0

    .line 244
    iget v0, p6, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_0

    .line 245
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p6, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 259
    :sswitch_0
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 260
    iget v0, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 263
    :sswitch_1
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 264
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 268
    :sswitch_2
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 269
    iget v0, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    .line 276
    :sswitch_3
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 278
    iget v0, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 279
    and-int/lit16 v0, p0, 0x80

    if-ne v0, v4, :cond_1

    .line 281
    iget v0, p6, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_3

    .line 282
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 284
    :cond_3
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_1

    .line 285
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    .line 290
    :sswitch_4
    iget v0, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 291
    iget v0, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 292
    and-int/lit16 v0, p0, 0x80

    if-ne v0, v4, :cond_1

    .line 294
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_1

    .line 295
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    .line 300
    :sswitch_5
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 301
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 302
    and-int/lit16 v0, p0, 0x80

    if-ne v0, v4, :cond_1

    .line 304
    iget v0, p6, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_1

    .line 305
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iput v0, p6, Landroid/graphics/Rect;->top:I

    goto/16 :goto_1

    .line 214
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 256
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x20000000 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch

    .line 274
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_3
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
    .end sparse-switch
.end method

.method public static apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V
    .locals 7
    .param p0, "gravity"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "container"    # Landroid/graphics/Rect;
    .param p4, "xAdj"    # I
    .param p5, "yAdj"    # I
    .param p6, "outRect"    # Landroid/graphics/Rect;
    .param p7, "layoutDirection"    # I

    .prologue
    .line 464
    invoke-static {p0, p7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .local v0, "absGravity":I
    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 465
    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 466
    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .param p0, "gravity"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "container"    # Landroid/graphics/Rect;
    .param p4, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 165
    move v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 166
    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 7
    .param p0, "gravity"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "container"    # Landroid/graphics/Rect;
    .param p4, "outRect"    # Landroid/graphics/Rect;
    .param p5, "layoutDirection"    # I

    .prologue
    const/4 v4, 0x0

    .line 187
    invoke-static {p0, p5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .local v0, "absGravity":I
    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    move-object v6, p4

    .line 188
    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 189
    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/graphics/Rect;ZZZFF)V
    .locals 4
    .param p0, "gravity"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "container"    # Landroid/graphics/Rect;
    .param p4, "padding"    # Landroid/graphics/Rect;
    .param p5, "xAdj"    # I
    .param p6, "yAdj"    # I
    .param p7, "outRect"    # Landroid/graphics/Rect;
    .param p8, "typeBase"    # Z
    .param p9, "isFloating"    # Z
    .param p10, "attached"    # Z
    .param p11, "hScale"    # F
    .param p12, "vScale"    # F

    .prologue
    .line 320
    if-eqz p8, :cond_1

    if-nez p9, :cond_1

    .line 321
    iget v0, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p5

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 322
    iget v0, p7, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 323
    iget v0, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p6

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 324
    iget v0, p7, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    and-int/lit8 v0, p0, 0x6

    packed-switch v0, :pswitch_data_0

    .line 365
    :pswitch_0
    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    int-to-float v1, p5

    mul-float/2addr v1, p11

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 366
    iget v0, p7, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 370
    :cond_2
    :goto_1
    if-nez p10, :cond_3

    .line 371
    const/high16 v0, -0x20000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_3

    .line 372
    const/high16 v0, -0x20000000

    and-int/2addr v0, p0

    sparse-switch v0, :sswitch_data_0

    .line 391
    :cond_3
    and-int/lit8 v0, p0, 0x60

    sparse-switch v0, :sswitch_data_1

    .line 430
    iget v0, p3, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p4, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p6

    int-to-float v1, v1

    mul-float/2addr v1, p11

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 432
    iget v0, p7, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 330
    :pswitch_1
    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    int-to-float v1, v1

    mul-float/2addr v1, p11

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    int-to-float v1, p5

    mul-float/2addr v1, p11

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 332
    iget v0, p7, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 333
    and-int/lit8 v0, p0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 335
    iget v0, p7, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_4

    .line 336
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 338
    :cond_4
    iget v0, p7, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_2

    .line 339
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iput v0, p7, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 344
    :pswitch_2
    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    int-to-float v1, p5

    mul-float/2addr v1, p11

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 345
    iget v0, p7, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 346
    and-int/lit8 v0, p0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 348
    iget v0, p7, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_2

    .line 349
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iput v0, p7, Landroid/graphics/Rect;->right:I

    goto/16 :goto_1

    .line 354
    :pswitch_3
    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, p5

    int-to-float v1, v1

    mul-float/2addr v1, p11

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 355
    iget v0, p7, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    int-to-float v1, p1

    mul-float/2addr v1, p11

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 356
    iget v0, p7, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 357
    and-int/lit8 v0, p0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 359
    iget v0, p7, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_2

    .line 360
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p7, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    .line 375
    :sswitch_0
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 376
    iget v0, p7, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 379
    :sswitch_1
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p2

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 380
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 384
    :sswitch_2
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 385
    iget v0, p7, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 393
    :sswitch_3
    iget v0, p3, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget v3, p4, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    int-to-float v1, v1

    mul-float v1, v1, p12

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p4, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p6

    int-to-float v1, v1

    mul-float v1, v1, p12

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 396
    iget v0, p7, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    .line 397
    and-int/lit16 v0, p0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 399
    iget v0, p7, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_5

    .line 400
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 402
    :cond_5
    iget v0, p7, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_0

    .line 403
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 408
    :sswitch_4
    iget v0, p3, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p4, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p6

    int-to-float v1, v1

    mul-float v1, v1, p12

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 410
    iget v0, p7, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    .line 411
    and-int/lit16 v0, p0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 413
    iget v0, p7, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_0

    .line 414
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 419
    :sswitch_5
    iget v0, p3, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p4, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    sub-int/2addr v1, p6

    int-to-float v1, v1

    mul-float v1, v1, p12

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    .line 420
    iget v0, p7, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    int-to-float v1, p2

    mul-float v1, v1, p12

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 421
    iget v0, p7, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    .line 422
    and-int/lit16 v0, p0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 424
    iget v0, p7, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_0

    .line 425
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iput v0, p7, Landroid/graphics/Rect;->top:I

    goto/16 :goto_0

    .line 328
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 372
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x20000000 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch

    .line 391
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_3
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
    .end sparse-switch
.end method

.method public static applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .param p0, "gravity"    # I
    .param p1, "display"    # Landroid/graphics/Rect;
    .param p2, "inoutObj"    # Landroid/graphics/Rect;

    .prologue
    .line 485
    const/high16 v1, 0x10000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_4

    .line 486
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 487
    :cond_0
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_1

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 503
    :cond_1
    :goto_0
    const/high16 v1, 0x1000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_8

    .line 504
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_2

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 505
    :cond_2
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_3

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 520
    :cond_3
    :goto_1
    return-void

    .line 489
    :cond_4
    const/4 v0, 0x0

    .line 490
    .local v0, "off":I
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_6

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v2

    .line 492
    :cond_5
    :goto_2
    if-eqz v0, :cond_1

    .line 493
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_7

    .line 494
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 495
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 491
    :cond_6
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_5

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v2

    goto :goto_2

    .line 497
    :cond_7
    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 498
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 507
    .end local v0    # "off":I
    :cond_8
    const/4 v0, 0x0

    .line 508
    .restart local v0    # "off":I
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_a

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int v0, v1, v2

    .line 510
    :cond_9
    :goto_3
    if-eqz v0, :cond_3

    .line 511
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_b

    .line 512
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 513
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 509
    :cond_a
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_9

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int v0, v1, v2

    goto :goto_3

    .line 515
    :cond_b
    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 516
    iget v1, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_1
.end method

.method public static applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 1
    .param p0, "gravity"    # I
    .param p1, "display"    # Landroid/graphics/Rect;
    .param p2, "inoutObj"    # Landroid/graphics/Rect;
    .param p3, "layoutDirection"    # I

    .prologue
    .line 543
    invoke-static {p0, p3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 544
    .local v0, "absGravity":I
    invoke-static {v0, p1, p2}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 545
    return-void
.end method

.method public static getAbsoluteGravity(II)I
    .locals 5
    .param p0, "gravity"    # I
    .param p1, "layoutDirection"    # I

    .prologue
    const v4, 0x800005

    const v3, 0x800003

    const/4 v2, 0x1

    .line 579
    move v0, p0

    .line 581
    .local v0, "result":I
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-lez v1, :cond_1

    .line 582
    and-int v1, v0, v3

    if-ne v1, v3, :cond_3

    .line 584
    const v1, -0x800004

    and-int/2addr v0, v1

    .line 585
    if-ne p1, v2, :cond_2

    .line 587
    or-int/lit8 v0, v0, 0x5

    .line 605
    :cond_0
    :goto_0
    const v1, -0x800001

    and-int/2addr v0, v1

    .line 607
    :cond_1
    return v0

    .line 590
    :cond_2
    or-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 592
    :cond_3
    and-int v1, v0, v4

    if-ne v1, v4, :cond_0

    .line 594
    const v1, -0x800006

    and-int/2addr v0, v1

    .line 595
    if-ne p1, v2, :cond_4

    .line 597
    or-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 600
    :cond_4
    or-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method

.method public static isHorizontal(I)Z
    .locals 1
    .param p0, "gravity"    # I

    .prologue
    .line 564
    if-lez p0, :cond_0

    const v0, 0x800007

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVertical(I)Z
    .locals 1
    .param p0, "gravity"    # I

    .prologue
    .line 554
    if-lez p0, :cond_0

    and-int/lit8 v0, p0, 0x70

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
