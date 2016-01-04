.class public Lcom/android/server/sec/TwSlidingDrawer;
.super Landroid/widget/SlidingDrawer;
.source "TwSlidingDrawer.java"


# instance fields
.field private mHandle:Landroid/view/View;

.field private mHandleId:I

.field private mHandleRect:Landroid/graphics/Rect;

.field private mIsSetRect:Z

.field public mTouched:Z

.field private mTrackingTouchForClose:Z

.field private rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/sec/TwSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    iput-boolean v3, p0, Lcom/android/server/sec/TwSlidingDrawer;->mTouched:Z

    .line 38
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/sec/TwSlidingDrawer;->rect:Landroid/graphics/Rect;

    .line 39
    iput-boolean v3, p0, Lcom/android/server/sec/TwSlidingDrawer;->mIsSetRect:Z

    .line 40
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandleRect:Landroid/graphics/Rect;

    .line 41
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/sec/TwSlidingDrawer;->mTrackingTouchForClose:Z

    .line 63
    sget-object v2, Lcom/android/internal/R$styleable;->SlidingDrawer:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 65
    .local v1, "handleId":I
    if-nez v1, :cond_0

    .line 66
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_0
    iput v1, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandleId:I

    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    iput-boolean v3, p0, Lcom/android/server/sec/TwSlidingDrawer;->mIsSetRect:Z

    .line 75
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 79
    iget v0, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandle:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandle:Landroid/view/View;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    invoke-super {p0}, Landroid/widget/SlidingDrawer;->onFinishInflate()V

    .line 86
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 91
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 92
    .local v5, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 94
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 95
    iput-boolean v7, p0, Lcom/android/server/sec/TwSlidingDrawer;->mIsSetRect:Z

    .line 96
    new-instance v6, Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    iget-object v9, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    iget-object v10, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    iget-object v11, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-direct {v6, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandleRect:Landroid/graphics/Rect;

    .line 99
    :cond_0
    iget-boolean v6, p0, Lcom/android/server/sec/TwSlidingDrawer;->mIsSetRect:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandle:Landroid/view/View;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandle:Landroid/view/View;

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    .line 100
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandle:Landroid/view/View;

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 101
    iget-object v6, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandle:Landroid/view/View;

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 102
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_3

    instance-of v6, v2, Landroid/widget/Button;

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    .line 103
    iget-object v6, p0, Lcom/android/server/sec/TwSlidingDrawer;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 104
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/sec/TwSlidingDrawer;->mIsSetRect:Z

    .line 110
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_1
    iget-object v6, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandle:Landroid/view/View;

    if-eqz v6, :cond_5

    .line 111
    new-instance v1, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/sec/TwSlidingDrawer;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    iget-object v9, p0, Lcom/android/server/sec/TwSlidingDrawer;->rect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-direct {v1, v6, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 112
    .local v1, "buttonFrame":Landroid/graphics/Rect;
    if-eqz v1, :cond_4

    float-to-int v6, v4

    float-to-int v8, v5

    invoke-virtual {v1, v6, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/server/sec/TwSlidingDrawer;->mIsSetRect:Z

    if-eqz v6, :cond_4

    .line 113
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "ClipboardServiceEx"

    const-string v8, "Clear button will be clicked..."

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_2
    iput-boolean v7, p0, Lcom/android/server/sec/TwSlidingDrawer;->mTrackingTouchForClose:Z

    move v6, v7

    .line 120
    .end local v1    # "buttonFrame":Landroid/graphics/Rect;
    :goto_1
    return v6

    .line 100
    .restart local v2    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 117
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "i":I
    .restart local v1    # "buttonFrame":Landroid/graphics/Rect;
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/SlidingDrawer;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_1

    .line 120
    .end local v1    # "buttonFrame":Landroid/graphics/Rect;
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/SlidingDrawer;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 126
    const/4 v1, 0x0

    .line 127
    .local v1, "downX":F
    const/4 v2, 0x0

    .line 128
    .local v2, "downY":F
    const/4 v4, 0x0

    .line 129
    .local v4, "upX":F
    const/4 v5, 0x0

    .line 131
    .local v5, "upY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 132
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 154
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/SlidingDrawer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 157
    .local v3, "superResult":Z
    iget-object v6, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandleRect:Landroid/graphics/Rect;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandleRect:Landroid/graphics/Rect;

    float-to-int v7, v1

    float-to-int v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandleRect:Landroid/graphics/Rect;

    float-to-int v7, v4

    float-to-int v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/server/sec/TwSlidingDrawer;->mTrackingTouchForClose:Z

    if-eqz v6, :cond_3

    if-eq v0, v10, :cond_1

    const/4 v6, 0x3

    if-ne v0, v6, :cond_3

    .line 158
    :cond_1
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "ClipboardServiceEx"

    const-string v7, "Clipboard will be closed because touch position exist in title area"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_2
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->animateClose()V

    .line 160
    iput-boolean v9, p0, Lcom/android/server/sec/TwSlidingDrawer;->mTrackingTouchForClose:Z

    .line 163
    :cond_3
    return v3

    .line 134
    .end local v3    # "superResult":Z
    :pswitch_0
    iput-boolean v10, p0, Lcom/android/server/sec/TwSlidingDrawer;->mTrackingTouchForClose:Z

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 137
    goto :goto_0

    .line 139
    :pswitch_1
    iget-object v6, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandleRect:Landroid/graphics/Rect;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandleRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_0

    .line 140
    iget-boolean v6, p0, Lcom/android/server/sec/TwSlidingDrawer;->mTrackingTouchForClose:Z

    if-eqz v6, :cond_0

    .line 141
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "ClipboardServiceEx"

    const-string v7, "mTrackingTouchForClose will be set to false because of touch event position"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_4
    iput-boolean v9, p0, Lcom/android/server/sec/TwSlidingDrawer;->mTrackingTouchForClose:Z

    goto :goto_0

    .line 148
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
