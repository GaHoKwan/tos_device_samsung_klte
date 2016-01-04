.class public Lcom/android/server/ssrm/LoadDetectMonitor;
.super Ljava/lang/Object;
.source "LoadDetectMonitor.java"


# static fields
.field public static final LOAD_DETECT_PERIOD:J = 0xc8L

.field static final TAG:Ljava/lang/String; = "SSRMv2:DynamicLoadDetector"


# instance fields
.field public mCpuLoadState:I

.field public mGpuLoadState:I

.field final mHandler:Landroid/os/Handler;

.field public mLoadDetectTimer:Ljava/util/Timer;

.field mNativeMonitoringRunnable:Ljava/lang/Runnable;

.field public mShowLoadStateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mShowLoadStateHandler:Landroid/os/Handler;

    .line 34
    iput-object v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mLoadDetectTimer:Ljava/util/Timer;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mCpuLoadState:I

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mGpuLoadState:I

    .line 57
    new-instance v0, Lcom/android/server/ssrm/LoadDetectMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/LoadDetectMonitor$1;-><init>(Lcom/android/server/ssrm/LoadDetectMonitor;)V

    iput-object v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mNativeMonitoringRunnable:Ljava/lang/Runnable;

    .line 53
    invoke-virtual {p0}, Lcom/android/server/ssrm/LoadDetectMonitor;->nativeLoadDetectInit()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mHandler:Landroid/os/Handler;

    .line 55
    return-void
.end method


# virtual methods
.method public disableLoadDetect()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/server/ssrm/LoadDetectMonitor;->nativeResetLoadDetect()V

    .line 73
    return-void
.end method

.method public enableLoadDetect()V
    .locals 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mNativeMonitoringRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    return-void
.end method

.method native nativeChangeLoadDetectParameter(II)V
.end method

.method native nativeLoadDetectInit()V
.end method

.method native nativeLoadDetectTask()V
.end method

.method native nativeResetLoadDetect()V
.end method

.method public reportLoadState(I)V
    .locals 1
    .param p1, "mLoadState"    # I

    .prologue
    .line 82
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 83
    :cond_0
    iput p1, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mCpuLoadState:I

    .line 90
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->reportLoadState(I)V

    .line 91
    return-void

    .line 84
    :cond_2
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    .line 87
    iput p1, p0, Lcom/android/server/ssrm/LoadDetectMonitor;->mGpuLoadState:I

    goto :goto_0
.end method
