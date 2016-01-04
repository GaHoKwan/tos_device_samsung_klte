.class Landroid/widget/TimePicker$8;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;


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
    .line 445
    iput-object p1, p0, Landroid/widget/TimePicker$8;->this$0:Landroid/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextReceived(Ljava/lang/CharSequence;)V
    .locals 13
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 448
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "//"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 449
    .local v9, "numString":[Ljava/lang/String;
    array-length v11, v9

    const/4 v12, 0x2

    if-ge v11, v12, :cond_0

    .line 510
    :goto_0
    return-void

    .line 453
    :cond_0
    const/4 v2, -0x1

    .line 454
    .local v2, "hour":I
    const/4 v7, -0x1

    .line 455
    .local v7, "minute":I
    const/4 v1, 0x0

    .line 456
    .local v1, "existAmPm":Z
    const-string v10, ""

    .line 458
    .local v10, "tmpStr":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v11, v9

    if-ge v3, v11, :cond_c

    .line 459
    aget-object v11, v9, v3

    if-eqz v11, :cond_2

    aget-object v11, v9, v3

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 460
    :goto_2
    if-nez v3, :cond_4

    .line 462
    :try_start_0
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 458
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 459
    :cond_2
    const-string v10, ""

    goto :goto_2

    .line 462
    :cond_3
    const/4 v2, -0x1

    goto :goto_3

    .line 463
    :catch_0
    move-exception v8

    .line 464
    .local v8, "nfe":Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    .line 465
    goto :goto_3

    .line 466
    .end local v8    # "nfe":Ljava/lang/NumberFormatException;
    :cond_4
    const/4 v11, 0x1

    if-ne v3, v11, :cond_6

    .line 468
    :try_start_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    :goto_4
    goto :goto_3

    :cond_5
    const/4 v7, -0x1

    goto :goto_4

    .line 469
    :catch_1
    move-exception v8

    .line 470
    .restart local v8    # "nfe":Ljava/lang/NumberFormatException;
    const/4 v7, -0x1

    .line 471
    goto :goto_3

    .line 472
    .end local v8    # "nfe":Ljava/lang/NumberFormatException;
    :cond_6
    const/4 v11, 0x2

    if-ne v3, v11, :cond_1

    .line 473
    aget-object v11, v9, v3

    if-eqz v11, :cond_9

    aget-object v11, v9, v3

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 474
    :goto_5
    const-string v11, ""

    if-eq v10, v11, :cond_7

    .line 475
    const/4 v1, 0x1

    .line 478
    :cond_7
    :try_start_2
    iget-object v11, p0, Landroid/widget/TimePicker$8;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;
    invoke-static {v11}, Landroid/widget/TimePicker;->access$800(Landroid/widget/TimePicker;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v5, v11, v12

    .line 479
    .local v5, "initAM":Ljava/lang/String;
    iget-object v11, p0, Landroid/widget/TimePicker$8;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;
    invoke-static {v11}, Landroid/widget/TimePicker;->access$800(Landroid/widget/TimePicker;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v6, v11, v12

    .line 481
    .local v6, "initPM":Ljava/lang/String;
    if-eqz v1, :cond_a

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    const-string v11, "AM"

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 482
    :cond_8
    iget-object v11, p0, Landroid/widget/TimePicker$8;->this$0:Landroid/widget/TimePicker;

    const/4 v12, 0x1

    # setter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v11, v12}, Landroid/widget/TimePicker;->access$002(Landroid/widget/TimePicker;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 486
    .end local v5    # "initAM":Ljava/lang/String;
    .end local v6    # "initPM":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_3

    .line 473
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9
    const-string v10, ""

    goto :goto_5

    .line 483
    .restart local v5    # "initAM":Ljava/lang/String;
    .restart local v6    # "initPM":Ljava/lang/String;
    :cond_a
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    const-string v11, "PM"

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 484
    :cond_b
    iget-object v11, p0, Landroid/widget/TimePicker$8;->this$0:Landroid/widget/TimePicker;

    const/4 v12, 0x0

    # setter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v11, v12}, Landroid/widget/TimePicker;->access$002(Landroid/widget/TimePicker;Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    .line 492
    .end local v5    # "initAM":Ljava/lang/String;
    .end local v6    # "initPM":Ljava/lang/String;
    :cond_c
    if-ltz v2, :cond_d

    .line 493
    iget-object v11, p0, Landroid/widget/TimePicker$8;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v11}, Landroid/widget/TimePicker;->access$400(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 496
    :cond_d
    if-ltz v7, :cond_e

    .line 497
    iget-object v11, p0, Landroid/widget/TimePicker$8;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;
    invoke-static {v11}, Landroid/widget/TimePicker;->access$500(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 500
    :cond_e
    iget-object v11, p0, Landroid/widget/TimePicker$8;->this$0:Landroid/widget/TimePicker;

    invoke-virtual {v11}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v11

    if-nez v11, :cond_f

    if-eqz v1, :cond_f

    .line 501
    iget-object v11, p0, Landroid/widget/TimePicker$8;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v11}, Landroid/widget/TimePicker;->access$000(Landroid/widget/TimePicker;)Z

    move-result v11

    if-eqz v11, :cond_10

    const/4 v4, 0x0

    .line 502
    .local v4, "index":I
    :goto_6
    iget-object v11, p0, Landroid/widget/TimePicker$8;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;
    invoke-static {v11}, Landroid/widget/TimePicker;->access$700(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v11

    if-eqz v11, :cond_11

    .line 503
    iget-object v11, p0, Landroid/widget/TimePicker$8;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;
    invoke-static {v11}, Landroid/widget/TimePicker;->access$700(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 509
    .end local v4    # "index":I
    :cond_f
    :goto_7
    iget-object v11, p0, Landroid/widget/TimePicker$8;->this$0:Landroid/widget/TimePicker;

    # invokes: Landroid/widget/TimePicker;->onTimeChanged()V
    invoke-static {v11}, Landroid/widget/TimePicker;->access$200(Landroid/widget/TimePicker;)V

    goto/16 :goto_0

    .line 501
    :cond_10
    const/4 v4, 0x1

    goto :goto_6

    .line 504
    .restart local v4    # "index":I
    :cond_11
    iget-object v11, p0, Landroid/widget/TimePicker$8;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;
    invoke-static {v11}, Landroid/widget/TimePicker;->access$600(Landroid/widget/TimePicker;)Landroid/widget/Button;

    move-result-object v11

    if-eqz v11, :cond_f

    .line 505
    iget-object v11, p0, Landroid/widget/TimePicker$8;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;
    invoke-static {v11}, Landroid/widget/TimePicker;->access$600(Landroid/widget/TimePicker;)Landroid/widget/Button;

    move-result-object v11

    iget-object v12, p0, Landroid/widget/TimePicker$8;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;
    invoke-static {v12}, Landroid/widget/TimePicker;->access$800(Landroid/widget/TimePicker;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7
.end method
