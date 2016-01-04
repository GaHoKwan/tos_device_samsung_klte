.class Landroid/widget/DatePicker$5;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DatePicker;


# direct methods
.method constructor <init>(Landroid/widget/DatePicker;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Landroid/widget/DatePicker$5;->this$0:Landroid/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextReceived(Ljava/lang/CharSequence;)V
    .locals 13
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 472
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "//"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 473
    .local v3, "numString":[Ljava/lang/String;
    array-length v9, v3

    const/4 v10, 0x3

    if-ge v9, v10, :cond_0

    .line 510
    :goto_0
    return-void

    .line 477
    :cond_0
    const/4 v8, -0x1

    .line 478
    .local v8, "year":I
    const/4 v2, -0x1

    .line 479
    .local v2, "month":I
    const/4 v0, -0x1

    .line 481
    .local v0, "day":I
    const-string v7, ""

    .line 482
    .local v7, "tmpStr":Ljava/lang/String;
    const-string/jumbo v9, "yyyyMMMdd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Llibcore/icu/ICU;->getBestDateTimePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 483
    .local v5, "pattern":Ljava/lang/String;
    invoke-static {v5}, Llibcore/icu/ICU;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object v4

    .line 484
    .local v4, "order":[C
    array-length v6, v4

    .line 485
    .local v6, "spinnerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_4

    .line 486
    aget-char v9, v4, v1

    sparse-switch v9, :sswitch_data_0

    .line 485
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 488
    :sswitch_0
    aget-object v9, v3, v1

    if-eqz v9, :cond_1

    aget-object v9, v3, v1

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 489
    :goto_3
    iget-object v9, p0, Landroid/widget/DatePicker$5;->this$0:Landroid/widget/DatePicker;

    const/16 v10, 0x64

    # invokes: Landroid/widget/DatePicker;->getValueFromWBResult(CLjava/lang/String;)I
    invoke-static {v9, v10, v7}, Landroid/widget/DatePicker;->access$1400(Landroid/widget/DatePicker;CLjava/lang/String;)I

    move-result v0

    .line 490
    goto :goto_2

    .line 488
    :cond_1
    const-string v7, ""

    goto :goto_3

    .line 492
    :sswitch_1
    aget-object v9, v3, v1

    if-eqz v9, :cond_2

    aget-object v9, v3, v1

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 493
    :goto_4
    iget-object v9, p0, Landroid/widget/DatePicker$5;->this$0:Landroid/widget/DatePicker;

    const/16 v10, 0x4d

    # invokes: Landroid/widget/DatePicker;->getValueFromWBResult(CLjava/lang/String;)I
    invoke-static {v9, v10, v7}, Landroid/widget/DatePicker;->access$1400(Landroid/widget/DatePicker;CLjava/lang/String;)I

    move-result v2

    .line 494
    goto :goto_2

    .line 492
    :cond_2
    const-string v7, ""

    goto :goto_4

    .line 496
    :sswitch_2
    aget-object v9, v3, v1

    if-eqz v9, :cond_3

    aget-object v9, v3, v1

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 497
    :goto_5
    iget-object v9, p0, Landroid/widget/DatePicker$5;->this$0:Landroid/widget/DatePicker;

    const/16 v10, 0x79

    # invokes: Landroid/widget/DatePicker;->getValueFromWBResult(CLjava/lang/String;)I
    invoke-static {v9, v10, v7}, Landroid/widget/DatePicker;->access$1400(Landroid/widget/DatePicker;CLjava/lang/String;)I

    move-result v8

    .line 498
    goto :goto_2

    .line 496
    :cond_3
    const-string v7, ""

    goto :goto_5

    .line 504
    :cond_4
    iget-object v10, p0, Landroid/widget/DatePicker$5;->this$0:Landroid/widget/DatePicker;

    if-lez v8, :cond_5

    .end local v8    # "year":I
    :goto_6
    if-lez v2, :cond_6

    add-int/lit8 v9, v2, -0x1

    :goto_7
    if-lez v0, :cond_7

    .end local v0    # "day":I
    :goto_8
    # invokes: Landroid/widget/DatePicker;->setDate(III)V
    invoke-static {v10, v8, v9, v0}, Landroid/widget/DatePicker;->access$500(Landroid/widget/DatePicker;III)V

    .line 507
    iget-object v9, p0, Landroid/widget/DatePicker$5;->this$0:Landroid/widget/DatePicker;

    # invokes: Landroid/widget/DatePicker;->updateSpinners()V
    invoke-static {v9}, Landroid/widget/DatePicker;->access$600(Landroid/widget/DatePicker;)V

    .line 508
    iget-object v9, p0, Landroid/widget/DatePicker$5;->this$0:Landroid/widget/DatePicker;

    # invokes: Landroid/widget/DatePicker;->updateCalendarView()V
    invoke-static {v9}, Landroid/widget/DatePicker;->access$700(Landroid/widget/DatePicker;)V

    .line 509
    iget-object v9, p0, Landroid/widget/DatePicker$5;->this$0:Landroid/widget/DatePicker;

    # invokes: Landroid/widget/DatePicker;->notifyDateChanged()V
    invoke-static {v9}, Landroid/widget/DatePicker;->access$800(Landroid/widget/DatePicker;)V

    goto/16 :goto_0

    .line 504
    .restart local v0    # "day":I
    .restart local v8    # "year":I
    :cond_5
    iget-object v9, p0, Landroid/widget/DatePicker$5;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v9}, Landroid/widget/DatePicker;->access$000(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v9

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    goto :goto_6

    .end local v8    # "year":I
    :cond_6
    iget-object v9, p0, Landroid/widget/DatePicker$5;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v9}, Landroid/widget/DatePicker;->access$000(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v9

    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    goto :goto_7

    :cond_7
    iget-object v11, p0, Landroid/widget/DatePicker$5;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v11}, Landroid/widget/DatePicker;->access$000(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v11

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_8

    .line 486
    nop

    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_0
        0x79 -> :sswitch_2
    .end sparse-switch
.end method
