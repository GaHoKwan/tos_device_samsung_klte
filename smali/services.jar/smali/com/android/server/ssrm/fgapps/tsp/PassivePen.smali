.class public Lcom/android/server/ssrm/fgapps/tsp/PassivePen;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "PassivePen.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOnCallback;


# instance fields
.field final MSG_RECOVER_TSP_STATE:I

.field final TAG:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field mIsAppForeground:Z

.field mLastValue:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 30
    const-string v0, "SSRMv2:TSP:PassivePen"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/PassivePen;->TAG:Ljava/lang/String;

    .line 32
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/tsp/PassivePen;->mIsAppForeground:Z

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/ssrm/fgapps/tsp/PassivePen;->MSG_RECOVER_TSP_STATE:I

    .line 62
    iput v1, p0, Lcom/android/server/ssrm/fgapps/tsp/PassivePen;->mLastValue:I

    .line 39
    const-string v0, "com.samsung.android.snote"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/android/server/ssrm/fgapps/tsp/PassivePen$1;

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ssrm/fgapps/tsp/PassivePen$1;-><init>(Lcom/android/server/ssrm/fgapps/tsp/PassivePen;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/PassivePen;->mHandler:Landroid/os/Handler;

    .line 55
    return-void
.end method

.method private updateSysfs()V
    .locals 4

    .prologue
    .line 65
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/tsp/PassivePen;->mIsAppForeground:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 66
    .local v0, "targetValue":I
    :goto_0
    iget v1, p0, Lcom/android/server/ssrm/fgapps/tsp/PassivePen;->mLastValue:I

    if-eq v1, v0, :cond_0

    .line 67
    iput v0, p0, Lcom/android/server/ssrm/fgapps/tsp/PassivePen;->mLastValue:I

    .line 68
    const-string v1, "SSRMv2:TSP:PassivePen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stylus_enable,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->sendTspCmd(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void

    .line 65
    .end local v0    # "targetValue":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onFgAppChanged()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/tsp/PassivePen;->mIsAppForeground:Z

    .line 75
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/tsp/PassivePen;->updateSysfs()V

    .line 76
    return-void
.end method

.method public onScreenOn()V
    .locals 4

    .prologue
    .line 80
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/tsp/PassivePen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 81
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 82
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/tsp/PassivePen;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 83
    return-void
.end method
