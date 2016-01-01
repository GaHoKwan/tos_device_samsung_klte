.class public Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;
.super Landroid/app/Dialog;
.source "FingerprintIdentifyDialog.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;,
        Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$Builder;,
        Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;
    }
.end annotation


# static fields
.field private static final CLOSE_DIALOG_DELAY:I = 0x2bc

.field private static final CLOSE_DIALOG_TEXT_TIME:I = 0xbb8

.field private static final CLOSE_ERR_MSG:I = 0x1388

.field protected static final DEBUG:Z

.field protected static final DEFAULT_PW_TRY_COUNT:I = 0x3

.field protected static final DEFAULT_TRY_COUNT:I = 0x5

.field private static final MSG_SCANNING_CANCEL:I = 0x291c

.field private static final MSG_VERIFY_FAIL:I = 0x291d

.field private static final SCANNING_EXPIRATION_TIME:I = 0xbb8

.field protected static final TAG:Ljava/lang/String; = "FingerprintIdentifyDialog"


# instance fields
.field private ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

.field private aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field protected mAltPassword:Landroid/widget/EditText;

.field protected mAltPasswordBox:Landroid/widget/RelativeLayout;

.field protected mAltPasswordGuide:Landroid/widget/TextView;

.field protected mAnimationBox:Landroid/widget/RelativeLayout;

.field protected mAnimationImage:Landroid/widget/ImageView;

.field protected mCloseButton:Landroid/widget/ImageButton;

.field mContext:Landroid/content/Context;

.field protected mEnablePassword:Z

.field private mErrClearRunnable:Ljava/lang/Runnable;

.field protected mErrorInfoBox:Landroid/widget/RelativeLayout;

.field protected mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

.field protected mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field protected mInfoImage:Landroid/widget/ImageView;

.field protected mInfoText:Landroid/widget/TextView;

.field private mIsCaptureFailed:Z

.field private mIsFinishedScanning:Z

.field private mIsFirstReady:Z

.field private mIsInternalCancel:Z

.field private mIsSensorRemoved:Z

.field private mIsSucceed:Z

.field protected mListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

.field protected mPermission:Ljava/lang/String;

.field private mQualityMessage:I

.field protected mSecurityLevel:I

.field protected mToken:Landroid/os/IBinder;

.field private mTryCount:I

.field private mTryPWCount:I

.field private mTweenAni:Landroid/view/animation/Animation;

.field protected mUnlockButton:Landroid/widget/Button;

.field private orientationListener:Landroid/view/OrientationEventListener;

.field private preOrientationScreen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;Ljava/lang/String;ZI)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsFinishedScanning:Z

    iput-boolean v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsSucceed:Z

    iput-boolean v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsInternalCancel:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsFirstReady:Z

    iput-boolean v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsSensorRemoved:Z

    iput-boolean v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsCaptureFailed:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->preOrientationScreen:I

    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    iput-object p3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mPermission:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    iput-boolean p4, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEnablePassword:Z

    iput p5, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mSecurityLevel:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mTryCount:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mTryPWCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->onConfigurationChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->verifyPassword()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsFinishedScanning:Z

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsSucceed:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mTryCount:I

    return v0
.end method

.method static synthetic access$410(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mTryCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mTryCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->identify()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->setTryCount(II)V

    return-void
.end method

.method private cleanUpLayoutResources()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationBox:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPasswordBox:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mUnlockButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mUnlockButton:Landroid/widget/Button;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mCloseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mCloseButton:Landroid/widget/ImageButton;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iput-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPassword:Landroid/widget/EditText;

    :cond_2
    iput-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPasswordGuide:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    :cond_3
    return-void
.end method

.method private static getDisplayMetricsDensity(Landroid/content/Context;)F
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method private static getPixel(Landroid/content/Context;I)I
    .locals 5

    invoke-static {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getDisplayMetricsDensity(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    int-to-float v1, p1

    mul-float/2addr v1, v0

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int p1, v1

    :cond_0
    return p1
.end method

.method private identify()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v4, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mPermission:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->identify(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v3, -0x3

    if-ne v0, v3, :cond_3

    const-string v3, "FingerprintIdentifyDialog"

    const-string v4, "RESULT_INVALID_TOKEN"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintClientWrapper;->init()V

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v4, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    iget v5, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mSecurityLevel:I

    invoke-static {v3, v4, v5}, Lcom/samsung/android/fingerprint/FingerprintClientWrapper;->registerClient(Lcom/samsung/android/fingerprint/FingerprintManager;Landroid/os/Handler;I)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mToken:Landroid/os/IBinder;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v4, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mPermission:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->identify(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private onConfigurationChanged()V
    .locals 12

    const/4 v11, 0x3

    const/16 v10, 0xe

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->preOrientationScreen:I

    if-ne v2, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->preOrientationScreen:I

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationBox:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    if-ne v1, v9, :cond_b

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v3, 0x1b7

    invoke-static {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    if-ne v1, v9, :cond_e

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mUnlockButton:Landroid/widget/Button;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    if-ne v1, v9, :cond_10

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v3, 0x3a

    invoke-static {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v4, 0x11

    invoke-static {v3, v4}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v2, v3, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_3
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mErrorInfoBox:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mErrorInfoBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    if-ne v1, v9, :cond_12

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const v2, 0x1020039

    invoke-virtual {v0, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_4
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mErrorInfoBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPasswordGuide:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPasswordGuide:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    if-eq v1, v9, :cond_6

    if-ne v1, v11, :cond_14

    :cond_6
    const/16 v2, 0x9

    invoke-virtual {v0, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v4, 0x14

    invoke-static {v3, v4}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v5, 0x11

    invoke-static {v4, v5}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v6, 0x14

    invoke-static {v5, v6}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v3, 0x12a

    invoke-static {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    :goto_5
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPasswordGuide:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPassword:Landroid/widget/EditText;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    if-eq v1, v9, :cond_8

    if-ne v1, v11, :cond_15

    :cond_8
    const v2, 0x1020032

    invoke-virtual {v0, v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v4, 0x11

    invoke-static {v3, v4}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v5, 0x14

    invoke-static {v4, v5}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v8, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v3, 0x12a

    invoke-static {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    :goto_6
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPasswordBox:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPasswordBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    if-eq v1, v9, :cond_a

    if-ne v1, v11, :cond_16

    :cond_a
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v3, 0x50

    invoke-static {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v8, v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v3, 0x5a

    invoke-static {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_7
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPasswordBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_b
    if-ne v1, v11, :cond_c

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v3, 0x1b7

    invoke-static {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_1

    :cond_c
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-boolean v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEnablePassword:Z

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v3, 0xf0

    invoke-static {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_1

    :cond_d
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v3, 0x131

    invoke-static {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_1

    :cond_e
    if-ne v1, v11, :cond_f

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    goto/16 :goto_2

    :cond_f
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    goto/16 :goto_2

    :cond_10
    if-ne v1, v11, :cond_11

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v3, 0x11

    invoke-static {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v4, 0x3a

    invoke-static {v3, v4}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v8, v2, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_3

    :cond_11
    invoke-virtual {v0, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    invoke-static {v2, v11}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v8, v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_3

    :cond_12
    if-ne v1, v11, :cond_13

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const v2, 0x1020039

    invoke-virtual {v0, v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_4

    :cond_13
    invoke-virtual {v0, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x2

    const v3, 0x1020039

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_4

    :cond_14
    invoke-virtual {v0, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v3, 0x1a

    invoke-static {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v4, 0x1a

    invoke-static {v3, v4}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v5, 0x1a

    invoke-static {v4, v5}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto/16 :goto_5

    :cond_15
    invoke-virtual {v0, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const v2, 0x1020032

    invoke-virtual {v0, v11, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v3, 0x11

    invoke-static {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v4, 0xf

    invoke-static {v3, v4}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v5, 0x11

    invoke-static {v4, v5}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v6, 0x14

    invoke-static {v5, v6}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto/16 :goto_6

    :cond_16
    invoke-virtual {v0, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v3, 0xdc

    invoke-static {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v8, v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v3, 0x9c

    invoke-static {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_7
.end method

.method private removeErrMsg()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mErrClearRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$14;

    invoke-direct {v0, p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$14;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mErrClearRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mErrClearRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setErrorCaseTextandImage(I)V
    .locals 4

    invoke-static {p1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityFeedback(I)I

    move-result v1

    invoke-static {p1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityIcon(I)I

    move-result v0

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->setAnimationTextandImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->setAnimationTextandImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setTryCount(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mTryCount:I

    iput p2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mTryPWCount:I

    return-void
.end method

.method private stop()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsInternalCancel:Z

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    return-void
.end method

.method private verifyPassword()V
    .locals 7

    const/16 v6, 0x291d

    const/16 v5, 0xd

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->verifyPassword(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iput v5, v2, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    const/4 v3, 0x0

    iput v3, v2, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    const/16 v3, 0x64

    iput v3, v2, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->dismiss()V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPasswordGuide:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040032

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPassword:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mTryPWCount:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iput v5, v2, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    const/4 v3, -0x1

    iput v3, v2, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    const/16 v3, 0xb

    iput v3, v2, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPassword:Landroid/widget/EditText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-static {v3, v6, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x2bc

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mTryPWCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mTryPWCount:I

    new-instance v2, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$13;

    invoke-direct {v2, p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$13;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method protected detachClient()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->closeTransaction(Landroid/os/IBinder;)Z

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintClientWrapper;->unregisterClient()V

    iput-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iput-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mToken:Landroid/os/IBinder;

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->detachClient()V

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->cleanUpLayoutResources()V

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->orientationListener:Landroid/view/OrientationEventListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    iput-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->orientationListener:Landroid/view/OrientationEventListener;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->stop()V

    iput-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-interface {v1, v2}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;->onEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    :goto_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    iput-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    return-void

    :cond_4
    :try_start_1
    const-string v1, "FingerprintIdentifyDialog"

    const-string v2, "FingerprintEvent is null!! Cannot send event!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintIdentifyDialog"

    const-string v2, "dismiss() : already dismissed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->DEBUG:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/16 v6, 0x291c

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    const-string v1, "FingerprintIdentifyDialog"

    const-string v2, "There is no matched handle case"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v3

    :sswitch_0
    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FingerprintIdentifyDialog"

    const-string v2, "IDENTIFY_READY"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mQualityMessage:I

    iput-boolean v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsFinishedScanning:Z

    iget-boolean v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsFirstReady:Z

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsFirstReady:Z

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;->onEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    goto :goto_0

    :sswitch_1
    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "FingerprintIdentifyDialog"

    const-string v2, "IDENTIFY_STARTED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->startScanningAnimation()V

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;->onEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    goto :goto_0

    :sswitch_2
    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "FingerprintIdentifyDialog"

    const-string v4, "IDENTIFY_STATUS"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    sparse-switch v1, :sswitch_data_1

    :goto_1
    :sswitch_3
    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v4, "FingerprintIdentifyDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IDENTIFY_FINISHED : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v1, :cond_6

    const-string v1, "Success"

    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v4, 0x7

    if-ne v1, v4, :cond_8

    iget-boolean v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsSensorRemoved:Z

    if-nez v1, :cond_8

    const-string v1, "FingerprintIdentifyDialog"

    const-string v4, "SENSOR_ERROR : SENSOR NOT FOUND"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const v4, 0x1040036

    invoke-static {v1, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-boolean v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEnablePassword:Z

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->dismiss()V

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQuality()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mQualityMessage:I

    iput-boolean v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsCaptureFailed:Z

    goto :goto_1

    :sswitch_5
    const-string v1, "FingerprintIdentifyDialog"

    const-string v4, "SENSOR_ERROR : SENSOR IS REMOVED"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsSensorRemoved:Z

    iput v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mQualityMessage:I

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const v4, 0x1040035

    invoke-static {v1, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-boolean v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEnablePassword:Z

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->dismiss()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->showAlternativePasswordBox()V

    goto :goto_1

    :cond_6
    const-string v1, "Fail"

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->showAlternativePasswordBox()V

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsCaptureFailed:Z

    if-eqz v1, :cond_9

    iput-boolean v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsCaptureFailed:Z

    const-string v1, "FingerprintIdentifyDialog"

    const-string v2, "IDENTIFY_FINISHED : Capture Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->startFailedAnimation()V

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_9
    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iput-boolean v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsFinishedScanning:Z

    iget v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v1, :cond_c

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsSucceed:Z

    iget-boolean v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsSucceed:Z

    if-nez v1, :cond_0

    iget v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    sparse-switch v1, :sswitch_data_2

    goto/16 :goto_0

    :sswitch_6
    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->DEBUG:Z

    if-eqz v1, :cond_a

    const-string v1, "FingerprintIdentifyDialog"

    const-string v2, "STATUS_TIMEOUT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->stop()V

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->setAnimationTextandImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$1;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_c
    move v1, v3

    goto :goto_3

    :sswitch_7
    iget-boolean v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsInternalCancel:Z

    if-nez v1, :cond_e

    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->DEBUG:Z

    if-eqz v1, :cond_d

    const-string v1, "FingerprintIdentifyDialog"

    const-string v2, "STATUS_USER_CANCELLED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->dismiss()V

    goto/16 :goto_0

    :cond_e
    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->DEBUG:Z

    if-eqz v1, :cond_f

    const-string v1, "FingerprintIdentifyDialog"

    const-string v2, "Internal Cancel. Do not dismiss dialog."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iput-boolean v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsInternalCancel:Z

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQuality()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mQualityMessage:I

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "FingerprintIdentifyDialog"

    const-string v4, "handleMessage : MSG_SCANNING_CANCEL"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->stop()V

    iput-boolean v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsFinishedScanning:Z

    iput-boolean v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsSucceed:Z

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->dismiss()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xc -> :sswitch_1
        0xd -> :sswitch_3
        0xe -> :sswitch_2
        0x291c -> :sswitch_9
        0x291d -> :sswitch_a
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x7 -> :sswitch_5
        0x14 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x4 -> :sswitch_6
        0x8 -> :sswitch_7
        0xc -> :sswitch_8
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    const v0, 0x1090018

    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1030002

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->setLayout()V

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mSecurityLevel:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/fingerprint/FingerprintClientWrapper;->registerClient(Lcom/samsung/android/fingerprint/FingerprintManager;Landroid/os/Handler;I)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mToken:Landroid/os/IBinder;

    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct {v0}, Lcom/samsung/android/fingerprint/FingerprintEvent;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    const/16 v1, 0xd

    iput v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    const/4 v1, -0x1

    iput v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    const/16 v1, 0x8

    iput v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    iput-boolean v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsFinishedScanning:Z

    iput-boolean v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsSucceed:Z

    iput-boolean v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsInternalCancel:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsFirstReady:Z

    iput-boolean v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsSensorRemoved:Z

    iput-boolean v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsCaptureFailed:Z

    iput v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mQualityMessage:I

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->onConfigurationChanged()V

    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$2;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$2;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->orientationListener:Landroid/view/OrientationEventListener;

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method protected onStart()V
    .locals 4

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->isSensorReady()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->identify()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->openTransaction(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const v2, 0x1040036

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-boolean v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEnablePassword:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->showAlternativePasswordBox()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->dismiss()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->dismiss()V

    goto :goto_1
.end method

.method protected setAnimationTextandImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 8

    const-wide/16 v6, 0x64

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object v2, p1

    move-object v1, p2

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v4, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoImage:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoText:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    new-instance v4, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$6;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$6;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;Landroid/graphics/drawable/Drawable;Landroid/view/animation/Animation;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method protected setLayout()V
    .locals 2

    const/4 v1, 0x4

    const v0, 0x1020034

    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationBox:Landroid/widget/RelativeLayout;

    const v0, 0x1020031

    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPasswordBox:Landroid/widget/RelativeLayout;

    const v0, 0x1020039

    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    const v0, 0x102002e

    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoText:Landroid/widget/TextView;

    const v0, 0x102002f

    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoImage:Landroid/widget/ImageView;

    const v0, 0x1020035

    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mUnlockButton:Landroid/widget/Button;

    const v0, 0x1020037

    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mCloseButton:Landroid/widget/ImageButton;

    const v0, 0x1020033

    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPassword:Landroid/widget/EditText;

    const v0, 0x1020032

    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPasswordGuide:Landroid/widget/TextView;

    const v0, 0x102003a

    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mErrorInfoBox:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPasswordBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEnablePassword:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPasswordGuide:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->startStandbyAnimation()V

    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mUnlockButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$3;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPassword:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$4;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mCloseButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$5;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected showAlternativePasswordBox()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x4

    iput-boolean v4, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsInternalCancel:Z

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPasswordBox:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method protected startFailedAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    const v1, 0x10a0011

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mQualityMessage:I

    invoke-direct {p0, v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->setErrorCaseTextandImage(I)V

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->removeErrMsg()V

    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$10;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$10;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;Landroid/graphics/drawable/AnimationDrawable;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->start()V

    return-void
.end method

.method protected startPassAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    const v1, 0x108030f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const v1, 0x10a0030

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mTweenAni:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mTweenAni:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mTweenAni:Landroid/view/animation/Animation;

    new-instance v1, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$12;

    invoke-direct {v1, p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$12;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->start()V

    :cond_1
    return-void
.end method

.method protected startProcessingAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    const v1, 0x10a0013

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$9;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$9;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;Landroid/graphics/drawable/AnimationDrawable;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->start()V

    return-void
.end method

.method protected startScanningAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    const v1, 0x10a000f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->setAnimationTextandImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$8;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$8;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;Landroid/graphics/drawable/AnimationDrawable;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->start()V

    return-void
.end method

.method protected startStandbyAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    const v1, 0x10a0031

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$7;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$7;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;Landroid/graphics/drawable/AnimationDrawable;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->start()V

    return-void
.end method

.method protected startSucceedAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    const v1, 0x10a0013

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mUnlockButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->setAnimationTextandImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$11;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$11;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;Landroid/graphics/drawable/AnimationDrawable;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->start()V

    return-void
.end method
