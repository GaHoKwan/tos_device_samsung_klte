.class Lcom/samsung/android/airbutton/view/AbsAirButtonView$3;
.super Ljava/lang/Object;
.source "AbsAirButtonView.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/airbutton/view/AbsAirButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonView;


# direct methods
.method constructor <init>(Lcom/samsung/android/airbutton/view/AbsAirButtonView;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView$3;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView$3;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    iget-boolean v0, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsHoverEventEnabled:Z

    if-nez v0, :cond_0

    .line 287
    const/4 v0, 0x0

    .line 294
    :goto_0
    return v0

    .line 289
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 290
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView$3;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->onHoverEnter(I)V

    .line 294
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 291
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 292
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView$3;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->onHoverExit(I)V

    goto :goto_1
.end method
