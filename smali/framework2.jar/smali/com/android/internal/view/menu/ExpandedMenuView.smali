.class public final Lcom/android/internal/view/menu/ExpandedMenuView;
.super Landroid/widget/ListView;
.source "ExpandedMenuView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# static fields
.field public static final CLOSE_ACTION:Ljava/lang/String; = "intent.action.android.optionmenu.CLOSED"

.field public static final OPEN_ACTION:Ljava/lang/String; = "intent.action.android.optionmenu.OPENED"


# instance fields
.field private isDeviceDefault:I

.field private mAnimations:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mVisibleMaxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v2, Lcom/android/internal/R$styleable;->MenuView:[I

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mAnimations:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101046c

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v1, Landroid/util/TypedValue;->data:I

    iput v2, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->isDeviceDefault:I

    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public getWindowAnimations()I
    .locals 1

    iget v0, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mAnimations:I

    return v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 2

    iput-object p1, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget v0, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->isDeviceDefault:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setOptionalIconsVisible(Z)V

    :cond_0
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    const-string v0, "com.google.android.youtube"

    iget-object v1, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.google.android.videos"

    iget-object v1, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.action.android.optionmenu.OPENED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    const-string v0, "com.google.android.youtube"

    iget-object v1, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.google.android.videos"

    iget-object v1, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.action.android.optionmenu.CLOSED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ExpandedMenuView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ExpandedMenuView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ExpandedMenuView;->invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    iget v4, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->isDeviceDefault:I

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ExpandedMenuView;->getCount()I

    move-result v0

    iget-object v4, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0068

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ExpandedMenuView;->getMeasuredHeight()I

    move-result v2

    if-le v0, v1, :cond_1

    iget-object v4, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10500b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_0
    if-le v2, v3, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ExpandedMenuView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/view/menu/ExpandedMenuView;->setMeasuredDimension(II)V

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10500b8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0
.end method
