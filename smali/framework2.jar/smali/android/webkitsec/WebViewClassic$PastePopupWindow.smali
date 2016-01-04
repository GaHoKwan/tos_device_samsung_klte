.class Landroid/webkitsec/WebViewClassic$PastePopupWindow;
.super Landroid/widget/PopupWindow;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PastePopupWindow"
.end annotation


# instance fields
.field private mClipboardTextView:Landroid/widget/TextView;

.field private mContentView:Landroid/view/ViewGroup;

.field private mDividerImageView:Landroid/widget/ImageView;

.field private mPasteTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/webkitsec/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/webkitsec/WebViewClassic;)V
    .locals 13

    .prologue
    const v12, 0x1090127

    const v11, 0x1090117

    const/4 v10, -0x2

    const/4 v9, 0x0

    .line 1138
    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    .line 1139
    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x10102c8

    invoke-direct {p0, v7, v9, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1141
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1142
    new-instance v4, Landroid/widget/LinearLayout;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1143
    .local v4, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1144
    iput-object v4, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 1146
    # getter for: Landroid/webkitsec/WebViewClassic;->mThemeIsDeviceDefault:Z
    invoke-static {p1}, Landroid/webkitsec/WebViewClassic;->access$1400(Landroid/webkitsec/WebViewClassic;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1148
    invoke-virtual {p1}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkitsec/WebSettingsClassic;->getNewActionPopup()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1149
    iget-object v7, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v8, 0x1080994

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1161
    :goto_0
    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 1164
    .local v3, "inflater":Landroid/view/LayoutInflater;
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1166
    .local v6, "wrapContent":Landroid/view/ViewGroup$LayoutParams;
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10500e2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {v5, v7, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1169
    .local v5, "textLayout":Landroid/view/ViewGroup$LayoutParams;
    # getter for: Landroid/webkitsec/WebViewClassic;->mThemeIsDeviceDefault:Z
    invoke-static {p1}, Landroid/webkitsec/WebViewClassic;->access$1400(Landroid/webkitsec/WebViewClassic;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1171
    invoke-virtual {p1}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkitsec/WebSettingsClassic;->getNewActionPopup()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1172
    invoke-virtual {v3, v12, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mPasteTextView:Landroid/widget/TextView;

    .line 1184
    :goto_1
    invoke-virtual {p1}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {p1}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkitsec/WebSettingsClassic;->getNewActionPopup()Z

    move-result v7

    if-eqz v7, :cond_5

    # getter for: Landroid/webkitsec/WebViewClassic;->mThemeIsDeviceDefault:Z
    invoke-static {p1}, Landroid/webkitsec/WebViewClassic;->access$1400(Landroid/webkitsec/WebViewClassic;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1185
    iget-object v7, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1189
    :goto_2
    iget-object v7, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1190
    iget-object v7, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mPasteTextView:Landroid/widget/TextView;

    const v8, 0x104000b

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1191
    iget-object v7, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1193
    # getter for: Landroid/webkitsec/WebViewClassic;->mThemeIsDeviceDefault:Z
    invoke-static {p1}, Landroid/webkitsec/WebViewClassic;->access$1400(Landroid/webkitsec/WebViewClassic;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1196
    invoke-virtual {p1}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {p1}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkitsec/WebSettingsClassic;->getNewActionPopup()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1197
    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1080999

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1198
    .local v2, "drawablePaste":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v9, v2, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1204
    :goto_3
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v0, v10, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1210
    .local v0, "dividerImageViewLayout":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {p1}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkitsec/WebSettingsClassic;->getNewActionPopup()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1211
    const v7, 0x1090125

    invoke-virtual {v3, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mDividerImageView:Landroid/widget/ImageView;

    .line 1216
    :goto_4
    iget-object v7, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mDividerImageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1217
    iget-object v7, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mDividerImageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1221
    invoke-virtual {p1}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {p1}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkitsec/WebSettingsClassic;->getNewActionPopup()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1222
    invoke-virtual {v3, v12, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    .line 1228
    :goto_5
    invoke-virtual {p1}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {p1}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkitsec/WebSettingsClassic;->getNewActionPopup()Z

    move-result v7

    if-eqz v7, :cond_9

    # getter for: Landroid/webkitsec/WebViewClassic;->mThemeIsDeviceDefault:Z
    invoke-static {p1}, Landroid/webkitsec/WebViewClassic;->access$1400(Landroid/webkitsec/WebViewClassic;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1229
    iget-object v7, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1234
    :goto_6
    iget-object v7, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1235
    iget-object v7, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    const v8, 0x1040018

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1236
    iget-object v7, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1238
    invoke-virtual {p1}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {p1}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkitsec/WebSettingsClassic;->getNewActionPopup()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1239
    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x108098a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1241
    .local v1, "drawableClipboard":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v9, v1, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1249
    .end local v0    # "dividerImageViewLayout":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "drawableClipboard":Landroid/graphics/drawable/Drawable;
    .end local v2    # "drawablePaste":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_7
    iget-object v7, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1250
    return-void

    .line 1152
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "textLayout":Landroid/view/ViewGroup$LayoutParams;
    .end local v6    # "wrapContent":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v7, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v8, 0x1080993

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1157
    :cond_2
    iget-object v7, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v8, 0x108092e

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1175
    .restart local v3    # "inflater":Landroid/view/LayoutInflater;
    .restart local v5    # "textLayout":Landroid/view/ViewGroup$LayoutParams;
    .restart local v6    # "wrapContent":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    invoke-virtual {v3, v11, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mPasteTextView:Landroid/widget/TextView;

    goto/16 :goto_1

    .line 1180
    :cond_4
    const v7, 0x10900cf

    invoke-virtual {v3, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mPasteTextView:Landroid/widget/TextView;

    goto/16 :goto_1

    .line 1187
    :cond_5
    iget-object v7, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 1200
    :cond_6
    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10800b6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1201
    .restart local v2    # "drawablePaste":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v2, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 1213
    .restart local v0    # "dividerImageViewLayout":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    const v7, 0x1090116

    invoke-virtual {v3, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mDividerImageView:Landroid/widget/ImageView;

    goto/16 :goto_4

    .line 1224
    :cond_8
    invoke-virtual {v3, v11, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    goto/16 :goto_5

    .line 1231
    :cond_9
    iget-object v7, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    .line 1243
    :cond_a
    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10800b7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1244
    .restart local v1    # "drawableClipboard":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v1, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_7
.end method


# virtual methods
.method public hide()V
    .locals 0

    .prologue
    .line 1277
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1278
    return-void
.end method

.method protected measureContent()V
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    .line 1299
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1300
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 1305
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1283
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mThemeIsDeviceDefault:Z
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$1400(Landroid/webkitsec/WebViewClassic;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1284
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 1285
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->pasteFromClipboard()V

    .line 1286
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->selectionDone()V

    .line 1296
    :cond_0
    :goto_0
    return-void

    .line 1287
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 1288
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->pasteFromClipboardEx()V

    goto :goto_0

    .line 1293
    :cond_2
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->pasteFromClipboard()V

    .line 1294
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->selectionDone()V

    goto :goto_0
.end method

.method public show(Landroid/graphics/Point;Landroid/graphics/Point;II)V
    .locals 6
    .param p1, "cursorBottom"    # Landroid/graphics/Point;
    .param p2, "cursorTop"    # Landroid/graphics/Point;
    .param p3, "windowLeft"    # I
    .param p4, "windowTop"    # I

    .prologue
    .line 1254
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->measureContent()V

    .line 1256
    iget-object v4, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1257
    .local v1, "width":I
    iget-object v4, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1258
    .local v0, "height":I
    iget v4, p2, Landroid/graphics/Point;->y:I

    sub-int v3, v4, v0

    .line 1259
    .local v3, "y":I
    iget v4, p2, Landroid/graphics/Point;->x:I

    div-int/lit8 v5, v1, 0x2

    sub-int v2, v4, v5

    .line 1260
    .local v2, "x":I
    if-ge v3, p4, :cond_0

    .line 1263
    iget-object v4, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->ensureSelectionHandles()V
    invoke-static {v4}, Landroid/webkitsec/WebViewClassic;->access$1500(Landroid/webkitsec/WebViewClassic;)V

    .line 1264
    iget v4, p1, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Landroid/webkitsec/WebViewClassic;->access$1600(Landroid/webkitsec/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int v3, v4, v5

    .line 1265
    iget v4, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v5, v1, 0x2

    sub-int v2, v4, v5

    .line 1267
    :cond_0
    if-ge v2, p3, :cond_1

    .line 1268
    move v2, p3

    .line 1270
    :cond_1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1271
    iget-object v4, p0, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static {v4}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1273
    :cond_2
    invoke-virtual {p0, v2, v3, v1, v0}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1274
    return-void
.end method
