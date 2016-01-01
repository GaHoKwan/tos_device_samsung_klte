.class Landroid/webkitsec/HtmlComposerView$StylusEventListener;
.super Ljava/lang/Object;
.source "HtmlComposerView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/HtmlComposerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StylusEventListener"
.end annotation


# instance fields
.field private final DELTA:I

.field private mDirLTR:Z

.field private mMaxX:F

.field private mPressed:Z

.field private mStartX:F

.field private mStartY:F

.field final synthetic this$0:Landroid/webkitsec/HtmlComposerView;


# direct methods
.method private constructor <init>(Landroid/webkitsec/HtmlComposerView;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mDirLTR:Z

    iput v1, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mStartX:F

    iput v1, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mStartY:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mPressed:Z

    iput v1, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mMaxX:F

    const/16 v0, 0xf

    iput v0, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->DELTA:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkitsec/HtmlComposerView;Landroid/webkitsec/HtmlComposerView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/HtmlComposerView$StylusEventListener;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    return-void
.end method


# virtual methods
.method public onStylusButtonEvent(Landroid/view/MotionEvent;I)V
    .locals 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    iget-boolean v6, v6, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onStylusButtonEvent action = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v6, 0x2

    new-array v4, v6, [I

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v6, v4}, Landroid/webkitsec/HtmlComposerView;->getLocationInWindow([I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v6, v1}, Landroid/webkitsec/HtmlComposerView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    const/4 v7, 0x0

    aget v7, v4, v7

    sub-int v2, v6, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    const/4 v7, 0x1

    aget v7, v4, v7

    sub-int v3, v6, v7

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v4, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mStartY:F

    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mPressed:Z

    const/4 v6, 0x0

    iput v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mMaxX:F

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    iput v2, v6, Landroid/webkitsec/HtmlComposerView;->mLocalStartX:I

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    iput v3, v6, Landroid/webkitsec/HtmlComposerView;->mLocalStartY:I

    goto :goto_0

    :pswitch_1
    iget-boolean v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mPressed:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    iget-boolean v6, v6, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TextSelection is canceled mPressed = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mPressed:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    iput v2, v6, Landroid/webkitsec/HtmlComposerView;->mLocalEndX:I

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    iput v3, v6, Landroid/webkitsec/HtmlComposerView;->mLocalEndY:I

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v6}, Landroid/webkitsec/HtmlComposerView;->hasFocus()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v6}, Landroid/webkitsec/HtmlComposerView;->requestFocus()Z

    :cond_5
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    iget v7, v7, Landroid/webkitsec/HtmlComposerView;->mLocalStartX:I

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    iget v8, v8, Landroid/webkitsec/HtmlComposerView;->mLocalStartY:I

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    iget v9, v9, Landroid/webkitsec/HtmlComposerView;->mLocalEndX:I

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    iget v10, v10, Landroid/webkitsec/HtmlComposerView;->mLocalEndY:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/webkitsec/HtmlComposerView;->selectBWStartAndEnd(IIII)V

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v6}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v6, v5, :cond_6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    :cond_6
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mPressed:Z

    goto/16 :goto_0

    :pswitch_2
    iget-boolean v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mPressed:Z

    if-eqz v6, :cond_1

    iget v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mMaxX:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_8

    iget v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    iget v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    const/high16 v8, 0x41700000    # 15.0f

    add-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mDirLTR:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mMaxX:F

    goto/16 :goto_0

    :cond_7
    iget v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    iget v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    const/high16 v8, 0x41700000    # 15.0f

    add-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mDirLTR:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mMaxX:F

    goto/16 :goto_0

    :cond_8
    iget-boolean v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mDirLTR:Z

    if-eqz v6, :cond_a

    iget v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mMaxX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mMaxX:F

    goto/16 :goto_0

    :cond_9
    iget v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mMaxX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    const/high16 v8, 0x41700000    # 15.0f

    add-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    const-string v6, "HtmlComposerView"

    const-string v7, "TextSelection is canceled because of wrong X position, DirLTR"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mPressed:Z

    goto/16 :goto_0

    :cond_a
    iget-boolean v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mDirLTR:Z

    if-nez v6, :cond_1

    iget v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mMaxX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mMaxX:F

    goto/16 :goto_0

    :cond_b
    iget v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mMaxX:F

    const/high16 v7, 0x41700000    # 15.0f

    add-float/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    const-string v6, "HtmlComposerView"

    const-string v7, "TextSelection is canceled because of wrong X position, DirRTL"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mPressed:Z

    goto/16 :goto_0

    :pswitch_3
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mPressed:Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
