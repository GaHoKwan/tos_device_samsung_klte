.class Landroid/webkitsec/AutoCompletePopup;
.super Ljava/lang/Object;
.source "AutoCompletePopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/AutoCompletePopup$AnchorView;
    }
.end annotation


# static fields
.field private static final AUTOFILL_FORM:I = 0x64


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAnchor:Landroid/view/View;

.field private mFilter:Landroid/widget/Filter;

.field private mHandler:Landroid/os/Handler;

.field private mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

.field private mIsAutoFillProfileSet:Z

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private mQueryId:I

.field private mShowPopUp:Z

.field private mText:Ljava/lang/CharSequence;

.field private mWebView:Landroid/webkitsec/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewClassic$WebViewInputConnection;)V
    .locals 1
    .param p1, "webView"    # Landroid/webkitsec/WebViewClassic;
    .param p2, "inputConnection"    # Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/AutoCompletePopup;->mShowPopUp:Z

    .line 57
    iput-object p2, p0, Landroid/webkitsec/AutoCompletePopup;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    .line 58
    iput-object p1, p0, Landroid/webkitsec/AutoCompletePopup;->mWebView:Landroid/webkitsec/WebViewClassic;

    .line 59
    new-instance v0, Landroid/webkitsec/AutoCompletePopup$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/AutoCompletePopup$1;-><init>(Landroid/webkitsec/AutoCompletePopup;)V

    iput-object v0, p0, Landroid/webkitsec/AutoCompletePopup;->mHandler:Landroid/os/Handler;

    .line 69
    return-void
.end method

.method static synthetic access$000(Landroid/webkitsec/AutoCompletePopup;)I
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/AutoCompletePopup;

    .prologue
    .line 33
    iget v0, p0, Landroid/webkitsec/AutoCompletePopup;->mQueryId:I

    return v0
.end method

.method static synthetic access$100(Landroid/webkitsec/AutoCompletePopup;)Landroid/webkitsec/WebViewClassic;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/AutoCompletePopup;

    .prologue
    .line 33
    iget-object v0, p0, Landroid/webkitsec/AutoCompletePopup;->mWebView:Landroid/webkitsec/WebViewClassic;

    return-object v0
.end method

.method private ensurePopup()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Landroid/webkitsec/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    if-nez v0, :cond_1

    .line 253
    new-instance v0, Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/webkitsec/AutoCompletePopup;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkitsec/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    .line 254
    new-instance v0, Landroid/webkitsec/AutoCompletePopup$AnchorView;

    iget-object v1, p0, Landroid/webkitsec/AutoCompletePopup;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkitsec/AutoCompletePopup$AnchorView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkitsec/AutoCompletePopup;->mAnchor:Landroid/view/View;

    .line 255
    iget-object v0, p0, Landroid/webkitsec/AutoCompletePopup;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/AutoCompletePopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 256
    iget-object v0, p0, Landroid/webkitsec/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 257
    iget-object v0, p0, Landroid/webkitsec/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/webkitsec/AutoCompletePopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 258
    iget-object v0, p0, Landroid/webkitsec/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setPromptPosition(I)V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/AutoCompletePopup;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/AutoCompletePopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    .line 260
    iget-object v0, p0, Landroid/webkitsec/AutoCompletePopup;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/AutoCompletePopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private pushTextToInputConnection()V
    .locals 4

    .prologue
    .line 223
    iget-object v1, p0, Landroid/webkitsec/AutoCompletePopup;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v1}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 224
    .local v0, "oldText":Landroid/text/Editable;
    iget-object v1, p0, Landroid/webkitsec/AutoCompletePopup;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    const/4 v2, 0x0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 225
    iget-object v1, p0, Landroid/webkitsec/AutoCompletePopup;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    iget-object v2, p0, Landroid/webkitsec/AutoCompletePopup;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->replaceSelection(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v1, p0, Landroid/webkitsec/AutoCompletePopup;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    iget-object v2, p0, Landroid/webkitsec/AutoCompletePopup;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v3, p0, Landroid/webkitsec/AutoCompletePopup;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 227
    return-void
.end method


# virtual methods
.method public clearAdapter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    iput-object v1, p0, Landroid/webkitsec/AutoCompletePopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 123
    iput-object v1, p0, Landroid/webkitsec/AutoCompletePopup;->mFilter:Landroid/widget/Filter;

    .line 124
    iget-object v0, p0, Landroid/webkitsec/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Landroid/webkitsec/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 126
    iget-object v0, p0, Landroid/webkitsec/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    :cond_0
    return-void
.end method

.method public dismissAutoFillPopup()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Landroid/webkitsec/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Landroid/webkitsec/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 105
    iget-object v0, p0, Landroid/webkitsec/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Landroid/webkitsec/AutoCompletePopup;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/AutoCompletePopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 249
    return-void
.end method

.method public onFilterComplete(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 231
    invoke-direct {p0}, Landroid/webkitsec/AutoCompletePopup;->ensurePopup()V

    .line 232
    iget-boolean v3, p0, Landroid/webkitsec/AutoCompletePopup;->mShowPopUp:Z

    if-eqz v3, :cond_2

    if-lez p1, :cond_2

    iget-object v3, p0, Landroid/webkitsec/AutoCompletePopup;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->getIsAutoFillable()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/webkitsec/AutoCompletePopup;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2

    :cond_0
    move v0, v1

    .line 234
    .local v0, "showDropDown":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 235
    iget-object v3, p0, Landroid/webkitsec/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 237
    iget-object v3, p0, Landroid/webkitsec/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3, v1}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 239
    :cond_1
    iget-object v1, p0, Landroid/webkitsec/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    .line 240
    iget-object v1, p0, Landroid/webkitsec/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setOverScrollMode(I)V

    .line 244
    :goto_1
    return-void

    .end local v0    # "showDropDown":Z
    :cond_2
    move v0, v2

    .line 232
    goto :goto_0

    .line 242
    .restart local v0    # "showDropDown":Z
    :cond_3
    iget-object v1, p0, Landroid/webkitsec/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Landroid/webkitsec/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    if-nez v2, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v2, p0, Landroid/webkitsec/AutoCompletePopup;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    .line 185
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_4

    if-nez p3, :cond_4

    iget-object v2, p0, Landroid/webkitsec/AutoCompletePopup;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->getIsAutoFillable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 186
    const-string v2, ""

    iput-object v2, p0, Landroid/webkitsec/AutoCompletePopup;->mText:Ljava/lang/CharSequence;

    .line 187
    invoke-direct {p0}, Landroid/webkitsec/AutoCompletePopup;->pushTextToInputConnection()V

    .line 189
    iget-boolean v2, p0, Landroid/webkitsec/AutoCompletePopup;->mIsAutoFillProfileSet:Z

    if-eqz v2, :cond_3

    .line 191
    iget-object v2, p0, Landroid/webkitsec/AutoCompletePopup;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget v3, p0, Landroid/webkitsec/AutoCompletePopup;->mQueryId:I

    invoke-virtual {v2, v3}, Landroid/webkitsec/WebViewClassic;->autoFillForm(I)V

    .line 215
    :cond_2
    :goto_1
    iget-object v2, p0, Landroid/webkitsec/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_0

    .line 196
    :cond_3
    iget-object v2, p0, Landroid/webkitsec/AutoCompletePopup;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebChromeClient()Landroid/webkitsec/WebChromeClient;

    move-result-object v1

    .line 197
    .local v1, "webChromeClient":Landroid/webkitsec/WebChromeClient;
    if-eqz v1, :cond_2

    .line 198
    iget-object v2, p0, Landroid/webkitsec/AutoCompletePopup;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkitsec/WebChromeClient;->setupAutoFill(Landroid/os/Message;)V

    goto :goto_1

    .line 204
    .end local v1    # "webChromeClient":Landroid/webkitsec/WebChromeClient;
    :cond_4
    if-gez p3, :cond_5

    .line 205
    iget-object v2, p0, Landroid/webkitsec/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 209
    .local v0, "selectedItem":Ljava/lang/Object;
    :goto_2
    if-eqz v0, :cond_2

    .line 210
    iget-object v2, p0, Landroid/webkitsec/AutoCompletePopup;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v2, v0}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/webkitsec/AutoCompletePopup;->setText(Ljava/lang/CharSequence;)V

    .line 211
    invoke-direct {p0}, Landroid/webkitsec/AutoCompletePopup;->pushTextToInputConnection()V

    .line 212
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkitsec/AutoCompletePopup;->mShowPopUp:Z

    goto :goto_1

    .line 207
    .end local v0    # "selectedItem":Ljava/lang/Object;
    :cond_5
    iget-object v2, p0, Landroid/webkitsec/AutoCompletePopup;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "selectedItem":Ljava/lang/Object;
    goto :goto_2
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 72
    iget-object v3, p0, Landroid/webkitsec/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    if-nez v3, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v1

    .line 75
    :cond_1
    const/4 v3, 0x4

    if-ne p1, v3, :cond_5

    iget-object v3, p0, Landroid/webkitsec/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 78
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 79
    iget-object v1, p0, Landroid/webkitsec/AutoCompletePopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 80
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_2
    move v1, v2

    .line 83
    goto :goto_0

    .line 84
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 85
    iget-object v3, p0, Landroid/webkitsec/AutoCompletePopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 86
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_4

    .line 87
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 89
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 90
    iget-object v1, p0, Landroid/webkitsec/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    move v1, v2

    .line 91
    goto :goto_0

    .line 95
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_5
    iget-object v2, p0, Landroid/webkitsec/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    iget-object v1, p0, Landroid/webkitsec/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, p1, p2}, Landroid/widget/ListPopupWindow;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public resetRect()V
    .locals 10

    .prologue
    .line 144
    invoke-direct {p0}, Landroid/webkitsec/AutoCompletePopup;->ensurePopup()V

    .line 145
    iget-object v8, p0, Landroid/webkitsec/AutoCompletePopup;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget-object v9, p0, Landroid/webkitsec/AutoCompletePopup;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget-object v9, v9, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8, v9}, Landroid/webkitsec/WebViewClassic;->contentToViewX(I)I

    move-result v2

    .line 146
    .local v2, "left":I
    iget-object v8, p0, Landroid/webkitsec/AutoCompletePopup;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget-object v9, p0, Landroid/webkitsec/AutoCompletePopup;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget-object v9, v9, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual {v8, v9}, Landroid/webkitsec/WebViewClassic;->contentToViewX(I)I

    move-result v5

    .line 147
    .local v5, "right":I
    sub-int v7, v5, v2

    .line 148
    .local v7, "width":I
    iget-object v8, p0, Landroid/webkitsec/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v8, v7}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 150
    iget-object v8, p0, Landroid/webkitsec/AutoCompletePopup;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget-object v9, p0, Landroid/webkitsec/AutoCompletePopup;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget-object v9, v9, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v9}, Landroid/webkitsec/WebViewClassic;->contentToViewY(I)I

    move-result v0

    .line 151
    .local v0, "bottom":I
    iget-object v8, p0, Landroid/webkitsec/AutoCompletePopup;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget-object v9, p0, Landroid/webkitsec/AutoCompletePopup;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget-object v9, v9, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v9}, Landroid/webkitsec/WebViewClassic;->contentToViewY(I)I

    move-result v6

    .line 152
    .local v6, "top":I
    sub-int v1, v0, v6

    .line 154
    .local v1, "height":I
    iget-object v8, p0, Landroid/webkitsec/AutoCompletePopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 156
    .local v3, "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    const/4 v4, 0x0

    .line 157
    .local v4, "needsUpdate":Z
    if-nez v3, :cond_3

    .line 158
    new-instance v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    .end local v3    # "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-direct {v3, v7, v1, v2, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 169
    .restart local v3    # "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 170
    iget-object v8, p0, Landroid/webkitsec/AutoCompletePopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v8, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    :cond_1
    iget-object v8, p0, Landroid/webkitsec/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v8}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 173
    iget-object v8, p0, Landroid/webkitsec/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v8}, Landroid/widget/ListPopupWindow;->show()V

    .line 175
    :cond_2
    return-void

    .line 160
    :cond_3
    iget v8, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    if-ne v8, v2, :cond_4

    iget v8, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    if-ne v8, v6, :cond_4

    iget v8, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v8, v7, :cond_4

    iget v8, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v8, v1, :cond_0

    .line 162
    :cond_4
    const/4 v4, 0x1

    .line 163
    iput v2, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 164
    iput v6, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 165
    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 166
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "adapter":Landroid/widget/ListAdapter;, "TT;"
    invoke-direct {p0}, Landroid/webkitsec/AutoCompletePopup;->ensurePopup()V

    .line 132
    iget-object v0, p0, Landroid/webkitsec/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    iput-object p1, p0, Landroid/webkitsec/AutoCompletePopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 134
    if-eqz p1, :cond_0

    .line 135
    check-cast p1, Landroid/widget/Filterable;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;, "TT;"
    invoke-interface {p1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/AutoCompletePopup;->mFilter:Landroid/widget/Filter;

    .line 136
    iget-object v0, p0, Landroid/webkitsec/AutoCompletePopup;->mFilter:Landroid/widget/Filter;

    iget-object v1, p0, Landroid/webkitsec/AutoCompletePopup;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 140
    :goto_0
    invoke-virtual {p0}, Landroid/webkitsec/AutoCompletePopup;->resetRect()V

    .line 141
    return-void

    .line 138
    .restart local p1    # "adapter":Landroid/widget/ListAdapter;, "TT;"
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/AutoCompletePopup;->mFilter:Landroid/widget/Filter;

    goto :goto_0
.end method

.method public setAutoFillQueryId(I)V
    .locals 0
    .param p1, "queryId"    # I

    .prologue
    .line 118
    iput p1, p0, Landroid/webkitsec/AutoCompletePopup;->mQueryId:I

    .line 119
    return-void
.end method

.method public setIsAutoFillProfileSet(Z)V
    .locals 0
    .param p1, "isAutoFillProfileSet"    # Z

    .prologue
    .line 219
    iput-boolean p1, p0, Landroid/webkitsec/AutoCompletePopup;->mIsAutoFillProfileSet:Z

    .line 220
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/AutoCompletePopup;->mShowPopUp:Z

    .line 111
    iput-object p1, p0, Landroid/webkitsec/AutoCompletePopup;->mText:Ljava/lang/CharSequence;

    .line 112
    iget-object v0, p0, Landroid/webkitsec/AutoCompletePopup;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Landroid/webkitsec/AutoCompletePopup;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 115
    :cond_0
    return-void
.end method
