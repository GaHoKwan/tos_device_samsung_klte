.class public Lcom/android/server/ssrm/HumanMotionTracker;
.super Ljava/lang/Object;
.source "HumanMotionTracker.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field mCpuCoreNumMaxHelper:Landroid/os/DVFSHelper;

.field mCpuMaxHelper:Landroid/os/DVFSHelper;

.field mCpuMinHelper:Landroid/os/DVFSHelper;

.field mGpuMaxHelper:Landroid/os/DVFSHelper;

.field mGpuMinHelper:Landroid/os/DVFSHelper;

.field mProperCpuCoreMaxNum:I

.field mProperCpuMaxFreq:I

.field mProperCpuMinFreq:I

.field mProperGpuMaxFreq:I

.field mProperGpuMinFreq:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "SSRMv2:HumanMotionTracker"

    sput-object v0, Lcom/android/server/ssrm/HumanMotionTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, -0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v6, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mProperCpuMinFreq:I

    .line 40
    iput v6, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mProperCpuMaxFreq:I

    .line 42
    iput v6, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mProperGpuMinFreq:I

    .line 44
    iput v6, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mProperGpuMaxFreq:I

    .line 46
    iput v6, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mProperCpuCoreMaxNum:I

    .line 49
    iput-object p1, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mContext:Landroid/content/Context;

    .line 51
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    if-eqz v0, :cond_0

    .line 52
    const v0, 0x122a00

    iput v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mProperCpuMaxFreq:I

    .line 53
    const v0, 0x1312d000

    iput v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mProperGpuMaxFreq:I

    .line 54
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mProperCpuCoreMaxNum:I

    .line 57
    :cond_0
    iget v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mProperCpuMinFreq:I

    if-eq v0, v6, :cond_1

    .line 58
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "HMT_ARM_MIN"

    const/16 v3, 0xc

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mCpuMinHelper:Landroid/os/DVFSHelper;

    .line 59
    iget-object v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mCpuMinHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mProperCpuMinFreq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_1
    iget v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mProperCpuMaxFreq:I

    if-eq v0, v6, :cond_2

    .line 63
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "HMT_ARM_MAX"

    const/16 v3, 0xd

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    .line 64
    iget-object v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mProperCpuMaxFreq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_2
    iget v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mProperGpuMinFreq:I

    if-eq v0, v6, :cond_3

    .line 68
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "HMT_GPU_MIN"

    const/16 v3, 0x10

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mGpuMinHelper:Landroid/os/DVFSHelper;

    .line 69
    iget-object v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mGpuMinHelper:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mProperGpuMinFreq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_3
    iget v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mProperGpuMaxFreq:I

    if-eq v0, v6, :cond_4

    .line 73
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "HMT_GPU_MAX"

    const/16 v3, 0x11

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    .line 74
    iget-object v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mProperGpuMaxFreq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_4
    iget v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mProperCpuCoreMaxNum:I

    if-eq v0, v6, :cond_5

    .line 78
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "HMT_CORE_NUM_MAX"

    const/16 v3, 0xf

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mCpuCoreNumMaxHelper:Landroid/os/DVFSHelper;

    .line 80
    iget-object v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mCpuCoreNumMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mProperCpuCoreMaxNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_5
    return-void
.end method


# virtual methods
.method onConnected()V
    .locals 3

    .prologue
    .line 85
    sget-object v0, Lcom/android/server/ssrm/HumanMotionTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnected:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mProperCpuMinFreq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mProperCpuMaxFreq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mProperGpuMinFreq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mProperGpuMaxFreq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mCpuMinHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mCpuMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mGpuMinHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mGpuMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_3

    .line 98
    iget-object v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mCpuCoreNumMaxHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_4

    .line 101
    iget-object v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mCpuCoreNumMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 103
    :cond_4
    return-void
.end method

.method onDisconnected()V
    .locals 3

    .prologue
    .line 106
    sget-object v0, Lcom/android/server/ssrm/HumanMotionTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnected:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mProperCpuMinFreq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mProperCpuMaxFreq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mProperGpuMinFreq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mProperGpuMaxFreq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mCpuMinHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mCpuMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mGpuMinHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mGpuMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_3

    .line 119
    iget-object v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mCpuCoreNumMaxHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_4

    .line 122
    iget-object v0, p0, Lcom/android/server/ssrm/HumanMotionTracker;->mCpuCoreNumMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 124
    :cond_4
    return-void
.end method
