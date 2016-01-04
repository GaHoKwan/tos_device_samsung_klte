.class Lcom/android/internal/widget/ActionBarView$4;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ActionBarView;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x0

    .line 290
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->access$600(Lcom/android/internal/widget/ActionBarView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "air_view_master_onoff"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 291
    const-string v1, "ActionBarView"

    const-string v2, "AIR_VIEW_MASTER_ONOFF: false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    :goto_0
    return v4

    .line 295
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_7

    .line 296
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->access$700(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->access$800(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->access$700(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->access$800(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 298
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    const/4 v2, 0x1

    # setter for: Lcom/android/internal/widget/ActionBarView;->mIsTitleHoveredBackground:Z
    invoke-static {v1, v2}, Lcom/android/internal/widget/ActionBarView;->access$202(Lcom/android/internal/widget/ActionBarView;Z)Z

    .line 299
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mActionBarTitleHoveredBackgroundRes:I
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->access$900(Lcom/android/internal/widget/ActionBarView;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 300
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mActionBarTitleHoveredBackgroundRes:I
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->access$900(Lcom/android/internal/widget/ActionBarView;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 303
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->access$1000(Lcom/android/internal/widget/ActionBarView;)Landroid/media/AudioManager;

    move-result-object v1

    if-nez v1, :cond_4

    .line 304
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    # setter for: Lcom/android/internal/widget/ActionBarView;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2, v1}, Lcom/android/internal/widget/ActionBarView;->access$1002(Lcom/android/internal/widget/ActionBarView;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 306
    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->access$1000(Lcom/android/internal/widget/ActionBarView;)Landroid/media/AudioManager;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 307
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v1, v5}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 310
    :cond_5
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->access$1100(Lcom/android/internal/widget/ActionBarView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    .line 311
    .local v0, "titleHoverPopupWindow":Landroid/widget/HoverPopupWindow;
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->access$700(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->access$800(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 312
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->access$1200(Lcom/android/internal/widget/ActionBarView;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 313
    :cond_6
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->access$700(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->access$1300(Lcom/android/internal/widget/ActionBarView;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 317
    .end local v0    # "titleHoverPopupWindow":Landroid/widget/HoverPopupWindow;
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 318
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mIsTitleHoveredBackground:Z
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->access$200(Lcom/android/internal/widget/ActionBarView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mActionBarItemBackgroundRes:I
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->access$300(Lcom/android/internal/widget/ActionBarView;)I

    move-result v1

    if-eqz v1, :cond_8

    .line 320
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # getter for: Lcom/android/internal/widget/ActionBarView;->mActionBarItemBackgroundRes:I
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->access$300(Lcom/android/internal/widget/ActionBarView;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 322
    :cond_8
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$4;->this$0:Lcom/android/internal/widget/ActionBarView;

    # setter for: Lcom/android/internal/widget/ActionBarView;->mIsTitleHoveredBackground:Z
    invoke-static {v1, v4}, Lcom/android/internal/widget/ActionBarView;->access$202(Lcom/android/internal/widget/ActionBarView;Z)Z

    goto/16 :goto_0
.end method
