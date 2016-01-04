.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$26;
.super Ljava/lang/Object;
.source "TwToolBoxFloatingViewer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 1405
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$26;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1408
    :try_start_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1409
    .local v1, "value":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1410
    .local v0, "aniCenterX":I
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$26;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # setter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I
    invoke-static {v2, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5002(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I

    .line 1411
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$26;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1414
    .end local v0    # "aniCenterX":I
    .end local v1    # "value":Ljava/lang/Integer;
    :goto_0
    return-void

    .line 1412
    :catch_0
    move-exception v2

    goto :goto_0
.end method
