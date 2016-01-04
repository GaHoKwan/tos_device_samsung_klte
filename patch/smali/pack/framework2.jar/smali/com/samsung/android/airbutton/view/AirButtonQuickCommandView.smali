.class public Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;
.super Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;
.source "AirButtonQuickCommandView.java"


# static fields
.field private static mDescriptionSize:I

.field private static mDescriptionSmallSize:I

.field private static mMenuCount:I

.field private static sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

.field private static sCenterImage:Landroid/widget/ImageView;

.field private static sDescriptionViews:[Landroid/widget/TextView;

.field private static sFocusedImage:Landroid/widget/ImageView;

.field private static sMenuImages:[Landroid/widget/ImageView;


# instance fields
.field private CENTER_IMAGE_DURATION:I

.field private DESCRIPTION_DURATION:I

.field private FOCUS_DURATION:I

.field private MENU_ICON_DURATION:I

.field private MENU_ICON_INTERVAL:I

.field private START_DELAY:I

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mBgHalfSize:F

.field private mCenterX:F

.field private mCenterY:F

.field private mHelpPopupLayout:Landroid/widget/LinearLayout;

.field private mHideDescriptionAnimation:Landroid/animation/ObjectAnimator;

.field private mHideFocusAnimation:Landroid/animation/ObjectAnimator;

.field private mIsTalkbackEnabled:Z

.field private mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

.field private mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

.field private mShowFocusAnimation:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 40
    sput-object v0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    .line 41
    sput-object v0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sFocusedImage:Landroid/widget/ImageView;

    .line 42
    sput-object v0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sCenterImage:Landroid/widget/ImageView;

    .line 44
    sput-object v0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sMenuImages:[Landroid/widget/ImageView;

    .line 45
    sput-object v0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sDescriptionViews:[Landroid/widget/TextView;

    .line 46
    sput v1, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mDescriptionSize:I

    .line 47
    sput v1, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mDescriptionSmallSize:I

    .line 53
    const/4 v0, 0x4

    sput v0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mMenuCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;
    .param p3, "attrs"    # Lcom/samsung/android/airbutton/Attributes;

    .prologue
    const/16 v3, 0xc8

    const/16 v2, 0x96

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;-><init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;)V

    .line 48
    iput v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mCenterX:F

    .line 49
    iput v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mCenterY:F

    .line 50
    iput v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mBgHalfSize:F

    .line 51
    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mIsTalkbackEnabled:Z

    .line 60
    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->START_DELAY:I

    .line 61
    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->MENU_ICON_INTERVAL:I

    .line 62
    const/16 v0, 0x78

    iput v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->MENU_ICON_DURATION:I

    .line 63
    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->CENTER_IMAGE_DURATION:I

    .line 64
    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->FOCUS_DURATION:I

    .line 65
    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->DESCRIPTION_DURATION:I

    .line 66
    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    .line 67
    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    .line 68
    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    .line 69
    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    .line 70
    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mHideDescriptionAnimation:Landroid/animation/ObjectAnimator;

    .line 71
    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    .line 80
    iput-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 82
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->createViews()V

    .line 83
    return-void
.end method

.method private adjustCenterPosition()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 173
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 174
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x105009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mBgHalfSize:F

    .line 175
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    int-to-float v1, v1

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mCenterX:F

    .line 176
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    int-to-float v1, v1

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mCenterY:F

    .line 178
    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mCenterX:F

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mBgHalfSize:F

    sub-float/2addr v1, v2

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    .line 179
    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mBgHalfSize:F

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mCenterX:F

    .line 183
    :cond_0
    :goto_0
    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mCenterY:F

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mBgHalfSize:F

    sub-float/2addr v1, v2

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    .line 184
    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mBgHalfSize:F

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mCenterY:F

    .line 187
    :cond_1
    :goto_1
    return-void

    .line 180
    :cond_2
    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mCenterX:F

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mBgHalfSize:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->windowWidth:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->windowWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mBgHalfSize:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mCenterX:F

    goto :goto_0

    .line 185
    :cond_3
    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mCenterY:F

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mBgHalfSize:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mBgHalfSize:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mCenterY:F

    goto :goto_1
.end method

.method private checkTalkbackEnable()Z
    .locals 4

    .prologue
    .line 626
    const/4 v1, 0x0

    .line 627
    .local v1, "talkbackEnabled":Z
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, "accesibilityService":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 630
    const-string v2, "(?i).*talkback.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    .line 633
    :cond_0
    return v1
.end method

.method private createViews()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v4, -0x2

    const/16 v8, 0xf5

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 86
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 87
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 89
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 92
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->checkTalkbackEnable()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mIsTalkbackEnabled:Z

    .line 95
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    if-nez v3, :cond_1

    .line 96
    new-instance v3, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    .line 97
    :cond_1
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-boolean v3, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mIsTalkbackEnabled:Z

    if-eqz v3, :cond_2

    .line 99
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 100
    :cond_2
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 103
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sFocusedImage:Landroid/widget/ImageView;

    if-nez v3, :cond_3

    .line 104
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sFocusedImage:Landroid/widget/ImageView;

    .line 105
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sFocusedImage:Landroid/widget/ImageView;

    const v4, 0x10800db

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    :cond_3
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 111
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sMenuImages:[Landroid/widget/ImageView;

    if-nez v3, :cond_5

    .line 112
    sget v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mMenuCount:I

    new-array v3, v3, [Landroid/widget/ImageView;

    sput-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sMenuImages:[Landroid/widget/ImageView;

    .line 113
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    sget v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mMenuCount:I

    if-ge v0, v3, :cond_4

    .line 114
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sMenuImages:[Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v0

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_4
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v3, v3, v6

    const v4, 0x10800e2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v3, v3, v7

    const v4, 0x10800dc

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v3, v3, v9

    const v4, 0x10800de

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const v4, 0x10800e0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    .end local v0    # "idx":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "idx":I
    :goto_1
    sget v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mMenuCount:I

    if-ge v0, v3, :cond_6

    .line 124
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 129
    :cond_6
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sCenterImage:Landroid/widget/ImageView;

    if-nez v3, :cond_7

    .line 130
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sCenterImage:Landroid/widget/ImageView;

    .line 131
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sCenterImage:Landroid/widget/ImageView;

    const v4, 0x10800d9

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    :cond_7
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sCenterImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sCenterImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 137
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sDescriptionViews:[Landroid/widget/TextView;

    if-nez v3, :cond_8

    .line 138
    sget v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mMenuCount:I

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Landroid/widget/TextView;

    sput-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sDescriptionViews:[Landroid/widget/TextView;

    .line 139
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 140
    .local v2, "r":Landroid/content/res/Resources;
    const v3, 0x105009f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mDescriptionSize:I

    .line 141
    const v3, 0x10500a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mDescriptionSmallSize:I

    .line 143
    const/4 v0, 0x0

    :goto_2
    sget v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mMenuCount:I

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_8

    .line 144
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sDescriptionViews:[Landroid/widget/TextView;

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v0

    .line 145
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    const/16 v4, 0xff

    invoke-static {v4, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 151
    .end local v2    # "r":Landroid/content/res/Resources;
    :cond_8
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v3, v3, v6

    const v4, 0x1040a7b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 152
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v3, v3, v7

    const v4, 0x1040a7c

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 153
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v3, v3, v9

    const v4, 0x1040a7d

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 155
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sDescriptionViews:[Landroid/widget/TextView;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const v4, 0x1040a80

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 156
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sDescriptionViews:[Landroid/widget/TextView;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    const v4, 0x1040a81

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 158
    const/4 v0, 0x0

    :goto_3
    sget v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mMenuCount:I

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_9

    .line 159
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    sget v4, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mDescriptionSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 160
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 164
    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->adjustCenterPosition()V

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->setAllViewDelta()V

    .line 167
    iget-boolean v3, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mIsTalkbackEnabled:Z

    if-eqz v3, :cond_a

    .line 168
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 170
    :cond_a
    return-void
.end method

.method private getAngle(DD)D
    .locals 8
    .param p1, "pointX"    # D
    .param p3, "pointY"    # D

    .prologue
    const-wide/16 v6, 0x0

    .line 615
    div-double v2, p3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    const-wide v4, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v0, v2, v4

    .line 617
    .local v0, "angle":D
    cmpg-double v2, p1, v6

    if-gez v2, :cond_1

    .line 618
    const-wide v2, 0x4066800000000000L    # 180.0

    add-double/2addr v0, v2

    .line 622
    :cond_0
    :goto_0
    return-wide v0

    .line 619
    :cond_1
    cmpg-double v2, p3, v6

    if-gez v2, :cond_0

    .line 620
    const-wide v2, 0x4076800000000000L    # 360.0

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method private getDistanceFromCenter(DD)D
    .locals 9
    .param p1, "pointX"    # D
    .param p3, "pointY"    # D

    .prologue
    const-wide/16 v1, 0x0

    .line 611
    move-object v0, p0

    move-wide v3, v1

    move-wide v5, p1

    move-wide v7, p3

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->getDistance(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private getItemIndex(Landroid/view/MotionEvent;)I
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 589
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mCenterX:F

    sub-float v0, v4, v5

    .line 590
    .local v0, "adjustedX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mCenterY:F

    sub-float v1, v4, v5

    .line 592
    .local v1, "adjustedY":F
    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mBgHalfSize:F

    float-to-double v4, v4

    float-to-double v6, v0

    float-to-double v8, v1

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->getDistanceFromCenter(DD)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    .line 593
    float-to-double v4, v0

    float-to-double v6, v1

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->getAngle(DD)D

    move-result-wide v2

    .line 595
    .local v2, "angle":D
    const-wide/16 v4, 0x0

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_0

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_0

    .line 596
    const/4 v4, 0x3

    .line 607
    .end local v2    # "angle":D
    :goto_0
    return v4

    .line 597
    .restart local v2    # "angle":D
    :cond_0
    const-wide v4, 0x4075900000000000L    # 345.0

    cmpg-double v4, v4, v2

    if-gez v4, :cond_1

    const-wide v4, 0x4076800000000000L    # 360.0

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_1

    .line 598
    const/4 v4, 0x3

    goto :goto_0

    .line 599
    :cond_1
    const-wide v4, 0x4067200000000000L    # 185.0

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_2

    const-wide/high16 v4, 0x406e000000000000L    # 240.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_2

    .line 600
    const/4 v4, 0x0

    goto :goto_0

    .line 601
    :cond_2
    const-wide/high16 v4, 0x406e000000000000L    # 240.0

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_3

    const-wide v4, 0x4072700000000000L    # 295.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_3

    .line 602
    const/4 v4, 0x1

    goto :goto_0

    .line 603
    :cond_3
    const-wide v4, 0x4072700000000000L    # 295.0

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_4

    const-wide v4, 0x4075900000000000L    # 345.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_4

    .line 604
    const/4 v4, 0x2

    goto :goto_0

    .line 607
    .end local v2    # "angle":D
    :cond_4
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private playFocusAnimation(II)V
    .locals 5
    .param p1, "previousIdx"    # I
    .param p2, "currentIdx"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 319
    const/4 v0, 0x0

    .line 321
    .local v0, "baseAngle":F
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 322
    const/high16 v0, 0x425c0000    # 55.0f

    .line 328
    :cond_0
    :goto_0
    if-ne p1, v2, :cond_3

    .line 329
    sget-object v1, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setRotation(F)V

    .line 330
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->playShowFocusAnimation()V

    .line 332
    sget-object v1, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sDescriptionViews:[Landroid/widget/TextView;

    sget v2, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mMenuCount:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 333
    invoke-direct {p0, p2, v4}, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->playShowDescriptionAnimation(IZ)V

    .line 348
    :goto_1
    return-void

    .line 323
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 324
    const/high16 v0, 0x42dc0000    # 110.0f

    goto :goto_0

    .line 325
    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 326
    const/high16 v0, 0x43250000    # 165.0f

    goto :goto_0

    .line 334
    :cond_3
    if-ne p2, v2, :cond_5

    .line 335
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->playHideFocusAnimation()V

    .line 337
    if-ltz p1, :cond_4

    sget v1, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mMenuCount:I

    if-ge p1, v1, :cond_4

    .line 338
    sget-object v1, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 339
    :cond_4
    invoke-direct {p0, p2, v4}, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->playShowDescriptionAnimation(IZ)V

    goto :goto_1

    .line 342
    :cond_5
    invoke-direct {p0, v0}, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->playMoveFocusAnimation(F)V

    .line 344
    if-ltz p1, :cond_6

    sget v1, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mMenuCount:I

    if-ge p1, v1, :cond_6

    .line 345
    sget-object v1, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 346
    :cond_6
    invoke-direct {p0, p2, v4}, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->playShowDescriptionAnimation(IZ)V

    goto :goto_1
.end method

.method private playHideDescriptionAnimation(I)V
    .locals 8
    .param p1, "viewIdx"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, -0x1

    const/4 v5, 0x0

    .line 397
    if-lt p1, v1, :cond_0

    sget v0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mMenuCount:I

    if-gt v0, p1, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 403
    :cond_2
    if-ne p1, v1, :cond_3

    .line 404
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sDescriptionViews:[Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mMenuCount:I

    aget-object v0, v0, v1

    const-string v1, "alpha"

    new-array v2, v2, [F

    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sDescriptionViews:[Landroid/widget/TextView;

    sget v4, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mMenuCount:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    aput v3, v2, v6

    aput v5, v2, v7

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mHideDescriptionAnimation:Landroid/animation/ObjectAnimator;

    .line 407
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mHideDescriptionAnimation:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->DESCRIPTION_DURATION:I

    div-int/lit8 v1, v1, 0x2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 408
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mHideDescriptionAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 406
    :cond_3
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    const-string v1, "alpha"

    new-array v2, v2, [F

    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    aput v3, v2, v6

    aput v5, v2, v7

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mHideDescriptionAnimation:Landroid/animation/ObjectAnimator;

    goto :goto_1
.end method

.method private playHideFocusAnimation()V
    .locals 5

    .prologue
    .line 360
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 363
    :cond_0
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sFocusedImage:Landroid/widget/ImageView;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    .line 364
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->FOCUS_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 365
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 366
    return-void
.end method

.method private playMoveFocusAnimation(F)V
    .locals 5
    .param p1, "targetAngle"    # F

    .prologue
    .line 369
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 372
    :cond_0
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sFocusedImage:Landroid/widget/ImageView;

    const-string/jumbo v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getRotation()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    .line 373
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->FOCUS_DURATION:I

    add-int/lit8 v1, v1, -0x32

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 374
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 375
    return-void
.end method

.method private playShowDescriptionAnimation(IZ)V
    .locals 3
    .param p1, "viewIdx"    # I
    .param p2, "isStartGAC"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v1, -0x1

    .line 378
    if-lt p1, v1, :cond_0

    sget v0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mMenuCount:I

    if-gt v0, p1, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 382
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 384
    :cond_2
    if-ne p1, v1, :cond_3

    .line 385
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sDescriptionViews:[Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mMenuCount:I

    aget-object v0, v0, v1

    const-string v1, "alpha"

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    .line 392
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->DESCRIPTION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 393
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 387
    :cond_3
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    const-string v1, "alpha"

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    goto :goto_1

    .line 385
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 387
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private playShowFocusAnimation()V
    .locals 5

    .prologue
    .line 351
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 354
    :cond_0
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sFocusedImage:Landroid/widget/ImageView;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    .line 355
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->FOCUS_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 356
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 357
    return-void
.end method

.method private setAllViewDelta()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    .line 190
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 192
    .local v6, "r":Landroid/content/res/Resources;
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mCenterX:F

    iget v9, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mBgHalfSize:F

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setX(F)V

    .line 193
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mCenterY:F

    iget v9, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mBgHalfSize:F

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setY(F)V

    .line 195
    const v7, 0x1050099

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 196
    .local v4, "focusedImageWidht":I
    const v7, 0x105009a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 197
    .local v3, "focusedImageHeight":I
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/view/View;->setAlpha(F)V

    .line 198
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sFocusedImage:Landroid/widget/ImageView;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mCenterX:F

    int-to-float v9, v4

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setX(F)V

    .line 199
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sFocusedImage:Landroid/widget/ImageView;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mCenterY:F

    int-to-float v9, v3

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setY(F)V

    .line 200
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sFocusedImage:Landroid/widget/ImageView;

    int-to-float v8, v4

    invoke-virtual {v7, v8}, Landroid/view/View;->setPivotX(F)V

    .line 201
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sFocusedImage:Landroid/widget/ImageView;

    int-to-float v8, v3

    invoke-virtual {v7, v8}, Landroid/view/View;->setPivotY(F)V

    .line 203
    const/4 v5, 0x0

    .local v5, "idx":I
    :goto_0
    sget v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mMenuCount:I

    if-ge v5, v7, :cond_0

    .line 204
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v7, v7, v5

    invoke-virtual {v7, v11}, Landroid/view/View;->setAlpha(F)V

    .line 203
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 206
    :cond_0
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v7, v7, v12

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mCenterX:F

    const v9, 0x105008f

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    const v9, 0x1050089

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setX(F)V

    .line 208
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v7, v7, v12

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mCenterY:F

    const v9, 0x1050090

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    const v9, 0x105008a

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setY(F)V

    .line 210
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v7, v7, v13

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mCenterX:F

    const v9, 0x1050091

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setX(F)V

    .line 211
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v7, v7, v13

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mCenterY:F

    const v9, 0x1050092

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    const v9, 0x105008c

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setY(F)V

    .line 213
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v7, v7, v14

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mCenterX:F

    const v9, 0x1050093

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setX(F)V

    .line 214
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v7, v7, v14

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mCenterY:F

    const v9, 0x1050094

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    const v9, 0x105008d

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setY(F)V

    .line 216
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mCenterX:F

    const v9, 0x1050095

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setX(F)V

    .line 217
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mCenterY:F

    const v9, 0x1050096

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setY(F)V

    .line 220
    const v7, 0x105009c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 221
    .local v0, "centerImageSize":I
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sCenterImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/view/View;->setAlpha(F)V

    .line 222
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sCenterImage:Landroid/widget/ImageView;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mCenterX:F

    int-to-float v9, v0

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setX(F)V

    .line 223
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sCenterImage:Landroid/widget/ImageView;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mCenterY:F

    int-to-float v9, v0

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setY(F)V

    .line 224
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sCenterImage:Landroid/widget/ImageView;

    int-to-float v8, v0

    div-float/2addr v8, v10

    invoke-virtual {v7, v8}, Landroid/view/View;->setPivotX(F)V

    .line 225
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sCenterImage:Landroid/widget/ImageView;

    int-to-float v8, v0

    div-float/2addr v8, v10

    invoke-virtual {v7, v8}, Landroid/view/View;->setPivotY(F)V

    .line 227
    const v7, 0x105009d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 228
    .local v2, "descriptionWidth":I
    const v7, 0x105009e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 229
    .local v1, "descriptionHeight":I
    const/4 v5, 0x0

    :goto_1
    sget v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mMenuCount:I

    add-int/lit8 v7, v7, 0x1

    if-ge v5, v7, :cond_1

    .line 230
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v7, v7, v5

    invoke-virtual {v7, v11}, Landroid/view/View;->setAlpha(F)V

    .line 231
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v7, v7, v5

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setWidth(I)V

    .line 232
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v7, v7, v5

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 233
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v7, v7, v5

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mCenterX:F

    int-to-float v9, v2

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setX(F)V

    .line 234
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v7, v7, v5

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mCenterY:F

    int-to-float v9, v1

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setY(F)V

    .line 229
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 236
    :cond_1
    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 489
    const/4 v2, 0x0

    .line 491
    .local v2, "descriptionText":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsHoverEventEnabled:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    .line 492
    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->getItemIndex(Landroid/view/MotionEvent;)I

    move-result v1

    .line 494
    .local v1, "currentViewIdx":I
    iget v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    if-eq v1, v3, :cond_0

    .line 495
    iget v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->playFocusAnimation(II)V

    .line 497
    iget-boolean v3, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mIsTalkbackEnabled:Z

    if-eqz v3, :cond_0

    .line 498
    const/16 v3, 0x80

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 499
    .local v0, "TalkbackEvent":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 500
    invoke-virtual {p0}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 502
    packed-switch v1, :pswitch_data_0

    .line 519
    const/4 v2, 0x0

    .line 522
    :goto_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v3, :cond_0

    .line 525
    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 529
    .end local v0    # "TalkbackEvent":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    iput v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    .line 532
    .end local v1    # "currentViewIdx":I
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 504
    .restart local v0    # "TalkbackEvent":Landroid/view/accessibility/AccessibilityEvent;
    .restart local v1    # "currentViewIdx":I
    :pswitch_0
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x1040a7b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 505
    goto :goto_0

    .line 507
    :pswitch_1
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x1040a7c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 508
    goto :goto_0

    .line 510
    :pswitch_2
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x1040a7d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 511
    goto :goto_0

    .line 513
    :pswitch_3
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x1040a80

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 514
    goto :goto_0

    .line 516
    :pswitch_4
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x1040a81

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 517
    goto :goto_0

    .line 502
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected generateAndPlayFinishAnimation()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x2

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->playCloseSound()V

    .line 274
    sget v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mMenuCount:I

    add-int/lit8 v5, v7, -0x1

    .local v5, "idx":I
    :goto_0
    if-ltz v5, :cond_0

    .line 275
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v7, v7, v5

    const-string v8, "alpha"

    new-array v9, v10, [F

    fill-array-data v9, :array_0

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 276
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    sget v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mMenuCount:I

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v5

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->MENU_ICON_INTERVAL:I

    mul-int/2addr v7, v8

    int-to-long v7, v7

    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 277
    iget v7, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->MENU_ICON_DURATION:I

    int-to-long v7, v7

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 278
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 274
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 281
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :cond_0
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sCenterImage:Landroid/widget/ImageView;

    const-string/jumbo v8, "scaleX"

    new-array v9, v10, [F

    fill-array-data v9, :array_1

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 282
    .local v3, "centerScaleX":Landroid/animation/ObjectAnimator;
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sCenterImage:Landroid/widget/ImageView;

    const-string/jumbo v8, "scaleY"

    new-array v9, v10, [F

    fill-array-data v9, :array_2

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 283
    .local v4, "centerScaleY":Landroid/animation/ObjectAnimator;
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sCenterImage:Landroid/widget/ImageView;

    const-string v8, "alpha"

    new-array v9, v10, [F

    fill-array-data v9, :array_3

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 285
    .local v2, "centerAlpha":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 286
    .local v1, "animators":Landroid/animation/AnimatorSet;
    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    aput-object v2, v7, v10

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 287
    iget v7, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->CENTER_IMAGE_DURATION:I

    int-to-long v7, v7

    invoke-virtual {v1, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 288
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 290
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->START_DELAY:I

    div-int/lit8 v8, v8, 0x2

    iget-object v9, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mFinishAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->startCloseAnimation(ILandroid/animation/Animator$AnimatorListener;)V

    .line 292
    iget v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSelectedViewIdx:I

    if-ne v7, v11, :cond_1

    iget v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    if-eq v7, v11, :cond_2

    .line 293
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->playHideFocusAnimation()V

    .line 295
    :cond_2
    iget v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    .line 296
    .local v6, "viewIdx":I
    iget v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSelectedViewIdx:I

    if-eq v7, v11, :cond_3

    .line 297
    iget v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSelectedViewIdx:I

    .line 299
    :cond_3
    invoke-direct {p0, v6}, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->playHideDescriptionAnimation(I)V

    .line 301
    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_4

    .line 302
    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 303
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    .line 306
    :cond_4
    return-void

    .line 275
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 281
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 282
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 283
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected generateAndPlayStartAnimation()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x2

    .line 245
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->playOpenSound()V

    .line 247
    sget-object v6, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sCenterImage:Landroid/widget/ImageView;

    const-string/jumbo v7, "scaleX"

    new-array v8, v9, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 248
    .local v3, "centerScaleX":Landroid/animation/ObjectAnimator;
    sget-object v6, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sCenterImage:Landroid/widget/ImageView;

    const-string/jumbo v7, "scaleY"

    new-array v8, v9, [F

    fill-array-data v8, :array_1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 249
    .local v4, "centerScaleY":Landroid/animation/ObjectAnimator;
    sget-object v6, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sCenterImage:Landroid/widget/ImageView;

    const-string v7, "alpha"

    new-array v8, v9, [F

    fill-array-data v8, :array_2

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 251
    .local v2, "centerAlpha":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 252
    .local v1, "animators":Landroid/animation/AnimatorSet;
    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    aput-object v4, v6, v10

    aput-object v2, v6, v9

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 253
    const-wide/16 v6, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 254
    iget v6, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->CENTER_IMAGE_DURATION:I

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 255
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mStartAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 256
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 258
    const/4 v6, -0x1

    invoke-direct {p0, v6, v10}, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->playShowDescriptionAnimation(IZ)V

    .line 260
    sget-object v6, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    iget v7, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->START_DELAY:I

    invoke-virtual {v6, v7}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->startOpenAnimation(I)V

    .line 262
    const/4 v5, 0x0

    .local v5, "idx":I
    :goto_0
    sget v6, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mMenuCount:I

    if-ge v5, v6, :cond_0

    .line 263
    sget-object v6, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v6, v6, v5

    const-string v7, "alpha"

    new-array v8, v9, [F

    fill-array-data v8, :array_3

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 264
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    iget v6, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->START_DELAY:I

    add-int/lit16 v6, v6, 0x12c

    iget v7, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->MENU_ICON_INTERVAL:I

    mul-int/2addr v7, v5

    add-int/2addr v6, v7

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 265
    iget v6, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->MENU_ICON_DURATION:I

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 266
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 262
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 268
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void

    .line 247
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 248
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 249
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 263
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected initAllViewDelta()V
    .locals 0

    .prologue
    .line 543
    return-void
.end method

.method protected onLayoutChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 552
    iget-boolean v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsStartUp:Z

    if-eqz v4, :cond_5

    .line 553
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    .line 554
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, v4, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v1, v4

    .line 555
    .local v1, "helpPopupY":F
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 556
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 557
    .local v3, "r":Landroid/content/res/Resources;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 558
    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mBgHalfSize:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    .line 564
    .end local v3    # "r":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/view/View;->setY(F)V

    .line 567
    .end local v1    # "helpPopupY":F
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->generateAndPlayStartAnimation()V

    .line 569
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_1
    sget v4, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mMenuCount:I

    add-int/lit8 v4, v4, 0x1

    if-ge v2, v4, :cond_4

    .line 570
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_2

    .line 571
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v2

    sget v5, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mDescriptionSmallSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 569
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 559
    .end local v2    # "idx":I
    .restart local v1    # "helpPopupY":F
    .restart local v3    # "r":Landroid/content/res/Resources;
    :cond_3
    if-eqz v3, :cond_0

    .line 560
    const v4, 0x10500a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 561
    .local v0, "bottomMargin":I
    int-to-float v4, v0

    sub-float/2addr v1, v4

    goto :goto_0

    .line 573
    .end local v0    # "bottomMargin":I
    .end local v1    # "helpPopupY":F
    .end local v3    # "r":Landroid/content/res/Resources;
    .restart local v2    # "idx":I
    :cond_4
    iput-boolean v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsStartUp:Z

    .line 575
    .end local v2    # "idx":I
    :cond_5
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 548
    return-void
.end method

.method protected onTouchDown(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, -0x1

    .line 418
    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->getItemIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 419
    .local v0, "selectedIdx":I
    if-ne v0, v1, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->onFinishing()V

    .line 428
    :goto_0
    return-void

    .line 424
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->playFocusAnimation(II)V

    .line 427
    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->onTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method protected onTouchMove(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 444
    const/4 v2, 0x0

    .line 445
    .local v2, "descriptionText":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->getItemIndex(Landroid/view/MotionEvent;)I

    move-result v1

    .line 447
    .local v1, "currentViewIdx":I
    iget v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    if-eq v1, v3, :cond_0

    .line 448
    iget v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->playFocusAnimation(II)V

    .line 450
    iget-boolean v3, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mIsTalkbackEnabled:Z

    if-eqz v3, :cond_0

    .line 451
    const/16 v3, 0x80

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 452
    .local v0, "TalkbackEvent":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 453
    invoke-virtual {p0}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 455
    packed-switch v1, :pswitch_data_0

    .line 472
    const/4 v2, 0x0

    .line 475
    :goto_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v3, :cond_0

    .line 478
    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 482
    .end local v0    # "TalkbackEvent":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    iput v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    .line 484
    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->onTouchMove(Landroid/view/MotionEvent;)V

    .line 485
    return-void

    .line 457
    .restart local v0    # "TalkbackEvent":Landroid/view/accessibility/AccessibilityEvent;
    :pswitch_0
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x1040a7b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 458
    goto :goto_0

    .line 460
    :pswitch_1
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x1040a7c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 461
    goto :goto_0

    .line 463
    :pswitch_2
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x1040a7d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 464
    goto :goto_0

    .line 466
    :pswitch_3
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x1040a80

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 467
    goto :goto_0

    .line 469
    :pswitch_4
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x1040a81

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 470
    goto :goto_0

    .line 455
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onTouchUp(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 432
    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->getItemIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 433
    .local v0, "selectedIdx":I
    iget-boolean v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsReservedToFinish:Z

    if-eqz v1, :cond_0

    .line 434
    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSelectedViewIdx:I

    .line 437
    :cond_0
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;->playFocusAnimation(II)V

    .line 439
    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->onTouchUp(Landroid/view/MotionEvent;)V

    .line 440
    return-void
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 580
    const/4 v0, 0x1

    return v0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .param p1, "eventType"    # I

    .prologue
    .line 586
    return-void
.end method

.method protected showHoverEnterAnimation(I)V
    .locals 0
    .param p1, "viewIdx"    # I

    .prologue
    .line 311
    return-void
.end method

.method protected showHoverExitAnimation(I)V
    .locals 0
    .param p1, "viewIdx"    # I

    .prologue
    .line 316
    return-void
.end method
