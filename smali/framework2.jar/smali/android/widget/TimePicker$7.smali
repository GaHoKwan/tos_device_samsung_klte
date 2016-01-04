.class Landroid/widget/TimePicker$7;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePicker;


# direct methods
.method constructor <init>(Landroid/widget/TimePicker;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Landroid/widget/TimePicker$7;->this$0:Landroid/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextUpdated(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const v8, 0x1020377

    const/4 v7, 0x0

    .line 411
    const/4 v1, 0x0

    .line 412
    .local v1, "curTime":Ljava/lang/String;
    const/4 v4, 0x0

    .line 414
    .local v4, "tv":Landroid/widget/TextView;
    iget-object v5, p0, Landroid/widget/TimePicker$7;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/TimePicker;->access$400(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "tv":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 415
    .restart local v4    # "tv":Landroid/widget/TextView;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 417
    .local v2, "hour":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Landroid/widget/TimePicker$7;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/TimePicker;->access$500(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "tv":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 418
    .restart local v4    # "tv":Landroid/widget/TextView;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 420
    .local v3, "minute":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "//"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 422
    iget-object v5, p0, Landroid/widget/TimePicker$7;->this$0:Landroid/widget/TimePicker;

    invoke-virtual {v5}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v5

    if-nez v5, :cond_1

    .line 423
    const-string v0, "AM"

    .line 424
    .local v0, "ampm":Ljava/lang/String;
    iget-object v5, p0, Landroid/widget/TimePicker$7;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;
    invoke-static {v5}, Landroid/widget/TimePicker;->access$600(Landroid/widget/TimePicker;)Landroid/widget/Button;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 425
    iget-object v5, p0, Landroid/widget/TimePicker$7;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;
    invoke-static {v5}, Landroid/widget/TimePicker;->access$600(Landroid/widget/TimePicker;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    :cond_0
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "//"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 433
    iget-object v5, p0, Landroid/widget/TimePicker$7;->this$0:Landroid/widget/TimePicker;

    invoke-virtual {v5, v7}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 434
    iget-object v5, p0, Landroid/widget/TimePicker$7;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v5}, Landroid/widget/TimePicker;->access$000(Landroid/widget/TimePicker;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 435
    iget-object v5, p0, Landroid/widget/TimePicker$7;->this$0:Landroid/widget/TimePicker;

    invoke-virtual {v5, v7}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    .line 442
    .end local v0    # "ampm":Ljava/lang/String;
    :cond_1
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 415
    .end local v2    # "hour":Ljava/lang/String;
    .end local v3    # "minute":Ljava/lang/String;
    :cond_2
    const-string v2, "00"

    goto/16 :goto_0

    .line 418
    .restart local v2    # "hour":Ljava/lang/String;
    :cond_3
    const-string v3, "00"

    goto :goto_1

    .line 426
    .restart local v0    # "ampm":Ljava/lang/String;
    .restart local v3    # "minute":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Landroid/widget/TimePicker$7;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/TimePicker;->access$700(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 427
    iget-object v5, p0, Landroid/widget/TimePicker$7;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/TimePicker;->access$700(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "tv":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 428
    .restart local v4    # "tv":Landroid/widget/TextView;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    goto :goto_2

    .line 437
    :cond_6
    iget-object v5, p0, Landroid/widget/TimePicker$7;->this$0:Landroid/widget/TimePicker;

    invoke-virtual {v5, v7}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v5

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    goto :goto_3
.end method
