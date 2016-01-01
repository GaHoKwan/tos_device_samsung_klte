.class Landroid/view/View$MoreInfoHPW;
.super Landroid/widget/FHoverPopupWindow;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreInfoHPW"
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final ID_INFOVIEW:I = 0x7011214

.field private static final TAG:Ljava/lang/String; = "MoreInfoHPW_View"


# instance fields
.field private mInitialMaxLine:I

.field private mLastOrientation:I

.field mParentTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;I)V
    .locals 2

    iput-object p1, p0, Landroid/view/View$MoreInfoHPW;->this$0:Landroid/view/View;

    invoke-direct {p0, p2, p3}, Landroid/widget/FHoverPopupWindow;-><init>(Landroid/view/View;I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/View$MoreInfoHPW;->mLastOrientation:I

    const/4 v0, 0x7

    iput v0, p0, Landroid/view/View$MoreInfoHPW;->mInitialMaxLine:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/view/View$MoreInfoHPW;->mParentView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View$MoreInfoHPW;->mParentView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/view/View$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    :goto_0
    return-void

    :cond_0
    const-string v0, "MoreInfoHPW_View"

    const-string v1, "Parent view is not a TextView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroid/view/View$MoreInfoHPW;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/View$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    goto :goto_0
.end method


# virtual methods
.method public isHoverPopupPossible()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/view/View$MoreInfoHPW;->this$0:Landroid/view/View;

    iget-object v2, p0, Landroid/view/View$MoreInfoHPW;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findEllipsizedTextView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/FHoverPopupWindow;->isHoverPopupPossible()Z

    move-result v0

    :cond_0
    return v0
.end method

.method protected makeDefaultContentView()V
    .locals 8

    const v7, 0x7011214

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/view/View$MoreInfoHPW;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I

    iget-object v5, p0, Landroid/view/View$MoreInfoHPW;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/view/View$MoreInfoHPW;->mContentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, v7, :cond_0

    iget v5, p0, Landroid/view/View$MoreInfoHPW;->mLastOrientation:I

    if-eq v2, v5, :cond_2

    :cond_0
    iget-object v5, p0, Landroid/view/View$MoreInfoHPW;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v5, 0x109005d

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHoverPopupType(I)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getMaxLines()I

    move-result v5

    iput v5, p0, Landroid/view/View$MoreInfoHPW;->mInitialMaxLine:I

    iput v2, p0, Landroid/view/View$MoreInfoHPW;->mLastOrientation:I

    :goto_0
    iget-object v5, p0, Landroid/view/View$MoreInfoHPW;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v3, p0, Landroid/view/View$MoreInfoHPW;->mContentText:Ljava/lang/CharSequence;

    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v5, p0, Landroid/view/View$MoreInfoHPW;->this$0:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v5, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    iget v5, p0, Landroid/view/View$MoreInfoHPW;->mInitialMaxLine:I

    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    iget v5, p0, Landroid/view/View$MoreInfoHPW;->mInitialMaxLine:I

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_1
    :goto_2
    iput-object v4, p0, Landroid/view/View$MoreInfoHPW;->mContentView:Landroid/view/View;

    return-void

    :cond_2
    iget-object v4, p0, Landroid/view/View$MoreInfoHPW;->mContentView:Landroid/view/View;

    check-cast v4, Landroid/widget/TextView;

    goto :goto_0

    :cond_3
    iget-object v5, p0, Landroid/view/View$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method protected setInstanceByType(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FHoverPopupWindow;->setInstanceByType(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 v0, 0x3031

    iput v0, p0, Landroid/view/View$MoreInfoHPW;->mPopupGravity:I

    const v0, 0x1030354

    iput v0, p0, Landroid/view/View$MoreInfoHPW;->mAnimationStyle:I

    const/16 v0, 0x12c

    iput v0, p0, Landroid/view/View$MoreInfoHPW;->mHoverDetectTimeMS:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/View$MoreInfoHPW;->mIsGuideLineEnabled:Z

    const/high16 v0, 0x40c00000    # 6.0f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View$MoreInfoHPW;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Landroid/view/View$MoreInfoHPW;->mGuideLineFadeOffset:I

    :cond_0
    return-void
.end method
