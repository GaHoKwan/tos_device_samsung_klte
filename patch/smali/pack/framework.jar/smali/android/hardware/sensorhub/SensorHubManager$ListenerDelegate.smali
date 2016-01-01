.class Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
.super Ljava/lang/Object;
.source "SensorHubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/sensorhub/SensorHubManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mSensorHubEventListener:Landroid/hardware/sensorhub/SensorHubEventListener;

.field private final mSensorHubList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/sensorhub/SensorHub;",
            ">;"
        }
    .end annotation
.end field

.field public mSensorHubs:Landroid/util/SparseBooleanArray;

.field final synthetic this$0:Landroid/hardware/sensorhub/SensorHubManager;


# direct methods
.method constructor <init>(Landroid/hardware/sensorhub/SensorHubManager;Landroid/hardware/sensorhub/SensorHubEventListener;Landroid/hardware/sensorhub/SensorHub;Landroid/os/Handler;)V
    .locals 2
    .param p2, "listener"    # Landroid/hardware/sensorhub/SensorHubEventListener;
    .param p3, "sensorhub"    # Landroid/hardware/sensorhub/SensorHub;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 225
    iput-object p1, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->this$0:Landroid/hardware/sensorhub/SensorHubManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubList:Ljava/util/ArrayList;

    .line 223
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubs:Landroid/util/SparseBooleanArray;

    .line 226
    iput-object p2, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubEventListener:Landroid/hardware/sensorhub/SensorHubEventListener;

    .line 227
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 229
    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    new-instance v1, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate$1;-><init>(Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;Landroid/os/Looper;Landroid/hardware/sensorhub/SensorHubManager;)V

    iput-object v1, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 237
    invoke-virtual {p0, p3}, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->addSensorHub(Landroid/hardware/sensorhub/SensorHub;)V

    .line 238
    return-void

    .line 227
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_0
    iget-object v0, p1, Landroid/hardware/sensorhub/SensorHubManager;->mMainLooper:Landroid/os/Looper;

    goto :goto_0
.end method

.method static synthetic access$100(Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;)Landroid/hardware/sensorhub/SensorHubEventListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;

    .prologue
    .line 216
    iget-object v0, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubEventListener:Landroid/hardware/sensorhub/SensorHubEventListener;

    return-object v0
.end method


# virtual methods
.method addSensorHub(Landroid/hardware/sensorhub/SensorHub;)V
    .locals 3
    .param p1, "sensorhub"    # Landroid/hardware/sensorhub/SensorHub;

    .prologue
    .line 245
    iget-object v0, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubs:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/hardware/sensorhub/SensorHub;->getHandle()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 246
    iget-object v0, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    return-void
.end method

.method getListener()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubEventListener:Landroid/hardware/sensorhub/SensorHubEventListener;

    return-object v0
.end method

.method getSensorHubs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/sensorhub/SensorHub;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubList:Ljava/util/ArrayList;

    return-object v0
.end method

.method hasSensorHub(Landroid/hardware/sensorhub/SensorHub;)Z
    .locals 2
    .param p1, "sensorhub"    # Landroid/hardware/sensorhub/SensorHub;

    .prologue
    .line 256
    iget-object v0, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubs:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/hardware/sensorhub/SensorHub;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method onGetSensorHubDataLocked(Landroid/hardware/sensorhub/SensorHub;[BI[F[J)V
    .locals 7
    .param p1, "sensorhub"    # Landroid/hardware/sensorhub/SensorHub;
    .param p2, "buffer"    # [B
    .param p3, "length"    # I
    .param p4, "values"    # [F
    .param p5, "timestamp"    # [J

    .prologue
    const/4 v6, 0x0

    .line 265
    # getter for: Landroid/hardware/sensorhub/SensorHubManager;->sPool:Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;
    invoke-static {}, Landroid/hardware/sensorhub/SensorHubManager;->access$200()Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;->getFromPool()Landroid/hardware/sensorhub/SensorHubEvent;

    move-result-object v3

    .line 266
    .local v3, "t":Landroid/hardware/sensorhub/SensorHubEvent;
    iput-object p1, v3, Landroid/hardware/sensorhub/SensorHubEvent;->sensorhub:Landroid/hardware/sensorhub/SensorHub;

    .line 267
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v4, "onGetSensorHubDataLocked: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 270
    .local v1, "log":Ljava/lang/StringBuffer;
    if-lez p3, :cond_0

    .line 271
    new-array v4, p3, [B

    iput-object v4, v3, Landroid/hardware/sensorhub/SensorHubEvent;->buffer:[B

    .line 272
    iput p3, v3, Landroid/hardware/sensorhub/SensorHubEvent;->length:I

    .line 274
    const-string v4, "library = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    iget-object v4, v3, Landroid/hardware/sensorhub/SensorHubEvent;->buffer:[B

    aget-byte v5, p2, v6

    aput-byte v5, v4, v6

    .line 276
    iget-object v4, v3, Landroid/hardware/sensorhub/SensorHubEvent;->buffer:[B

    aget-byte v4, v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 278
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 279
    iget-object v4, v3, Landroid/hardware/sensorhub/SensorHubEvent;->buffer:[B

    aget-byte v5, p2, v0

    aput-byte v5, v4, v0

    .line 280
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    iget-object v4, v3, Landroid/hardware/sensorhub/SensorHubEvent;->buffer:[B

    aget-byte v4, v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    .end local v0    # "i":I
    :cond_0
    iput-object p4, v3, Landroid/hardware/sensorhub/SensorHubEvent;->values:[F

    .line 286
    aget-wide v4, p5, v6

    iput-wide v4, v3, Landroid/hardware/sensorhub/SensorHubEvent;->timestamp:J

    .line 288
    const-string v4, "gesture = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    iget-object v4, v3, Landroid/hardware/sensorhub/SensorHubEvent;->values:[F

    aget v5, p4, v6

    aput v5, v4, v6

    .line 290
    iget-object v4, v3, Landroid/hardware/sensorhub/SensorHubEvent;->values:[F

    aget v4, v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 292
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_1
    array-length v4, p4

    if-ge v0, v4, :cond_1

    .line 293
    iget-object v4, v3, Landroid/hardware/sensorhub/SensorHubEvent;->values:[F

    aget v5, p4, v0

    aput v5, v4, v0

    .line 294
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    iget-object v4, v3, Landroid/hardware/sensorhub/SensorHubEvent;->values:[F

    aget v4, v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 298
    :cond_1
    const-string v4, "SensorHubManager"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 301
    .local v2, "msg":Landroid/os/Message;
    iput v6, v2, Landroid/os/Message;->what:I

    .line 302
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 303
    iget-object v4, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 304
    return-void
.end method

.method removeSensorHub(Landroid/hardware/sensorhub/SensorHub;)I
    .locals 2
    .param p1, "sensorhub"    # Landroid/hardware/sensorhub/SensorHub;

    .prologue
    .line 250
    iget-object v0, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubs:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/hardware/sensorhub/SensorHub;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 251
    iget-object v0, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 252
    iget-object v0, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubs:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    return v0
.end method
