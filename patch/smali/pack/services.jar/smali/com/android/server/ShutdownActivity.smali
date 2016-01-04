.class public Lcom/android/server/ShutdownActivity;
.super Landroid/app/Activity;
.source "ShutdownActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShutdownActivity"


# instance fields
.field private mConfirm:Z

.field private mFake:Z

.field private mReboot:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ShutdownActivity;->mFake:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ShutdownActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ShutdownActivity;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/server/ShutdownActivity;->mReboot:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/ShutdownActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ShutdownActivity;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/server/ShutdownActivity;->mConfirm:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.REBOOT"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/ShutdownActivity;->mReboot:Z

    .line 47
    const-string v4, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/ShutdownActivity;->mConfirm:Z

    .line 50
    const-string v4, "fake"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    const-string v4, "ShutdownActivity"

    const-string v5, "Fake Shutdown"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/ShutdownActivity;->mFake:Z

    .line 98
    :goto_0
    return-void

    .line 55
    :cond_0
    iput-boolean v6, p0, Lcom/android/server/ShutdownActivity;->mFake:Z

    .line 58
    const-string v4, "android.intent.extra.SYSTEM_REQUEST"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 59
    .local v2, "systemRequest":Z
    const-string v4, "android.intent.extra.REBOOT_REASON"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "rebootReason":Ljava/lang/String;
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 70
    new-instance v3, Lcom/android/server/ShutdownActivity$1;

    const-string v4, "ShutdownActivity"

    invoke-direct {v3, p0, v4, v1, v2}, Lcom/android/server/ShutdownActivity$1;-><init>(Lcom/android/server/ShutdownActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 91
    .local v3, "thr":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 95
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 123
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 124
    const-string v0, "ShutdownActivity"

    const-string v1, "back button pressed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v0, 0x0

    .line 127
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 107
    iget-boolean v0, p0, Lcom/android/server/ShutdownActivity;->mFake:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/server/power/FakeShutdown;->fakeState()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/power/FakeShutdown;->fakeState()I

    move-result v0

    if-nez v0, :cond_1

    .line 111
    :cond_0
    const-string v0, "ShutdownActivity"

    const-string v1, "finish pause immediately right after pausing"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_1
    const-string v0, "ShutdownActivity"

    const-string v1, "Tracking ShutdownActivity pause"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
