.class Landroid/webkitsec/WebViewClassic$WebViewInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebViewInputConnection"
.end annotation


# static fields
.field public static final ID_COPY:I = 0x1020021

.field public static final ID_CUT:I = 0x1020020

.field public static final ID_PASTE:I = 0x1020022

.field public static final ID_SELECT_ALL:I = 0x102001f


# instance fields
.field private mBatchLevel:I

.field private mHint:Ljava/lang/String;

.field private mImeOptions:I

.field private mInputType:I

.field private mIsAutoCompleteEnabled:Z

.field private mIsAutoFillable:Z

.field private mIsKeySentByMe:Z

.field private mIsPasswordField:Z

.field private mIsReplacingText:Z

.field private mIsSameInputType:Z

.field private mIsTextArea:Z

.field public mIsUpdatingText:Z

.field private mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private mMaxLength:I

.field private mName:Ljava/lang/String;

.field final synthetic this$0:Landroid/webkitsec/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/webkitsec/WebViewClassic;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 318
    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    .line 319
    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static {p1}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 297
    iput v2, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mInputType:I

    .line 299
    iput-boolean v2, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsSameInputType:Z

    .line 302
    iput-boolean v2, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsReplacingText:Z

    .line 304
    iput-boolean v2, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsUpdatingText:Z

    .line 320
    return-void
.end method

.method private limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "numReplaced"    # I

    .prologue
    const/4 v4, 0x0

    .line 1081
    iget v2, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mMaxLength:I

    if-lez v2, :cond_0

    .line 1082
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 1083
    .local v0, "editable":Landroid/text/Editable;
    iget v2, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mMaxLength:I

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v1, v2, p2

    .line 1084
    .local v1, "maxReplace":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1085
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1087
    invoke-interface {p1, v4, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1089
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->resetBatchEdit()V

    .line 1093
    .end local v0    # "editable":Landroid/text/Editable;
    .end local v1    # "maxReplace":I
    :cond_0
    return-object p1
.end method

.method private resetBatchEdit()V
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    .line 359
    return-void
.end method

.method private restartInput()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1097
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1098
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    .line 1104
    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsReplacingText:Z

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsUpdatingText:Z

    if-ne v1, v2, :cond_3

    .line 1105
    :cond_0
    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsReplacingText:Z

    .line 1106
    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsUpdatingText:Z

    .line 1118
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1120
    :cond_2
    return-void

    .line 1108
    :cond_3
    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsSameInputType:Z

    if-nez v1, :cond_1

    .line 1109
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-boolean v1, v1, Landroid/webkitsec/WebViewClassic;->mIsSoftkeyboardVisible:Z

    if-eqz v1, :cond_1

    .line 1114
    iput-boolean v2, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsSameInputType:Z

    goto :goto_0
.end method

.method private sendCharacter(C)V
    .locals 10
    .param p1, "c"    # C

    .prologue
    const/4 v9, 0x0

    .line 1046
    iget-object v7, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    if-nez v7, :cond_0

    .line 1047
    const/4 v7, -0x1

    invoke-static {v7}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v7

    iput-object v7, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 1049
    :cond_0
    const/4 v7, 0x1

    new-array v1, v7, [C

    .line 1050
    .local v1, "chars":[C
    aput-char p1, v1, v9

    .line 1051
    iget-object v7, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v7, v1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v3

    .line 1052
    .local v3, "events":[Landroid/view/KeyEvent;
    if-eqz v3, :cond_1

    .line 1053
    move-object v0, v3

    .local v0, "arr$":[Landroid/view/KeyEvent;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 1054
    .local v2, "event":Landroid/view/KeyEvent;
    invoke-virtual {p0, v2}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1053
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1057
    .end local v0    # "arr$":[Landroid/view/KeyEvent;
    .end local v2    # "event":Landroid/view/KeyEvent;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_1
    iget-object v7, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v7, v7, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v8, 0x8d

    invoke-virtual {v7, v8, p1, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 1058
    .local v6, "msg":Landroid/os/Message;
    iget-object v7, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v7, v7, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1060
    .end local v6    # "msg":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private sendKey(I)V
    .locals 15
    .param p1, "keyCode"    # I

    .prologue
    .line 1068
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1069
    .local v1, "eventTime":J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    move-wide v3, v1

    move/from16 v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1073
    new-instance v3, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x2

    move-wide v6, v1

    move/from16 v9, p1

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v3}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1077
    return-void
.end method

.method private setNewText(IILjava/lang/CharSequence;)V
    .locals 14
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 998
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsKeySentByMe:Z

    .line 999
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v1

    .line 1000
    .local v1, "editable":Landroid/text/Editable;
    move/from16 v0, p2

    invoke-interface {v1, p1, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1001
    .local v5, "original":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 1002
    .local v2, "isCharacterAdd":Z
    const/4 v3, 0x0

    .line 1003
    .local v3, "isCharacterDelete":Z
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v10

    .line 1004
    .local v10, "textLength":I
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 1005
    .local v6, "originalLength":I
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v9

    .line 1006
    .local v9, "selectionStart":I
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v8

    .line 1007
    .local v8, "selectionEnd":I
    if-ne v9, v8, :cond_0

    .line 1008
    if-le v10, v6, :cond_4

    .line 1009
    add-int/lit8 v11, v6, 0x1

    if-ne v10, v11, :cond_3

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v11, v5, v12, v6}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v2, 0x1

    .line 1018
    :cond_0
    :goto_0
    if-eqz v2, :cond_6

    .line 1019
    add-int/lit8 v11, v10, -0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    invoke-direct {p0, v11}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->sendCharacter(C)V

    .line 1031
    :cond_1
    :goto_1
    iget-object v11, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mAutoCompletePopup:Landroid/webkitsec/AutoCompletePopup;
    invoke-static {v11}, Landroid/webkitsec/WebViewClassic;->access$1000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/AutoCompletePopup;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 1032
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1033
    .local v4, "newText":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    invoke-interface {v1, v11, p1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1034
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1035
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v11

    move/from16 v0, p2

    invoke-interface {v1, v0, v11}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1036
    iget-object v11, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mAutoCompletePopup:Landroid/webkitsec/AutoCompletePopup;
    invoke-static {v11}, Landroid/webkitsec/WebViewClassic;->access$1000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/AutoCompletePopup;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/webkitsec/AutoCompletePopup;->setText(Ljava/lang/CharSequence;)V

    .line 1038
    .end local v4    # "newText":Ljava/lang/StringBuilder;
    :cond_2
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsKeySentByMe:Z

    .line 1039
    return-void

    .line 1009
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1012
    :cond_4
    if-le v6, v10, :cond_0

    .line 1013
    add-int/lit8 v11, v6, -0x1

    if-ne v10, v11, :cond_5

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v11, v5, v12, v10}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v3, 0x1

    :goto_2
    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 1020
    :cond_6
    if-eqz v3, :cond_7

    .line 1021
    const/16 v11, 0x43

    invoke-direct {p0, v11}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->sendKey(I)V

    goto :goto_1

    .line 1022
    :cond_7
    if-ne v10, v6, :cond_8

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v11, v5, v12, v10}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1027
    :cond_8
    iget-object v11, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v11, v11, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v12, 0x8b

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v11, v12, p1, v0, v13}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 1029
    .local v7, "replaceMessage":Landroid/os/Message;
    iget-object v11, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v11, v11, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v11, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method private updateSelection()V
    .locals 8

    .prologue
    .line 969
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v6

    .line 970
    .local v6, "editable":Landroid/text/Editable;
    invoke-static {v6}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 971
    .local v2, "selectionStart":I
    invoke-static {v6}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 973
    .local v3, "selectionEnd":I
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mIsNewInputField:Z
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$1100(Landroid/webkitsec/WebViewClassic;)Z

    move-result v1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mIsScreenTouch:Z
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$1200(Landroid/webkitsec/WebViewClassic;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 974
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v7, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic;->mIsNewInputField:Z
    invoke-static {v1, v7}, Landroid/webkitsec/WebViewClassic;->access$1102(Landroid/webkitsec/WebViewClassic;Z)Z

    .line 975
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->moveCursorToEnd()V

    .line 976
    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v2

    .line 977
    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v3

    .line 980
    :cond_0
    invoke-static {v6}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 981
    .local v4, "composingStart":I
    invoke-static {v6}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 982
    .local v5, "composingEnd":I
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 983
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 984
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 987
    :cond_1
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->beginTextBatch()V
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$200(Landroid/webkitsec/WebViewClassic;)V

    .line 340
    :cond_0
    iget v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 652
    invoke-virtual {p0, p1, p2}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 653
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    .line 654
    const/4 v0, 0x1

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 10
    .param p1, "leftLength"    # I
    .param p2, "rightLength"    # I

    .prologue
    const/4 v8, -0x1

    .line 661
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v4

    .line 662
    .local v4, "content":Landroid/text/Editable;
    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 663
    .local v0, "a":I
    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 665
    .local v1, "b":I
    if-le v0, v1, :cond_0

    .line 666
    move v7, v0

    .line 667
    .local v7, "tmp":I
    move v0, v1

    .line 668
    move v1, v7

    .line 671
    .end local v7    # "tmp":I
    :cond_0
    invoke-static {v4}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 672
    .local v2, "ca":I
    invoke-static {v4}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    .line 673
    .local v3, "cb":I
    if-ge v3, v2, :cond_1

    .line 674
    move v7, v2

    .line 675
    .restart local v7    # "tmp":I
    move v2, v3

    .line 676
    move v3, v7

    .line 678
    .end local v7    # "tmp":I
    :cond_1
    if-eq v2, v8, :cond_3

    if-eq v3, v8, :cond_3

    .line 679
    if-ge v2, v0, :cond_2

    move v0, v2

    .line 680
    :cond_2
    if-le v3, v1, :cond_3

    move v1, v3

    .line 683
    :cond_3
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v8

    add-int v9, v1, p2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 684
    .local v5, "endDelete":I
    if-le v5, v1, :cond_4

    .line 685
    const-string v8, ""

    invoke-direct {p0, v1, v5, v8}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    .line 687
    :cond_4
    const/4 v8, 0x0

    sub-int v9, v0, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 688
    .local v6, "startDelete":I
    if-ge v6, v0, :cond_5

    .line 689
    const-string v8, ""

    invoke-direct {p0, v6, v0, v8}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    .line 692
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    .line 694
    const/4 v8, 0x1

    return v8
.end method

.method public endBatchEdit()Z
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    if-lez v0, :cond_0

    .line 348
    iget v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    .line 350
    :cond_0
    iget v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    if-nez v0, :cond_1

    .line 351
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->commitTextBatch()V
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$300(Landroid/webkitsec/WebViewClassic;)V

    .line 353
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 6
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x0

    .line 620
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 621
    .local v0, "editable":Landroid/text/Editable;
    new-instance v2, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 622
    .local v2, "outText":Landroid/view/inputmethod/ExtractedText;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 624
    iget-object v3, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    iget-object v3, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 625
    :cond_0
    iput v5, v2, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 626
    iput v5, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 627
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    iput v3, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 628
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    iput v3, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 629
    const/4 v3, -0x1

    iput v3, v2, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v3, v2, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 631
    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->endBatchEdit()Z

    .line 637
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 638
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_2

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 643
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v3

    invoke-virtual {v1, v3, v5, v2}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 646
    :cond_2
    return-object v2
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 1124
    iget v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mInputType:I

    return v0
.end method

.method public getIsAutoFillable()Z
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsAutoFillable:Z

    return v0
.end method

.method public initEditorInfo(Landroid/webkitsec/WebViewCore$TextFieldInitData;)V
    .locals 10
    .param p1, "initData"    # Landroid/webkitsec/WebViewCore$TextFieldInitData;

    .prologue
    const/16 v9, 0x800

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 746
    invoke-virtual {p0, v8}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setIfTextArea(Z)V

    .line 748
    invoke-virtual {p0, v8}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setIsPasswordField(Z)V

    .line 749
    iget v4, p1, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mType:I

    .line 750
    .local v4, "type":I
    const/16 v2, 0xa1

    .line 752
    .local v2, "inputType":I
    const/high16 v1, 0x12000000

    .line 754
    .local v1, "imeOptions":I
    iget-boolean v5, p1, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mIsSpellCheckEnabled:Z

    if-nez v5, :cond_0

    .line 755
    const/high16 v5, 0x80000

    or-int/2addr v2, v5

    .line 757
    :cond_0
    if-eq v7, v4, :cond_2

    .line 758
    iget-boolean v5, p1, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mIsTextFieldNext:Z

    if-eqz v5, :cond_1

    .line 759
    const/high16 v5, 0x8000000

    or-int/2addr v1, v5

    .line 761
    :cond_1
    iget-boolean v5, p1, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mIsTextFieldPrev:Z

    if-eqz v5, :cond_2

    .line 762
    const/high16 v5, 0x4000000

    or-int/2addr v1, v5

    .line 816
    :cond_2
    const/4 v0, 0x2

    .line 817
    .local v0, "action":I
    packed-switch v4, :pswitch_data_0

    .line 860
    :goto_0
    :pswitch_0
    or-int/2addr v1, v0

    .line 863
    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    .line 864
    .local v3, "settings":Landroid/webkitsec/WebSettingsClassic;
    if-eqz v3, :cond_5

    .line 868
    iget-boolean v5, p1, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mIsTextFieldNext:Z

    if-nez v5, :cond_3

    iget-boolean v5, p1, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mIsSelectFieldNext:Z

    if-eqz v5, :cond_7

    :cond_3
    iget-boolean v5, p1, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mIsTextFieldPrev:Z

    if-nez v5, :cond_4

    iget-boolean v5, p1, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mIsSelectFieldPrev:Z

    if-eqz v5, :cond_7

    .line 870
    :cond_4
    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    const-string v6, "com.sec.android.inputmethod.axt9.BrowserPrevNext"

    # setter for: Landroid/webkitsec/WebViewClassic;->mPrivateImeOptions:Ljava/lang/String;
    invoke-static {v5, v6}, Landroid/webkitsec/WebViewClassic;->access$902(Landroid/webkitsec/WebViewClassic;Ljava/lang/String;)Ljava/lang/String;

    .line 886
    :cond_5
    :goto_1
    iget-object v5, p1, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mLabel:Ljava/lang/String;

    iput-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mHint:Ljava/lang/String;

    .line 888
    iget v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mInputType:I

    if-eq v2, v5, :cond_c

    .line 889
    iput-boolean v8, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsSameInputType:Z

    .line 894
    :goto_2
    iput v2, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mInputType:I

    .line 895
    iput v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mImeOptions:I

    .line 896
    iget v5, p1, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mMaxLength:I

    iput v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mMaxLength:I

    .line 898
    iget v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mMaxLength:I

    if-le v5, v9, :cond_6

    .line 899
    iput v9, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mMaxLength:I

    .line 900
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "maxlength after fix the length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mMaxLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_6
    iget-boolean v5, p1, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mIsAutoCompleteEnabled:Z

    iput-boolean v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsAutoCompleteEnabled:Z

    .line 904
    iget-object v5, p1, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mName:Ljava/lang/String;

    iput-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mName:Ljava/lang/String;

    .line 905
    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mAutoCompletePopup:Landroid/webkitsec/AutoCompletePopup;
    invoke-static {v5}, Landroid/webkitsec/WebViewClassic;->access$1000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/AutoCompletePopup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkitsec/AutoCompletePopup;->clearAdapter()V

    .line 906
    return-void

    .line 821
    .end local v3    # "settings":Landroid/webkitsec/WebSettingsClassic;
    :pswitch_1
    const v5, 0x2c000

    or-int/2addr v2, v5

    .line 824
    const/4 v0, 0x1

    .line 826
    invoke-virtual {p0, v7}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setIfTextArea(Z)V

    goto :goto_0

    .line 830
    :pswitch_2
    or-int/lit16 v2, v2, 0xe0

    .line 831
    invoke-virtual {p0, v7}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setIsPasswordField(Z)V

    goto :goto_0

    .line 834
    :pswitch_3
    const/4 v0, 0x3

    .line 835
    goto :goto_0

    .line 838
    :pswitch_4
    const/16 v2, 0xd1

    .line 840
    goto :goto_0

    .line 843
    :pswitch_5
    const/4 v2, 0x2

    .line 847
    goto :goto_0

    .line 850
    :pswitch_6
    const/4 v2, 0x3

    .line 851
    goto :goto_0

    .line 855
    :pswitch_7
    or-int/lit8 v2, v2, 0x10

    .line 856
    goto :goto_0

    .line 872
    .restart local v3    # "settings":Landroid/webkitsec/WebSettingsClassic;
    :cond_7
    iget-boolean v5, p1, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mIsTextFieldNext:Z

    if-nez v5, :cond_8

    iget-boolean v5, p1, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mIsSelectFieldNext:Z

    if-eqz v5, :cond_9

    .line 873
    :cond_8
    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    const-string v6, "com.sec.android.inputmethod.axt9.MoveFocusNext"

    # setter for: Landroid/webkitsec/WebViewClassic;->mPrivateImeOptions:Ljava/lang/String;
    invoke-static {v5, v6}, Landroid/webkitsec/WebViewClassic;->access$902(Landroid/webkitsec/WebViewClassic;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 875
    :cond_9
    iget-boolean v5, p1, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mIsTextFieldPrev:Z

    if-nez v5, :cond_a

    iget-boolean v5, p1, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mIsSelectFieldPrev:Z

    if-eqz v5, :cond_b

    .line 876
    :cond_a
    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    const-string v6, "com.sec.android.inputmethod.axt9.MoveFocusPrev"

    # setter for: Landroid/webkitsec/WebViewClassic;->mPrivateImeOptions:Ljava/lang/String;
    invoke-static {v5, v6}, Landroid/webkitsec/WebViewClassic;->access$902(Landroid/webkitsec/WebViewClassic;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 879
    :cond_b
    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v6, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic;->mPrivateImeOptions:Ljava/lang/String;
    invoke-static {v5, v6}, Landroid/webkitsec/WebViewClassic;->access$902(Landroid/webkitsec/WebViewClassic;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 891
    :cond_c
    iput-boolean v7, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsSameInputType:Z

    goto/16 :goto_2

    .line 817
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public isPasswordField()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsPasswordField:Z

    return v0
.end method

.method public isTextArea()Z
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsTextArea:Z

    return v0
.end method

.method public moveCursorToEnd()V
    .locals 3

    .prologue
    .line 956
    new-instance v0, Landroid/webkitsec/WebViewClassic$CmdVal;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-direct {v0, v1}, Landroid/webkitsec/WebViewClassic$CmdVal;-><init>(Landroid/webkitsec/WebViewClassic;)V

    .line 957
    .local v0, "cmdVal":Landroid/webkitsec/WebViewClassic$CmdVal;
    const-string v1, "MoveToEndOfLine"

    iput-object v1, v0, Landroid/webkitsec/WebViewClassic$CmdVal;->command:Ljava/lang/String;

    .line 958
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, v0, Landroid/webkitsec/WebViewClassic$CmdVal;->value:Ljava/lang/String;

    .line 961
    :try_start_0
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$800(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore;

    move-result-object v1

    const/16 v2, 0x203

    invoke-virtual {v1, v2, v0}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    :goto_0
    return-void

    .line 962
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public performContextMenuAction(I)Z
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x1

    .line 481
    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performContextMenuAction id ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    packed-switch p1, :pswitch_data_0

    .line 504
    :goto_0
    return v3

    .line 484
    :pswitch_0
    const-string/jumbo v0, "webview"

    const-string/jumbo v1, "performContextMenuAction : ID_SELECT_ALL"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->selectAllSec()Z

    goto :goto_0

    .line 489
    :pswitch_1
    const-string/jumbo v0, "webview"

    const-string/jumbo v1, "performContextMenuAction : ID_CUT"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->cutSelectionSec()V

    goto :goto_0

    .line 494
    :pswitch_2
    const-string/jumbo v0, "webview"

    const-string/jumbo v1, "performContextMenuAction : ID_COPY"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->copySelectionSec(Z)Z
    invoke-static {v0, v3}, Landroid/webkitsec/WebViewClassic;->access$600(Landroid/webkitsec/WebViewClassic;Z)Z

    .line 496
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    goto :goto_0

    .line 500
    :pswitch_3
    const-string/jumbo v0, "webview"

    const-string/jumbo v1, "performContextMenuAction : ID_PASTE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->pasteFromClipboardEx()V

    goto :goto_0

    .line 482
    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public performEditorAction(I)Z
    .locals 7
    .param p1, "editorAction"    # I

    .prologue
    const/16 v6, 0x42

    const/4 v5, 0x1

    .line 701
    const/4 v0, 0x1

    .line 702
    .local v0, "handled":Z
    packed-switch p1, :pswitch_data_0

    .line 723
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->performEditorAction(I)Z

    move-result v0

    .line 727
    :goto_0
    return v0

    .line 704
    :pswitch_1
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static {v2}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_0

    .line 707
    :pswitch_2
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static {v2}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_0

    .line 710
    :pswitch_3
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->hideSoftKeyboard()V
    invoke-static {v2}, Landroid/webkitsec/WebViewClassic;->access$700(Landroid/webkitsec/WebViewClassic;)V

    goto :goto_0

    .line 714
    :pswitch_4
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->hideSoftKeyboard()V
    invoke-static {v2}, Landroid/webkitsec/WebViewClassic;->access$700(Landroid/webkitsec/WebViewClassic;)V

    .line 715
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 716
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v6}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/webkitsec/WebViewClassic;->passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V

    .line 718
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, v5, v6}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/webkitsec/WebViewClassic;->passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 702
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 733
    const-string v0, "com.sec.android.inputmethod.axt9.MoveFocusPrev"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 734
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$800(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x259

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    .line 735
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->moveCursorToEnd()V

    .line 741
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 737
    :cond_1
    const-string v0, "com.sec.android.inputmethod.axt9.MoveFocusNext"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$800(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    .line 739
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->moveCursorToEnd()V

    goto :goto_0
.end method

.method public replaceSelection(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 552
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 553
    .local v0, "editable":Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 554
    .local v3, "selectionStart":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 555
    .local v2, "selectionEnd":I
    sub-int v4, v2, v3

    invoke-direct {p0, p1, v4}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 556
    invoke-direct {p0, v3, v2, p1}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    .line 557
    invoke-interface {v0, v3, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 558
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsReplacingText:Z

    .line 559
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->restartInput()V

    .line 561
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int v1, v3, v4

    .line 562
    .local v1, "newCaret":I
    invoke-virtual {p0, v1, v1}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 563
    return-void
.end method

.method public replaceText(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 570
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 571
    .local v0, "editable":Landroid/text/Editable;
    const/4 v4, 0x0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 572
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 573
    .local v3, "selectionStart":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 574
    .local v2, "selectionEnd":I
    sub-int v4, v2, v3

    invoke-direct {p0, p1, v4}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 575
    invoke-direct {p0, v3, v2, p1}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    .line 576
    invoke-interface {v0, v3, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 577
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->restartInput()V

    .line 579
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int v1, v3, v4

    .line 580
    .local v1, "newCaret":I
    invoke-virtual {p0, v1, v1}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 581
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->moveCursorToEnd()V

    .line 582
    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v10, 0x70

    const/16 v9, 0x43

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 394
    iget-boolean v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsKeySentByMe:Z

    if-nez v5, :cond_2

    .line 396
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x15

    if-eq v5, v6, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x16

    if-eq v5, v6, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x13

    if-eq v5, v6, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x14

    if-ne v5, v6, :cond_1

    .line 400
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_4

    .line 401
    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v5, v6, p1}, Landroid/webkitsec/WebViewClassic;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 407
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_8

    .line 408
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-ne v5, v9, :cond_6

    .line 410
    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mBTWebSelectionOn:Z
    invoke-static {v5}, Landroid/webkitsec/WebViewClassic;->access$400(Landroid/webkitsec/WebViewClassic;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 411
    iget-object v4, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # setter for: Landroid/webkitsec/WebViewClassic;->mBTWebSelectionOn:Z
    invoke-static {v4, v7}, Landroid/webkitsec/WebViewClassic;->access$402(Landroid/webkitsec/WebViewClassic;Z)Z

    .line 465
    :cond_2
    :goto_1
    iget-object v4, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static {v4}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static {v4}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 467
    const/4 v4, 0x4

    invoke-static {p1, v4}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 468
    .local v0, "eventForTouch":Landroid/view/KeyEvent;
    invoke-super {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    .line 475
    .end local v0    # "eventForTouch":Landroid/view/KeyEvent;
    :cond_3
    :goto_2
    return v4

    .line 402
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 403
    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v5, v6, p1}, Landroid/webkitsec/WebViewClassic;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 414
    :cond_5
    invoke-virtual {p0, v4, v7}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->deleteSurroundingText(II)Z

    move-result v4

    goto :goto_2

    .line 418
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-ne v5, v10, :cond_7

    .line 419
    iget-object v4, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mBTWebSelectionOn:Z
    invoke-static {v4}, Landroid/webkitsec/WebViewClassic;->access$400(Landroid/webkitsec/WebViewClassic;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 420
    iget-object v4, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # setter for: Landroid/webkitsec/WebViewClassic;->mBTWebSelectionOn:Z
    invoke-static {v4, v7}, Landroid/webkitsec/WebViewClassic;->access$402(Landroid/webkitsec/WebViewClassic;Z)Z

    goto :goto_1

    .line 423
    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v5

    if-eqz v5, :cond_2

    .line 424
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v5

    int-to-char v5, v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, "newComposingText":Ljava/lang/String;
    invoke-virtual {p0, v1, v4}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v4

    goto :goto_2

    .line 428
    .end local v1    # "newComposingText":Ljava/lang/String;
    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_2

    .line 429
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-eq v5, v9, :cond_9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v5

    if-eqz v5, :cond_c

    .line 431
    :cond_9
    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebSelectionOn:Z
    invoke-static {v5}, Landroid/webkitsec/WebViewClassic;->access$500(Landroid/webkitsec/WebViewClassic;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mBTWebSelectionOn:Z
    invoke-static {v5}, Landroid/webkitsec/WebViewClassic;->access$400(Landroid/webkitsec/WebViewClassic;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 435
    :cond_a
    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    const-string v6, "Delete"

    invoke-virtual {v5, v6, v8}, Landroid/webkitsec/WebViewClassic;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 440
    :cond_b
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 441
    .local v3, "selStart":I
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 442
    .local v2, "selEnd":I
    if-eq v3, v2, :cond_3

    .line 443
    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    const-string v6, "Delete"

    invoke-virtual {v5, v6, v8}, Landroid/webkitsec/WebViewClassic;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 447
    .end local v2    # "selEnd":I
    .end local v3    # "selStart":I
    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-ne v5, v10, :cond_e

    .line 449
    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebSelectionOn:Z
    invoke-static {v5}, Landroid/webkitsec/WebViewClassic;->access$500(Landroid/webkitsec/WebViewClassic;)Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mBTWebSelectionOn:Z
    invoke-static {v5}, Landroid/webkitsec/WebViewClassic;->access$400(Landroid/webkitsec/WebViewClassic;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 453
    :cond_d
    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    const-string v6, "DeleteForward"

    invoke-virtual {v5, v6, v8}, Landroid/webkitsec/WebViewClassic;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 458
    :cond_e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0xe8

    if-ne v5, v6, :cond_3

    .line 459
    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkitsec/WebViewClassic;->pasteFromClipboardEx()V

    goto/16 :goto_2

    .line 471
    :cond_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0xe8

    if-ne v4, v5, :cond_10

    .line 472
    iget-object v4, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->pasteFromClipboardEx()V

    .line 475
    :cond_10
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_2
.end method

.method public setAutoFillable(I)V
    .locals 6
    .param p1, "queryId"    # I

    .prologue
    .line 323
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebSettingsClassic;->getAutoFillEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsAutoFillable:Z

    .line 325
    iget v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mInputType:I

    and-int/lit16 v0, v1, 0xff0

    .line 326
    .local v0, "variation":I
    const/16 v1, 0xe0

    if-eq v0, v1, :cond_1

    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsAutoFillable:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsAutoCompleteEnabled:Z

    if-eqz v1, :cond_1

    .line 328
    :cond_0
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mName:Ljava/lang/String;

    const-string/jumbo v2, "password"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 329
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mName:Ljava/lang/String;

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mFieldPointer:I
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$100(Landroid/webkitsec/WebViewClassic;)I

    move-result v3

    iget-boolean v4, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsAutoFillable:Z

    iget-boolean v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsAutoCompleteEnabled:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/webkitsec/WebViewClassic;->requestFormData(Ljava/lang/String;IZZ)V

    .line 333
    :cond_1
    return-void

    .line 323
    .end local v0    # "variation":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setComposingRegion(II)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 950
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z

    move-result v0

    .line 951
    .local v0, "result":Z
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->updateSelection()V

    .line 952
    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 587
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 588
    .local v0, "editable":Landroid/text/Editable;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 589
    .local v4, "start":I
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    .line 590
    .local v1, "end":I
    if-ltz v4, :cond_0

    if-gez v1, :cond_1

    .line 591
    :cond_0
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 592
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 594
    :cond_1
    if-ge v1, v4, :cond_2

    .line 595
    move v5, v1

    .line 596
    .local v5, "temp":I
    move v1, v4

    .line 597
    move v4, v5

    .line 599
    .end local v5    # "temp":I
    :cond_2
    sub-int v6, v1, v4

    invoke-direct {p0, p1, v6}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 600
    .local v3, "limitedText":Ljava/lang/CharSequence;
    invoke-direct {p0, v4, v1, v3}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    .line 601
    if-eq v3, p1, :cond_3

    .line 602
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr p2, v6

    .line 604
    :cond_3
    invoke-super {p0, v3, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 605
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->updateSelection()V

    .line 606
    if-eq v3, p1, :cond_4

    .line 610
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int v2, v4, v6

    .line 611
    .local v2, "lastCaret":I
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    .line 612
    invoke-virtual {p0, v2, v2}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 614
    .end local v2    # "lastCaret":I
    :cond_4
    const/4 v6, 0x1

    return v6
.end method

.method public setIfTextArea(Z)V
    .locals 0
    .param p1, "isTextArea"    # Z

    .prologue
    .line 370
    iput-boolean p1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsTextArea:Z

    .line 371
    return-void
.end method

.method public setIsPasswordField(Z)V
    .locals 0
    .param p1, "isPasswordField"    # Z

    .prologue
    .line 379
    iput-boolean p1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsPasswordField:Z

    .line 380
    return-void
.end method

.method public setSelection(II)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 940
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setSelection(II)Z

    move-result v0

    .line 944
    .local v0, "result":Z
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->updateSelection()V

    .line 945
    return v0
.end method

.method public setTextAndKeepSelection(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 510
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v1

    .line 512
    .local v1, "editable":Landroid/text/Editable;
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 513
    .local v3, "selectionStart":I
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 514
    .local v2, "selectionEnd":I
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-direct {p0, p1, v4}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 517
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-interface {v1, v4, v5, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :goto_0
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->restartInput()V

    .line 528
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 529
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 530
    invoke-virtual {p0, v3, v2}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 531
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    .line 532
    return-void

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v4, "webview"

    const-string/jumbo v5, "text exceeds the limit"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setTextAndSelectionIfNeeded(Ljava/lang/CharSequence;II)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "selectionStart"    # I
    .param p3, "selectionEnd"    # I

    .prologue
    .line 536
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 537
    .local v0, "editable":Landroid/text/Editable;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    invoke-virtual {p0, p2, p3}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 548
    :goto_0
    return-void

    .line 541
    :cond_0
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-direct {p0, p1, v1}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 543
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    .line 544
    const/4 v1, 0x0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 545
    invoke-virtual {p0, p2, p3}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 547
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    goto :goto_0
.end method

.method public setupEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 4
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 913
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mPrivateImeOptions:Ljava/lang/String;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$900(Landroid/webkitsec/WebViewClassic;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 922
    iget v3, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mInputType:I

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 923
    iget v3, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mImeOptions:I

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 924
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mHint:Ljava/lang/String;

    iput-object v3, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 925
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/view/inputmethod/BaseInputConnection;->getCursorCapsMode(I)I

    move-result v3

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 927
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 928
    .local v0, "editable":Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 929
    .local v2, "selectionStart":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 930
    .local v1, "selectionEnd":I
    if-ltz v2, :cond_0

    if-gez v1, :cond_1

    .line 931
    :cond_0
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    .line 932
    move v1, v2

    .line 934
    :cond_1
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 935
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 936
    return-void
.end method
