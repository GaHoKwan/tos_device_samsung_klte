.class Landroid/webkitsec/WebViewClassic$InvokeListBox$SingleDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic$InvokeListBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleDataSetObserver"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/Adapter;

.field private mCheckedId:J

.field private mListView:Landroid/widget/ListView;

.field final synthetic this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;


# direct methods
.method public constructor <init>(Landroid/webkitsec/WebViewClassic$InvokeListBox;JLandroid/widget/ListView;Landroid/widget/Adapter;)V
    .locals 0
    .param p2, "id"    # J
    .param p4, "l"    # Landroid/widget/ListView;
    .param p5, "a"    # Landroid/widget/Adapter;

    .prologue
    .line 14309
    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$SingleDataSetObserver;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 14310
    iput-wide p2, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$SingleDataSetObserver;->mCheckedId:J

    .line 14311
    iput-object p4, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$SingleDataSetObserver;->mListView:Landroid/widget/ListView;

    .line 14312
    iput-object p5, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$SingleDataSetObserver;->mAdapter:Landroid/widget/Adapter;

    .line 14313
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 9

    .prologue
    .line 14319
    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$SingleDataSetObserver;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v4

    .line 14320
    .local v4, "position":I
    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$SingleDataSetObserver;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v5, v4}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    .line 14321
    .local v2, "id":J
    iget-wide v5, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$SingleDataSetObserver;->mCheckedId:J

    cmp-long v5, v5, v2

    if-eqz v5, :cond_0

    .line 14324
    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$SingleDataSetObserver;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->clearChoices()V

    .line 14327
    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$SingleDataSetObserver;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v5}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    .line 14328
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 14329
    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$SingleDataSetObserver;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v5, v1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v5

    iget-wide v7, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$SingleDataSetObserver;->mCheckedId:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 14330
    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$SingleDataSetObserver;->mListView:Landroid/widget/ListView;

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 14335
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 14328
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
