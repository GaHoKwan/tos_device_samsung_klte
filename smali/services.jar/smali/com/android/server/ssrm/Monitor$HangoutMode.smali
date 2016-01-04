.class Lcom/android/server/ssrm/Monitor$HangoutMode;
.super Ljava/lang/Object;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HangoutMode"
.end annotation


# instance fields
.field final HANGOUT_MONITOR_FIRST_DELAY:I

.field final HANGOUT_MONITOR_PERIOD:I

.field mCondition:Lcom/android/server/ssrm/settings/Condition;

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mHangoutRunnable:Ljava/lang/Runnable;

.field mIsHangoutForeground:Z

.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1795
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$HangoutMode;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1791
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/Monitor$HangoutMode;->mIsHangoutForeground:Z

    .line 1793
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/server/ssrm/Monitor$HangoutMode;->HANGOUT_MONITOR_FIRST_DELAY:I

    .line 1814
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/ssrm/Monitor$HangoutMode;->HANGOUT_MONITOR_PERIOD:I

    .line 1816
    new-instance v0, Lcom/android/server/ssrm/Monitor$HangoutMode$1;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/Monitor$HangoutMode$1;-><init>(Lcom/android/server/ssrm/Monitor$HangoutMode;)V

    iput-object v0, p0, Lcom/android/server/ssrm/Monitor$HangoutMode;->mHangoutRunnable:Ljava/lang/Runnable;

    .line 1796
    iput-object p2, p0, Lcom/android/server/ssrm/Monitor$HangoutMode;->mContext:Landroid/content/Context;

    .line 1797
    iput-object p3, p0, Lcom/android/server/ssrm/Monitor$HangoutMode;->mHandler:Landroid/os/Handler;

    .line 1798
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$HangoutMode;->mHangoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p3, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1799
    return-void
.end method


# virtual methods
.method public onFgAppChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1802
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->SSRM_HANGOUTS:Z

    if-eqz v0, :cond_0

    .line 1803
    const-string v0, "com.google.android.talk"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1804
    const-string/jumbo v0, "sys.hangouts.fps"

    const-string v1, "15000"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$HangoutMode;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor;->mHangoutMode:Lcom/android/server/ssrm/Monitor$HangoutMode;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/ssrm/Monitor$HangoutMode;->mIsHangoutForeground:Z

    .line 1812
    :cond_0
    :goto_0
    return-void

    .line 1807
    :cond_1
    const-string/jumbo v0, "sys.hangouts.fps"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$HangoutMode;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor;->mHangoutMode:Lcom/android/server/ssrm/Monitor$HangoutMode;

    iput-boolean v2, v0, Lcom/android/server/ssrm/Monitor$HangoutMode;->mIsHangoutForeground:Z

    .line 1809
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$HangoutMode;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$HangoutMode;->mCondition:Lcom/android/server/ssrm/settings/Condition;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/Monitor;->signal(Lcom/android/server/ssrm/settings/Condition;Z)V

    goto :goto_0
.end method
