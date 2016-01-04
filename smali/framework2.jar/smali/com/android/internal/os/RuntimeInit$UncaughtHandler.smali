.class Lcom/android/internal/os/RuntimeInit$UncaughtHandler;
.super Ljava/lang/Object;
.source "RuntimeInit.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RuntimeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UncaughtHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/RuntimeInit$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/os/RuntimeInit$1;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    const/16 v8, 0xa

    .line 73
    :try_start_0
    # getter for: Lcom/android/internal/os/RuntimeInit;->mCrashing:Z
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$000()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 123
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    .line 124
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    .line 126
    :goto_0
    return-void

    .line 74
    :cond_0
    const/4 v5, 0x1

    :try_start_1
    # setter for: Lcom/android/internal/os/RuntimeInit;->mCrashing:Z
    invoke-static {v5}, Lcom/android/internal/os/RuntimeInit;->access$002(Z)Z

    .line 76
    # getter for: Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$100()Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_4

    .line 77
    const-string v5, "AndroidRuntime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@*** FATAL EXCEPTION IN SYSTEM PROCESS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    move-object v4, p2

    .line 81
    .local v4, "tr":Ljava/lang/Throwable;
    move-object v2, p2

    .line 82
    .local v2, "rootTr":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 83
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    .line 84
    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_1

    .line 85
    move-object v2, v4

    goto :goto_1

    .line 90
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "java.lang.OutOfMemoryError"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 91
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v5

    if-nez v5, :cond_3

    .line 92
    const-string/jumbo v5, "system"

    # invokes: Lcom/android/internal/os/RuntimeInit;->makeHeapDump(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/internal/os/RuntimeInit;->access$200(Ljava/lang/String;)V

    .line 97
    :cond_3
    const-string v5, "PF"

    const-string v6, "EX"

    invoke-static {v5, v6}, Landroid/os/Debug;->dumpResetReason(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v5, "-k -t -z -d -o /data/log/dumpstate_sys_error"

    invoke-static {v5}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    .line 113
    .end local v2    # "rootTr":Ljava/lang/Throwable;
    .end local v4    # "tr":Ljava/lang/Throwable;
    :goto_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    # getter for: Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$100()Landroid/os/IBinder;

    move-result-object v6

    new-instance v7, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v7, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v5, v6, v7}, Landroid/app/IActivityManager;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    .line 124
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0

    .line 102
    :cond_4
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v0, "message":Ljava/lang/StringBuilder;
    const-string v5, "FATAL EXCEPTION: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "processName":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 106
    const-string v5, "Process: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_5
    const-string v5, "PID: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    const-string v5, "AndroidRuntime"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 115
    .end local v0    # "message":Ljava/lang/StringBuilder;
    .end local v1    # "processName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 117
    .local v3, "t2":Ljava/lang/Throwable;
    :try_start_3
    const-string v5, "AndroidRuntime"

    const-string v6, "Error reporting crash"

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    :goto_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    .line 124
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0

    .line 123
    .end local v3    # "t2":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    .line 124
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    throw v5

    .line 118
    .restart local v3    # "t2":Ljava/lang/Throwable;
    :catch_1
    move-exception v5

    goto :goto_3
.end method
