.class public Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;
.super Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;
.source "AirButtonGlobalMenuView.java"


# static fields
.field private static mDescriptionSize:I

.field private static mDescriptionSmallSize:I

.field private static sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

.field private static sCenterImage:Landroid/widget/ImageView;

.field private static sCenterShadowImage:Landroid/widget/ImageView;

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

    .line 41
    sput-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    .line 42
    sput-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    .line 43
    sput-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    .line 44
    sput-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    .line 45
    sput-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    .line 46
    sput-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    .line 47
    sput v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mDescriptionSize:I

    .line 48
    sput v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mDescriptionSmallSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;
    .param p3, "attrs"    # Lcom/samsung/android/airbutton/Attributes;
    .param p4, "isSpenDetached"    # Z

    .prologue
    const/4 v6, -0x2

    const/16 v3, 0xc8

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;-><init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;)V

    .line 49
    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    .line 50
    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    .line 51
    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    .line 52
    iput-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 53
    iput-boolean v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsTalkbackEnabled:Z

    .line 60
    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->START_DELAY:I

    .line 61
    const/16 v2, 0x32

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->MENU_ICON_INTERVAL:I

    .line 62
    const/16 v2, 0x78

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->MENU_ICON_DURATION:I

    .line 63
    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->CENTER_IMAGE_DURATION:I

    .line 64
    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->FOCUS_DURATION:I

    .line 65
    const/16 v2, 0x96

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->DESCRIPTION_DURATION:I

    .line 66
    iput-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    .line 67
    iput-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    .line 68
    iput-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    .line 69
    iput-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    .line 70
    iput-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideDescriptionAnimation:Landroid/animation/ObjectAnimator;

    .line 71
    iput-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    .line 80
    iput-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 82
    if-eqz p4, :cond_2

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "do_not_show_guidepopup_gac"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    .line 83
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    if-nez v2, :cond_1

    .line 84
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 85
    .local v0, "mInflater":Landroid/view/LayoutInflater;
    if-eqz v0, :cond_0

    .line 86
    const v2, 0x109005c

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    .line 87
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 88
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 89
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 91
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .end local v0    # "mInflater":Landroid/view/LayoutInflater;
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "do_not_show_guidepopup_gac"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->createViews()V

    .line 97
    return-void
.end method

.method private adjustCenterPosition()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 199
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 200
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x105009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    .line 201
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    int-to-float v1, v1

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    .line 202
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    int-to-float v1, v1

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    .line 204
    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    sub-float/2addr v1, v2

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    .line 205
    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    .line 209
    :cond_0
    :goto_0
    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    sub-float/2addr v1, v2

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    .line 210
    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    .line 213
    :cond_1
    :goto_1
    return-void

    .line 206
    :cond_2
    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->windowWidth:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->windowWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    goto :goto_0

    .line 211
    :cond_3
    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 212
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    goto :goto_1
.end method

.method private checkTalkbackEnable()Z
    .locals 4

    .prologue
    .line 642
    const/4 v1, 0x0

    .line 643
    .local v1, "talkbackEnabled":Z
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, "accesibilityService":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 646
    const-string v2, "(?i).*talkback.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    .line 649
    :cond_0
    return v1
.end method

.method private createViews()V
    .locals 12

    .prologue
    const/16 v11, 0xf5

    const/4 v10, 0x6

    const/4 v9, 0x1

    const/4 v8, 0x5

    const/4 v7, 0x0

    .line 100
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 101
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 103
    :cond_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 106
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->checkTalkbackEnable()Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsTalkbackEnabled:Z

    .line 109
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    if-nez v4, :cond_1

    .line 110
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    .line 111
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    const v5, 0x10800da

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    :cond_1
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 117
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    if-nez v4, :cond_2

    .line 118
    new-instance v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    .line 119
    :cond_2
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-boolean v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsTalkbackEnabled:Z

    if-eqz v4, :cond_3

    .line 121
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    invoke-virtual {v4, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 122
    :cond_3
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 125
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    if-nez v4, :cond_4

    .line 126
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    .line 127
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    const v5, 0x10800db

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    :cond_4
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 133
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    if-nez v4, :cond_6

    .line 134
    new-array v4, v8, [Landroid/widget/ImageView;

    sput-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    .line 135
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    if-ge v0, v8, :cond_5

    .line 136
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v0

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_5
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v4, v4, v7

    const v5, 0x10800e4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v4, v4, v9

    const v5, 0x10800e2

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const v5, 0x10800dc

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const v5, 0x10800de

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const v5, 0x10800e0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 146
    .end local v0    # "idx":I
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "idx":I
    :goto_1
    if-ge v0, v8, :cond_7

    .line 147
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 152
    :cond_7
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    if-nez v4, :cond_8

    .line 153
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    .line 154
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    const v5, 0x10800d9

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    :cond_8
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 160
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    if-nez v4, :cond_9

    .line 161
    new-array v4, v10, [Landroid/widget/TextView;

    sput-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    .line 162
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 163
    .local v3, "r":Landroid/content/res/Resources;
    const v4, 0x105009f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sput v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mDescriptionSize:I

    .line 164
    const v4, 0x10500a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sput v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mDescriptionSmallSize:I

    .line 166
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v10, :cond_9

    .line 167
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v0

    .line 168
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    const/16 v5, 0xff

    invoke-static {v5, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 174
    .end local v3    # "r":Landroid/content/res/Resources;
    :cond_9
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v7

    const v5, 0x1040a7a

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 175
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v9

    const v5, 0x1040a7b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 176
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const v5, 0x1040a7c

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 177
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const v5, 0x1040a7d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 179
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const v5, 0x1040a7f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 180
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v8

    const v5, 0x1040a81

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 182
    const-string/jumbo v4, "sans-serif-light"

    invoke-static {v4, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 183
    .local v1, "light":Landroid/graphics/Typeface;
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v10, :cond_a

    .line 184
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mDescriptionSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 185
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v1, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 186
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 190
    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->adjustCenterPosition()V

    .line 191
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->setAllViewDelta()V

    .line 193
    iget-boolean v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsTalkbackEnabled:Z

    if-eqz v4, :cond_b

    .line 194
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 196
    :cond_b
    return-void
.end method

.method private getAngle(DD)D
    .locals 8
    .param p1, "pointX"    # D
    .param p3, "pointY"    # D

    .prologue
    const-wide/16 v6, 0x0

    .line 631
    div-double v2, p3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    const-wide v4, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v0, v2, v4

    .line 633
    .local v0, "angle":D
    cmpg-double v2, p1, v6

    if-gez v2, :cond_1

    .line 634
    const-wide v2, 0x4066800000000000L    # 180.0

    add-double/2addr v0, v2

    .line 638
    :cond_0
    :goto_0
    return-wide v0

    .line 635
    :cond_1
    cmpg-double v2, p3, v6

    if-gez v2, :cond_0

    .line 636
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

    .line 627
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
    .line 603
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    sub-float v0, v4, v5

    .line 604
    .local v0, "adjustedX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    sub-float v1, v4, v5

    .line 606
    .local v1, "adjustedY":F
    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    float-to-double v4, v4

    float-to-double v6, v0

    float-to-double v8, v1

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->getDistanceFromCenter(DD)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_5

    .line 607
    float-to-double v4, v0

    float-to-double v6, v1

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->getAngle(DD)D

    move-result-wide v2

    .line 609
    .local v2, "angle":D
    const-wide/16 v4, 0x0

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_0

    const-wide v4, 0x4044266666666666L    # 40.3

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_0

    .line 610
    const/4 v4, 0x4

    .line 623
    .end local v2    # "angle":D
    :goto_0
    return v4

    .line 611
    .restart local v2    # "angle":D
    :cond_0
    const-wide v4, 0x4075cccccccccccdL    # 348.8

    cmpg-double v4, v4, v2

    if-gez v4, :cond_1

    const-wide v4, 0x4076800000000000L    # 360.0

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_1

    .line 612
    const/4 v4, 0x4

    goto :goto_0

    .line 613
    :cond_1
    const-wide v4, 0x406629999999999aL    # 177.3

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_2

    const-wide v4, 0x406b89999999999aL    # 220.3

    cmpg-double v4, v2, v4

    if-gez v4, :cond_2

    .line 614
    const/4 v4, 0x0

    goto :goto_0

    .line 615
    :cond_2
    const-wide v4, 0x406b89999999999aL    # 220.3

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_3

    const-wide v4, 0x40707ccccccccccdL    # 263.8

    cmpg-double v4, v2, v4

    if-gez v4, :cond_3

    .line 616
    const/4 v4, 0x1

    goto :goto_0

    .line 617
    :cond_3
    const-wide v4, 0x40707ccccccccccdL    # 263.8

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_4

    const-wide v4, 0x4073200000000000L    # 306.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_4

    .line 618
    const/4 v4, 0x2

    goto :goto_0

    .line 619
    :cond_4
    const-wide v4, 0x4073200000000000L    # 306.0

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_5

    const-wide v4, 0x4075cccccccccccdL    # 348.8

    cmpg-double v4, v2, v4

    if-gez v4, :cond_5

    .line 620
    const/4 v4, 0x3

    goto :goto_0

    .line 623
    .end local v2    # "angle":D
    :cond_5
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private playFocusAnimation(II)V
    .locals 6
    .param p1, "previousIdx"    # I
    .param p2, "currentIdx"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 374
    const v0, -0x3fd33333    # -2.7f

    .line 376
    .local v0, "baseAngle":F
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 377
    const v0, 0x42213333    # 40.3f

    .line 385
    :cond_0
    :goto_0
    if-ne p1, v5, :cond_4

    .line 386
    sget-object v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setRotation(F)V

    .line 387
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playShowFocusAnimation()V

    .line 389
    sget-object v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v1, v1, v4

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 390
    invoke-direct {p0, p2, v3}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playShowDescriptionAnimation(IZ)V

    .line 405
    :goto_1
    return-void

    .line 378
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 379
    const v0, 0x42a7999a    # 83.8f

    goto :goto_0

    .line 380
    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    .line 381
    const/high16 v0, 0x42fc0000    # 126.0f

    goto :goto_0

    .line 382
    :cond_3
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 383
    const v0, 0x4328cccd    # 168.8f

    goto :goto_0

    .line 391
    :cond_4
    if-ne p2, v5, :cond_6

    .line 392
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playHideFocusAnimation()V

    .line 394
    if-ltz p1, :cond_5

    if-ge p1, v4, :cond_5

    .line 395
    sget-object v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 396
    :cond_5
    invoke-direct {p0, p2, v3}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playShowDescriptionAnimation(IZ)V

    goto :goto_1

    .line 399
    :cond_6
    invoke-direct {p0, v0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playMoveFocusAnimation(F)V

    .line 401
    if-ltz p1, :cond_7

    if-ge p1, v4, :cond_7

    .line 402
    sget-object v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 403
    :cond_7
    invoke-direct {p0, p2, v3}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playShowDescriptionAnimation(IZ)V

    goto :goto_1
.end method

.method private playHideDescriptionAnimation(I)V
    .locals 8
    .param p1, "viewIdx"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x5

    .line 454
    if-lt p1, v1, :cond_0

    if-gt v4, p1, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 458
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 460
    :cond_2
    if-ne p1, v1, :cond_3

    .line 461
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    aput v3, v2, v6

    aput v5, v2, v7

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideDescriptionAnimation:Landroid/animation/ObjectAnimator;

    .line 464
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideDescriptionAnimation:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->DESCRIPTION_DURATION:I

    div-int/lit8 v1, v1, 0x2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 465
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideDescriptionAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 463
    :cond_3
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    aput v3, v2, v6

    aput v5, v2, v7

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideDescriptionAnimation:Landroid/animation/ObjectAnimator;

    goto :goto_1
.end method

.method private playHideFocusAnimation()V
    .locals 5

    .prologue
    .line 417
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 420
    :cond_0
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    .line 421
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->FOCUS_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 422
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 423
    return-void
.end method

.method private playMoveFocusAnimation(F)V
    .locals 5
    .param p1, "targetAngle"    # F

    .prologue
    .line 426
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 429
    :cond_0
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    const-string/jumbo v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getRotation()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    .line 430
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->FOCUS_DURATION:I

    add-int/lit8 v1, v1, -0x32

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 431
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 432
    return-void
.end method

.method private playShowDescriptionAnimation(IZ)V
    .locals 4
    .param p1, "viewIdx"    # I
    .param p2, "isStartGAC"    # Z

    .prologue
    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, -0x1

    .line 435
    if-lt p1, v3, :cond_0

    if-gt v1, p1, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 439
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 441
    :cond_2
    if-ne p1, v3, :cond_4

    .line 442
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    const-string v1, "alpha"

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    .line 446
    :goto_1
    if-ne p1, v3, :cond_3

    if-eqz p2, :cond_3

    .line 447
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->START_DELAY:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 449
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->DESCRIPTION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 450
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 444
    :cond_4
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    const-string v1, "alpha"

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    goto :goto_1

    .line 442
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 444
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private playShowFocusAnimation()V
    .locals 5

    .prologue
    .line 408
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 411
    :cond_0
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    .line 412
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->FOCUS_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 413
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 414
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

    .line 216
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 218
    .local v6, "r":Landroid/content/res/Resources;
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    iget v9, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setX(F)V

    .line 219
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    iget v9, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setY(F)V

    .line 221
    const v7, 0x1050099

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 222
    .local v4, "focusedImageWidht":I
    const v7, 0x105009a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 223
    .local v3, "focusedImageHeight":I
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/view/View;->setAlpha(F)V

    .line 224
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    int-to-float v9, v4

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setX(F)V

    .line 225
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    int-to-float v9, v3

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setY(F)V

    .line 226
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    int-to-float v8, v4

    invoke-virtual {v7, v8}, Landroid/view/View;->setPivotX(F)V

    .line 227
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    int-to-float v8, v3

    invoke-virtual {v7, v8}, Landroid/view/View;->setPivotY(F)V

    .line 229
    const/4 v5, 0x0

    .local v5, "idx":I
    :goto_0
    const/4 v7, 0x5

    if-ge v5, v7, :cond_0

    .line 230
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v7, v7, v5

    invoke-virtual {v7, v11}, Landroid/view/View;->setAlpha(F)V

    .line 229
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 232
    :cond_0
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v7, v7, v12

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

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

    .line 234
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v7, v7, v12

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

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

    .line 236
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v7, v7, v13

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    const v9, 0x1050091

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    const v9, 0x105008b

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setX(F)V

    .line 238
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v7, v7, v13

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

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

    .line 240
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v7, v7, v14

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    const v9, 0x1050093

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setX(F)V

    .line 241
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v7, v7, v14

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

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

    .line 243
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    const v9, 0x1050095

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setX(F)V

    .line 244
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    const v9, 0x1050096

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    const v9, 0x105008e

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setY(F)V

    .line 246
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v8, 0x4

    aget-object v7, v7, v8

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    const v9, 0x1050097

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setX(F)V

    .line 247
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v8, 0x4

    aget-object v7, v7, v8

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    const v9, 0x1050098

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setY(F)V

    .line 249
    const v7, 0x105009c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 250
    .local v0, "centerImageSize":I
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/view/View;->setAlpha(F)V

    .line 251
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    int-to-float v9, v0

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setX(F)V

    .line 252
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    int-to-float v9, v0

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setY(F)V

    .line 253
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    int-to-float v8, v0

    div-float/2addr v8, v10

    invoke-virtual {v7, v8}, Landroid/view/View;->setPivotX(F)V

    .line 254
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    int-to-float v8, v0

    div-float/2addr v8, v10

    invoke-virtual {v7, v8}, Landroid/view/View;->setPivotY(F)V

    .line 256
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/view/View;->setAlpha(F)V

    .line 257
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    int-to-float v9, v0

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setX(F)V

    .line 258
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    int-to-float v9, v0

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setY(F)V

    .line 259
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    int-to-float v8, v0

    div-float/2addr v8, v10

    invoke-virtual {v7, v8}, Landroid/view/View;->setPivotX(F)V

    .line 260
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    int-to-float v8, v0

    div-float/2addr v8, v10

    invoke-virtual {v7, v8}, Landroid/view/View;->setPivotY(F)V

    .line 262
    const v7, 0x105009d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 263
    .local v2, "descriptionWidth":I
    const v7, 0x105009e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 264
    .local v1, "descriptionHeight":I
    const/4 v5, 0x0

    :goto_1
    const/4 v7, 0x6

    if-ge v5, v7, :cond_1

    .line 265
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v7, v7, v5

    invoke-virtual {v7, v11}, Landroid/view/View;->setAlpha(F)V

    .line 266
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v7, v7, v5

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setWidth(I)V

    .line 267
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v7, v7, v5

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 268
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v7, v7, v5

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    int-to-float v9, v2

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setX(F)V

    .line 269
    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v7, v7, v5

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    int-to-float v9, v1

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setY(F)V

    .line 264
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 271
    :cond_1
    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, -0x1

    .line 494
    const/4 v2, 0x0

    .line 496
    .local v2, "descriptionText":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsHoverEventEnabled:Z

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    .line 497
    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->getItemIndex(Landroid/view/MotionEvent;)I

    move-result v1

    .line 499
    .local v1, "currentViewIdx":I
    iget v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    if-eq v1, v3, :cond_0

    .line 500
    iget v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playFocusAnimation(II)V

    .line 502
    iget-boolean v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsTalkbackEnabled:Z

    if-eqz v3, :cond_0

    .line 503
    const/16 v3, 0x80

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 504
    .local v0, "TalkbackEvent":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 505
    invoke-virtual {p0}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 507
    packed-switch v1, :pswitch_data_0

    .line 527
    const/4 v2, 0x0

    .line 530
    :goto_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v3, :cond_0

    .line 533
    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 537
    .end local v0    # "TalkbackEvent":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    iput v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    .line 546
    .end local v1    # "currentViewIdx":I
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 509
    .restart local v0    # "TalkbackEvent":Landroid/view/accessibility/AccessibilityEvent;
    .restart local v1    # "currentViewIdx":I
    :pswitch_0
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x1040a7a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 510
    goto :goto_0

    .line 512
    :pswitch_1
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x1040a7b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 513
    goto :goto_0

    .line 515
    :pswitch_2
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x1040a7c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 516
    goto :goto_0

    .line 518
    :pswitch_3
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x1040a7d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 519
    goto :goto_0

    .line 521
    :pswitch_4
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x1040a7f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 522
    goto :goto_0

    .line 524
    :pswitch_5
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x1040a81

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 525
    goto/16 :goto_0

    .line 539
    .end local v0    # "TalkbackEvent":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "currentViewIdx":I
    :cond_2
    iget-boolean v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsHoverEventEnabled:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 540
    iget v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    if-eq v3, v5, :cond_1

    .line 541
    iget v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    invoke-direct {p0, v3, v5}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playFocusAnimation(II)V

    .line 542
    iput v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    goto/16 :goto_1

    .line 507
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected generateAndPlayFinishAnimation()V
    .locals 14

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->playCloseSound()V

    .line 320
    const/4 v8, 0x4

    .local v8, "idx":I
    :goto_0
    if-ltz v8, :cond_0

    .line 321
    sget-object v11, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v11, v11, v8

    const-string v12, "alpha"

    const/4 v13, 0x2

    new-array v13, v13, [F

    fill-array-data v13, :array_0

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 322
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    rsub-int/lit8 v11, v8, 0x4

    iget v12, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->MENU_ICON_INTERVAL:I

    mul-int/2addr v11, v12

    int-to-long v11, v11

    invoke-virtual {v0, v11, v12}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 323
    iget v11, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->MENU_ICON_DURATION:I

    int-to-long v11, v11

    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 324
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 320
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 327
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :cond_0
    sget-object v11, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    const-string/jumbo v12, "scaleX"

    const/4 v13, 0x2

    new-array v13, v13, [F

    fill-array-data v13, :array_1

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 328
    .local v6, "centerShadowScaleX":Landroid/animation/ObjectAnimator;
    sget-object v11, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    const-string/jumbo v12, "scaleY"

    const/4 v13, 0x2

    new-array v13, v13, [F

    fill-array-data v13, :array_2

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 329
    .local v7, "centerShadowScaleY":Landroid/animation/ObjectAnimator;
    sget-object v11, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    const-string v12, "alpha"

    const/4 v13, 0x2

    new-array v13, v13, [F

    fill-array-data v13, :array_3

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 331
    .local v5, "centerShadowAlpha":Landroid/animation/ObjectAnimator;
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 332
    .local v9, "shadowanimators":Landroid/animation/AnimatorSet;
    const/4 v11, 0x3

    new-array v11, v11, [Landroid/animation/Animator;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    const/4 v12, 0x1

    aput-object v7, v11, v12

    const/4 v12, 0x2

    aput-object v5, v11, v12

    invoke-virtual {v9, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 333
    iget v11, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->CENTER_IMAGE_DURATION:I

    int-to-long v11, v11

    invoke-virtual {v9, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 334
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 336
    sget-object v11, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    const-string/jumbo v12, "scaleX"

    const/4 v13, 0x2

    new-array v13, v13, [F

    fill-array-data v13, :array_4

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 337
    .local v3, "centerScaleX":Landroid/animation/ObjectAnimator;
    sget-object v11, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    const-string/jumbo v12, "scaleY"

    const/4 v13, 0x2

    new-array v13, v13, [F

    fill-array-data v13, :array_5

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 338
    .local v4, "centerScaleY":Landroid/animation/ObjectAnimator;
    sget-object v11, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    const-string v12, "alpha"

    const/4 v13, 0x2

    new-array v13, v13, [F

    fill-array-data v13, :array_6

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 340
    .local v2, "centerAlpha":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 341
    .local v1, "animators":Landroid/animation/AnimatorSet;
    const/4 v11, 0x3

    new-array v11, v11, [Landroid/animation/Animator;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    const/4 v12, 0x1

    aput-object v4, v11, v12

    const/4 v12, 0x2

    aput-object v2, v11, v12

    invoke-virtual {v1, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 342
    iget v11, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->CENTER_IMAGE_DURATION:I

    int-to-long v11, v11

    invoke-virtual {v1, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 343
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 345
    sget-object v11, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    iget v12, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->START_DELAY:I

    div-int/lit8 v12, v12, 0x2

    iget-object v13, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mFinishAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->startCloseAnimation(ILandroid/animation/Animator$AnimatorListener;)V

    .line 347
    iget v11, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSelectedViewIdx:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    iget v11, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    .line 348
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playHideFocusAnimation()V

    .line 350
    :cond_2
    iget v10, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    .line 351
    .local v10, "viewIdx":I
    iget v11, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSelectedViewIdx:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_3

    .line 352
    iget v10, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSelectedViewIdx:I

    .line 354
    :cond_3
    invoke-direct {p0, v10}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playHideDescriptionAnimation(I)V

    .line 356
    iget-object v11, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    if-eqz v11, :cond_4

    .line 357
    iget-object v11, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 358
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    .line 361
    :cond_4
    return-void

    .line 321
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 327
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 328
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 329
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 336
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 337
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 338
    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected generateAndPlayStartAnimation()V
    .locals 13

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->playOpenSound()V

    .line 282
    sget-object v10, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->startOpenAnimation(I)V

    .line 284
    sget-object v10, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    const-string/jumbo v11, "scaleX"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_0

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 285
    .local v6, "centerShadowScaleX":Landroid/animation/ObjectAnimator;
    sget-object v10, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    const-string/jumbo v11, "scaleY"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_1

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 286
    .local v7, "centerShadowScaleY":Landroid/animation/ObjectAnimator;
    sget-object v10, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    const-string v11, "alpha"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_2

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 288
    .local v5, "centerShadowAlpha":Landroid/animation/ObjectAnimator;
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 289
    .local v9, "shadowanimators":Landroid/animation/AnimatorSet;
    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v11, 0x1

    aput-object v7, v10, v11

    const/4 v11, 0x2

    aput-object v5, v10, v11

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 290
    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->START_DELAY:I

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 291
    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->CENTER_IMAGE_DURATION:I

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 292
    iget-object v10, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mStartAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v9, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 293
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 295
    sget-object v10, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    const-string/jumbo v11, "scaleX"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_3

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 296
    .local v3, "centerScaleX":Landroid/animation/ObjectAnimator;
    sget-object v10, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    const-string/jumbo v11, "scaleY"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_4

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 297
    .local v4, "centerScaleY":Landroid/animation/ObjectAnimator;
    sget-object v10, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    const-string v11, "alpha"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_5

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 299
    .local v2, "centerAlpha":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 300
    .local v1, "animators":Landroid/animation/AnimatorSet;
    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    const/4 v11, 0x2

    aput-object v2, v10, v11

    invoke-virtual {v1, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 301
    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->START_DELAY:I

    int-to-long v10, v10

    invoke-virtual {v1, v10, v11}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 302
    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->CENTER_IMAGE_DURATION:I

    int-to-long v10, v10

    invoke-virtual {v1, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 303
    iget-object v10, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mStartAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 304
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 306
    const/4 v8, 0x0

    .local v8, "idx":I
    :goto_0
    const/4 v10, 0x5

    if-ge v8, v10, :cond_0

    .line 307
    sget-object v10, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v10, v10, v8

    const-string v11, "alpha"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_6

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 308
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->START_DELAY:I

    iget v11, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->MENU_ICON_INTERVAL:I

    mul-int/2addr v11, v8

    add-int/2addr v10, v11

    int-to-long v10, v10

    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 309
    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->MENU_ICON_DURATION:I

    int-to-long v10, v10

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 310
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 306
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 313
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :cond_0
    const/4 v10, -0x1

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playShowDescriptionAnimation(IZ)V

    .line 314
    return-void

    .line 284
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 285
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 286
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 295
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 296
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 297
    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 307
    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected initAllViewDelta()V
    .locals 0

    .prologue
    .line 557
    return-void
.end method

.method protected onLayoutChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 566
    iget-boolean v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsStartUp:Z

    if-eqz v4, :cond_5

    .line 567
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    .line 568
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, v4, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v1, v4

    .line 569
    .local v1, "helpPopupY":F
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 570
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 571
    .local v3, "r":Landroid/content/res/Resources;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 572
    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    .line 578
    .end local v3    # "r":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/view/View;->setY(F)V

    .line 581
    .end local v1    # "helpPopupY":F
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->generateAndPlayStartAnimation()V

    .line 583
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_1
    const/4 v4, 0x6

    if-ge v2, v4, :cond_4

    .line 584
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_2

    .line 585
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v2

    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mDescriptionSmallSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 583
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 573
    .end local v2    # "idx":I
    .restart local v1    # "helpPopupY":F
    .restart local v3    # "r":Landroid/content/res/Resources;
    :cond_3
    if-eqz v3, :cond_0

    .line 574
    const v4, 0x10500a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 575
    .local v0, "bottomMargin":I
    int-to-float v4, v0

    sub-float/2addr v1, v4

    goto :goto_0

    .line 587
    .end local v0    # "bottomMargin":I
    .end local v1    # "helpPopupY":F
    .end local v3    # "r":Landroid/content/res/Resources;
    .restart local v2    # "idx":I
    :cond_4
    iput-boolean v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsStartUp:Z

    .line 589
    .end local v2    # "idx":I
    :cond_5
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 562
    return-void
.end method

.method protected onTouchDown(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 475
    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->getItemIndex(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 476
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->onFinishing()V

    .line 481
    :goto_0
    return-void

    .line 480
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->onTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method protected onTouchUp(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsReservedToFinish:Z

    if-eqz v0, :cond_0

    .line 486
    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->getItemIndex(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSelectedViewIdx:I

    .line 489
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->onTouchUp(Landroid/view/MotionEvent;)V

    .line 490
    return-void
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 594
    const/4 v0, 0x1

    return v0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .param p1, "eventType"    # I

    .prologue
    .line 600
    return-void
.end method

.method protected showHoverEnterAnimation(I)V
    .locals 0
    .param p1, "viewIdx"    # I

    .prologue
    .line 366
    return-void
.end method

.method protected showHoverExitAnimation(I)V
    .locals 0
    .param p1, "viewIdx"    # I

    .prologue
    .line 371
    return-void
.end method
