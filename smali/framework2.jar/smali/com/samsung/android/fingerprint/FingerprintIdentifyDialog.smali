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

    .prologue
    .line 62
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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;
    .param p3, "permission"    # Ljava/lang/String;
    .param p4, "enablePassword"    # Z
    .param p5, "securityLevel"    # I

    .prologue
    const/4 v1, 0x0

    .line 338
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    .line 90
    iput-boolean v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsFinishedScanning:Z

    .line 91
    iput-boolean v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsSucceed:Z

    .line 92
    iput-boolean v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsInternalCancel:Z

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsFirstReady:Z

    .line 94
    iput-boolean v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsSensorRemoved:Z

    .line 95
    iput-boolean v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsCaptureFailed:Z

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->preOrientationScreen:I

    .line 340
    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    .line 341
    iput-object p2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    .line 342
    iput-object p3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mPermission:Ljava/lang/String;

    .line 343
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    .line 344
    iput-boolean p4, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEnablePassword:Z

    .line 345
    iput p5, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mSecurityLevel:I

    .line 346
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mTryCount:I

    .line 347
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mTryPWCount:I

    .line 348
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->onConfigurationChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->verifyPassword()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsFinishedScanning:Z

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsSucceed:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    .prologue
    .line 59
    iget v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mTryCount:I

    return v0
.end method

.method static synthetic access$410(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)I
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    .prologue
    .line 59
    iget v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mTryCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mTryCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->identify()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;II)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->setTryCount(II)V

    return-void
.end method

.method private cleanUpLayoutResources()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 635
    iput-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationBox:Landroid/widget/RelativeLayout;

    .line 636
    iput-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPasswordBox:Landroid/widget/RelativeLayout;

    .line 637
    iput-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    .line 638
    iput-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoText:Landroid/widget/TextView;

    .line 639
    iput-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoImage:Landroid/widget/ImageView;

    .line 640
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mUnlockButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    iput-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mUnlockButton:Landroid/widget/Button;

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mCloseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 645
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 646
    iput-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mCloseButton:Landroid/widget/ImageButton;

    .line 648
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 649
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 650
    iput-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPassword:Landroid/widget/EditText;

    .line 652
    :cond_2
    iput-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPasswordGuide:Landroid/widget/TextView;

    .line 653
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_3

    .line 654
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 655
    iput-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 657
    :cond_3
    return-void
.end method

.method private static getDisplayMetricsDensity(Landroid/content/Context;)F
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1052
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method private static getPixel(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "p"    # I

    .prologue
    .line 1057
    invoke-static {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getDisplayMetricsDensity(Landroid/content/Context;)F

    move-result v0

    .line 1058
    .local v0, "den":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 1060
    int-to-float v1, p1

    mul-float/2addr v1, v0

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int p1, v1

    .line 1062
    .end local p1    # "p":I
    :cond_0
    return p1
.end method

.method private identify()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 541
    const/4 v0, -0x1

    .line 542
    .local v0, "result":I
    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v3, :cond_2

    .line 543
    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v4, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mPermission:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->identify(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v0

    .line 544
    if-nez v0, :cond_1

    .line 562
    :cond_0
    :goto_0
    return v1

    .line 547
    :cond_1
    const/4 v3, -0x3

    if-ne v0, v3, :cond_3

    .line 548
    const-string v3, "FingerprintIdentifyDialog"

    const-string v4, "RESULT_INVALID_TOKEN"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintClientWrapper;->init()V

    .line 550
    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v4, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    iget v5, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mSecurityLevel:I

    invoke-static {v3, v4, v5}, Lcom/samsung/android/fingerprint/FingerprintClientWrapper;->registerClient(Lcom/samsung/android/fingerprint/FingerprintManager;Landroid/os/Handler;I)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mToken:Landroid/os/IBinder;

    .line 551
    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mToken:Landroid/os/IBinder;

    if-eqz v3, :cond_2

    .line 552
    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v4, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mPermission:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->identify(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v0

    .line 553
    if-eqz v0, :cond_0

    :cond_2
    move v1, v2

    .line 562
    goto :goto_0

    :cond_3
    move v1, v2

    .line 559
    goto :goto_0
.end method

.method private onConfigurationChanged()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/16 v10, 0xe

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 398
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 399
    .local v1, "orientationScreen":I
    iget v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->preOrientationScreen:I

    if-ne v2, v1, :cond_1

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iput v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->preOrientationScreen:I

    .line 403
    const/4 v0, 0x0

    .line 405
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationBox:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_2

    .line 406
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 407
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 408
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 409
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 411
    if-ne v1, v9, :cond_b

    .line 412
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 413
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v3, 0x1b7

    invoke-static {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 414
    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 428
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    .line 432
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 433
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 434
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 435
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 436
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 438
    if-ne v1, v9, :cond_e

    .line 439
    const/16 v2, 0xf

    invoke-virtual {v0, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 440
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 441
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 451
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mUnlockButton:Landroid/widget/Button;

    if-eqz v2, :cond_4

    .line 454
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 455
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 456
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 457
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 458
    if-ne v1, v9, :cond_10

    .line 459
    const/16 v2, 0x9

    invoke-virtual {v0, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 460
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v3, 0x3a

    invoke-static {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v4, 0x11

    invoke-static {v3, v4}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v2, v3, v8, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 468
    :goto_3
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mErrorInfoBox:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_5

    .line 471
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mErrorInfoBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 472
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 473
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 474
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 475
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 476
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 478
    if-ne v1, v9, :cond_12

    .line 479
    const/16 v2, 0xf

    invoke-virtual {v0, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 480
    const v2, 0x1020039

    invoke-virtual {v0, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 488
    :goto_4
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mErrorInfoBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPasswordGuide:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    .line 492
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPasswordGuide:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 493
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 494
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 495
    if-eq v1, v9, :cond_6

    if-ne v1, v11, :cond_14

    .line 496
    :cond_6
    const/16 v2, 0x9

    invoke-virtual {v0, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 497
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

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 498
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v3, 0x12a

    invoke-static {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 504
    :goto_5
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPasswordGuide:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 507
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPassword:Landroid/widget/EditText;

    if-eqz v2, :cond_9

    .line 508
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 509
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 510
    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 511
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 512
    if-eq v1, v9, :cond_8

    if-ne v1, v11, :cond_15

    .line 513
    :cond_8
    const v2, 0x1020032

    invoke-virtual {v0, v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 514
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

    invoke-virtual {v0, v8, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 515
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v3, 0x12a

    invoke-static {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 522
    :goto_6
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    :cond_9
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPasswordBox:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 526
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPasswordBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 527
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 528
    if-eq v1, v9, :cond_a

    if-ne v1, v11, :cond_16

    .line 529
    :cond_a
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v3, 0x50

    invoke-static {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v8, v2, v8, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 530
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v3, 0x5a

    invoke-static {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 536
    :goto_7
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPasswordBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 415
    :cond_b
    if-ne v1, v11, :cond_c

    .line 416
    const/16 v2, 0x9

    invoke-virtual {v0, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 417
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v3, 0x1b7

    invoke-static {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 418
    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_1

    .line 420
    :cond_c
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 421
    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 422
    iget-boolean v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEnablePassword:Z

    if-nez v2, :cond_d

    .line 423
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v3, 0xf0

    invoke-static {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_1

    .line 425
    :cond_d
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v3, 0x131

    invoke-static {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_1

    .line 442
    :cond_e
    if-ne v1, v11, :cond_f

    .line 443
    const/16 v2, 0xf

    invoke-virtual {v0, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 444
    const/16 v2, 0x9

    invoke-virtual {v0, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 445
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    goto/16 :goto_2

    .line 447
    :cond_f
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 448
    invoke-virtual {v0, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 449
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    goto/16 :goto_2

    .line 461
    :cond_10
    if-ne v1, v11, :cond_11

    .line 462
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 463
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v3, 0x11

    invoke-static {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v4, 0x3a

    invoke-static {v3, v4}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v8, v2, v3, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_3

    .line 465
    :cond_11
    invoke-virtual {v0, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 466
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    invoke-static {v2, v11}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v8, v2, v8, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_3

    .line 481
    :cond_12
    if-ne v1, v11, :cond_13

    .line 482
    const/16 v2, 0xf

    invoke-virtual {v0, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 483
    const v2, 0x1020039

    invoke-virtual {v0, v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_4

    .line 485
    :cond_13
    invoke-virtual {v0, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 486
    const/4 v2, 0x2

    const v3, 0x1020039

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_4

    .line 500
    :cond_14
    invoke-virtual {v0, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 501
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

    invoke-virtual {v0, v2, v3, v4, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 502
    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_5

    .line 517
    :cond_15
    invoke-virtual {v0, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 518
    const v2, 0x1020032

    invoke-virtual {v0, v11, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 519
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

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 520
    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_6

    .line 532
    :cond_16
    invoke-virtual {v0, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 533
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v3, 0xdc

    invoke-static {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v8, v2, v8, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 534
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const/16 v3, 0x9c

    invoke-static {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getPixel(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_7
.end method

.method private removeErrMsg()V
    .locals 4

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mErrClearRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1042
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$14;

    invoke-direct {v0, p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$14;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mErrClearRunnable:Ljava/lang/Runnable;

    .line 1047
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mErrClearRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1048
    return-void
.end method

.method private setErrorCaseTextandImage(I)V
    .locals 4
    .param p1, "quality"    # I

    .prologue
    .line 994
    invoke-static {p1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityFeedback(I)I

    move-result v1

    .line 995
    .local v1, "result":I
    invoke-static {p1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityIcon(I)I

    move-result v0

    .line 996
    .local v0, "mInfoImage":I
    if-nez v1, :cond_0

    .line 997
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->setAnimationTextandImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 1001
    :goto_0
    return-void

    .line 999
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
    .param p1, "count"    # I
    .param p2, "pwcount"    # I

    .prologue
    .line 943
    iput p1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mTryCount:I

    .line 944
    iput p2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mTryPWCount:I

    .line 945
    return-void
.end method

.method private stop()V
    .locals 2

    .prologue
    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsInternalCancel:Z

    .line 334
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    .line 335
    return-void
.end method

.method private verifyPassword()V
    .locals 7

    .prologue
    const/16 v6, 0x291d

    const/16 v5, 0xd

    .line 1008
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1009
    .local v1, "password":Ljava/lang/String;
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1011
    .local v0, "mPWHandler":Landroid/os/Handler;
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->verifyPassword(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1012
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iput v5, v2, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    .line 1013
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    const/4 v3, 0x0

    iput v3, v2, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    .line 1014
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    const/16 v3, 0x64

    iput v3, v2, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    .line 1015
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->dismiss()V

    .line 1038
    :goto_0
    return-void

    .line 1017
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPasswordGuide:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040032

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1018
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPassword:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1019
    iget v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mTryPWCount:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 1020
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iput v5, v2, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    .line 1021
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    const/4 v3, -0x1

    iput v3, v2, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    .line 1022
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    const/16 v3, 0xb

    iput v3, v2, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    .line 1023
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPassword:Landroid/widget/EditText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1024
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1025
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-static {v3, v6, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x2bc

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1027
    :cond_1
    iget v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mTryPWCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mTryPWCount:I

    .line 1028
    new-instance v2, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$13;

    invoke-direct {v2, p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$13;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method protected detachClient()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 353
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->closeTransaction(Landroid/os/IBinder;)Z

    .line 355
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    .line 356
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintClientWrapper;->unregisterClient()V

    .line 357
    iput-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 358
    iput-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mToken:Landroid/os/IBinder;

    .line 360
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 595
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->detachClient()V

    .line 596
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->cleanUpLayoutResources()V

    .line 597
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 598
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 599
    iput-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    .line 601
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->orientationListener:Landroid/view/OrientationEventListener;

    if-eqz v1, :cond_1

    .line 602
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    .line 603
    iput-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->orientationListener:Landroid/view/OrientationEventListener;

    .line 606
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 607
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->stop()V

    .line 608
    iput-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    .line 612
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 613
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    if-eqz v1, :cond_4

    .line 614
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-interface {v1, v2}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;->onEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    .line 619
    :goto_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    :cond_3
    :goto_1
    iput-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    .line 632
    return-void

    .line 616
    :cond_4
    :try_start_1
    const-string v1, "FingerprintIdentifyDialog"

    const-string v2, "FingerprintEvent is null!! Cannot send event!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FingerprintIdentifyDialog"

    const-string v2, "dismiss() : already dismissed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 625
    if-eqz v0, :cond_3

    .line 626
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/16 v6, 0x291c

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 185
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/fingerprint/FingerprintEvent;

    .line 187
    .local v0, "event":Lcom/samsung/android/fingerprint/FingerprintEvent;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 324
    const-string v1, "FingerprintIdentifyDialog"

    const-string v2, "There is no matched handle case"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    :goto_0
    return v3

    .line 190
    :sswitch_0
    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 191
    const-string v1, "FingerprintIdentifyDialog"

    const-string v2, "IDENTIFY_READY"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_1
    iput v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mQualityMessage:I

    .line 194
    iput-boolean v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsFinishedScanning:Z

    .line 195
    iget-boolean v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsFirstReady:Z

    if-eqz v1, :cond_0

    .line 196
    iput-boolean v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsFirstReady:Z

    .line 197
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;->onEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    goto :goto_0

    .line 202
    :sswitch_1
    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 203
    const-string v1, "FingerprintIdentifyDialog"

    const-string v2, "IDENTIFY_STARTED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->startScanningAnimation()V

    .line 207
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 208
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 209
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;->onEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    goto :goto_0

    .line 213
    :sswitch_2
    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 214
    const-string v1, "FingerprintIdentifyDialog"

    const-string v4, "IDENTIFY_STATUS"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_3
    iget v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    sparse-switch v1, :sswitch_data_1

    .line 239
    :goto_1
    :sswitch_3
    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 240
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

    .line 244
    :cond_4
    iget v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v4, 0x7

    if-ne v1, v4, :cond_8

    iget-boolean v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsSensorRemoved:Z

    if-nez v1, :cond_8

    .line 245
    const-string v1, "FingerprintIdentifyDialog"

    const-string v4, "SENSOR_ERROR : SENSOR NOT FOUND"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const v4, 0x1040036

    invoke-static {v1, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 247
    iget-boolean v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEnablePassword:Z

    if-nez v1, :cond_7

    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->dismiss()V

    goto/16 :goto_0

    .line 219
    :sswitch_4
    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQuality()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mQualityMessage:I

    .line 220
    iput-boolean v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsCaptureFailed:Z

    goto :goto_1

    .line 224
    :sswitch_5
    const-string v1, "FingerprintIdentifyDialog"

    const-string v4, "SENSOR_ERROR : SENSOR IS REMOVED"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iput-boolean v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsSensorRemoved:Z

    .line 226
    iput v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mQualityMessage:I

    .line 227
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const v4, 0x1040035

    invoke-static {v1, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 228
    iget-boolean v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEnablePassword:Z

    if-nez v1, :cond_5

    .line 229
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->dismiss()V

    goto :goto_1

    .line 232
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->showAlternativePasswordBox()V

    goto :goto_1

    .line 240
    :cond_6
    const-string v1, "Fail"

    goto :goto_2

    .line 252
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->showAlternativePasswordBox()V

    .line 256
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 257
    iget-boolean v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsCaptureFailed:Z

    if-eqz v1, :cond_9

    .line 258
    iput-boolean v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsCaptureFailed:Z

    .line 259
    const-string v1, "FingerprintIdentifyDialog"

    const-string v2, "IDENTIFY_FINISHED : Capture Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->startFailedAnimation()V

    .line 261
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 266
    :cond_9
    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    .line 267
    iput-boolean v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsFinishedScanning:Z

    .line 268
    iget v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v1, :cond_c

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsSucceed:Z

    .line 270
    iget-boolean v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsSucceed:Z

    if-nez v1, :cond_0

    .line 271
    iget v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    sparse-switch v1, :sswitch_data_2

    goto/16 :goto_0

    .line 286
    :sswitch_6
    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->DEBUG:Z

    if-eqz v1, :cond_a

    .line 287
    const-string v1, "FingerprintIdentifyDialog"

    const-string v2, "STATUS_TIMEOUT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    if-eqz v1, :cond_b

    .line 290
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->stop()V

    .line 292
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 293
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->setAnimationTextandImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 296
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$1;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_c
    move v1, v3

    .line 268
    goto :goto_3

    .line 273
    :sswitch_7
    iget-boolean v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsInternalCancel:Z

    if-nez v1, :cond_e

    .line 274
    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->DEBUG:Z

    if-eqz v1, :cond_d

    .line 275
    const-string v1, "FingerprintIdentifyDialog"

    const-string v2, "STATUS_USER_CANCELLED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->dismiss()V

    goto/16 :goto_0

    .line 279
    :cond_e
    sget-boolean v1, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->DEBUG:Z

    if-eqz v1, :cond_f

    .line 280
    const-string v1, "FingerprintIdentifyDialog"

    const-string v2, "Internal Cancel. Do not dismiss dialog."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_f
    iput-boolean v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsInternalCancel:Z

    goto/16 :goto_0

    .line 304
    :sswitch_8
    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQuality()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mQualityMessage:I

    goto/16 :goto_0

    .line 313
    :sswitch_9
    const-string v1, "FingerprintIdentifyDialog"

    const-string v4, "handleMessage : MSG_SCANNING_CANCEL"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->stop()V

    .line 315
    iput-boolean v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsFinishedScanning:Z

    .line 316
    iput-boolean v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsSucceed:Z

    goto/16 :goto_0

    .line 320
    :sswitch_a
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->dismiss()V

    goto/16 :goto_0

    .line 187
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

    .line 217
    :sswitch_data_1
    .sparse-switch
        0x7 -> :sswitch_5
        0x14 -> :sswitch_4
    .end sparse-switch

    .line 271
    :sswitch_data_2
    .sparse-switch
        0x4 -> :sswitch_6
        0x8 -> :sswitch_7
        0xc -> :sswitch_8
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 364
    const v0, 0x1090018

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 365
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1030002

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 366
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 367
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->setLayout()V

    .line 369
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 370
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mSecurityLevel:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/fingerprint/FingerprintClientWrapper;->registerClient(Lcom/samsung/android/fingerprint/FingerprintManager;Landroid/os/Handler;I)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mToken:Landroid/os/IBinder;

    .line 372
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct {v0}, Lcom/samsung/android/fingerprint/FingerprintEvent;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    .line 373
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    const/16 v1, 0xd

    iput v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    .line 374
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    const/4 v1, -0x1

    iput v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    .line 375
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    const/16 v1, 0x8

    iput v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    .line 377
    iput-boolean v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsFinishedScanning:Z

    .line 378
    iput-boolean v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsSucceed:Z

    .line 379
    iput-boolean v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsInternalCancel:Z

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsFirstReady:Z

    .line 381
    iput-boolean v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsSensorRemoved:Z

    .line 382
    iput-boolean v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsCaptureFailed:Z

    .line 383
    iput v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mQualityMessage:I

    .line 386
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->onConfigurationChanged()V

    .line 387
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$2;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$2;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->orientationListener:Landroid/view/OrientationEventListener;

    .line 393
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 394
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 566
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 567
    const/4 v0, 0x1

    .line 568
    .local v0, "isError":Z
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->isSensorReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->identify()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 570
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->openTransaction(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    const/4 v0, 0x0

    .line 575
    :cond_0
    if-eqz v0, :cond_1

    .line 576
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const v2, 0x1040036

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 577
    iget-boolean v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEnablePassword:Z

    if-nez v1, :cond_2

    .line 578
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->dismiss()V

    .line 585
    :cond_1
    :goto_0
    return-void

    .line 582
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->showAlternativePasswordBox()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 589
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 590
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 661
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 662
    if-nez p1, :cond_1

    .line 663
    const/4 v0, 0x0

    .line 664
    .local v0, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 665
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 671
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 672
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 673
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->dismiss()V

    .line 679
    .end local v0    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_1
    :goto_1
    return-void

    .line 666
    .restart local v0    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    .line 667
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    goto :goto_0

    .line 676
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->dismiss()V

    goto :goto_1
.end method

.method protected setAnimationTextandImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "image"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const-wide/16 v6, 0x64

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 745
    move-object v2, p1

    .line 746
    .local v2, "infoText":Ljava/lang/String;
    move-object v1, p2

    .line 747
    .local v1, "infoImage":Landroid/graphics/drawable/Drawable;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 748
    .local v0, "in":Landroid/view/animation/Animation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 749
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 750
    .local v3, "out":Landroid/view/animation/Animation;
    invoke-virtual {v3, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 751
    iget-object v4, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoImage:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 752
    iget-object v4, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 754
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoText:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 755
    iget-object v4, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 757
    :cond_1
    new-instance v4, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$6;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$6;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;Landroid/graphics/drawable/Drawable;Landroid/view/animation/Animation;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 784
    return-void
.end method

.method protected setLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 682
    const v0, 0x1020034

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationBox:Landroid/widget/RelativeLayout;

    .line 683
    const v0, 0x1020031

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPasswordBox:Landroid/widget/RelativeLayout;

    .line 684
    const v0, 0x1020039

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    .line 685
    const v0, 0x102002e

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoText:Landroid/widget/TextView;

    .line 686
    const v0, 0x102002f

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoImage:Landroid/widget/ImageView;

    .line 687
    const v0, 0x1020035

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mUnlockButton:Landroid/widget/Button;

    .line 688
    const v0, 0x1020037

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mCloseButton:Landroid/widget/ImageButton;

    .line 689
    const v0, 0x1020033

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPassword:Landroid/widget/EditText;

    .line 690
    const v0, 0x1020032

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPasswordGuide:Landroid/widget/TextView;

    .line 691
    const v0, 0x102003a

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mErrorInfoBox:Landroid/widget/RelativeLayout;

    .line 693
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPasswordBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 694
    iget-boolean v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEnablePassword:Z

    if-nez v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 696
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 697
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPasswordGuide:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 700
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->startStandbyAnimation()V

    .line 701
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 703
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mUnlockButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$3;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 710
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPassword:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$4;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 721
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mCloseButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$5;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 728
    return-void
.end method

.method protected showAlternativePasswordBox()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x4

    .line 731
    iput-boolean v4, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsInternalCancel:Z

    .line 732
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    .line 734
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 735
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 736
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 737
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 738
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPasswordBox:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 740
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 741
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 742
    return-void
.end method

.method protected startFailedAnimation()V
    .locals 2

    .prologue
    .line 853
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->stop()V

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    const v1, 0x10a0011

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 858
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 859
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 860
    iget v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mQualityMessage:I

    invoke-direct {p0, v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->setErrorCaseTextandImage(I)V

    .line 861
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->removeErrMsg()V

    .line 862
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$10;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$10;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;Landroid/graphics/drawable/AnimationDrawable;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    .line 892
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->start()V

    .line 893
    return-void
.end method

.method protected startPassAnimation()V
    .locals 2

    .prologue
    .line 916
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->stop()V

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    const v1, 0x108030f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 920
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    const v1, 0x10a0030

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mTweenAni:Landroid/view/animation/Animation;

    .line 921
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mTweenAni:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 922
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mTweenAni:Landroid/view/animation/Animation;

    new-instance v1, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$12;

    invoke-direct {v1, p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$12;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 937
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    if-eqz v0, :cond_1

    .line 938
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->start()V

    .line 940
    :cond_1
    return-void
.end method

.method protected startProcessingAnimation()V
    .locals 2

    .prologue
    .line 829
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->stop()V

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    const v1, 0x10a0013

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 833
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 834
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$9;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$9;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;Landroid/graphics/drawable/AnimationDrawable;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    .line 849
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->start()V

    .line 850
    return-void
.end method

.method protected startScanningAnimation()V
    .locals 2

    .prologue
    .line 803
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->stop()V

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    const v1, 0x10a000f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 807
    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->setAnimationTextandImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 808
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 810
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$8;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$8;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;Landroid/graphics/drawable/AnimationDrawable;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    .line 825
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->start()V

    .line 826
    return-void
.end method

.method protected startStandbyAnimation()V
    .locals 2

    .prologue
    .line 787
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->stop()V

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    const v1, 0x10a0031

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 791
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 792
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$7;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$7;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;Landroid/graphics/drawable/AnimationDrawable;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    .line 798
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->start()V

    .line 799
    return-void
.end method

.method protected startSucceedAnimation()V
    .locals 2

    .prologue
    .line 896
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->stop()V

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    const v1, 0x10a0013

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 901
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mUnlockButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 902
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 903
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->setAnimationTextandImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 904
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 906
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$11;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$11;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;Landroid/graphics/drawable/AnimationDrawable;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    .line 912
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->ani:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->start()V

    .line 913
    return-void
.end method
