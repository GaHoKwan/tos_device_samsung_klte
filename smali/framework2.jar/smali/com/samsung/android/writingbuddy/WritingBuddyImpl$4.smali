.class Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;
.super Ljava/lang/Object;
.source "WritingBuddyImpl.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->createPopupCue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V
    .locals 0

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x7

    const/4 v5, 0x1

    .line 1043
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$100(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1044
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$100(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1047
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1049
    .local v0, "action":I
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # getter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I
    invoke-static {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$500(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)I

    move-result v2

    if-nez v2, :cond_1

    .line 1050
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    .line 1051
    .local v1, "im":Landroid/hardware/input/InputManager;
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->pointInView(Landroid/view/View;FF)Z
    invoke-static {v2, p1, v3, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$600(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Landroid/view/View;FF)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1052
    const-string v2, "WritingBuddyImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Close WritingBuddy cue : 1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # getter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPopupCueShowMSGCalled:Z
    invoke-static {v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$700(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # getter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPopupCueShowMSGCalled:Z
    invoke-static {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$700(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1054
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # setter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPopupCueShowMSGCalled:Z
    invoke-static {v2, v7}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$702(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Z)Z

    .line 1055
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$100(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1067
    .end local v1    # "im":Landroid/hardware/input/InputManager;
    :cond_1
    :goto_0
    return v7

    .line 1057
    .restart local v1    # "im":Landroid/hardware/input/InputManager;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z
    invoke-static {v2, v5}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$400(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Z)Z

    goto :goto_0

    .line 1059
    :cond_3
    if-eqz v1, :cond_4

    const/4 v2, -0x1

    const/16 v3, -0x100

    const/16 v4, 0x140

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/input/InputManager;->getScanCodeState(III)I

    move-result v2

    if-nez v2, :cond_4

    .line 1060
    const-string v2, "WritingBuddyImpl"

    const-string v3, "Close WritingBuddy cue : 2"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z
    invoke-static {v2, v5}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$400(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Z)Z

    goto :goto_0

    .line 1062
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # getter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;
    invoke-static {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$000(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Lcom/samsung/android/writingbuddy/PopupCue;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # getter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;
    invoke-static {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$000(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Lcom/samsung/android/writingbuddy/PopupCue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/writingbuddy/PopupCue;->isAirButtonClicked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1063
    const-string v2, "WritingBuddyImpl"

    const-string v3, "Close WritingBuddy cue : 3"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z
    invoke-static {v2, v5}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$400(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Z)Z

    goto :goto_0
.end method
