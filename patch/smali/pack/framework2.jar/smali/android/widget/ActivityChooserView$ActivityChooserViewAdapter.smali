.class Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityChooserViewAdapter"
.end annotation


# static fields
.field private static final ITEM_VIEW_TYPE_ACTIVITY:I = 0x0

.field private static final ITEM_VIEW_TYPE_COUNT:I = 0x3

.field private static final ITEM_VIEW_TYPE_FOOTER:I = 0x1

.field public static final MAX_ACTIVITY_COUNT_DEFAULT:I = 0x5

.field public static final MAX_ACTIVITY_COUNT_UNLIMITED:I = 0x7fffffff


# instance fields
.field private mDataModel:Landroid/widget/ActivityChooserModel;

.field private mHighlightDefaultActivity:Z

.field private mMaxActivityCount:I

.field private mShowDefaultActivity:Z

.field private mShowFooterView:Z

.field final synthetic this$0:Landroid/widget/ActivityChooserView;


# direct methods
.method private constructor <init>(Landroid/widget/ActivityChooserView;)V
    .locals 1

    .prologue
    .line 710
    iput-object p1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 724
    const/4 v0, 0x5

    iput v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActivityChooserView;Landroid/widget/ActivityChooserView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/ActivityChooserView;
    .param p2, "x1"    # Landroid/widget/ActivityChooserView$1;

    .prologue
    .line 710
    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;-><init>(Landroid/widget/ActivityChooserView;)V

    return-void
.end method


# virtual methods
.method public getActivityCount()I
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v0}, Landroid/widget/ActivityChooserModel;->getActivityCount()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 759
    const/4 v1, 0x0

    .line 760
    .local v1, "count":I
    iget-object v2, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v2}, Landroid/widget/ActivityChooserModel;->getActivityCount()I

    move-result v0

    .line 761
    .local v0, "activityCount":I
    iget-boolean v2, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v2}, Landroid/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 762
    add-int/lit8 v0, v0, -0x1

    .line 764
    :cond_0
    iget v2, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 765
    iget-boolean v2, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    if-eqz v2, :cond_1

    .line 766
    add-int/lit8 v1, v1, 0x1

    .line 768
    :cond_1
    return v1
.end method

.method public getDataModel()Landroid/widget/ActivityChooserModel;
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    return-object v0
.end method

.method public getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v0}, Landroid/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public getHistorySize()I
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v0}, Landroid/widget/ActivityChooserModel;->getHistorySize()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 772
    invoke-virtual {p0, p1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result v0

    .line 773
    .local v0, "itemViewType":I
    packed-switch v0, :pswitch_data_0

    .line 782
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 775
    :pswitch_0
    const/4 v1, 0x0

    .line 780
    :goto_0
    return-object v1

    .line 777
    :pswitch_1
    iget-boolean v1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v1}, Landroid/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 778
    add-int/lit8 p1, p1, 0x1

    .line 780
    :cond_0
    iget-object v1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v1, p1}, Landroid/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    goto :goto_0

    .line 773
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 787
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 746
    iget-boolean v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 747
    const/4 v0, 0x1

    .line 749
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShowDefaultActivity()Z
    .locals 1

    .prologue
    .line 903
    iget-boolean v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 791
    invoke-virtual {p0, p1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result v3

    .line 792
    .local v3, "itemViewType":I
    packed-switch v3, :pswitch_data_0

    .line 834
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 794
    :pswitch_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    .line 795
    :cond_0
    iget-object v6, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mIsParentThemeDeviceDefault:Z
    invoke-static {v6}, Landroid/widget/ActivityChooserView;->access$1600(Landroid/widget/ActivityChooserView;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 796
    iget-object v6, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x10900e3

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 802
    :goto_0
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Landroid/view/View;->setId(I)V

    .line 803
    const v6, 0x1020016

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 804
    .local v5, "titleView":Landroid/widget/TextView;
    iget-object v6, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/widget/ActivityChooserView;->access$1700(Landroid/widget/ActivityChooserView;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x1040877

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v5    # "titleView":Landroid/widget/TextView;
    :cond_1
    move-object v1, p2

    .line 832
    .end local p2    # "convertView":Landroid/view/View;
    .local v1, "convertView":Landroid/view/View;
    :goto_1
    return-object v1

    .line 799
    .end local v1    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_2
    iget-object v6, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x1090021

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 809
    :pswitch_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x10202d2

    if-eq v6, v7, :cond_4

    .line 810
    :cond_3
    iget-object v6, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mIsParentThemeDeviceDefault:Z
    invoke-static {v6}, Landroid/widget/ActivityChooserView;->access$1600(Landroid/widget/ActivityChooserView;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 811
    iget-object v6, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x10900e3

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 818
    :cond_4
    :goto_2
    iget-object v6, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/widget/ActivityChooserView;->access$1800(Landroid/widget/ActivityChooserView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 820
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const v6, 0x1020006

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 821
    .local v2, "iconView":Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 822
    .local v0, "activity":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 824
    const v6, 0x1020016

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 825
    .restart local v5    # "titleView":Landroid/widget/TextView;
    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 827
    iget-boolean v6, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-eqz v6, :cond_6

    if-nez p1, :cond_6

    iget-boolean v6, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    if-eqz v6, :cond_6

    .line 828
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Landroid/view/View;->setActivated(Z)V

    :goto_3
    move-object v1, p2

    .line 832
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v1    # "convertView":Landroid/view/View;
    goto :goto_1

    .line 814
    .end local v0    # "activity":Landroid/content/pm/ResolveInfo;
    .end local v1    # "convertView":Landroid/view/View;
    .end local v2    # "iconView":Landroid/widget/ImageView;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "titleView":Landroid/widget/TextView;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_5
    iget-object v6, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x1090021

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_2

    .line 830
    .restart local v0    # "activity":Landroid/content/pm/ResolveInfo;
    .restart local v2    # "iconView":Landroid/widget/ImageView;
    .restart local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v5    # "titleView":Landroid/widget/TextView;
    :cond_6
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_3

    .line 792
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 755
    const/4 v0, 0x3

    return v0
.end method

.method public measureContentWidth()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 841
    iget v5, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 842
    .local v5, "oldMaxActivityCount":I
    const v7, 0x7fffffff

    iput v7, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 844
    const/4 v0, 0x0

    .line 845
    .local v0, "contentWidth":I
    const/4 v4, 0x0

    .line 847
    .local v4, "itemView":Landroid/view/View;
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 848
    .local v6, "widthMeasureSpec":I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 849
    .local v2, "heightMeasureSpec":I
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v1

    .line 851
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 852
    const/4 v7, 0x0

    invoke-virtual {p0, v3, v4, v7}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 853
    invoke-virtual {v4, v6, v2}, Landroid/view/View;->measure(II)V

    .line 854
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 851
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 857
    :cond_0
    iput v5, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 859
    return v0
.end method

.method public setDataModel(Landroid/widget/ActivityChooserModel;)V
    .locals 2
    .param p1, "dataModel"    # Landroid/widget/ActivityChooserModel;

    .prologue
    .line 733
    iget-object v1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v1}, Landroid/widget/ActivityChooserView;->access$000(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v0

    .line 734
    .local v0, "oldDataModel":Landroid/widget/ActivityChooserModel;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 735
    iget-object v1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;
    invoke-static {v1}, Landroid/widget/ActivityChooserView;->access$1500(Landroid/widget/ActivityChooserView;)Landroid/database/DataSetObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    .line 737
    :cond_0
    iput-object p1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    .line 738
    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 739
    iget-object v1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;
    invoke-static {v1}, Landroid/widget/ActivityChooserView;->access$1500(Landroid/widget/ActivityChooserView;)Landroid/database/DataSetObserver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    .line 741
    :cond_1
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 742
    return-void
.end method

.method public setMaxActivityCount(I)V
    .locals 1
    .param p1, "maxActivityCount"    # I

    .prologue
    .line 863
    iget v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    if-eq v0, p1, :cond_0

    .line 864
    iput p1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 865
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 867
    :cond_0
    return-void
.end method

.method public setShowDefaultActivity(ZZ)V
    .locals 1
    .param p1, "showDefaultActivity"    # Z
    .param p2, "highlightDefaultActivity"    # Z

    .prologue
    .line 894
    iget-boolean v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    if-eq v0, p2, :cond_1

    .line 896
    :cond_0
    iput-boolean p1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    .line 897
    iput-boolean p2, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    .line 898
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 900
    :cond_1
    return-void
.end method

.method public setShowFooterView(Z)V
    .locals 1
    .param p1, "showFooterView"    # Z

    .prologue
    .line 874
    iget-boolean v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    if-eq v0, p1, :cond_0

    .line 875
    iput-boolean p1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    .line 876
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 878
    :cond_0
    return-void
.end method
