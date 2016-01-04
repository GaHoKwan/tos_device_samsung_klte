.class Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImeSubtypeListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;",
        ">;"
    }
.end annotation


# static fields
.field private static mSwitchingDialogAllListItemEnabled:Z


# instance fields
.field public mCheckedItem:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItemsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextViewResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4823
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mSwitchingDialogAllListItemEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .param p4, "checkedItem"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 4827
    .local p3, "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 4828
    iput p2, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mTextViewResourceId:I

    .line 4829
    iput-object p3, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    .line 4830
    iput p4, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    .line 4831
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 4832
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 4874
    sget-boolean v0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mSwitchingDialogAllListItemEnabled:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v11, 0x8

    const/4 v8, 0x0

    .line 4836
    if-eqz p2, :cond_1

    move-object v6, p2

    .line 4838
    .local v6, "view":Landroid/view/View;
    :goto_0
    if-ltz p1, :cond_0

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt p1, v7, :cond_2

    .line 4865
    :cond_0
    :goto_1
    return-object v6

    .line 4836
    .end local v6    # "view":Landroid/view/View;
    :cond_1
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v9, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mTextViewResourceId:I

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    goto :goto_0

    .line 4839
    .restart local v6    # "view":Landroid/view/View;
    :cond_2
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;

    .line 4840
    .local v2, "item":Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;
    iget-object v1, v2, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    .line 4841
    .local v1, "imeName":Ljava/lang/CharSequence;
    iget-object v5, v2, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    .line 4842
    .local v5, "subtypeName":Ljava/lang/CharSequence;
    const v7, 0x1020014

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4843
    .local v0, "firstTextView":Landroid/widget/TextView;
    const v7, 0x1020015

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 4844
    .local v4, "secondTextView":Landroid/widget/TextView;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4845
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4846
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 4855
    :goto_2
    const v7, 0x102033c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 4857
    .local v3, "radioButton":Landroid/widget/RadioButton;
    iget v7, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    if-ne p1, v7, :cond_5

    const/4 v7, 0x1

    :goto_3
    invoke-virtual {v3, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 4859
    sget-boolean v7, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mSwitchingDialogAllListItemEnabled:Z

    if-nez v7, :cond_0

    .line 4861
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4862
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4863
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 4847
    .end local v3    # "radioButton":Landroid/widget/RadioButton;
    :cond_3
    iget-object v7, v2, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "com.sec.android.inputmethod"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4848
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4849
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 4851
    :cond_4
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4852
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4853
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .restart local v3    # "radioButton":Landroid/widget/RadioButton;
    :cond_5
    move v7, v8

    .line 4857
    goto :goto_3
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 4883
    sget-boolean v0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mSwitchingDialogAllListItemEnabled:Z

    return v0
.end method

.method public setAllListItemEnabled(Z)V
    .locals 0
    .param p1, "bSet"    # Z

    .prologue
    .line 4889
    sput-boolean p1, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mSwitchingDialogAllListItemEnabled:Z

    .line 4891
    return-void
.end method

.method public setAllListItemEnabled(ZLandroid/view/View;)V
    .locals 6
    .param p1, "bSet"    # Z
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4896
    sput-boolean p1, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mSwitchingDialogAllListItemEnabled:Z

    .line 4898
    const v3, 0x1020014

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4899
    .local v0, "firstTextView":Landroid/widget/TextView;
    const v3, 0x1020015

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4900
    .local v2, "secondTextView":Landroid/widget/TextView;
    const v3, 0x102033c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 4903
    .local v1, "radioButton":Landroid/widget/RadioButton;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 4906
    sget-boolean v3, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mSwitchingDialogAllListItemEnabled:Z

    if-nez v3, :cond_1

    .line 4907
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4908
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4909
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4917
    :cond_0
    :goto_0
    return-void

    .line 4911
    :cond_1
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4912
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4913
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
