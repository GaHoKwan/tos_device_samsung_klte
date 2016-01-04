.class Landroid/widget/Spinner$DropdownPopup;
.super Landroid/widget/ListPopupWindow;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/Spinner$SpinnerPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mHintText:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 1086
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    .line 1087
    invoke-direct {p0, p2, p3, v1, p4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1089
    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1090
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 1091
    invoke-virtual {p0, v1}, Landroid/widget/ListPopupWindow;->setPromptPosition(I)V

    .line 1092
    new-instance v0, Landroid/widget/Spinner$DropdownPopup$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/Spinner$DropdownPopup$1;-><init>(Landroid/widget/Spinner$DropdownPopup;Landroid/widget/Spinner;)V

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1101
    return-void
.end method

.method static synthetic access$300(Landroid/widget/Spinner$DropdownPopup;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Spinner$DropdownPopup;

    .prologue
    .line 1082
    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$701(Landroid/widget/Spinner$DropdownPopup;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Spinner$DropdownPopup;

    .prologue
    .line 1082
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method


# virtual methods
.method computeContentWidth()V
    .locals 11

    .prologue
    .line 1119
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1120
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 1122
    .local v4, "hOffset":I
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mInitialHorizontalOffset:I
    invoke-static {v8}, Landroid/widget/Spinner;->access$400(Landroid/widget/Spinner;)I

    move-result v4

    .line 1125
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1126
    .local v1, "contentFrame":Landroid/graphics/Rect;
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v8, v1}, Landroid/view/View;->getWindowVisibleContentFrame(Landroid/graphics/Rect;)V

    .line 1129
    if-eqz v0, :cond_2

    .line 1130
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Landroid/widget/Spinner;->access$500(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1133
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/view/View;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Landroid/widget/Spinner;->access$500(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    :goto_0
    add-int/2addr v4, v8

    .line 1139
    :goto_1
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    .line 1140
    .local v5, "spinnerPaddingLeft":I
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    .line 1141
    .local v6, "spinnerPaddingRight":I
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 1143
    .local v7, "spinnerWidth":I
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget v8, v8, Landroid/widget/Spinner;->mDropDownWidth:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_3

    .line 1144
    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v8, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/widget/Spinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v2

    .line 1149
    .local v2, "contentWidth":I
    iget v8, v1, Landroid/graphics/Rect;->right:I

    iget v9, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/widget/Spinner;->access$500(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/widget/Spinner;->access$500(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int v3, v8, v9

    .line 1151
    .local v3, "contentWidthLimit":I
    if-le v2, v3, :cond_0

    .line 1152
    move v2, v3

    .line 1154
    :cond_0
    sub-int v8, v7, v5

    sub-int/2addr v8, v6

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 1162
    .end local v2    # "contentWidth":I
    .end local v3    # "contentWidthLimit":I
    :goto_2
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/view/View;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1163
    sub-int v8, v7, v6

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getWidth()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 1167
    :goto_3
    invoke-virtual {p0, v4}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 1168
    return-void

    .line 1133
    .end local v5    # "spinnerPaddingLeft":I
    .end local v6    # "spinnerPaddingRight":I
    .end local v7    # "spinnerWidth":I
    :cond_1
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Landroid/widget/Spinner;->access$500(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    neg-int v8, v8

    goto :goto_0

    .line 1136
    :cond_2
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Landroid/widget/Spinner;->access$500(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/widget/Spinner;->access$500(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v9

    const/4 v10, 0x0

    iput v10, v9, Landroid/graphics/Rect;->right:I

    iput v10, v8, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 1156
    .restart local v5    # "spinnerPaddingLeft":I
    .restart local v6    # "spinnerPaddingRight":I
    .restart local v7    # "spinnerWidth":I
    :cond_3
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget v8, v8, Landroid/widget/Spinner;->mDropDownWidth:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 1157
    sub-int v8, v7, v5

    sub-int/2addr v8, v6

    invoke-virtual {p0, v8}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    goto :goto_2

    .line 1159
    :cond_4
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget v8, v8, Landroid/widget/Spinner;->mDropDownWidth:I

    invoke-virtual {p0, v8}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    goto :goto_2

    .line 1165
    :cond_5
    add-int/2addr v4, v5

    goto :goto_3
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 1105
    invoke-super {p0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1106
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 1107
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .prologue
    .line 1115
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    .line 1116
    return-void
.end method

.method public show(II)V
    .locals 5
    .param p1, "textDirection"    # I
    .param p2, "textAlignment"    # I

    .prologue
    .line 1171
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v3

    .line 1173
    .local v3, "wasShowing":Z
    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->computeContentWidth()V

    .line 1175
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 1176
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 1177
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 1178
    .local v1, "listView":Landroid/widget/ListView;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 1179
    invoke-virtual {v1, p1}, Landroid/view/View;->setTextDirection(I)V

    .line 1180
    invoke-virtual {v1, p2}, Landroid/view/View;->setTextAlignment(I)V

    .line 1181
    iget-object v4, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/ListPopupWindow;->setSelection(I)V

    .line 1183
    if-eqz v3, :cond_1

    .line 1218
    :cond_0
    :goto_0
    return-void

    .line 1192
    :cond_1
    iget-object v4, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 1193
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v2, :cond_0

    .line 1194
    new-instance v0, Landroid/widget/Spinner$DropdownPopup$2;

    invoke-direct {v0, p0}, Landroid/widget/Spinner$DropdownPopup$2;-><init>(Landroid/widget/Spinner$DropdownPopup;)V

    .line 1208
    .local v0, "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1209
    new-instance v4, Landroid/widget/Spinner$DropdownPopup$3;

    invoke-direct {v4, p0, v0}, Landroid/widget/Spinner$DropdownPopup$3;-><init>(Landroid/widget/Spinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v4}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    goto :goto_0
.end method
