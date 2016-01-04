.class Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$1;
.super Ljava/lang/Object;
.source "AbsAirButtonAnimateView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;


# direct methods
.method constructor <init>(Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$1;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 242
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x1

    .line 233
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$1;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;

    iget-boolean v0, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsReservedToResetPosition:Z

    if-ne v0, v3, :cond_0

    .line 234
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$1;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsReservedToResetPosition:Z

    .line 235
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$1;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;

    # invokes: Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->playYPositionAdjustAnimationIfNeeded()V
    invoke-static {v0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->access$000(Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;)V

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$1;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$1;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$1;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;

    iput-boolean v3, v2, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsTouchEventEnabled:Z

    iput-boolean v3, v1, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsHoverEventEnabled:Z

    iput-boolean v3, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsKeyEventEnabled:Z

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 229
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 226
    return-void
.end method
