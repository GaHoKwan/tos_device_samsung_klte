.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$28;
.super Ljava/lang/Object;
.source "TwToolBoxFloatingViewer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->goToPositionBySmooth(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0

    .prologue
    .line 1428
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$28;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1440
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$28;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMovingByAnimation:Z
    invoke-static {v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5202(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z

    .line 1436
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1438
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$28;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMovingByAnimation:Z
    invoke-static {v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5202(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z

    .line 1432
    return-void
.end method
