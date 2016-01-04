.class Landroid/view/ViewGroup$MoreInfoHPW;
.super Landroid/widget/FHoverPopupWindow;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreInfoHPW"
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final ID_INFOVIEW:I = 0x7011214

.field private static final TAG:Ljava/lang/String; = "MoreInfoHPW_ViewGroup"


# instance fields
.field private mInitialMaxLine:I

.field private mLastOrientation:I

.field mParentTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 2
    .param p2, "parentView"    # Landroid/view/View;
    .param p3, "type"    # I

    .prologue
    .line 7123
    iput-object p1, p0, Landroid/view/ViewGroup$MoreInfoHPW;->this$0:Landroid/view/ViewGroup;

    .line 7124
    invoke-direct {p0, p2, p3}, Landroid/widget/FHoverPopupWindow;-><init>(Landroid/view/View;I)V

    .line 7119
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mLastOrientation:I

    .line 7120
    const/4 v0, 0x7

    iput v0, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mInitialMaxLine:I

    .line 7121
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    .line 7125
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 7126
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    .line 7134
    :goto_0
    return-void

    .line 7129
    :cond_0
    const-string v0, "MoreInfoHPW_ViewGroup"

    const-string v1, "Parent view is not a TextView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7130
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    goto :goto_0
.end method


# virtual methods
.method public isHoverPopupPossible()Z
    .locals 4

    .prologue
    .line 7154
    const/4 v1, 0x1

    .line 7155
    .local v1, "ret":Z
    iget-object v2, p0, Landroid/view/ViewGroup$MoreInfoHPW;->this$0:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findEllipsizedTextView(Landroid/view/View;)Z

    move-result v1

    .line 7157
    const/4 v0, 0x0

    .line 7158
    .local v0, "isMelius":Z
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v3, "melius"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7159
    const/4 v0, 0x1

    .line 7161
    :cond_0
    if-eqz v0, :cond_2

    .line 7162
    if-nez v1, :cond_1

    iget-object v2, p0, Landroid/view/ViewGroup$MoreInfoHPW;->this$0:Landroid/view/ViewGroup;

    iget v2, v2, Landroid/view/View;->mHoverPopupType:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 7163
    invoke-super {p0}, Landroid/widget/FHoverPopupWindow;->isHoverPopupPossible()Z

    move-result v1

    .line 7170
    :cond_1
    :goto_0
    return v1

    .line 7166
    :cond_2
    if-nez v1, :cond_1

    .line 7167
    invoke-super {p0}, Landroid/widget/FHoverPopupWindow;->isHoverPopupPossible()Z

    move-result v1

    goto :goto_0
.end method

.method protected makeDefaultContentView()V
    .locals 8

    .prologue
    const v7, 0x7011214

    .line 7176
    const/4 v4, 0x0

    .line 7178
    .local v4, "v":Landroid/widget/TextView;
    iget-object v5, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I

    .line 7180
    .local v2, "orientation":I
    iget-object v5, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, v7, :cond_0

    iget v5, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mLastOrientation:I

    if-eq v2, v5, :cond_2

    .line 7183
    :cond_0
    iget-object v5, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 7184
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x109005d

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .end local v4    # "v":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 7186
    .restart local v4    # "v":Landroid/widget/TextView;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setHoverPopupType(I)V

    .line 7187
    invoke-virtual {v4, v7}, Landroid/view/View;->setId(I)V

    .line 7188
    invoke-virtual {v4}, Landroid/widget/TextView;->getMaxLines()I

    move-result v5

    iput v5, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mInitialMaxLine:I

    .line 7190
    iput v2, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mLastOrientation:I

    .line 7197
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v5, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 7199
    .local v3, "text":Ljava/lang/CharSequence;
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 7200
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7201
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 7203
    iget-object v5, p0, Landroid/view/ViewGroup$MoreInfoHPW;->this$0:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 7204
    .local v0, "d":Landroid/util/DisplayMetrics;
    iget v5, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    iget v5, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mInitialMaxLine:I

    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    .line 7205
    iget v5, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mInitialMaxLine:I

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 7211
    .end local v0    # "d":Landroid/util/DisplayMetrics;
    :cond_1
    :goto_2
    iput-object v4, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 7212
    return-void

    .line 7193
    .end local v3    # "text":Ljava/lang/CharSequence;
    :cond_2
    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .end local v4    # "v":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .restart local v4    # "v":Landroid/widget/TextView;
    goto :goto_0

    .line 7197
    :cond_3
    iget-object v5, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1

    .line 7208
    .restart local v3    # "text":Ljava/lang/CharSequence;
    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method protected setInstanceByType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 7138
    invoke-super {p0, p1}, Landroid/widget/HoverPopupWindow;->setInstanceByType(I)V

    .line 7139
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 7140
    const/16 v0, 0x3031

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    .line 7142
    const v0, 0x1030354

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    .line 7143
    const/16 v0, 0x12c

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    .line 7144
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    .line 7145
    const/high16 v0, 0x40c00000    # 6.0f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    .line 7147
    :cond_0
    return-void
.end method
