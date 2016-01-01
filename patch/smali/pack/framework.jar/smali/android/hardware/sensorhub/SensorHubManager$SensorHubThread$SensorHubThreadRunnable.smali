.class Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread$SensorHubThreadRunnable;
.super Ljava/lang/Object;
.source "SensorHubManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorHubThreadRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread;


# direct methods
.method constructor <init>(Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread$SensorHubThreadRunnable;->this$0:Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    return-void
.end method

.method private open()Z
    .locals 1

    .prologue
    .line 155
    invoke-static {}, Landroid/hardware/sensorhub/SensorHubManager;->sensorhubs_create_queue()I

    move-result v0

    # setter for: Landroid/hardware/sensorhub/SensorHubManager;->sQueue:I
    invoke-static {v0}, Landroid/hardware/sensorhub/SensorHubManager;->access$002(I)I

    .line 156
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 161
    const/16 v1, 0x800

    new-array v2, v1, [B

    .line 162
    .local v2, "buffer":[B
    const/16 v1, 0x9

    new-array v6, v1, [F

    .line 163
    .local v6, "values":[F
    const/4 v1, 0x1

    new-array v3, v1, [I

    .line 164
    .local v3, "version":[I
    const/4 v1, 0x1

    new-array v4, v1, [I

    .line 165
    .local v4, "type":[I
    const/4 v1, 0x1

    new-array v5, v1, [I

    .line 166
    .local v5, "sizeofdata":[I
    const/4 v1, 0x1

    new-array v7, v1, [J

    .line 168
    .local v7, "timestamp":[J
    const/4 v1, -0x8

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 169
    const-string v1, "SensorHubManager"

    const-string v10, "=======>>> SensorHubManager Thread RUNNING <<<======="

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-direct/range {p0 .. p0}, Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread$SensorHubThreadRunnable;->open()Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    :goto_0
    return-void

    .line 175
    :cond_0
    monitor-enter p0

    .line 176
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread$SensorHubThreadRunnable;->this$0:Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread;

    const/4 v10, 0x1

    iput-boolean v10, v1, Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread;->mSensorHubsReady:Z

    .line 177
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 178
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 181
    :goto_1
    # getter for: Landroid/hardware/sensorhub/SensorHubManager;->sQueue:I
    invoke-static {}, Landroid/hardware/sensorhub/SensorHubManager;->access$000()I

    move-result v1

    const/16 v8, 0x800

    invoke-static/range {v1 .. v8}, Landroid/hardware/sensorhub/SensorHubManager;->sensorhubs_data_poll(I[B[I[I[I[F[JI)I

    move-result v15

    .line 183
    .local v15, "sensorhub":I
    const/4 v1, 0x0

    aget v11, v5, v1

    .line 185
    .local v11, "length":I
    sget-object v17, Landroid/hardware/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v17

    .line 186
    const/4 v1, -0x1

    if-eq v15, v1, :cond_1

    :try_start_1
    sget-object v1, Landroid/hardware/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 187
    :cond_1
    const/4 v1, -0x1

    if-ne v15, v1, :cond_2

    sget-object v1, Landroid/hardware/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 188
    const-string v1, "SensorHubManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sensorhubs_data_poll() failed, we bail out: sensorHub="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    monitor-exit v17

    goto :goto_1

    .line 208
    :catchall_0
    move-exception v1

    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 178
    .end local v11    # "length":I
    .end local v15    # "sensorhub":I
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 192
    .restart local v11    # "length":I
    .restart local v15    # "sensorhub":I
    :cond_2
    :try_start_3
    # getter for: Landroid/hardware/sensorhub/SensorHubManager;->sQueue:I
    invoke-static {}, Landroid/hardware/sensorhub/SensorHubManager;->access$000()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/sensorhub/SensorHubManager;->sensorhubs_destroy_queue(I)V

    .line 193
    const/4 v1, 0x0

    # setter for: Landroid/hardware/sensorhub/SensorHubManager;->sQueue:I
    invoke-static {v1}, Landroid/hardware/sensorhub/SensorHubManager;->access$002(I)I

    .line 194
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread$SensorHubThreadRunnable;->this$0:Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread;

    const/4 v10, 0x0

    iput-object v10, v1, Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread;->mThread:Ljava/lang/Thread;

    .line 195
    monitor-exit v17

    goto :goto_0

    .line 197
    :cond_3
    sget-object v1, Landroid/hardware/sensorhub/SensorHubManager;->sHandleToSensorHub:Landroid/util/SparseArray;

    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/sensorhub/SensorHub;

    .line 198
    .local v9, "sensorhubObject":Landroid/hardware/sensorhub/SensorHub;
    if-eqz v9, :cond_5

    .line 199
    sget-object v1, Landroid/hardware/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 200
    .local v16, "size":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v14, v0, :cond_5

    .line 201
    sget-object v1, Landroid/hardware/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;

    .line 202
    .local v8, "listener":Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
    invoke-virtual {v8, v9}, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->hasSensorHub(Landroid/hardware/sensorhub/SensorHub;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v10, v2

    move-object v12, v6

    move-object v13, v7

    .line 203
    invoke-virtual/range {v8 .. v13}, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->onGetSensorHubDataLocked(Landroid/hardware/sensorhub/SensorHub;[BI[F[J)V

    .line 200
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 208
    .end local v8    # "listener":Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
    .end local v14    # "i":I
    .end local v16    # "size":I
    :cond_5
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method
