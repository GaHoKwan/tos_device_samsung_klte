.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$31;
.super Ljava/lang/Object;
.source "TwToolBoxFloatingViewer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->prepareToolBoxLinear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

.field final synthetic val$m:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;)V
    .locals 0

    .prologue
    .line 1555
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$31;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iput-object p2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$31;->val$m:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1558
    :try_start_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1559
    .local v0, "value":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$31;->val$m:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->y:F

    .line 1560
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$31;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1563
    .end local v0    # "value":Ljava/lang/Integer;
    :goto_0
    return-void

    .line 1561
    :catch_0
    move-exception v1

    goto :goto_0
.end method
