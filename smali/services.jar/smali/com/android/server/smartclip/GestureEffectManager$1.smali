.class Lcom/android/server/smartclip/GestureEffectManager$1;
.super Ljava/lang/Object;
.source "SmartClipView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/smartclip/GestureEffectManager;->startEffectForGesture(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/GestureEffectManager;

.field final synthetic val$isDownGesture:Z

.field final synthetic val$key:I


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/GestureEffectManager;ZI)V
    .locals 0

    .prologue
    .line 2861
    iput-object p1, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    iput-boolean p2, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->val$isDownGesture:Z

    iput p3, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->val$key:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2952
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v3, 0x42480000    # 50.0f

    const/4 v2, 0x4

    .line 2869
    iget-boolean v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->val$isDownGesture:Z

    if-eqz v0, :cond_0

    .line 2870
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 2871
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2872
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mDisplay:Landroid/view/Display;
    invoke-static {v1}, Lcom/android/server/smartclip/GestureEffectManager;->access$200(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 2874
    iget v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->val$key:I

    packed-switch v0, :pswitch_data_0

    .line 2887
    :goto_0
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 2888
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mDisplay:Landroid/view/Display;
    invoke-static {v1}, Lcom/android/server/smartclip/GestureEffectManager;->access$200(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/server/smartclip/GestureEffectManager;->access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40a00000    # 5.0f

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 2890
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2891
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/server/smartclip/GestureEffectManager$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/smartclip/GestureEffectManager$1$1;-><init>(Lcom/android/server/smartclip/GestureEffectManager$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2948
    :goto_1
    return-void

    .line 2876
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImageList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$300(Lcom/android/server/smartclip/GestureEffectManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2877
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setX(F)V

    goto :goto_0

    .line 2880
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImageList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$300(Lcom/android/server/smartclip/GestureEffectManager;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2881
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mDisplay:Landroid/view/Display;
    invoke-static {v1}, Lcom/android/server/smartclip/GestureEffectManager;->access$200(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/server/smartclip/GestureEffectManager;->access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_0

    .line 2928
    :cond_0
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2929
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2931
    :cond_1
    iget v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->val$key:I

    packed-switch v0, :pswitch_data_1

    .line 2943
    :goto_2
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mIsShowingGestureEffect:Z
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$500(Lcom/android/server/smartclip/GestureEffectManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2944
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    iget-object v0, v0, Lcom/android/server/smartclip/GestureEffectManager;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v0}, Lcom/android/server/smartclip/SmartClipView;->closeView()V

    .line 2946
    :cond_2
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/smartclip/GestureEffectManager;->mIsShowingGestureEffect:Z
    invoke-static {v0, v1}, Lcom/android/server/smartclip/GestureEffectManager;->access$502(Lcom/android/server/smartclip/GestureEffectManager;Z)Z

    goto/16 :goto_1

    .line 2933
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    const/16 v1, 0x52

    # invokes: Lcom/android/server/smartclip/GestureEffectManager;->injectionKeyEvent(I)V
    invoke-static {v0, v1}, Lcom/android/server/smartclip/GestureEffectManager;->access$400(Lcom/android/server/smartclip/GestureEffectManager;I)V

    goto :goto_2

    .line 2936
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # invokes: Lcom/android/server/smartclip/GestureEffectManager;->injectionKeyEvent(I)V
    invoke-static {v0, v2}, Lcom/android/server/smartclip/GestureEffectManager;->access$400(Lcom/android/server/smartclip/GestureEffectManager;I)V

    goto :goto_2

    .line 2874
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2931
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2956
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2864
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$1;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    # getter for: Lcom/android/server/smartclip/GestureEffectManager;->mSPenVibrator:Lcom/android/server/smartclip/SmartClipView$SPenVibrator;
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$000(Lcom/android/server/smartclip/GestureEffectManager;)Lcom/android/server/smartclip/SmartClipView$SPenVibrator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/smartclip/SmartClipView$SPenVibrator;->playVibrator()V

    .line 2865
    return-void
.end method
