.class Landroid/webkitsec/WebViewClassic$InvokeListBox;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvokeListBox"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/WebViewClassic$InvokeListBox$SingleDataSetObserver;,
        Landroid/webkitsec/WebViewClassic$InvokeListBox$MyArrayListAdapter;,
        Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;
    }
.end annotation


# instance fields
.field private mContainers:[Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;

.field private mMultiple:Z

.field private mSelectedArray:[I

.field private mSelection:I

.field final synthetic this$0:Landroid/webkitsec/WebViewClassic;


# direct methods
.method private constructor <init>(Landroid/webkitsec/WebViewClassic;[Ljava/lang/String;[II)V
    .locals 5
    .param p2, "array"    # [Ljava/lang/String;
    .param p3, "enabled"    # [I
    .param p4, "selection"    # I

    .prologue
    .line 14280
    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14281
    iput p4, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->mSelection:I

    .line 14282
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->mMultiple:Z

    .line 14284
    array-length v1, p2

    .line 14285
    .local v1, "length":I
    new-array v2, v1, [Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;

    iput-object v2, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;

    .line 14286
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 14287
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;

    new-instance v3, Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;-><init>(Landroid/webkitsec/WebViewClassic$InvokeListBox;Landroid/webkitsec/WebViewClassic$1;)V

    aput-object v3, v2, v0

    .line 14288
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget-object v3, p2, v0

    iput-object v3, v2, Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;->mString:Ljava/lang/String;

    .line 14289
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget v3, p3, v0

    iput v3, v2, Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;->mEnabled:I

    .line 14290
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;

    aget-object v2, v2, v0

    iput v0, v2, Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;->mId:I

    .line 14286
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14292
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/webkitsec/WebViewClassic;[Ljava/lang/String;[IILandroid/webkitsec/WebViewClassic$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/webkitsec/WebViewClassic;
    .param p2, "x1"    # [Ljava/lang/String;
    .param p3, "x2"    # [I
    .param p4, "x3"    # I
    .param p5, "x4"    # Landroid/webkitsec/WebViewClassic$1;

    .prologue
    .line 14135
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkitsec/WebViewClassic$InvokeListBox;-><init>(Landroid/webkitsec/WebViewClassic;[Ljava/lang/String;[II)V

    return-void
.end method

.method private constructor <init>(Landroid/webkitsec/WebViewClassic;[Ljava/lang/String;[I[I)V
    .locals 5
    .param p2, "array"    # [Ljava/lang/String;
    .param p3, "enabled"    # [I
    .param p4, "selected"    # [I

    .prologue
    .line 14266
    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14267
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->mMultiple:Z

    .line 14268
    iput-object p4, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->mSelectedArray:[I

    .line 14270
    array-length v1, p2

    .line 14271
    .local v1, "length":I
    new-array v2, v1, [Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;

    iput-object v2, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;

    .line 14272
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 14273
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;

    new-instance v3, Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;-><init>(Landroid/webkitsec/WebViewClassic$InvokeListBox;Landroid/webkitsec/WebViewClassic$1;)V

    aput-object v3, v2, v0

    .line 14274
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget-object v3, p2, v0

    iput-object v3, v2, Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;->mString:Ljava/lang/String;

    .line 14275
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget v3, p3, v0

    iput v3, v2, Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;->mEnabled:I

    .line 14276
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;

    aget-object v2, v2, v0

    iput v0, v2, Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;->mId:I

    .line 14272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14278
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/webkitsec/WebViewClassic;[Ljava/lang/String;[I[ILandroid/webkitsec/WebViewClassic$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/webkitsec/WebViewClassic;
    .param p2, "x1"    # [Ljava/lang/String;
    .param p3, "x2"    # [I
    .param p4, "x3"    # [I
    .param p5, "x4"    # Landroid/webkitsec/WebViewClassic$1;

    .prologue
    .line 14135
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkitsec/WebViewClassic$InvokeListBox;-><init>(Landroid/webkitsec/WebViewClassic;[Ljava/lang/String;[I[I)V

    return-void
.end method

.method static synthetic access$12700(Landroid/webkitsec/WebViewClassic$InvokeListBox;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/WebViewClassic$InvokeListBox;

    .prologue
    .line 14135
    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->mMultiple:Z

    return v0
.end method

.method static synthetic access$12800(Landroid/webkitsec/WebViewClassic$InvokeListBox;)[Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/WebViewClassic$InvokeListBox;

    .prologue
    .line 14135
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 14341
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v9

    .line 14351
    .local v9, "settings":Landroid/webkitsec/WebSettingsClassic;
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$800(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-nez v1, :cond_1

    .line 14538
    :cond_0
    :goto_0
    return-void

    .line 14357
    :cond_1
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090146

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 14359
    .local v4, "listView":Landroid/widget/ListView;
    new-instance v5, Landroid/webkitsec/WebViewClassic$InvokeListBox$MyArrayListAdapter;

    invoke-direct {v5, p0}, Landroid/webkitsec/WebViewClassic$InvokeListBox$MyArrayListAdapter;-><init>(Landroid/webkitsec/WebViewClassic$InvokeListBox;)V

    .line 14364
    .local v5, "adapter":Landroid/webkitsec/WebViewClassic$InvokeListBox$MyArrayListAdapter;
    const/4 v8, 0x1

    .line 14365
    .local v8, "rebuildDialog":Z
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$9300(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebSelectDialog;

    move-result-object v1

    if-nez v1, :cond_2

    .line 14366
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    new-instance v2, Landroid/webkitsec/WebSelectDialog;

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v9}, Landroid/webkitsec/WebSelectDialog;-><init>(Landroid/content/Context;Landroid/webkitsec/WebSettingsClassic;)V

    # setter for: Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;
    invoke-static {v1, v2}, Landroid/webkitsec/WebViewClassic;->access$9302(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebSelectDialog;)Landroid/webkitsec/WebSelectDialog;

    .line 14367
    const/4 v8, 0x0

    .line 14372
    :cond_2
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$9300(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebSelectDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkitsec/WebSelectDialog;->setListView(Landroid/widget/ListView;)V

    .line 14374
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-boolean v1, v1, Landroid/webkitsec/WebViewClassic;->mIsTextFieldNext:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-boolean v1, v1, Landroid/webkitsec/WebViewClassic;->mIsSelectFieldNext:Z

    if-eqz v1, :cond_5

    .line 14375
    :cond_3
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$9300(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebSelectDialog;

    move-result-object v1

    invoke-virtual {v1, v10, v10}, Landroid/webkitsec/WebSelectDialog;->setButtonEnabled(IZ)V

    .line 14376
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$9300(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebSelectDialog;

    move-result-object v1

    new-instance v2, Landroid/webkitsec/WebViewClassic$InvokeListBox$1;

    invoke-direct {v2, p0, v5, v4}, Landroid/webkitsec/WebViewClassic$InvokeListBox$1;-><init>(Landroid/webkitsec/WebViewClassic$InvokeListBox;Landroid/webkitsec/WebViewClassic$InvokeListBox$MyArrayListAdapter;Landroid/widget/ListView;)V

    invoke-virtual {v1, v10, v2}, Landroid/webkitsec/WebSelectDialog;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 14409
    :goto_1
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-boolean v1, v1, Landroid/webkitsec/WebViewClassic;->mIsTextFieldPrev:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-boolean v1, v1, Landroid/webkitsec/WebViewClassic;->mIsSelectFieldPrev:Z

    if-eqz v1, :cond_6

    .line 14410
    :cond_4
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$9300(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebSelectDialog;

    move-result-object v1

    invoke-virtual {v1, v12, v10}, Landroid/webkitsec/WebSelectDialog;->setButtonEnabled(IZ)V

    .line 14411
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$9300(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebSelectDialog;

    move-result-object v1

    new-instance v2, Landroid/webkitsec/WebViewClassic$InvokeListBox$2;

    invoke-direct {v2, p0, v5, v4}, Landroid/webkitsec/WebViewClassic$InvokeListBox$2;-><init>(Landroid/webkitsec/WebViewClassic$InvokeListBox;Landroid/webkitsec/WebViewClassic$InvokeListBox$MyArrayListAdapter;Landroid/widget/ListView;)V

    invoke-virtual {v1, v12, v2}, Landroid/webkitsec/WebSelectDialog;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 14444
    :goto_2
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$9300(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebSelectDialog;

    move-result-object v1

    invoke-virtual {v1, v13, v10}, Landroid/webkitsec/WebSelectDialog;->setButtonEnabled(IZ)V

    .line 14445
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$9300(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebSelectDialog;

    move-result-object v1

    new-instance v2, Landroid/webkitsec/WebViewClassic$InvokeListBox$3;

    invoke-direct {v2, p0, v5, v4}, Landroid/webkitsec/WebViewClassic$InvokeListBox$3;-><init>(Landroid/webkitsec/WebViewClassic$InvokeListBox;Landroid/webkitsec/WebViewClassic$InvokeListBox$MyArrayListAdapter;Landroid/widget/ListView;)V

    invoke-virtual {v1, v13, v2}, Landroid/webkitsec/WebSelectDialog;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 14464
    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 14465
    invoke-virtual {v4, v10}, Landroid/widget/AdapterView;->setFocusableInTouchMode(Z)V

    .line 14466
    invoke-virtual {v4, v11}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    .line 14473
    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->mMultiple:Z

    if-nez v1, :cond_7

    move v1, v10

    :goto_3
    invoke-virtual {v4, v1}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 14474
    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->mMultiple:Z

    if-eqz v1, :cond_8

    .line 14475
    invoke-virtual {v4, v12}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 14476
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->mSelectedArray:[I

    array-length v7, v1

    .line 14477
    .local v7, "length":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    if-ge v6, v7, :cond_9

    .line 14478
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->mSelectedArray:[I

    aget v1, v1, v6

    invoke-virtual {v4, v1, v10}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 14477
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 14406
    .end local v6    # "i":I
    .end local v7    # "length":I
    :cond_5
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$9300(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebSelectDialog;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Landroid/webkitsec/WebSelectDialog;->setButtonEnabled(IZ)V

    goto :goto_1

    .line 14441
    :cond_6
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$9300(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebSelectDialog;

    move-result-object v1

    invoke-virtual {v1, v12, v11}, Landroid/webkitsec/WebSelectDialog;->setButtonEnabled(IZ)V

    goto :goto_2

    :cond_7
    move v1, v11

    .line 14473
    goto :goto_3

    .line 14481
    :cond_8
    invoke-virtual {v4, v10}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 14482
    new-instance v1, Landroid/webkitsec/WebViewClassic$InvokeListBox$4;

    invoke-direct {v1, p0}, Landroid/webkitsec/WebViewClassic$InvokeListBox$4;-><init>(Landroid/webkitsec/WebViewClassic$InvokeListBox;)V

    invoke-virtual {v4, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 14500
    iget v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->mSelection:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    .line 14501
    iget v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->mSelection:I

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 14502
    iget v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->mSelection:I

    invoke-virtual {v4, v1, v10}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 14503
    new-instance v0, Landroid/webkitsec/WebViewClassic$InvokeListBox$SingleDataSetObserver;

    iget v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->mSelection:I

    invoke-virtual {v5, v1}, Landroid/webkitsec/WebViewClassic$InvokeListBox$MyArrayListAdapter;->getItemId(I)J

    move-result-wide v2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkitsec/WebViewClassic$InvokeListBox$SingleDataSetObserver;-><init>(Landroid/webkitsec/WebViewClassic$InvokeListBox;JLandroid/widget/ListView;Landroid/widget/Adapter;)V

    .line 14505
    .local v0, "observer":Landroid/database/DataSetObserver;
    invoke-virtual {v5, v0}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 14508
    .end local v0    # "observer":Landroid/database/DataSetObserver;
    :cond_9
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$9300(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebSelectDialog;

    move-result-object v1

    new-instance v2, Landroid/webkitsec/WebViewClassic$InvokeListBox$5;

    invoke-direct {v2, p0}, Landroid/webkitsec/WebViewClassic$InvokeListBox$5;-><init>(Landroid/webkitsec/WebViewClassic$InvokeListBox;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 14520
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$9300(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebSelectDialog;

    move-result-object v1

    new-instance v2, Landroid/webkitsec/WebViewClassic$InvokeListBox$6;

    invoke-direct {v2, p0}, Landroid/webkitsec/WebViewClassic$InvokeListBox$6;-><init>(Landroid/webkitsec/WebViewClassic$InvokeListBox;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 14531
    if-ne v8, v10, :cond_a

    .line 14532
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$9300(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebSelectDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebSelectDialog;->rebuildView()V

    .line 14535
    :cond_a
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # setter for: Landroid/webkitsec/WebViewClassic;->mSelectFocusMoved:Z
    invoke-static {v1, v11}, Landroid/webkitsec/WebViewClassic;->access$9402(Landroid/webkitsec/WebViewClassic;Z)Z

    .line 14536
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$9300(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebSelectDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebSelectDialog;->show()V

    .line 14537
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # setter for: Landroid/webkitsec/WebViewClassic;->bWebSelectDialogIsUp:Z
    invoke-static {v1, v10}, Landroid/webkitsec/WebViewClassic;->access$9202(Landroid/webkitsec/WebViewClassic;Z)Z

    goto/16 :goto_0
.end method
