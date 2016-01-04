.class Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ScrollingTabContainerView;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .locals 0

    .prologue
    .line 964
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/ScrollingTabContainerView;Lcom/android/internal/widget/ScrollingTabContainerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/widget/ScrollingTabContainerView;
    .param p2, "x1"    # Lcom/android/internal/widget/ScrollingTabContainerView$1;

    .prologue
    .line 964
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 966
    move-object v3, p1

    check-cast v3, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .line 968
    .local v3, "tabView":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    .line 969
    .local v4, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v4, :cond_0

    .line 970
    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->getCurrentWritingBuddyView()Landroid/view/View;

    move-result-object v5

    .line 971
    .local v5, "wbview":Landroid/view/View;
    if-eqz v5, :cond_0

    invoke-virtual {v5, v7}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 972
    invoke-virtual {v5, v7}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->finish()V

    .line 976
    .end local v5    # "wbview":Landroid/view/View;
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->select()V

    .line 977
    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    # getter for: Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$000(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 978
    .local v2, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 979
    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    # getter for: Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$000(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 980
    .local v0, "child":Landroid/view/View;
    if-ne v0, p1, :cond_1

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v0, v6}, Landroid/view/View;->setSelected(Z)V

    .line 978
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v6, v7

    .line 980
    goto :goto_1

    .line 982
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method
