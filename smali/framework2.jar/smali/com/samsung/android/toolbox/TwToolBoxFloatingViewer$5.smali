.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;
.super Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback$Stub;
.source "TwToolBoxFloatingViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
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
    .line 400
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-direct {p0}, Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public isContain(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 403
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z
    invoke-static {v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisableFloatingViewer:Z
    invoke-static {v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 404
    :cond_0
    const/4 v0, 0x0

    .line 408
    :goto_0
    return v0

    .line 406
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$2000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 407
    .local v0, "conflict":Z
    const-string/jumbo v1, "toolbox"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback isContain() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public receiveMessage(Ljava/lang/String;II)V
    .locals 11
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "message"    # I
    .param p3, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const-wide/16 v9, 0x64

    .line 414
    if-ne p2, v6, :cond_9

    .line 417
    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v8, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCheckEnvironment:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$2100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 419
    and-int/lit8 v7, p3, 0x8

    if-eqz v7, :cond_3

    .line 421
    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/String;

    move-result-object v3

    .line 422
    .local v3, "lastPackage":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # setter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;
    invoke-static {v7, p1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$302(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Ljava/lang/String;)Ljava/lang/String;

    .line 424
    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 425
    const/4 v5, 0x0

    .line 426
    .local v5, "needBlock":Z
    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->BLOCK_LIST:[Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 427
    .local v1, "blockPkg":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 428
    const/4 v5, 0x1

    .line 432
    .end local v1    # "blockPkg":Ljava/lang/String;
    :cond_0
    if-eqz v5, :cond_1

    const/4 v6, 0x4

    :cond_1
    or-int/2addr p3, v6

    .line 435
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "needBlock":Z
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 436
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7, v9, v10}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 440
    .end local v3    # "lastPackage":Ljava/lang/String;
    :cond_3
    and-int/lit8 v6, p3, 0x10

    if-eqz v6, :cond_4

    .line 442
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 443
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7, v9, v10}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 447
    :cond_4
    and-int/lit8 v6, p3, 0x20

    if-eqz v6, :cond_5

    .line 448
    const/4 p3, 0x4

    .line 451
    :cond_5
    and-int/lit8 v6, p3, 0x2

    if-eqz v6, :cond_6

    .line 452
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z
    invoke-static {v6}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeInRunnable:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 455
    :cond_6
    and-int/lit8 v6, p3, 0x4

    if-eqz v6, :cond_7

    .line 456
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeOutRunnable:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 463
    :cond_7
    :goto_1
    return-void

    .line 426
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "blockPkg":Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "lastPackage":Ljava/lang/String;
    .restart local v4    # "len$":I
    .restart local v5    # "needBlock":Z
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 459
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "blockPkg":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "lastPackage":Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "needBlock":Z
    :cond_9
    const/4 v6, 0x3

    if-ne p2, v6, :cond_7

    .line 461
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchUpOrCancelRunnable:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$2200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7, v9, v10}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
