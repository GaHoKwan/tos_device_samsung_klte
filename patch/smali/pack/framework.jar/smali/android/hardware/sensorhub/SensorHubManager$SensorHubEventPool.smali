.class Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;
.super Ljava/lang/Object;
.source "SensorHubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/sensorhub/SensorHubManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorHubEventPool"
.end annotation


# instance fields
.field private mNumItemsInPool:I

.field private final mPool:[Landroid/hardware/sensorhub/SensorHubEvent;

.field private final mPoolSize:I

.field final synthetic this$0:Landroid/hardware/sensorhub/SensorHubManager;


# direct methods
.method constructor <init>(Landroid/hardware/sensorhub/SensorHubManager;I)V
    .locals 1
    .param p2, "poolSize"    # I

    .prologue
    .line 83
    iput-object p1, p0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;->this$0:Landroid/hardware/sensorhub/SensorHubManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p2, p0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;->mPoolSize:I

    .line 85
    iput p2, p0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;->mNumItemsInPool:I

    .line 86
    new-array v0, p2, [Landroid/hardware/sensorhub/SensorHubEvent;

    iput-object v0, p0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;->mPool:[Landroid/hardware/sensorhub/SensorHubEvent;

    .line 87
    return-void
.end method

.method private createSensorHubEvent()Landroid/hardware/sensorhub/SensorHubEvent;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Landroid/hardware/sensorhub/SensorHubEvent;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Landroid/hardware/sensorhub/SensorHubEvent;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method getFromPool()Landroid/hardware/sensorhub/SensorHubEvent;
    .locals 4

    .prologue
    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, "t":Landroid/hardware/sensorhub/SensorHubEvent;
    monitor-enter p0

    .line 92
    :try_start_0
    iget v2, p0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;->mNumItemsInPool:I

    if-lez v2, :cond_0

    .line 93
    iget v2, p0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;->mPoolSize:I

    iget v3, p0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;->mNumItemsInPool:I

    sub-int v0, v2, v3

    .line 94
    .local v0, "index":I
    iget-object v2, p0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;->mPool:[Landroid/hardware/sensorhub/SensorHubEvent;

    aget-object v1, v2, v0

    .line 95
    iget-object v2, p0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;->mPool:[Landroid/hardware/sensorhub/SensorHubEvent;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 96
    iget v2, p0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;->mNumItemsInPool:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;->mNumItemsInPool:I

    .line 98
    .end local v0    # "index":I
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    if-nez v1, :cond_1

    .line 100
    invoke-direct {p0}, Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;->createSensorHubEvent()Landroid/hardware/sensorhub/SensorHubEvent;

    move-result-object v1

    .line 102
    :cond_1
    return-object v1

    .line 98
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method returnToPool(Landroid/hardware/sensorhub/SensorHubEvent;)V
    .locals 3
    .param p1, "t"    # Landroid/hardware/sensorhub/SensorHubEvent;

    .prologue
    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget v1, p0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;->mNumItemsInPool:I

    iget v2, p0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;->mPoolSize:I

    if-ge v1, v2, :cond_0

    .line 108
    iget v1, p0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;->mNumItemsInPool:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;->mNumItemsInPool:I

    .line 109
    iget v1, p0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;->mPoolSize:I

    iget v2, p0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;->mNumItemsInPool:I

    sub-int v0, v1, v2

    .line 110
    .local v0, "index":I
    iget-object v1, p0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;->mPool:[Landroid/hardware/sensorhub/SensorHubEvent;

    aput-object p1, v1, v0

    .line 112
    .end local v0    # "index":I
    :cond_0
    monitor-exit p0

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
