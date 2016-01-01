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

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    sput-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    sput-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    sput-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    sput-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    sput-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    sput v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mDescriptionSize:I

    sput v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mDescriptionSmallSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;Z)V
    .locals 7

    const/4 v6, -0x2

    const/16 v3, 0xc8

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;-><init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;)V

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    iput-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iput-boolean v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsTalkbackEnabled:Z

    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->START_DELAY:I

    const/16 v2, 0x32

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->MENU_ICON_INTERVAL:I

    const/16 v2, 0x78

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->MENU_ICON_DURATION:I

    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->CENTER_IMAGE_DURATION:I

    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->FOCUS_DURATION:I

    const/16 v2, 0x96

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->DESCRIPTION_DURATION:I

    iput-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    iput-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    iput-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    iput-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    iput-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideDescriptionAnimation:Landroid/animation/ObjectAnimator;

    iput-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    if-eqz p4, :cond_2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "do_not_show_guidepopup_gac"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    if-nez v2, :cond_1

    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    if-eqz v0, :cond_0

    const v2, 0x109005c

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "do_not_show_guidepopup_gac"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->createViews()V

    return-void
.end method

.method private adjustCenterPosition()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    int-to-float v1, v1

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    int-to-float v1, v1

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    sub-float/2addr v1, v2

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    :cond_0
    :goto_0
    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    sub-float/2addr v1, v2

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->windowWidth:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->windowWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    goto :goto_1
.end method

.method private checkTalkbackEnable()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "(?i).*talkback.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method private createViews()V
    .locals 12

    const/16 v11, 0xf5

    const/4 v10, 0x6

    const/4 v9, 0x1

    const/4 v8, 0x5

    const/4 v7, 0x0

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    invoke-virtual {v4}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    invoke-virtual {v4}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->checkTalkbackEnable()Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsTalkbackEnabled:Z

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    if-nez v4, :cond_1

    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    const v5, 0x10800da

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->addView(Landroid/view/View;)V

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    if-nez v4, :cond_2

    new-instance v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    :cond_2
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    invoke-virtual {v4, v2}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsTalkbackEnabled:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    invoke-virtual {v4, v9}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->setFocusable(Z)V

    :cond_3
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    invoke-virtual {p0, v4}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->addView(Landroid/view/View;)V

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    if-nez v4, :cond_4

    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    const v5, 0x10800db

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->addView(Landroid/view/View;)V

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    if-nez v4, :cond_6

    new-array v4, v8, [Landroid/widget/ImageView;

    sput-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_5

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v4, v4, v7

    const v5, 0x10800e4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v4, v4, v9

    const v5, 0x10800e2

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const v5, 0x10800dc

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const v5, 0x10800de

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const v5, 0x10800e0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_6
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v8, :cond_7

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    invoke-virtual {p0, v4}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    if-nez v4, :cond_8

    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    const v5, 0x10800d9

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_8
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->addView(Landroid/view/View;)V

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    if-nez v4, :cond_9

    new-array v4, v10, [Landroid/widget/TextView;

    sput-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105009f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sput v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mDescriptionSize:I

    const v4, 0x10500a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sput v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mDescriptionSmallSize:I

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v10, :cond_9

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v0

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    const/16 v5, 0xff

    invoke-static {v5, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v7

    const v5, 0x1040a7a

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v9

    const v5, 0x1040a7b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const v5, 0x1040a7c

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const v5, 0x1040a7d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const v5, 0x1040a7f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v8

    const v5, 0x1040a81

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    const-string/jumbo v4, "sans-serif-light"

    invoke-static {v4, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v10, :cond_a

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mDescriptionSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v1, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {p0, v4}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->adjustCenterPosition()V

    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->setAllViewDelta()V

    iget-boolean v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsTalkbackEnabled:Z

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    :cond_b
    return-void
.end method

.method private getAngle(DD)D
    .locals 8

    const-wide/16 v6, 0x0

    div-double v2, p3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    const-wide v4, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v0, v2, v4

    cmpg-double v2, p1, v6

    if-gez v2, :cond_1

    const-wide v2, 0x4066800000000000L    # 180.0

    add-double/2addr v0, v2

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    cmpg-double v2, p3, v6

    if-gez v2, :cond_0

    const-wide v2, 0x4076800000000000L    # 360.0

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method private getDistanceFromCenter(DD)D
    .locals 9

    const-wide/16 v1, 0x0

    move-object v0, p0

    move-wide v3, v1

    move-wide v5, p1

    move-wide v7, p3

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->getDistance(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private getItemIndex(Landroid/view/MotionEvent;)I
    .locals 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    sub-float v0, v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    sub-float v1, v4, v5

    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    float-to-double v4, v4

    float-to-double v6, v0

    float-to-double v8, v1

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->getDistanceFromCenter(DD)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_5

    float-to-double v4, v0

    float-to-double v6, v1

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->getAngle(DD)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_0

    const-wide v4, 0x4044266666666666L    # 40.3

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_0

    const/4 v4, 0x4

    :goto_0
    return v4

    :cond_0
    const-wide v4, 0x4075cccccccccccdL    # 348.8

    cmpg-double v4, v4, v2

    if-gez v4, :cond_1

    const-wide v4, 0x4076800000000000L    # 360.0

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const-wide v4, 0x406629999999999aL    # 177.3

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_2

    const-wide v4, 0x406b89999999999aL    # 220.3

    cmpg-double v4, v2, v4

    if-gez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const-wide v4, 0x406b89999999999aL    # 220.3

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_3

    const-wide v4, 0x40707ccccccccccdL    # 263.8

    cmpg-double v4, v2, v4

    if-gez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const-wide v4, 0x40707ccccccccccdL    # 263.8

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_4

    const-wide v4, 0x4073200000000000L    # 306.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_4

    const/4 v4, 0x2

    goto :goto_0

    :cond_4
    const-wide v4, 0x4073200000000000L    # 306.0

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_5

    const-wide v4, 0x4075cccccccccccdL    # 348.8

    cmpg-double v4, v2, v4

    if-gez v4, :cond_5

    const/4 v4, 0x3

    goto :goto_0

    :cond_5
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private playFocusAnimation(II)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x0

    const v0, -0x3fd33333    # -2.7f

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    const v0, 0x42213333    # 40.3f

    :cond_0
    :goto_0
    if-ne p1, v5, :cond_4

    sget-object v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playShowFocusAnimation()V

    sget-object v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v1, v1, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-direct {p0, p2, v3}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playShowDescriptionAnimation(IZ)V

    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    const v0, 0x42a7999a    # 83.8f

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    const/high16 v0, 0x42fc0000    # 126.0f

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    const v0, 0x4328cccd    # 168.8f

    goto :goto_0

    :cond_4
    if-ne p2, v5, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playHideFocusAnimation()V

    if-ltz p1, :cond_5

    if-ge p1, v4, :cond_5

    sget-object v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_5
    invoke-direct {p0, p2, v3}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playShowDescriptionAnimation(IZ)V

    goto :goto_1

    :cond_6
    invoke-direct {p0, v0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playMoveFocusAnimation(F)V

    if-ltz p1, :cond_7

    if-ge p1, v4, :cond_7

    sget-object v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_7
    invoke-direct {p0, p2, v3}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playShowDescriptionAnimation(IZ)V

    goto :goto_1
.end method

.method private playHideDescriptionAnimation(I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x5

    if-lt p1, v1, :cond_0

    if-gt v4, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_2
    if-ne p1, v1, :cond_3

    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getAlpha()F

    move-result v3

    aput v3, v2, v6

    aput v5, v2, v7

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideDescriptionAnimation:Landroid/animation/ObjectAnimator;

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideDescriptionAnimation:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->DESCRIPTION_DURATION:I

    div-int/lit8 v1, v1, 0x2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideDescriptionAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/widget/TextView;->getAlpha()F

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

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getAlpha()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->FOCUS_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private playMoveFocusAnimation(F)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    const-string/jumbo v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getRotation()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->FOCUS_DURATION:I

    add-int/lit8 v1, v1, -0x32

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private playShowDescriptionAnimation(IZ)V
    .locals 4

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-lt p1, v3, :cond_0

    if-gt v1, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_2
    if-ne p1, v3, :cond_4

    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    const-string v1, "alpha"

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    :goto_1
    if-ne p1, v3, :cond_3

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->START_DELAY:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->DESCRIPTION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

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

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private playShowFocusAnimation()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getAlpha()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->FOCUS_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private setAllViewDelta()V
    .locals 15

    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    iget v9, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->setX(F)V

    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    iget v9, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->setY(F)V

    const v7, 0x1050099

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v7, 0x105009a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    int-to-float v9, v4

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setX(F)V

    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    int-to-float v9, v3

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setY(F)V

    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    int-to-float v8, v4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setPivotX(F)V

    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    int-to-float v8, v3

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setPivotY(F)V

    const/4 v5, 0x0

    :goto_0
    const/4 v7, 0x5

    if-ge v5, v7, :cond_0

    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v7, v7, v5

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

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

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setX(F)V

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

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setY(F)V

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

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setX(F)V

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

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setY(F)V

    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v7, v7, v14

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    const v9, 0x1050093

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setX(F)V

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

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setY(F)V

    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    const v9, 0x1050095

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setX(F)V

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

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setY(F)V

    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v8, 0x4

    aget-object v7, v7, v8

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    const v9, 0x1050097

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setX(F)V

    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v8, 0x4

    aget-object v7, v7, v8

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    const v9, 0x1050098

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setY(F)V

    const v7, 0x105009c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    int-to-float v9, v0

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setX(F)V

    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    int-to-float v9, v0

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setY(F)V

    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    int-to-float v8, v0

    div-float/2addr v8, v10

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setPivotX(F)V

    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    int-to-float v8, v0

    div-float/2addr v8, v10

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setPivotY(F)V

    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    int-to-float v9, v0

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setX(F)V

    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    int-to-float v9, v0

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setY(F)V

    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    int-to-float v8, v0

    div-float/2addr v8, v10

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setPivotX(F)V

    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    int-to-float v8, v0

    div-float/2addr v8, v10

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setPivotY(F)V

    const v7, 0x105009d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v7, 0x105009e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v5, 0x0

    :goto_1
    const/4 v7, 0x6

    if-ge v5, v7, :cond_1

    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v7, v7, v5

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setAlpha(F)V

    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v7, v7, v5

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setWidth(I)V

    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v7, v7, v5

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setHeight(I)V

    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v7, v7, v5

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    int-to-float v9, v2

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setX(F)V

    sget-object v7, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v7, v7, v5

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    int-to-float v9, v1

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setY(F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, -0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsHoverEventEnabled:Z

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->getItemIndex(Landroid/view/MotionEvent;)I

    move-result v1

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mFocusedViewIdx:I

    if-eq v1, v3, :cond_0

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mFocusedViewIdx:I

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playFocusAnimation(II)V

    iget-boolean v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsTalkbackEnabled:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x80

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->requestAccessibilityFocus()Z

    packed-switch v1, :pswitch_data_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mFocusedViewIdx:I

    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    const v4, 0x1040a7a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    const v4, 0x1040a7b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    const v4, 0x1040a7c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    const v4, 0x1040a7d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_4
    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    const v4, 0x1040a7f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_5
    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    const v4, 0x1040a81

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_2
    iget-boolean v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsHoverEventEnabled:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mFocusedViewIdx:I

    if-eq v3, v5, :cond_1

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mFocusedViewIdx:I

    invoke-direct {p0, v3, v5}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playFocusAnimation(II)V

    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mFocusedViewIdx:I

    goto/16 :goto_1

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

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playCloseSound()V

    const/4 v8, 0x4

    :goto_0
    if-ltz v8, :cond_0

    sget-object v11, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v11, v11, v8

    const-string v12, "alpha"

    const/4 v13, 0x2

    new-array v13, v13, [F

    fill-array-data v13, :array_0

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    rsub-int/lit8 v11, v8, 0x4

    iget v12, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->MENU_ICON_INTERVAL:I

    mul-int/2addr v11, v12

    int-to-long v11, v11

    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget v11, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->MENU_ICON_DURATION:I

    int-to-long v11, v11

    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_0
    sget-object v11, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    const-string/jumbo v12, "scaleX"

    const/4 v13, 0x2

    new-array v13, v13, [F

    fill-array-data v13, :array_1

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    sget-object v11, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    const-string/jumbo v12, "scaleY"

    const/4 v13, 0x2

    new-array v13, v13, [F

    fill-array-data v13, :array_2

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    sget-object v11, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    const-string v12, "alpha"

    const/4 v13, 0x2

    new-array v13, v13, [F

    fill-array-data v13, :array_3

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v11, 0x3

    new-array v11, v11, [Landroid/animation/Animator;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    const/4 v12, 0x1

    aput-object v7, v11, v12

    const/4 v12, 0x2

    aput-object v5, v11, v12

    invoke-virtual {v9, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget v11, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->CENTER_IMAGE_DURATION:I

    int-to-long v11, v11

    invoke-virtual {v9, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    sget-object v11, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    const-string/jumbo v12, "scaleX"

    const/4 v13, 0x2

    new-array v13, v13, [F

    fill-array-data v13, :array_4

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    sget-object v11, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    const-string/jumbo v12, "scaleY"

    const/4 v13, 0x2

    new-array v13, v13, [F

    fill-array-data v13, :array_5

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    sget-object v11, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    const-string v12, "alpha"

    const/4 v13, 0x2

    new-array v13, v13, [F

    fill-array-data v13, :array_6

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v11, 0x3

    new-array v11, v11, [Landroid/animation/Animator;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    const/4 v12, 0x1

    aput-object v4, v11, v12

    const/4 v12, 0x2

    aput-object v2, v11, v12

    invoke-virtual {v1, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget v11, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->CENTER_IMAGE_DURATION:I

    int-to-long v11, v11

    invoke-virtual {v1, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    sget-object v11, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    iget v12, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->START_DELAY:I

    div-int/lit8 v12, v12, 0x2

    iget-object v13, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mFinishAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->startCloseAnimation(ILandroid/animation/Animator$AnimatorListener;)V

    iget v11, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mSelectedViewIdx:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    iget v11, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mFocusedViewIdx:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playHideFocusAnimation()V

    :cond_2
    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mFocusedViewIdx:I

    iget v11, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mSelectedViewIdx:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_3

    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mSelectedViewIdx:I

    :cond_3
    invoke-direct {p0, v10}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playHideDescriptionAnimation(I)V

    iget-object v11, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v11}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->removeView(Landroid/view/View;)V

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    :cond_4
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected generateAndPlayStartAnimation()V
    .locals 13

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playOpenSound()V

    sget-object v10, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->startOpenAnimation(I)V

    sget-object v10, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    const-string/jumbo v11, "scaleX"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_0

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    sget-object v10, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    const-string/jumbo v11, "scaleY"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_1

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    sget-object v10, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterShadowImage:Landroid/widget/ImageView;

    const-string v11, "alpha"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_2

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v11, 0x1

    aput-object v7, v10, v11

    const/4 v11, 0x2

    aput-object v5, v10, v11

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->START_DELAY:I

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->CENTER_IMAGE_DURATION:I

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mStartAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    sget-object v10, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    const-string/jumbo v11, "scaleX"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_3

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    sget-object v10, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    const-string/jumbo v11, "scaleY"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_4

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    sget-object v10, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    const-string v11, "alpha"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_5

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    const/4 v11, 0x2

    aput-object v2, v10, v11

    invoke-virtual {v1, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->START_DELAY:I

    int-to-long v10, v10

    invoke-virtual {v1, v10, v11}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->CENTER_IMAGE_DURATION:I

    int-to-long v10, v10

    invoke-virtual {v1, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mStartAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    const/4 v8, 0x0

    :goto_0
    const/4 v10, 0x5

    if-ge v8, v10, :cond_0

    sget-object v10, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v10, v10, v8

    const-string v11, "alpha"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_6

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->START_DELAY:I

    iget v11, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->MENU_ICON_INTERVAL:I

    mul-int/2addr v11, v8

    add-int/2addr v10, v11

    int-to-long v10, v10

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->MENU_ICON_DURATION:I

    int-to-long v10, v10

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, -0x1

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playShowDescriptionAnimation(IZ)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected initAllViewDelta()V
    .locals 0

    return-void
.end method

.method protected onLayoutChanged()V
    .locals 7

    const/4 v6, 0x0

    iget-boolean v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsStartUp:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, v4, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v1, v4

    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setY(F)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->generateAndPlayStartAnimation()V

    const/4 v2, 0x0

    :goto_1
    const/4 v4, 0x6

    if-ge v2, v4, :cond_4

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_2

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v2

    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mDescriptionSmallSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_0

    const v4, 0x10500a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v4, v0

    sub-float/2addr v1, v4

    goto :goto_0

    :cond_4
    iput-boolean v6, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsStartUp:Z

    :cond_5
    return-void
.end method

.method protected onStart()V
    .locals 0

    return-void
.end method

.method protected onTouchDown(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->getItemIndex(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->onFinishing()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->onTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method protected onTouchUp(Landroid/view/MotionEvent;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsReservedToFinish:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->getItemIndex(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mSelectedViewIdx:I

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->onTouchUp(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0

    return-void
.end method

.method protected showHoverEnterAnimation(I)V
    .locals 0

    return-void
.end method

.method protected showHoverExitAnimation(I)V
    .locals 0

    return-void
.end method
