.class Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread$1;
.super Landroid/os/Handler;
.source "MotionRecognitionReactiveAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread$1;->this$1:Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v7, 0x31

    const/16 v6, 0x30

    const/16 v5, 0x2d

    const/16 v4, 0x1e

    const/4 v3, 0x1

    .line 90
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_6

    .line 91
    const/4 v0, 0x0

    .line 94
    .local v0, "ret_accint":I
    const-string v1, "MotionRecognitionService"

    const-string v2, "mReactiveAlert_Wakelock++  "

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread$1;->this$1:Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;->this$0:Landroid/hardware/motion/MotionRecognitionReactiveAlert;

    # getter for: Landroid/hardware/motion/MotionRecognitionReactiveAlert;->mReactiveAlert_Wakelock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->access$000(Landroid/hardware/motion/MotionRecognitionReactiveAlert;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 97
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread$1;->this$1:Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;->this$0:Landroid/hardware/motion/MotionRecognitionReactiveAlert;

    iget-object v2, v1, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->mLockACCInt:Ljava/lang/Object;

    monitor-enter v2

    .line 101
    :try_start_1
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread$1;->this$1:Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;->this$0:Landroid/hardware/motion/MotionRecognitionReactiveAlert;

    # invokes: Landroid/hardware/motion/MotionRecognitionReactiveAlert;->readACCInt()I
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->access$100(Landroid/hardware/motion/MotionRecognitionReactiveAlert;)I

    move-result v0

    .line 102
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    const-string v1, "MotionRecognitionService"

    const-string v2, "mReactiveAlert_Wakelock--  "

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread$1;->this$1:Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;->this$0:Landroid/hardware/motion/MotionRecognitionReactiveAlert;

    # getter for: Landroid/hardware/motion/MotionRecognitionReactiveAlert;->mReactiveAlert_Wakelock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->access$000(Landroid/hardware/motion/MotionRecognitionReactiveAlert;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 105
    if-ne v0, v7, :cond_1

    .line 107
    const-string v1, "MotionRecognitionService"

    const-string v2, "skip poll motion_int  "

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread$1;->this$1:Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;->this$0:Landroid/hardware/motion/MotionRecognitionReactiveAlert;

    invoke-virtual {v1}, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->disableAccINT()V

    .line 149
    .end local v0    # "ret_accint":I
    :cond_0
    :goto_1
    return-void

    .line 102
    .restart local v0    # "ret_accint":I
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 112
    :cond_1
    const-string v1, "MotionRecognitionService"

    const-string v2, "poll_accint++  "

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_2
    const-wide/16 v1, 0x64

    :try_start_3
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 118
    :goto_2
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread$1;->this$1:Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;->this$0:Landroid/hardware/motion/MotionRecognitionReactiveAlert;

    iget-object v2, v1, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->mLockACCInt:Ljava/lang/Object;

    monitor-enter v2

    .line 119
    :try_start_4
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread$1;->this$1:Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;->this$0:Landroid/hardware/motion/MotionRecognitionReactiveAlert;

    # invokes: Landroid/hardware/motion/MotionRecognitionReactiveAlert;->readACCInt()I
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->access$100(Landroid/hardware/motion/MotionRecognitionReactiveAlert;)I

    move-result v0

    .line 120
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 122
    if-ne v0, v6, :cond_3

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread$1;->this$1:Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;->this$0:Landroid/hardware/motion/MotionRecognitionReactiveAlert;

    iget-boolean v1, v1, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->mEnableAccINT:Z

    if-eq v1, v3, :cond_2

    .line 124
    :cond_3
    const-string v1, "MotionRecognitionService"

    const-string v2, "poll_accint--  "

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v1, "MotionRecognitionService"

    const-string v2, "mReactiveAlert_Wakelock++  "

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread$1;->this$1:Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;->this$0:Landroid/hardware/motion/MotionRecognitionReactiveAlert;

    # getter for: Landroid/hardware/motion/MotionRecognitionReactiveAlert;->mReactiveAlert_Wakelock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->access$000(Landroid/hardware/motion/MotionRecognitionReactiveAlert;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 127
    if-ne v0, v7, :cond_5

    .line 130
    const-string v1, "MotionRecognitionService"

    const-string v2, " send reactive alert "

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread$1;->this$1:Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 132
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread$1;->this$1:Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;->this$0:Landroid/hardware/motion/MotionRecognitionReactiveAlert;

    invoke-virtual {v1}, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->disableAccINT()V

    .line 134
    const-wide/16 v1, 0x3e8

    :try_start_5
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 142
    :cond_4
    :goto_3
    const-string v1, "MotionRecognitionService"

    const-string v2, "mReactiveAlert_Wakelock--  "

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread$1;->this$1:Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;->this$0:Landroid/hardware/motion/MotionRecognitionReactiveAlert;

    # getter for: Landroid/hardware/motion/MotionRecognitionReactiveAlert;->mReactiveAlert_Wakelock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->access$000(Landroid/hardware/motion/MotionRecognitionReactiveAlert;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1

    .line 120
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .line 138
    :cond_5
    if-eq v0, v6, :cond_4

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread$1;->this$1:Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;->this$0:Landroid/hardware/motion/MotionRecognitionReactiveAlert;

    iget-boolean v1, v1, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->mEnableAccINT:Z

    if-ne v1, v3, :cond_4

    .line 140
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread$1;->this$1:Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;->this$0:Landroid/hardware/motion/MotionRecognitionReactiveAlert;

    invoke-virtual {v1}, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->disableAccINT()V

    goto :goto_3

    .line 146
    .end local v0    # "ret_accint":I
    :cond_6
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v5, :cond_0

    .line 147
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread$1;->this$1:Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 98
    .restart local v0    # "ret_accint":I
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 116
    :catch_1
    move-exception v1

    goto/16 :goto_2

    .line 135
    :catch_2
    move-exception v1

    goto :goto_3
.end method
