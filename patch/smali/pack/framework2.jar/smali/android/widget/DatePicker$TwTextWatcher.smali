.class public Landroid/widget/DatePicker$TwTextWatcher;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwTextWatcher"
.end annotation


# instance fields
.field private changedLen:I

.field private isMonth:Z

.field private mCheck:I

.field private mId:I

.field private mMaxLen:I

.field private mNext:I

.field private prevText:Ljava/lang/String;

.field final synthetic this$0:Landroid/widget/DatePicker;


# direct methods
.method public constructor <init>(Landroid/widget/DatePicker;IIZ)V
    .locals 2
    .param p2, "maxLen"    # I
    .param p3, "id"    # I
    .param p4, "month"    # Z

    .prologue
    .line 1378
    iput-object p1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1374
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->changedLen:I

    .line 1379
    iput p2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mMaxLen:I

    .line 1380
    iput p3, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    .line 1381
    iput-boolean p4, p0, Landroid/widget/DatePicker$TwTextWatcher;->isMonth:Z

    .line 1383
    iget v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mCheck:I

    .line 1384
    iget v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mCheck:I

    if-gez v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mCheck:I

    .line 1386
    :cond_0
    iget v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mNext:I

    .line 1387
    return-void

    .line 1386
    :cond_1
    iget v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private changeFocus()V
    .locals 4

    .prologue
    .line 1472
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$2700(Landroid/widget/DatePicker;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 1473
    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1488
    :cond_0
    :goto_0
    return-void

    .line 1477
    :cond_1
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "changeFocus() mNext : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/DatePicker$TwTextWatcher;->mNext:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCheck : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/DatePicker$TwTextWatcher;->mCheck:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/widget/DatePicker;->twLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/widget/DatePicker;->access$2000(Landroid/widget/DatePicker;Ljava/lang/String;)V

    .line 1479
    iget v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->mNext:I

    if-ltz v1, :cond_0

    .line 1480
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$2200(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mCheck:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1481
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$2200(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mNext:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1484
    :cond_2
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$2200(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1485
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$2200(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    goto :goto_0
.end method

.method private isMeaLanguage()Z
    .locals 2

    .prologue
    .line 1452
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mCurrentLocale:Ljava/util/Locale;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$2400(Landroid/widget/DatePicker;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1453
    .local v0, "language":Ljava/lang/String;
    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ur"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1454
    :cond_0
    const/4 v1, 0x1

    .line 1456
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMonthStr(Ljava/lang/String;)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1461
    const/4 v1, 0x0

    .line 1463
    .local v1, "result":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mNumberOfMonths:I
    invoke-static {v2}, Landroid/widget/DatePicker;->access$2500(Landroid/widget/DatePicker;)I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1464
    iget-object v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;
    invoke-static {v2}, Landroid/widget/DatePicker;->access$2600(Landroid/widget/DatePicker;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1465
    const/4 v1, 0x1

    .line 1463
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1468
    :cond_1
    return v1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "view"    # Landroid/text/Editable;

    .prologue
    .line 1390
    iget-object v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "aftertextchanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Landroid/widget/DatePicker;->twLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/widget/DatePicker;->access$2000(Landroid/widget/DatePicker;Ljava/lang/String;)V

    .line 1391
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1394
    iget-object v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "beforeTextChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Landroid/widget/DatePicker;->twLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/widget/DatePicker;->access$2000(Landroid/widget/DatePicker;Ljava/lang/String;)V

    .line 1395
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    .line 1396
    iput p4, p0, Landroid/widget/DatePicker$TwTextWatcher;->changedLen:I

    .line 1397
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v4, 0x1

    .line 1400
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "onTextChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/widget/DatePicker;->twLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/widget/DatePicker;->access$2000(Landroid/widget/DatePicker;Ljava/lang/String;)V

    .line 1402
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$2200(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1403
    .local v0, "tag":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1404
    const-string/jumbo v1, "onClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "onLongClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1405
    :cond_0
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TAG exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/widget/DatePicker;->twLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/widget/DatePicker;->access$2000(Landroid/widget/DatePicker;Ljava/lang/String;)V

    .line 1449
    :cond_1
    :goto_0
    return-void

    .line 1410
    :cond_2
    iget-boolean v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->isMonth:Z

    if-eqz v1, :cond_6

    .line 1411
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    # invokes: Landroid/widget/DatePicker;->usingNumericMonths()Z
    invoke-static {v1}, Landroid/widget/DatePicker;->access$2300(Landroid/widget/DatePicker;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1412
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Samsung Keypad Num Month"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/widget/DatePicker;->twLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/widget/DatePicker;->access$2000(Landroid/widget/DatePicker;Ljava/lang/String;)V

    .line 1414
    iget v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->changedLen:I

    if-ne v1, v4, :cond_1

    .line 1415
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mMaxLen:I

    if-ne v1, v2, :cond_3

    .line 1416
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$2200(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1417
    invoke-direct {p0}, Landroid/widget/DatePicker$TwTextWatcher;->changeFocus()V

    goto :goto_0

    .line 1419
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1420
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1421
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$2200(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1422
    invoke-direct {p0}, Landroid/widget/DatePicker$TwTextWatcher;->changeFocus()V

    goto/16 :goto_0

    .line 1428
    :cond_4
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$2200(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "10"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "11"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1432
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mMaxLen:I

    if-lt v1, v2, :cond_1

    .line 1433
    invoke-direct {p0}, Landroid/widget/DatePicker$TwTextWatcher;->isMeaLanguage()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1434
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/widget/DatePicker$TwTextWatcher;->isMonthStr(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1435
    invoke-direct {p0}, Landroid/widget/DatePicker$TwTextWatcher;->changeFocus()V

    goto/16 :goto_0

    .line 1437
    :cond_5
    invoke-direct {p0}, Landroid/widget/DatePicker$TwTextWatcher;->changeFocus()V

    goto/16 :goto_0

    .line 1443
    :cond_6
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mMaxLen:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->changedLen:I

    if-ne v1, v4, :cond_1

    .line 1444
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$2200(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1445
    invoke-direct {p0}, Landroid/widget/DatePicker$TwTextWatcher;->changeFocus()V

    goto/16 :goto_0
.end method
