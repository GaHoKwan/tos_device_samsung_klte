.class public Landroid/widget/TimePicker$TwTextWatcher;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwTextWatcher"
.end annotation


# instance fields
.field private mId:I

.field private mMaxLen:I

.field private mNext:I

.field private prevText:Ljava/lang/String;

.field final synthetic this$0:Landroid/widget/TimePicker;


# direct methods
.method public constructor <init>(Landroid/widget/TimePicker;II)V
    .locals 2
    .param p2, "maxLen"    # I
    .param p3, "id"    # I

    .prologue
    .line 1096
    iput-object p1, p0, Landroid/widget/TimePicker$TwTextWatcher;->this$0:Landroid/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1097
    iput p2, p0, Landroid/widget/TimePicker$TwTextWatcher;->mMaxLen:I

    .line 1098
    iput p3, p0, Landroid/widget/TimePicker$TwTextWatcher;->mId:I

    .line 1100
    iget v0, p0, Landroid/widget/TimePicker$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Landroid/widget/TimePicker$TwTextWatcher;->mNext:I

    .line 1101
    return-void

    .line 1100
    :cond_0
    iget v0, p0, Landroid/widget/TimePicker$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private changeFocus()V
    .locals 4

    .prologue
    .line 1132
    iget-object v2, p0, Landroid/widget/TimePicker$TwTextWatcher;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/widget/TimePicker;->access$1300(Landroid/widget/TimePicker;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 1133
    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1146
    :cond_0
    :goto_0
    return-void

    .line 1137
    :cond_1
    iget v2, p0, Landroid/widget/TimePicker$TwTextWatcher;->mId:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v1, v2, 0x2

    .line 1139
    .local v1, "next":I
    iget v2, p0, Landroid/widget/TimePicker$TwTextWatcher;->mNext:I

    if-ltz v2, :cond_0

    .line 1140
    iget-object v2, p0, Landroid/widget/TimePicker$TwTextWatcher;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v2}, Landroid/widget/TimePicker;->access$1200(Landroid/widget/TimePicker;)[Landroid/widget/EditText;

    move-result-object v2

    iget v3, p0, Landroid/widget/TimePicker$TwTextWatcher;->mNext:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 1142
    iget-object v2, p0, Landroid/widget/TimePicker$TwTextWatcher;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v2}, Landroid/widget/TimePicker;->access$1200(Landroid/widget/TimePicker;)[Landroid/widget/EditText;

    move-result-object v2

    iget v3, p0, Landroid/widget/TimePicker$TwTextWatcher;->mId:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1143
    iget-object v2, p0, Landroid/widget/TimePicker$TwTextWatcher;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v2}, Landroid/widget/TimePicker;->access$1200(Landroid/widget/TimePicker;)[Landroid/widget/EditText;

    move-result-object v2

    iget v3, p0, Landroid/widget/TimePicker$TwTextWatcher;->mId:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "view"    # Landroid/text/Editable;

    .prologue
    .line 1104
    iget-object v0, p0, Landroid/widget/TimePicker$TwTextWatcher;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->TW_DEBUG:Z
    invoke-static {v0}, Landroid/widget/TimePicker;->access$1100(Landroid/widget/TimePicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Picker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aftertextchanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1108
    iget-object v0, p0, Landroid/widget/TimePicker$TwTextWatcher;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->TW_DEBUG:Z
    invoke-static {v0}, Landroid/widget/TimePicker;->access$1100(Landroid/widget/TimePicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Picker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

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

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TimePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    .line 1110
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1113
    iget-object v1, p0, Landroid/widget/TimePicker$TwTextWatcher;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->TW_DEBUG:Z
    invoke-static {v1}, Landroid/widget/TimePicker;->access$1100(Landroid/widget/TimePicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Picker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTextChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TimePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :cond_0
    iget-object v1, p0, Landroid/widget/TimePicker$TwTextWatcher;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->TW_DEBUG:Z
    invoke-static {v1}, Landroid/widget/TimePicker;->access$1100(Landroid/widget/TimePicker;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Picker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTextChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :cond_1
    iget-object v1, p0, Landroid/widget/TimePicker$TwTextWatcher;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/TimePicker;->access$1200(Landroid/widget/TimePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/TimePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1117
    .local v0, "tag":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 1118
    const-string/jumbo v1, "onClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "onLongClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1119
    :cond_2
    iget-object v1, p0, Landroid/widget/TimePicker$TwTextWatcher;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/TimePicker;->access$1200(Landroid/widget/TimePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/TimePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1129
    :cond_3
    :goto_0
    return-void

    .line 1124
    :cond_4
    iget-object v1, p0, Landroid/widget/TimePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Landroid/widget/TimePicker$TwTextWatcher;->mMaxLen:I

    if-ne v1, v2, :cond_3

    .line 1125
    iget-object v1, p0, Landroid/widget/TimePicker$TwTextWatcher;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/TimePicker;->access$1200(Landroid/widget/TimePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/TimePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1126
    invoke-direct {p0}, Landroid/widget/TimePicker$TwTextWatcher;->changeFocus()V

    goto :goto_0
.end method
