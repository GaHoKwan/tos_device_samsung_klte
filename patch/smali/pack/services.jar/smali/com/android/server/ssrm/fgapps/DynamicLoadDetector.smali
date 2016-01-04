.class public Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "DynamicLoadDetector.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;


# static fields
.field static final MSG_TYPE_CHECK_FOREGROUND_APP:I = 0x4

.field static final MSG_TYPE_LOAD_DETECTED:I = 0x2

.field static final MSG_TYPE_RESTART_LOAD_MONITORING:I = 0x3

.field static final MSG_TYPE_START_MONITORING:I = 0x1

.field static mHandler:Landroid/os/Handler;


# instance fields
.field final APP_START_DELAY:I

.field final DEBUG:Z

.field final MAX_SHIFT_TIME:J

.field final RESTART_MONITORING_DELAY:I

.field final SIOP_SHIFT_TIMEOUT:I

.field final TAG:Ljava/lang/String;

.field final TYPE_CPU:I

.field final TYPE_GPU:I

.field final TYPE_NONE:I

.field mCurrentHeavyAppName:Ljava/lang/String;

.field mIsGpuSiopTableExist:Z

.field mIsTimeout:Z

.field mMonitor:Lcom/android/server/ssrm/LoadDetectMonitor;

.field mNativeMonitoringOn:Z

.field mShiftStartTime:J

.field mShiftTotalTime:J

.field mSiopShift:Z

.field mSiopShiftRunnable:Ljava/lang/Runnable;

.field mSiopType:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 32
    const-string v0, "SSRMv2:DynamicLoadDetector"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->TAG:Ljava/lang/String;

    .line 34
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->DEBUG:Z

    .line 50
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->APP_START_DELAY:I

    .line 52
    const v0, 0x1d4c0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->SIOP_SHIFT_TIMEOUT:I

    .line 54
    const v0, 0xea60

    iput v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->RESTART_MONITORING_DELAY:I

    .line 56
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->MAX_SHIFT_TIME:J

    .line 58
    const-string v0, "null"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mCurrentHeavyAppName:Ljava/lang/String;

    .line 60
    iput-wide v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mShiftStartTime:J

    .line 62
    iput-wide v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mShiftTotalTime:J

    .line 64
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mIsTimeout:Z

    .line 99
    new-instance v0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector$2;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector$2;-><init>(Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mSiopShiftRunnable:Ljava/lang/Runnable;

    .line 155
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mSiopShift:Z

    .line 161
    iput v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->TYPE_NONE:I

    .line 163
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->TYPE_CPU:I

    .line 165
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->TYPE_GPU:I

    .line 167
    iput v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mSiopType:I

    .line 69
    new-instance v0, Lcom/android/server/ssrm/LoadDetectMonitor;

    invoke-direct {v0}, Lcom/android/server/ssrm/LoadDetectMonitor;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mMonitor:Lcom/android/server/ssrm/LoadDetectMonitor;

    .line 71
    new-instance v0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector$1;

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector$1;-><init>(Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mHandler:Landroid/os/Handler;

    .line 94
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->registerWhiteListPackages()V

    .line 96
    const-string v0, "GHeavyUserUp"

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->isConditionExist(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mIsGpuSiopTableExist:Z

    .line 97
    return-void
.end method

.method private registerWhiteListPackages()V
    .locals 4

    .prologue
    .line 112
    sget-object v0, Lcom/android/server/ssrm/HotGameList;->HotGameGroup0:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 113
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/HotGameList;->HotGameGroup1:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 116
    .restart local v3    # "name":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 118
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/android/server/ssrm/HotGameList;->HotGameGroup2:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 119
    .restart local v3    # "name":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 121
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/android/server/ssrm/HotGameList;->HotGameGroup3:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 122
    .restart local v3    # "name":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 124
    .end local v3    # "name":Ljava/lang/String;
    :cond_3
    sget-object v0, Lcom/android/server/ssrm/HotGameList;->HotGameGroup4:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 125
    .restart local v3    # "name":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 127
    .end local v3    # "name":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public static reportLoadState(I)V
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 291
    sget-object v1, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 292
    sget-object v1, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 293
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 294
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 295
    sget-object v1, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 297
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private startMonitoringDelayed()V
    .locals 4

    .prologue
    .line 256
    sget-object v1, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 257
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 258
    sget-object v1, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 259
    return-void
.end method

.method private stopMonitoring()V
    .locals 2

    .prologue
    .line 246
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 247
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mNativeMonitoringOn:Z

    if-eqz v0, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->stopNativeMonitoring()V

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->isSiopShifted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->shiftSiopTable(Z)V

    .line 253
    :cond_1
    return-void
.end method

.method private stopNativeMonitoring()V
    .locals 2

    .prologue
    .line 280
    const-string v0, "SSRMv2:DynamicLoadDetector"

    const-string v1, "!@# Monitoring OFF"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mNativeMonitoringOn:Z

    .line 282
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mMonitor:Lcom/android/server/ssrm/LoadDetectMonitor;

    invoke-virtual {v0}, Lcom/android/server/ssrm/LoadDetectMonitor;->disableLoadDetect()V

    .line 283
    return-void
.end method


# virtual methods
.method isSiopShifted()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mSiopShift:Z

    return v0
.end method

.method public onFgAppChanged()V
    .locals 5

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "com.sec.android.app.launcher"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    sget-object v2, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 211
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v0, Landroid/os/Message;->what:I

    .line 212
    sget-object v2, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 217
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 216
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->scheduleMonitoring(Z)V

    goto :goto_0
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 288
    return-void
.end method

.method protected onLoadDetected(I)V
    .locals 10
    .param p1, "state"    # I

    .prologue
    const/4 v7, 0x1

    .line 131
    const-string v6, "SSRMv2:DynamicLoadDetector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onLoadDetected:: state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "STATE_CPU_HIGH_LOAD_END":I
    const/4 v1, 0x1

    .line 135
    .local v1, "STATE_CPU_HIGH_LOAD_START":I
    const/4 v2, 0x2

    .line 136
    .local v2, "STATE_GPU_HIGH_LOAD_END":I
    const/4 v3, 0x3

    .line 137
    .local v3, "STATE_GPU_HIGH_LOAD_START":I
    const/4 v4, 0x4

    .line 139
    .local v4, "STATE_MODERATELY_HEAVY_LOAD_START":I
    sget-object v6, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 140
    .local v5, "msg":Landroid/os/Message;
    packed-switch p1, :pswitch_data_0

    .line 153
    :goto_0
    :pswitch_0
    return-void

    .line 143
    :pswitch_1
    if-ne p1, v7, :cond_0

    move v6, v7

    :goto_1
    invoke-virtual {p0, v7, v6}, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->shiftSiopTable(ZI)V

    .line 144
    sget-object v6, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 145
    sget-object v6, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mSiopShiftRunnable:Ljava/lang/Runnable;

    const-wide/32 v8, 0x1d4c0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    const/4 v6, 0x3

    iput v6, v5, Landroid/os/Message;->what:I

    .line 147
    sget-object v6, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mHandler:Landroid/os/Handler;

    const-wide/32 v7, 0xea60

    invoke-virtual {v6, v5, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 148
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->stopNativeMonitoring()V

    goto :goto_0

    .line 143
    :cond_0
    const/4 v6, 0x2

    goto :goto_1

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method scheduleMonitoring(Z)V
    .locals 7
    .param p1, "startNow"    # Z

    .prologue
    const/4 v3, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "packageName":Ljava/lang/String;
    sget-object v4, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v2

    .line 223
    .local v2, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->isPackageExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v1}, Lcom/android/server/ssrm/SortingMachine;->isPreloadApp(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .line 226
    .local v0, "needToMonitorLoad":Z
    :goto_0
    const-string v4, "SSRMv2:DynamicLoadDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onFgAppChanged:: needToMonitorLoad = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    if-eqz v0, :cond_3

    .line 229
    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mNativeMonitoringOn:Z

    if-nez v3, :cond_0

    .line 230
    if-eqz p1, :cond_2

    .line 231
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->startNativeMonitoring()V

    .line 243
    :cond_0
    :goto_1
    return-void

    .end local v0    # "needToMonitorLoad":Z
    :cond_1
    move v0, v3

    .line 223
    goto :goto_0

    .line 233
    .restart local v0    # "needToMonitorLoad":Z
    :cond_2
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->startMonitoringDelayed()V

    goto :goto_1

    .line 237
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mNativeMonitoringOn:Z

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->isSiopShifted()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 238
    :cond_4
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->stopMonitoring()V

    .line 240
    :cond_5
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mIsTimeout:Z

    .line 241
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mShiftTotalTime:J

    goto :goto_1
.end method

.method shiftSiopTable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->shiftSiopTable(ZI)V

    .line 171
    return-void
.end method

.method shiftSiopTable(ZI)V
    .locals 8
    .param p1, "enable"    # Z
    .param p2, "type"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 174
    const-string v0, "SSRMv2:DynamicLoadDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shiftSiopTable:: enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mSiopShift:Z

    .line 178
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mSiopShift:Z

    if-eqz v0, :cond_2

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mShiftStartTime:J

    .line 185
    :goto_0
    iget-wide v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mShiftTotalTime:J

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 186
    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mIsTimeout:Z

    .line 189
    :cond_0
    iget v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mSiopType:I

    if-eq v0, p2, :cond_1

    .line 190
    iput p2, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mSiopType:I

    .line 191
    const-string v0, "HeavyUserScenario"

    invoke-static {v0, v7}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onSsrmStatusChanged(Ljava/lang/String;Z)V

    .line 192
    const-string v0, "GHeavyUserScenario"

    invoke-static {v0, v7}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onSsrmStatusChanged(Ljava/lang/String;Z)V

    .line 193
    iget v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mSiopType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 194
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mIsGpuSiopTableExist:Z

    if-eqz v0, :cond_3

    .line 195
    const-string v0, "GHeavyUserScenario"

    invoke-static {v0, v6}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onSsrmStatusChanged(Ljava/lang/String;Z)V

    .line 203
    :cond_1
    :goto_1
    return-void

    .line 181
    :cond_2
    iget-wide v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mShiftTotalTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mShiftStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mShiftTotalTime:J

    .line 182
    const-string v0, "SSRMv2:DynamicLoadDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shiftSiopTable:: mAccumulatedDetectingTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mShiftTotalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsTimeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mIsTimeout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_3
    const-string v0, "HeavyUserScenario"

    invoke-static {v0, v6}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onSsrmStatusChanged(Ljava/lang/String;Z)V

    goto :goto_1

    .line 199
    :cond_4
    iget v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mSiopType:I

    if-ne v0, v6, :cond_1

    .line 200
    const-string v0, "HeavyUserScenario"

    invoke-static {v0, v6}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onSsrmStatusChanged(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method startNativeMonitoring()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 262
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mSiopShift:Z

    if-eqz v2, :cond_0

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 264
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mShiftTotalTime:J

    iget-wide v4, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mShiftStartTime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mShiftTotalTime:J

    .line 265
    iput-wide v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mShiftStartTime:J

    .line 266
    iget-wide v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mShiftTotalTime:J

    const-wide/32 v4, 0xdbba0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 267
    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mIsTimeout:Z

    .line 270
    .end local v0    # "currentTime":J
    :cond_0
    const-string v2, "SSRMv2:DynamicLoadDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shiftSiopTable:: mTotalDetectingTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mShiftTotalTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mIsTimeout:Z

    if-eqz v2, :cond_1

    .line 277
    :goto_0
    return-void

    .line 274
    :cond_1
    const-string v2, "SSRMv2:DynamicLoadDetector"

    const-string v3, "!@# Monitoring ON"

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mNativeMonitoringOn:Z

    .line 276
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->mMonitor:Lcom/android/server/ssrm/LoadDetectMonitor;

    invoke-virtual {v2}, Lcom/android/server/ssrm/LoadDetectMonitor;->enableLoadDetect()V

    goto :goto_0
.end method
