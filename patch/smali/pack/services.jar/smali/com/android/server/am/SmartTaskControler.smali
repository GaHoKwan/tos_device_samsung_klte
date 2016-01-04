.class public Lcom/android/server/am/SmartTaskControler;
.super Ljava/lang/Object;
.source "SmartTaskControler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SmartTaskControler$1;,
        Lcom/android/server/am/SmartTaskControler$TaskKillTracer;,
        Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;,
        Lcom/android/server/am/SmartTaskControler$TaskInfo;,
        Lcom/android/server/am/SmartTaskControler$SmartTaskControlReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final HTE_WORKING_GAP:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "SmartTaskControler"


# instance fields
.field private MAX_RECENT_TASK:I

.field private hteCheckedTime:J

.field private isHomeDead:Z

.field mAms:Lcom/android/server/am/ActivityManagerService;

.field final mProcessList:Lcom/android/server/am/ProcessList;

.field mSTCConf:Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;

.field mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field memInfo:Lcom/android/internal/util/MemInfoReader;

.field private taskKillTracer:Lcom/android/server/am/SmartTaskControler$TaskKillTracer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-string/jumbo v0, "true"

    const-string v1, "persist.task_debug"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/SmartTaskControler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "StackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    const/16 v1, 0xa

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v2, Lcom/android/server/am/ProcessList;

    invoke-direct {v2}, Lcom/android/server/am/ProcessList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/SmartTaskControler;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/SmartTaskControler;->hteCheckedTime:J

    .line 42
    iput v1, p0, Lcom/android/server/am/SmartTaskControler;->MAX_RECENT_TASK:I

    .line 45
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/SmartTaskControler;->isHomeDead:Z

    .line 48
    const-string v2, "SmartTaskControler"

    const-string v3, "SmartTaskControler()"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/SmartTaskControler;->memInfo:Lcom/android/internal/util/MemInfoReader;

    .line 50
    iput-object p2, p0, Lcom/android/server/am/SmartTaskControler;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 51
    iput-object p3, p0, Lcom/android/server/am/SmartTaskControler;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 52
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    iput v1, p0, Lcom/android/server/am/SmartTaskControler;->MAX_RECENT_TASK:I

    .line 53
    new-instance v1, Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;

    iget-object v2, p0, Lcom/android/server/am/SmartTaskControler;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList;->getMaxMinfree()J

    move-result-wide v2

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;-><init>(Lcom/android/server/am/SmartTaskControler;J)V

    iput-object v1, p0, Lcom/android/server/am/SmartTaskControler;->mSTCConf:Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;

    .line 55
    sget-boolean v1, Lcom/android/server/am/SmartTaskControler;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "kill_task_case_3"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v1, "kill_task_case_2"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string v1, "kill_task_case_1"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    new-instance v1, Lcom/android/server/am/SmartTaskControler$SmartTaskControlReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/am/SmartTaskControler$SmartTaskControlReceiver;-><init>(Lcom/android/server/am/SmartTaskControler;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 61
    new-instance v1, Lcom/android/server/am/SmartTaskControler$TaskKillTracer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/SmartTaskControler$TaskKillTracer;-><init>(Lcom/android/server/am/SmartTaskControler;Lcom/android/server/am/SmartTaskControler$1;)V

    iput-object v1, p0, Lcom/android/server/am/SmartTaskControler;->taskKillTracer:Lcom/android/server/am/SmartTaskControler$TaskKillTracer;

    .line 63
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void

    .line 52
    :cond_1
    const/16 v1, 0x14

    goto :goto_0
.end method

.method private getBackgroundTasks(I)Ljava/util/List;
    .locals 11
    .param p1, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/SmartTaskControler$TaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    const/4 v3, 0x0

    .line 320
    .local v3, "isFindHomeTask":Z
    iget-object v8, p0, Lcom/android/server/am/SmartTaskControler;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 321
    .local v1, "RecentTask":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 322
    .local v0, "N":I
    new-instance v4, Ljava/util/ArrayList;

    if-ge p1, v0, :cond_2

    move v8, p1

    :goto_0
    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 323
    .local v4, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/SmartTaskControler$TaskInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_5

    if-lez p1, :cond_5

    .line 324
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    .line 325
    .local v7, "tr":Lcom/android/server/am/TaskRecord;
    sget-boolean v8, Lcom/android/server/am/SmartTaskControler;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 326
    const-string v8, "SmartTaskControler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "recent task =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    const-string v8, "com.salab.act"

    iget-object v9, v7, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 323
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "i":I
    .end local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/SmartTaskControler$TaskInfo;>;"
    .end local v7    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_2
    move v8, v0

    .line 322
    goto :goto_0

    .line 332
    .restart local v2    # "i":I
    .restart local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/SmartTaskControler$TaskInfo;>;"
    .restart local v7    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_3
    if-nez v3, :cond_4

    .line 333
    iget-object v8, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 334
    const/4 v3, 0x1

    goto :goto_2

    .line 338
    :cond_4
    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 339
    new-instance v5, Lcom/android/server/am/SmartTaskControler$TaskInfo;

    invoke-direct {v5, p0}, Lcom/android/server/am/SmartTaskControler$TaskInfo;-><init>(Lcom/android/server/am/SmartTaskControler;)V

    .line 340
    .local v5, "rti":Lcom/android/server/am/SmartTaskControler$TaskInfo;
    iput-object v7, v5, Lcom/android/server/am/SmartTaskControler$TaskInfo;->task:Lcom/android/server/am/TaskRecord;

    .line 341
    iget v8, v7, Lcom/android/server/am/TaskRecord;->numActivities:I

    iput v8, v5, Lcom/android/server/am/SmartTaskControler$TaskInfo;->numActivities:I

    .line 342
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 347
    .end local v5    # "rti":Lcom/android/server/am/SmartTaskControler$TaskInfo;
    .end local v7    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_5
    sget-boolean v8, Lcom/android/server/am/SmartTaskControler;->DEBUG:Z

    if-eqz v8, :cond_6

    .line 348
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_6

    .line 349
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/SmartTaskControler$TaskInfo;

    .line 350
    .local v6, "ti":Lcom/android/server/am/SmartTaskControler$TaskInfo;
    const-string v8, "SmartTaskControler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Background Task ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Lcom/android/server/am/SmartTaskControler$TaskInfo;->task:Lcom/android/server/am/TaskRecord;

    iget-object v10, v10, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 354
    .end local v6    # "ti":Lcom/android/server/am/SmartTaskControler$TaskInfo;
    :cond_6
    return-object v4
.end method

.method private isTooEarly()Z
    .locals 6

    .prologue
    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 191
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/am/SmartTaskControler;->hteCheckedTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 192
    iput-wide v0, p0, Lcom/android/server/am/SmartTaskControler;->hteCheckedTime:J

    .line 193
    const/4 v2, 0x0

    .line 195
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private final killProcessTask(Lcom/android/server/am/TaskRecord;)V
    .locals 10
    .param p1, "taskRecord"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 153
    move-object v5, p1

    .line 154
    .local v5, "tr":Lcom/android/server/am/TaskRecord;
    iget-object v6, p0, Lcom/android/server/am/SmartTaskControler;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/am/ActivityManagerService;->getTaskProcess(Lcom/android/server/am/TaskRecord;)Ljava/util/ArrayList;

    move-result-object v2

    .line 155
    .local v2, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v6, p0, Lcom/android/server/am/SmartTaskControler;->mSTCConf:Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;

    iget-wide v3, v6, Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;->HEAVY_PROCESS:J

    .line 157
    .local v3, "threthold":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 158
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 159
    .local v1, "pr":Lcom/android/server/am/ProcessRecord;
    sget-boolean v6, Lcom/android/server/am/SmartTaskControler;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 160
    const-string v6, "SmartTaskControler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Process = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Adj = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , lastPss = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v1, Lcom/android/server/am/ProcessRecord;->lastPss:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", threthold="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", hasStartedServices = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v1, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    iget v6, v1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/4 v7, 0x6

    if-le v6, v7, :cond_1

    .line 163
    iget-boolean v6, v1, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    if-eqz v6, :cond_2

    .line 157
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_2
    const-string v6, "kill remove process by STC at Yellow"

    invoke-direct {p0, v1, v6}, Lcom/android/server/am/SmartTaskControler;->killUnneededProcessLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    goto :goto_1

    .line 170
    .end local v1    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_3
    return-void
.end method

.method private killUnneededProcessLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 5
    .param p1, "pr"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 103
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_0

    .line 104
    const-string v0, "SmartTaskControler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Killing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (adj "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/16 v0, 0x7547

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 107
    iput-boolean v4, p1, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    .line 108
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 110
    :cond_0
    return-void
.end method

.method private recentTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 365
    iget-object v3, p0, Lcom/android/server/am/SmartTaskControler;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 366
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 367
    iget-object v3, p0, Lcom/android/server/am/SmartTaskControler;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 368
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    iget v3, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v3, p1, :cond_0

    .line 372
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :goto_1
    return-object v2

    .line 366
    .restart local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final cleanUpTask(I)V
    .locals 9
    .param p1, "memLevel"    # I

    .prologue
    .line 214
    sget-boolean v6, Lcom/android/server/am/SmartTaskControler;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 215
    iget-object v6, p0, Lcom/android/server/am/SmartTaskControler;->taskKillTracer:Lcom/android/server/am/SmartTaskControler$TaskKillTracer;

    invoke-virtual {v6}, Lcom/android/server/am/SmartTaskControler$TaskKillTracer;->start()V

    .line 217
    :cond_0
    iget-object v6, p0, Lcom/android/server/am/SmartTaskControler;->mSTCConf:Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;

    invoke-virtual {v6, p1}, Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;->getRemainTaskCount(I)I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 218
    .local v3, "remainCount":I
    iget v6, p0, Lcom/android/server/am/SmartTaskControler;->MAX_RECENT_TASK:I

    invoke-direct {p0, v6}, Lcom/android/server/am/SmartTaskControler;->getBackgroundTasks(I)Ljava/util/List;

    move-result-object v0

    .line 221
    .local v0, "Info":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/SmartTaskControler$TaskInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "j":I
    :goto_0
    if-ltz v2, :cond_2

    .line 222
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/SmartTaskControler$TaskInfo;

    .line 223
    .local v5, "ti":Lcom/android/server/am/SmartTaskControler$TaskInfo;
    iget-object v6, v5, Lcom/android/server/am/SmartTaskControler$TaskInfo;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v6, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 224
    .local v1, "it":Landroid/content/Intent;
    iget-object v6, v5, Lcom/android/server/am/SmartTaskControler$TaskInfo;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 226
    .local v4, "taskId":I
    packed-switch p1, :pswitch_data_0

    .line 221
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 228
    :pswitch_0
    if-le v2, v3, :cond_1

    .line 229
    const/4 v6, -0x2

    invoke-virtual {p0, v4, v6}, Lcom/android/server/am/SmartTaskControler;->removeTask(II)Z

    .line 230
    sget-boolean v6, Lcom/android/server/am/SmartTaskControler;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 231
    const-string v6, "SmartTaskControler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LEVEL BLUE : Remove task = Task ID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Kill Process all task"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v6, p0, Lcom/android/server/am/SmartTaskControler;->taskKillTracer:Lcom/android/server/am/SmartTaskControler$TaskKillTracer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Task : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/SmartTaskControler$TaskKillTracer;->pushLog(Ljava/lang/String;)V

    goto :goto_1

    .line 239
    :pswitch_1
    if-le v2, v3, :cond_1

    .line 245
    iget-object v6, v5, Lcom/android/server/am/SmartTaskControler$TaskInfo;->task:Lcom/android/server/am/TaskRecord;

    invoke-direct {p0, v6}, Lcom/android/server/am/SmartTaskControler;->killProcessTask(Lcom/android/server/am/TaskRecord;)V

    .line 247
    sget-boolean v6, Lcom/android/server/am/SmartTaskControler;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 248
    const-string v6, "SmartTaskControler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LEVEL Yellow Remove task = Task ID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Kill Process all task"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v6, p0, Lcom/android/server/am/SmartTaskControler;->taskKillTracer:Lcom/android/server/am/SmartTaskControler$TaskKillTracer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Task : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/SmartTaskControler$TaskKillTracer;->pushLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 257
    :pswitch_2
    if-le v2, v3, :cond_1

    .line 258
    const/4 v6, 0x1

    invoke-virtual {p0, v4, v6}, Lcom/android/server/am/SmartTaskControler;->removeTask(II)Z

    .line 259
    sget-boolean v6, Lcom/android/server/am/SmartTaskControler;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 260
    const-string v6, "SmartTaskControler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Level RED Remove task = Task ID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Kill Process all task"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v6, p0, Lcom/android/server/am/SmartTaskControler;->taskKillTracer:Lcom/android/server/am/SmartTaskControler$TaskKillTracer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Task : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/SmartTaskControler$TaskKillTracer;->pushLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 274
    .end local v1    # "it":Landroid/content/Intent;
    .end local v4    # "taskId":I
    .end local v5    # "ti":Lcom/android/server/am/SmartTaskControler$TaskInfo;
    :cond_2
    sget-boolean v6, Lcom/android/server/am/SmartTaskControler;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 275
    iget-object v6, p0, Lcom/android/server/am/SmartTaskControler;->taskKillTracer:Lcom/android/server/am/SmartTaskControler$TaskKillTracer;

    invoke-virtual {v6}, Lcom/android/server/am/SmartTaskControler$TaskKillTracer;->end()V

    .line 276
    iget-object v6, p0, Lcom/android/server/am/SmartTaskControler;->taskKillTracer:Lcom/android/server/am/SmartTaskControler$TaskKillTracer;

    invoke-virtual {v6}, Lcom/android/server/am/SmartTaskControler$TaskKillTracer;->print()V

    .line 278
    :cond_3
    return-void

    .line 226
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final getAvailableMemory()J
    .locals 6

    .prologue
    .line 358
    iget-object v4, p0, Lcom/android/server/am/SmartTaskControler;->memInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 359
    iget-object v4, p0, Lcom/android/server/am/SmartTaskControler;->memInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v2

    .line 360
    .local v2, "szFreeMem":J
    iget-object v4, p0, Lcom/android/server/am/SmartTaskControler;->memInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v0

    .line 361
    .local v0, "szCached":J
    add-long v4, v2, v0

    return-wide v4
.end method

.method public isHomeProcessDead(Lcom/android/server/am/ProcessRecord;)Z
    .locals 10
    .param p1, "pr"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 119
    const/4 v1, 0x0

    .line 122
    .local v1, "homeTaskRecord":Lcom/android/server/am/TaskRecord;
    iget-object v8, p0, Lcom/android/server/am/SmartTaskControler;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 123
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 124
    iget-object v8, p0, Lcom/android/server/am/SmartTaskControler;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 126
    .local v5, "tr":Lcom/android/server/am/TaskRecord;
    iget-object v8, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 127
    move-object v1, v5

    .line 134
    .end local v5    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_0
    if-nez v1, :cond_2

    .line 135
    iput-boolean v6, p0, Lcom/android/server/am/SmartTaskControler;->isHomeDead:Z

    .line 148
    :goto_1
    return v6

    .line 123
    .restart local v5    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    .end local v5    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_2
    iget-object v8, p0, Lcom/android/server/am/SmartTaskControler;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8, v1}, Lcom/android/server/am/ActivityManagerService;->getTaskProcess(Lcom/android/server/am/TaskRecord;)Ljava/util/ArrayList;

    move-result-object v4

    .line 140
    .local v4, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 141
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 142
    .local v3, "proc":Lcom/android/server/am/ProcessRecord;
    iget v8, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v9, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v8, v9, :cond_3

    .line 143
    iput-boolean v6, p0, Lcom/android/server/am/SmartTaskControler;->isHomeDead:Z

    goto :goto_1

    .line 140
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 147
    .end local v3    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_4
    iput-boolean v7, p0, Lcom/android/server/am/SmartTaskControler;->isHomeDead:Z

    move v6, v7

    .line 148
    goto :goto_1
.end method

.method public final killHeavyProcess()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/android/server/am/SmartTaskControler;->getAvailableMemory()J

    move-result-wide v0

    .line 71
    .local v0, "availableMemory":J
    iget-object v9, p0, Lcom/android/server/am/SmartTaskControler;->mSTCConf:Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;

    iget-wide v9, v9, Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;->RED_MEMORY:J

    cmp-long v9, v0, v9

    if-gtz v9, :cond_0

    iget-boolean v9, p0, Lcom/android/server/am/SmartTaskControler;->isHomeDead:Z

    if-nez v9, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget v9, p0, Lcom/android/server/am/SmartTaskControler;->MAX_RECENT_TASK:I

    invoke-direct {p0, v9}, Lcom/android/server/am/SmartTaskControler;->getBackgroundTasks(I)Ljava/util/List;

    move-result-object v8

    .line 75
    .local v8, "trList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/SmartTaskControler$TaskInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-gtz v9, :cond_2

    .line 76
    sget-boolean v9, Lcom/android/server/am/SmartTaskControler;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 77
    const-string v9, "SmartTaskControler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "trList is empty count = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :cond_2
    iget v9, p0, Lcom/android/server/am/SmartTaskControler;->MAX_RECENT_TASK:I

    invoke-direct {p0, v9}, Lcom/android/server/am/SmartTaskControler;->getBackgroundTasks(I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/SmartTaskControler$TaskInfo;

    iget-object v7, v9, Lcom/android/server/am/SmartTaskControler$TaskInfo;->task:Lcom/android/server/am/TaskRecord;

    .line 81
    .local v7, "tr":Lcom/android/server/am/TaskRecord;
    iget-object v9, p0, Lcom/android/server/am/SmartTaskControler;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9, v7}, Lcom/android/server/am/ActivityManagerService;->getTaskProcess(Lcom/android/server/am/TaskRecord;)Ljava/util/ArrayList;

    move-result-object v4

    .line 82
    .local v4, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v9, p0, Lcom/android/server/am/SmartTaskControler;->mSTCConf:Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;

    iget-wide v5, v9, Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;->HEAVY_PROCESS:J

    .line 84
    .local v5, "threthold":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_0

    .line 85
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 86
    .local v3, "pr":Lcom/android/server/am/ProcessRecord;
    sget-boolean v9, Lcom/android/server/am/SmartTaskControler;->DEBUG:Z

    if-eqz v9, :cond_3

    .line 87
    const-string v9, "SmartTaskControler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Process = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Adj = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v3, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , lastPss = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v3, Lcom/android/server/am/ProcessRecord;->lastPss:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", threthold="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", hasStartedServices = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v3, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_3
    iget-wide v9, v3, Lcom/android/server/am/ProcessRecord;->lastPss:J

    cmp-long v9, v9, v5

    if-lez v9, :cond_4

    iget v9, v3, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/4 v10, 0x6

    if-le v9, v10, :cond_4

    .line 90
    iget-boolean v9, v3, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    if-eqz v9, :cond_5

    .line 84
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 93
    :cond_5
    const-string v9, "kill heavy process by STC"

    invoke-direct {p0, v3, v9}, Lcom/android/server/am/SmartTaskControler;->killUnneededProcessLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 94
    iput-boolean v13, p0, Lcom/android/server/am/SmartTaskControler;->isHomeDead:Z

    goto :goto_2
.end method

.method public removeTask(II)Z
    .locals 8
    .param p1, "taskId"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 281
    monitor-enter p0

    .line 283
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 286
    .local v0, "ident":J
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/am/SmartTaskControler;->recentTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v3

    .line 287
    .local v3, "tr":Lcom/android/server/am/TaskRecord;
    if-eqz v3, :cond_2

    .line 288
    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/android/server/am/TaskRecord;->removeTaskActivitiesLocked(IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 289
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    .line 290
    iget-object v5, p0, Lcom/android/server/am/SmartTaskControler;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v3, p2}, Lcom/android/server/am/ActivityManagerService;->cleanUpRemovedTaskLockedForSTC(Lcom/android/server/am/TaskRecord;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 305
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 308
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_0
    return v4

    .line 293
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    :try_start_3
    iget-object v6, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 296
    iget-object v5, p0, Lcom/android/server/am/SmartTaskControler;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v3, p2}, Lcom/android/server/am/ActivityManagerService;->cleanUpRemovedTaskLockedForSTC(Lcom/android/server/am/TaskRecord;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 305
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    goto :goto_0

    .line 307
    .end local v0    # "ident":J
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 299
    .restart local v0    # "ident":J
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_1
    :try_start_5
    sget-boolean v4, Lcom/android/server/am/SmartTaskControler;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 300
    const-string v4, "SmartTaskControler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeTask: task "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not have activities to remove, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but numActivities="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/server/am/TaskRecord;->numActivities:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 305
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 307
    monitor-exit p0

    move v4, v5

    .line 308
    goto :goto_0

    .line 305
    .end local v3    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method final startTaskCleanUp()V
    .locals 5

    .prologue
    .line 175
    sget-boolean v3, Lcom/android/server/am/SmartTaskControler;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 176
    const-string v3, "SmartTaskControler"

    const-string/jumbo v4, "startTaskCleanUp "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/SmartTaskControler;->isTooEarly()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 187
    :cond_1
    :goto_0
    return-void

    .line 180
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/SmartTaskControler;->getAvailableMemory()J

    move-result-wide v0

    .line 181
    .local v0, "availableMemory":J
    iget-object v3, p0, Lcom/android/server/am/SmartTaskControler;->mSTCConf:Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;->getMemoryLevels(J)I

    move-result v2

    .line 183
    .local v2, "memLevel":I
    iget-object v3, p0, Lcom/android/server/am/SmartTaskControler;->mSTCConf:Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;

    const/4 v3, 0x5

    if-gt v2, v3, :cond_1

    .line 186
    invoke-virtual {p0, v2}, Lcom/android/server/am/SmartTaskControler;->cleanUpTask(I)V

    goto :goto_0
.end method
