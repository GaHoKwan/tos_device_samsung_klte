.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$9;
.super Landroid/database/ContentObserver;
.source "TwToolBoxFloatingViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 659
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$9;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8
    .param p1, "selfChange"    # Z

    .prologue
    .line 663
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$9;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->updateVisibility()Z
    invoke-static {v6}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 664
    const/4 v2, 0x1

    .line 672
    .local v2, "floatingStyle":I
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$9;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->loadCenterPosition()V
    invoke-static {v6}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$3400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    .line 673
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$9;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z
    invoke-static {v6}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 674
    const/4 v5, 0x0

    .line 675
    .local v5, "needBlock":Z
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$9;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->BLOCK_LIST:[Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 676
    .local v1, "blockPkg":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$9;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 677
    const/4 v5, 0x1

    .line 681
    .end local v1    # "blockPkg":Ljava/lang/String;
    :cond_0
    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$9;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$9;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeOutRunnable:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 684
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "needBlock":Z
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$9;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-virtual {v6}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 686
    .end local v2    # "floatingStyle":I
    :cond_2
    return-void

    .line 675
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "blockPkg":Ljava/lang/String;
    .restart local v2    # "floatingStyle":I
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "needBlock":Z
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
