.class Lcom/android/internal/policy/impl/PhoneWindow$4;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .locals 0

    .prologue
    .line 3577
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x41700000    # 15.0f

    const/high16 v5, -0x3e900000    # -15.0f

    const/4 v6, 0x0

    .line 3579
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 3580
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    # setter for: Lcom/android/internal/policy/impl/PhoneWindow;->oldXvalue:F
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2402(Lcom/android/internal/policy/impl/PhoneWindow;F)F

    .line 3581
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    # setter for: Lcom/android/internal/policy/impl/PhoneWindow;->oldYvalue:F
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2502(Lcom/android/internal/policy/impl/PhoneWindow;F)F

    .line 3582
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    # setter for: Lcom/android/internal/policy/impl/PhoneWindow;->oldXButton:F
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2002(Lcom/android/internal/policy/impl/PhoneWindow;F)F

    .line 3583
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    # setter for: Lcom/android/internal/policy/impl/PhoneWindow;->oldYButton:F
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2102(Lcom/android/internal/policy/impl/PhoneWindow;F)F

    .line 3609
    :cond_0
    :goto_0
    return v8

    .line 3584
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v8, :cond_3

    .line 3585
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->oldXButton:F
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2000(Lcom/android/internal/policy/impl/PhoneWindow;)F

    move-result v4

    sub-float v1, v3, v4

    .line 3586
    .local v1, "moveX":F
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->oldYButton:F
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2100(Lcom/android/internal/policy/impl/PhoneWindow;)F

    move-result v4

    sub-float v2, v3, v4

    .line 3588
    .local v2, "moveY":F
    cmpg-float v3, v1, v7

    if-gtz v3, :cond_2

    cmpl-float v3, v1, v5

    if-ltz v3, :cond_2

    .line 3589
    cmpg-float v3, v2, v7

    if-gtz v3, :cond_2

    cmpl-float v3, v2, v5

    if-ltz v3, :cond_2

    .line 3590
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    new-instance v4, Landroid/view/KeyEvent;

    const/16 v5, 0x52

    invoke-direct {v4, v6, v5}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v3, v6, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanel(ILandroid/view/KeyEvent;)V

    .line 3594
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow;->setGONE_MenuButton(Landroid/view/View;)V
    invoke-static {v3, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/view/View;)V

    .line 3595
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    # setter for: Lcom/android/internal/policy/impl/PhoneWindow;->oldXButton:F
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2002(Lcom/android/internal/policy/impl/PhoneWindow;F)F

    .line 3596
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    # setter for: Lcom/android/internal/policy/impl/PhoneWindow;->oldYButton:F
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2102(Lcom/android/internal/policy/impl/PhoneWindow;F)F

    goto :goto_0

    .line 3597
    .end local v1    # "moveX":F
    .end local v2    # "moveY":F
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 3598
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->oldXvalue:F
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2400(Lcom/android/internal/policy/impl/PhoneWindow;)F

    move-result v4

    sub-float v1, v3, v4

    .line 3599
    .restart local v1    # "moveX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->oldYvalue:F
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2500(Lcom/android/internal/policy/impl/PhoneWindow;)F

    move-result v4

    sub-float v2, v3, v4

    .line 3600
    .restart local v2    # "moveY":F
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v3, v1

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 3601
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v3, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 3602
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3603
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz v3, :cond_4

    .line 3604
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3605
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3607
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow;->setGONE_MenuButton(Landroid/view/View;)V
    invoke-static {v3, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/view/View;)V

    goto/16 :goto_0
.end method
