.class Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$2;
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
    .line 245
    iput-object p1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$2;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 264
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x1

    .line 257
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$2;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;

    # invokes: Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->shouldSendItemSelectedNotiFirst()Z
    invoke-static {v0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->access$100(Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$2;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->finish(ZZ)V

    .line 261
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$2;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->finish(ZZ)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 253
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$2;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;

    # invokes: Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->shouldSendItemSelectedNotiFirst()Z
    invoke-static {v0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->access$100(Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$2;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->finish(ZZ)V

    .line 250
    :cond_0
    return-void
.end method
