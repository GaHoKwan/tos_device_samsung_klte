.class public Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;
.super Ljava/lang/Object;
.source "SViewCoverManager.java"


# static fields
.field public static final ACTION_CLEAR_COVER_OPEN:Ljava/lang/String; = "com.samsung.cover.OPEN"

.field public static final ACTION_CLEAR_COVER_STATE_CHANGE:Ljava/lang/String; = "com.samsung.cover.STATE_CHANGE"

.field private static final DEBUG:Z = true

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final SVIEW_COVER_DISPLAY_TIMEOUT_DEFAULT:I = 0x1f40

.field private static final TAG:Ljava/lang/String; = "SViewCoverManager"


# instance fields
.field private isAutoUnlock:I

.field private mContext:Landroid/content/Context;

.field private mCoverChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mGoToSleepRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mIsCoverOpen:Z

.field private mKeyguardServiceDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

.field private mPMS:Landroid/os/IPowerManager;

.field private mPhoneState:I

.field private mSViewCoverDialog:Landroid/app/Dialog;

.field private mShowingCoverUI:Z

.field private mSuppressCoverUI:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ksDelegate"    # Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z

    .line 80
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z

    .line 81
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsCoverOpen:Z

    .line 82
    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPhoneState:I

    .line 83
    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->isAutoUnlock:I

    .line 85
    new-instance v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$1;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mGoToSleepRunnable:Ljava/lang/Runnable;

    .line 96
    new-instance v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$2;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCoverChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 140
    new-instance v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$3;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    .line 154
    const-string v1, "SViewCoverManager"

    const-string v2, "SViewCoverManager!! "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    .line 156
    iput-object p2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mKeyguardServiceDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .line 158
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPMS:Landroid/os/IPowerManager;

    .line 160
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 161
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.cover.OPEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCoverChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/IPowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPMS:Landroid/os/IPowerManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPhoneState:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsCoverOpen:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mGoToSleepRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->handleHide()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->handleShow()V

    return-void
.end method

.method private createDialog()Landroid/app/Dialog;
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 169
    const-string v4, "SViewCoverManager"

    const-string v5, "in createDialog of SViewCover "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v0, Landroid/app/Dialog;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 172
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, v7}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 173
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 174
    const v4, 0x10900aa

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 176
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const-string v5, "SViewCover"

    invoke-virtual {v4, v5}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x832

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 179
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/view/Window;->setLayout(II)V

    .line 180
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0xc00

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 182
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 184
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "automatic_unlock"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 185
    .local v1, "isAutoUnlock":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mKeyguardServiceDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v2

    .line 186
    .local v2, "isSecureLock":Z
    if-nez v2, :cond_0

    if-ne v1, v7, :cond_0

    .line 187
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x480000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 191
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 192
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 193
    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 194
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 195
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    return-object v0
.end method

.method private handleHide()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mGoToSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 243
    const-string v0, "SViewCoverManager"

    const-string v1, "handleHide()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverDialog:Landroid/app/Dialog;

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z

    .line 249
    :cond_0
    return-void
.end method

.method private handleShow()V
    .locals 4

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsCoverOpen:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPhoneState:I

    if-eqz v0, :cond_2

    .line 225
    :cond_0
    const-string v0, "SViewCoverManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleShow( not show SViewCover) mSuppressCoverUI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsCoverOpen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsCoverOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mShowingCoverUI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPhoneState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPhoneState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_1
    :goto_0
    return-void

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 230
    const-string v0, "SViewCoverManager"

    const-string v1, "handleShow()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverDialog:Landroid/app/Dialog;

    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z

    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mGoToSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 236
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mGoToSleepRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public isShowing()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z

    return v0
.end method

.method public updateCoverState(Z)V
    .locals 3
    .param p1, "isCoverOpen"    # Z

    .prologue
    .line 201
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsCoverOpen:Z

    .line 203
    const-string v0, "SViewCoverManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCoverState( mIsCoverOpen is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsCoverOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsCoverOpen:Z

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public updateSupressCover(Z)V
    .locals 0
    .param p1, "isSupress"    # Z

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z

    .line 216
    return-void
.end method
