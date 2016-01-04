.class Lcom/android/internal/policy/impl/GlobalActions$ScreenshotAction;
.super Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenshotAction"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field mScreenshotConnection:Landroid/content/ServiceConnection;

.field final mScreenshotLock:Ljava/lang/Object;

.field final mScreenshotTimeout:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1462
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$ScreenshotAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    .line 1463
    const v0, 0x502000c

    const v1, 0x509002d

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;-><init>(II)V

    .line 1445
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ScreenshotAction;->mScreenshotLock:Ljava/lang/Object;

    .line 1446
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ScreenshotAction;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 1448
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$ScreenshotAction$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/GlobalActions$ScreenshotAction$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions$ScreenshotAction;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ScreenshotAction;->mScreenshotTimeout:Ljava/lang/Runnable;

    .line 1466
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$ScreenshotAction;->mContext:Landroid/content/Context;

    .line 1467
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlobalActions$ScreenshotAction;->mHandler:Landroid/os/Handler;

    .line 1468
    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/GlobalActions$ScreenshotAction;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions$ScreenshotAction;

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ScreenshotAction;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/GlobalActions$ScreenshotAction;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions$ScreenshotAction;

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ScreenshotAction;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onPress()V
    .locals 8

    .prologue
    .line 1483
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$ScreenshotAction;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1484
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$ScreenshotAction;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v3, :cond_0

    .line 1485
    monitor-exit v4

    .line 1540
    :goto_0
    return-void

    .line 1487
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.systemui"

    const-string v5, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1490
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1491
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$ScreenshotAction$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlobalActions$ScreenshotAction$2;-><init>(Lcom/android/internal/policy/impl/GlobalActions$ScreenshotAction;)V

    .line 1535
    .local v1, "conn":Landroid/content/ServiceConnection;
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$ScreenshotAction;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v1, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1536
    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$ScreenshotAction;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 1537
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$ScreenshotAction;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$ScreenshotAction;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1539
    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "conn":Landroid/content/ServiceConnection;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1475
    const/4 v0, 0x1

    return v0
.end method

.method public showConditional()Z
    .locals 1

    .prologue
    .line 1479
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1471
    const/4 v0, 0x1

    return v0
.end method
