.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field mDone:Z

.field final mVibration:Lcom/android/server/VibratorService$Vibration;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .locals 2
    .param p2, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 655
    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 656
    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    .line 657
    # getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1200(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->access$500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(I)V

    .line 658
    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1300(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1200(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 659
    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1300(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 660
    return-void
.end method

.method private delay(J)V
    .locals 6
    .param p1, "duration"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 663
    cmp-long v2, p1, v4

    if-lez v2, :cond_1

    .line 664
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long v0, p1, v2

    .line 667
    .local v0, "bedtime":J
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v2, :cond_2

    .line 677
    .end local v0    # "bedtime":J
    :cond_1
    :goto_1
    return-void

    .line 674
    .restart local v0    # "bedtime":J
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long p1, v0, v2

    .line 675
    cmp-long v2, p1, v4

    if-gtz v2, :cond_0

    goto :goto_1

    .line 669
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 680
    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 681
    monitor-enter p0

    .line 682
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mPattern:[J
    invoke-static {v0}, Lcom/android/server/VibratorService$Vibration;->access$1100(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v9

    .line 683
    .local v9, "pattern":[J
    array-length v8, v9

    .line 684
    .local v8, "len":I
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mRepeat:I
    invoke-static {v0}, Lcom/android/server/VibratorService$Vibration;->access$1400(Lcom/android/server/VibratorService$Vibration;)I

    move-result v10

    .line 685
    .local v10, "repeat":I
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {v0}, Lcom/android/server/VibratorService$Vibration;->access$500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    .line 686
    .local v3, "uid":I
    const/4 v6, 0x0

    .line 687
    .local v6, "index":I
    const-wide/16 v1, 0x0

    .local v1, "duration":J
    move v7, v6

    .line 689
    .end local v6    # "index":I
    .local v7, "index":I
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-nez v0, :cond_9

    .line 691
    if-ge v7, v8, :cond_0

    .line 692
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    aget-wide v4, v9, v7

    add-long/2addr v1, v4

    move v7, v6

    .line 696
    .end local v6    # "index":I
    .restart local v7    # "index":I
    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/android/server/VibratorService$VibrateThread;->delay(J)V

    .line 697
    iget-boolean v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v0, :cond_3

    move v6, v7

    .line 725
    .end local v7    # "index":I
    .restart local v6    # "index":I
    :goto_1
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1300(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 726
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 727
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v4

    monitor-enter v4

    .line 728
    :try_start_1
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v0, v0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-ne v0, p0, :cond_1

    .line 729
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 731
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-nez v0, :cond_2

    .line 734
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 735
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v5, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # invokes: Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    invoke-static {v0, v5}, Lcom/android/server/VibratorService;->access$1900(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    .line 736
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->startNextVibrationLocked()V
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$300(Lcom/android/server/VibratorService;)V

    .line 738
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 739
    return-void

    .line 701
    .end local v6    # "index":I
    .restart local v7    # "index":I
    :cond_3
    if-ge v7, v8, :cond_6

    .line 704
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    :try_start_2
    aget-wide v1, v9, v7

    .line 705
    const-wide/16 v4, 0x0

    cmp-long v0, v1, v4

    if-lez v0, :cond_8

    .line 706
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->USE_VIBETONZ:Z
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1500(Lcom/android/server/VibratorService;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 707
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUseMagnitude:Z
    invoke-static {v0}, Lcom/android/server/VibratorService$Vibration;->access$800(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 708
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v4, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mMagnitude:I
    invoke-static {v5}, Lcom/android/server/VibratorService$Vibration;->access$1000(Lcom/android/server/VibratorService$Vibration;)I

    move-result v5

    # invokes: Lcom/android/server/VibratorService;->doVibratorOn(JILjava/lang/String;I)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/VibratorService;->access$1600(Lcom/android/server/VibratorService;JILjava/lang/String;I)V

    move v7, v6

    .end local v6    # "index":I
    .restart local v7    # "index":I
    goto :goto_0

    .line 710
    .end local v7    # "index":I
    .restart local v6    # "index":I
    :cond_4
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v4, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mDefaultMagnitude:I
    invoke-static {v5}, Lcom/android/server/VibratorService;->access$1700(Lcom/android/server/VibratorService;)I

    move-result v5

    # invokes: Lcom/android/server/VibratorService;->doVibratorOn(JILjava/lang/String;I)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/VibratorService;->access$1600(Lcom/android/server/VibratorService;JILjava/lang/String;I)V

    move v7, v6

    .end local v6    # "index":I
    .restart local v7    # "index":I
    goto/16 :goto_0

    .line 713
    .end local v7    # "index":I
    .restart local v6    # "index":I
    :cond_5
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->doVibratorOn(JI)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/VibratorService;->access$1800(Lcom/android/server/VibratorService;JI)V

    move v7, v6

    .end local v6    # "index":I
    .restart local v7    # "index":I
    goto/16 :goto_0

    .line 717
    :cond_6
    if-gez v10, :cond_7

    move v6, v7

    .line 718
    .end local v7    # "index":I
    .restart local v6    # "index":I
    goto/16 :goto_1

    .line 720
    .end local v6    # "index":I
    .restart local v7    # "index":I
    :cond_7
    move v6, v10

    .line 721
    .end local v7    # "index":I
    .restart local v6    # "index":I
    const-wide/16 v1, 0x0

    move v7, v6

    .end local v6    # "index":I
    .restart local v7    # "index":I
    goto/16 :goto_0

    .line 726
    .end local v1    # "duration":J
    .end local v3    # "uid":I
    .end local v7    # "index":I
    .end local v8    # "len":I
    .end local v9    # "pattern":[J
    .end local v10    # "repeat":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 738
    .restart local v1    # "duration":J
    .restart local v3    # "uid":I
    .restart local v6    # "index":I
    .restart local v8    # "len":I
    .restart local v9    # "pattern":[J
    .restart local v10    # "repeat":I
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_8
    move v7, v6

    .end local v6    # "index":I
    .restart local v7    # "index":I
    goto/16 :goto_0

    :cond_9
    move v6, v7

    .end local v7    # "index":I
    .restart local v6    # "index":I
    goto/16 :goto_1
.end method
