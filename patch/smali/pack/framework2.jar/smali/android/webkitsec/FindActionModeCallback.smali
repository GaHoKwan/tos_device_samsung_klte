.class public Landroid/webkitsec/FindActionModeCallback;
.super Ljava/lang/Object;
.source "FindActionModeCallback.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ActionMode$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/webkitsec/WebView$FindListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/FindActionModeCallback$NoAction;
    }
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActiveMatchIndex:I

.field private mContext:Landroid/content/Context;

.field private mCustomView:Landroid/view/View;

.field private mEditText:Landroid/widget/EditText;

.field private mGlobalVisibleOffset:Landroid/graphics/Point;

.field private mGlobalVisibleRect:Landroid/graphics/Rect;

.field private mInput:Landroid/view/inputmethod/InputMethodManager;

.field private mIsParentThemeDeviceDefault:Z

.field private mMatches:Landroid/widget/TextView;

.field private mMatchesFound:Z

.field private mNumberOfMatches:I

.field private mResources:Landroid/content/res/Resources;

.field private mWebView:Landroid/webkitsec/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v6, 0x10202b5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    .line 394
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mGlobalVisibleOffset:Landroid/graphics/Point;

    .line 66
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 67
    .local v0, "outValue":Landroid/util/TypedValue;
    iput-object p1, p0, Landroid/webkitsec/FindActionModeCallback;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101046c

    invoke-virtual {v2, v3, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 69
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    .line 70
    iput-boolean v5, p0, Landroid/webkitsec/FindActionModeCallback;->mIsParentThemeDeviceDefault:Z

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "com.android.email"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x109012d

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    .line 76
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/webkitsec/FindActionModeCallback$1;

    invoke-direct {v3, p0}, Landroid/webkitsec/FindActionModeCallback$1;-><init>(Landroid/webkitsec/FindActionModeCallback;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    :goto_0
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    const v3, 0x1020003

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    .line 94
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    new-instance v3, Landroid/webkitsec/FindActionModeCallback$NoAction;

    invoke-direct {v3}, Landroid/webkitsec/FindActionModeCallback$NoAction;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 95
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 96
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    new-instance v3, Landroid/webkitsec/FindActionModeCallback$2;

    invoke-direct {v3, p0}, Landroid/webkitsec/FindActionModeCallback$2;-><init>(Landroid/webkitsec/FindActionModeCallback;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 109
    const-string v2, ""

    invoke-virtual {p0, v2}, Landroid/webkitsec/FindActionModeCallback;->setText(Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    const v3, 0x1020426

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    .line 112
    const-string v2, "input_method"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mResources:Landroid/content/res/Resources;

    .line 115
    return-void

    .line 84
    :cond_1
    iget-boolean v2, p0, Landroid/webkitsec/FindActionModeCallback;->mIsParentThemeDeviceDefault:Z

    if-eqz v2, :cond_2

    .line 85
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x109012c

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    goto :goto_0

    .line 88
    :cond_2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090136

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    goto :goto_0
.end method

.method private findNext(Z)V
    .locals 2
    .param p1, "next"    # Z

    .prologue
    .line 172
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No WebView for FindActionModeCallback::findNext"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 176
    :cond_0
    iget-boolean v0, p0, Landroid/webkitsec/FindActionModeCallback;->mMatchesFound:Z

    if-nez v0, :cond_2

    .line 177
    invoke-virtual {p0}, Landroid/webkitsec/FindActionModeCallback;->findAll()V

    .line 187
    :cond_1
    :goto_0
    return-void

    .line 180
    :cond_2
    iget v0, p0, Landroid/webkitsec/FindActionModeCallback;->mNumberOfMatches:I

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebView;->findNext(Z)V

    .line 186
    invoke-direct {p0}, Landroid/webkitsec/FindActionModeCallback;->updateMatchesString()V

    goto :goto_0
.end method

.method private updateMatchesString()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 252
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mResources:Landroid/content/res/Resources;

    const v2, 0x1130017

    iget v3, p0, Landroid/webkitsec/FindActionModeCallback;->mNumberOfMatches:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Landroid/webkitsec/FindActionModeCallback;->mActiveMatchIndex:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget v6, p0, Landroid/webkitsec/FindActionModeCallback;->mNumberOfMatches:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 257
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 391
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 378
    return-void
.end method

.method public findAll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 193
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    if-nez v1, :cond_0

    .line 194
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "No WebView for FindActionModeCallback::findAll"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 197
    :cond_0
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 198
    .local v0, "find":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 199
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1}, Landroid/webkitsec/WebView;->clearMatches()V

    .line 200
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iput-boolean v3, p0, Landroid/webkitsec/FindActionModeCallback;->mMatchesFound:Z

    .line 202
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkitsec/WebView;->findAll(Ljava/lang/String;)I

    .line 210
    :goto_0
    return-void

    .line 204
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkitsec/FindActionModeCallback;->mMatchesFound:Z

    .line 205
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iput v3, p0, Landroid/webkitsec/FindActionModeCallback;->mNumberOfMatches:I

    .line 208
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkitsec/WebView;->findAllAsync(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 120
    :cond_0
    return-void
.end method

.method public getActionModeGlobalBottom()I
    .locals 3

    .prologue
    .line 396
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_0

    .line 397
    const/4 v1, 0x0

    .line 404
    :goto_0
    return v1

    .line 399
    :cond_0
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 400
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_1

    .line 401
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    .line 403
    :cond_1
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mGlobalVisibleOffset:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 404
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public getActionModeGlobalRight()I
    .locals 3

    .prologue
    .line 409
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_0

    .line 410
    const/4 v1, 0x0

    .line 417
    :goto_0
    return v1

    .line 412
    :cond_0
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 413
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_1

    .line 414
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    .line 416
    :cond_1
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mGlobalVisibleOffset:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 417
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 351
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    if-nez v2, :cond_0

    .line 352
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No WebView for FindActionModeCallback::onActionItemClicked"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 356
    :cond_0
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 357
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 367
    :goto_0
    return v0

    .line 359
    :pswitch_0
    invoke-direct {p0, v0}, Landroid/webkitsec/FindActionModeCallback;->findNext(Z)V

    :goto_1
    move v0, v1

    .line 367
    goto :goto_0

    .line 362
    :pswitch_1
    invoke-direct {p0, v1}, Landroid/webkitsec/FindActionModeCallback;->findNext(Z)V

    goto :goto_1

    .line 357
    :pswitch_data_0
    .packed-switch 0x102046c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 280
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkitsec/FindActionModeCallback;->findNext(Z)V

    .line 281
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 287
    invoke-virtual {p1}, Landroid/view/ActionMode;->isUiFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 325
    :goto_0
    return v3

    .line 295
    :cond_0
    iget-object v5, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 296
    iget-object v5, p0, Landroid/webkitsec/FindActionModeCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "packageName":Ljava/lang/String;
    const-string v5, "com.android.email"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 298
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v5

    const v6, 0x1140007

    invoke-virtual {v5, v6, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 310
    :goto_1
    iput-object p1, p0, Landroid/webkitsec/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 311
    iget-object v5, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 312
    .local v0, "edit":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-static {v0, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 313
    iget-object v5, p0, Landroid/webkitsec/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 314
    iput-boolean v3, p0, Landroid/webkitsec/FindActionModeCallback;->mMatchesFound:Z

    .line 315
    iget-object v3, p0, Landroid/webkitsec/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const-string v5, "0"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v3, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 318
    iget-object v3, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 319
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_3

    .line 320
    iget-object v3, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    :goto_2
    move v3, v4

    .line 325
    goto :goto_0

    .line 301
    .end local v0    # "edit":Landroid/text/Editable;
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    iget-boolean v5, p0, Landroid/webkitsec/FindActionModeCallback;->mIsParentThemeDeviceDefault:Z

    if-eqz v5, :cond_2

    .line 302
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v5

    const v6, 0x1140006

    invoke-virtual {v5, v6, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_1

    .line 305
    :cond_2
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v5

    const v6, 0x114000a

    invoke-virtual {v5, v6, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_1

    .line 322
    .restart local v0    # "edit":Landroid/text/Editable;
    .restart local v2    # "view":Landroid/view/View;
    :cond_3
    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    goto :goto_2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 330
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 331
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 332
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 335
    :goto_0
    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 336
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1}, Landroid/webkitsec/WebView;->notifyFindDialogDismissed()V

    .line 339
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1, v2}, Landroid/webkitsec/WebView;->setFindDialogFindListener(Landroid/webkitsec/WebView$FindListener;)V

    .line 340
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 342
    return-void

    .line 334
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method

.method public onFindResultReceived(IIZ)V
    .locals 1
    .param p1, "activeMatchOrdinal"    # I
    .param p2, "numberOfMatches"    # I
    .param p3, "isDoneCounting"    # Z

    .prologue
    .line 156
    if-eqz p3, :cond_0

    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/webkitsec/FindActionModeCallback;->updateMatchCount(IIZ)V

    .line 164
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 385
    invoke-virtual {p0}, Landroid/webkitsec/FindActionModeCallback;->findAll()V

    .line 386
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 127
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 129
    .local v1, "span":Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 133
    .local v0, "length":I
    invoke-static {v1, v0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 136
    const/16 v2, 0x12

    invoke-interface {v1, p0, v3, v0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 137
    iput-boolean v3, p0, Landroid/webkitsec/FindActionModeCallback;->mMatchesFound:Z

    .line 138
    return-void
.end method

.method public setWebView(Landroid/webkitsec/WebView;)V
    .locals 2
    .param p1, "webView"    # Landroid/webkitsec/WebView;

    .prologue
    .line 144
    if-nez p1, :cond_0

    .line 145
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "WebView supplied to FindActionModeCallback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 148
    :cond_0
    iput-object p1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    .line 150
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0, p0}, Landroid/webkitsec/WebView;->setFindDialogFindListener(Landroid/webkitsec/WebView$FindListener;)V

    .line 151
    return-void
.end method

.method public showSoftInput()V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    .line 214
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    .line 228
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 230
    return-void
.end method

.method public updateMatchCount(IIZ)V
    .locals 2
    .param p1, "matchIndex"    # I
    .param p2, "matchCount"    # I
    .param p3, "isEmptyFind"    # Z

    .prologue
    .line 233
    if-nez p3, :cond_0

    .line 234
    iput p2, p0, Landroid/webkitsec/FindActionModeCallback;->mNumberOfMatches:I

    .line 235
    iput p1, p0, Landroid/webkitsec/FindActionModeCallback;->mActiveMatchIndex:I

    .line 236
    invoke-direct {p0}, Landroid/webkitsec/FindActionModeCallback;->updateMatchesString()V

    .line 241
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 239
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/FindActionModeCallback;->mNumberOfMatches:I

    goto :goto_0
.end method
