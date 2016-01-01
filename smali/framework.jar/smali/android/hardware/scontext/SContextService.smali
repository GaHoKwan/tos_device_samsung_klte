.class public Landroid/hardware/scontext/SContextService;
.super Landroid/hardware/scontext/ISContextService$Stub;
.source "SContextService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextService$ServiceHandler;,
        Landroid/hardware/scontext/SContextService$Listener;
    }
.end annotation


# instance fields
.field private final DEBUG_LEVEL_LOW:I

.field private final MAXIMUM_BUFFER_SIZE:I

.field private final MAXIMUM_RETRY_TIMES:I

.field private final MAXIMUM_WAITING_TIME:I

.field private final TAG:Ljava/lang/String;

.field private mActivityFilterMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAirMotionFeatureLevel:I

.field private mAvailableServiceMap:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

.field private final mContext:Landroid/content/Context;

.field private mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

.field private mHandler:Landroid/hardware/scontext/SContextService$ServiceHandler;

.field private final mLatestInfo:Landroid/os/Bundle;

.field private mLatestRegisteredListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/scontext/SContextService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/scontext/SContextService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mMutex:Ljava/util/concurrent/locks/ReentrantLock;

.field private mPedometerCumulativeInfo:Landroid/os/Bundle;

.field private mPedometerDiffInfo:Landroid/os/Bundle;

.field private mPedometerExceptionMode:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mSensorHubEventListener:Landroid/hardware/sensorhub/SensorHubEventListener;

.field private mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

.field private mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 122
    invoke-direct {p0}, Landroid/hardware/scontext/ISContextService$Stub;-><init>()V

    .line 56
    const-string v5, "SContextService"

    iput-object v5, p0, Landroid/hardware/scontext/SContextService;->TAG:Ljava/lang/String;

    .line 59
    const/16 v5, 0x4f4c

    iput v5, p0, Landroid/hardware/scontext/SContextService;->DEBUG_LEVEL_LOW:I

    .line 62
    const v5, 0x1fffe

    iput v5, p0, Landroid/hardware/scontext/SContextService;->MAXIMUM_BUFFER_SIZE:I

    .line 65
    const/4 v5, 0x5

    iput v5, p0, Landroid/hardware/scontext/SContextService;->MAXIMUM_RETRY_TIMES:I

    .line 68
    const v5, 0xea60

    iput v5, p0, Landroid/hardware/scontext/SContextService;->MAXIMUM_WAITING_TIME:I

    .line 74
    iput-object v6, p0, Landroid/hardware/scontext/SContextService;->mHandler:Landroid/hardware/scontext/SContextService$ServiceHandler;

    .line 77
    new-instance v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v5, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 80
    iput-object v6, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    .line 83
    iput-object v6, p0, Landroid/hardware/scontext/SContextService;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    .line 86
    iput-object v6, p0, Landroid/hardware/scontext/SContextService;->mPowerManager:Landroid/os/PowerManager;

    .line 92
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Landroid/hardware/scontext/SContextService;->mAvailableServiceMap:Ljava/util/HashMap;

    .line 96
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v5, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 99
    iput v7, p0, Landroid/hardware/scontext/SContextService;->mPedometerExceptionMode:I

    .line 102
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v5, p0, Landroid/hardware/scontext/SContextService;->mLatestRegisteredListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 105
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, p0, Landroid/hardware/scontext/SContextService;->mLatestInfo:Landroid/os/Bundle;

    .line 114
    iput v7, p0, Landroid/hardware/scontext/SContextService;->mAirMotionFeatureLevel:I

    .line 117
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v5, p0, Landroid/hardware/scontext/SContextService;->mActivityFilterMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1375
    new-instance v5, Landroid/hardware/scontext/SContextService$1;

    invoke-direct {v5, p0}, Landroid/hardware/scontext/SContextService$1;-><init>(Landroid/hardware/scontext/SContextService;)V

    iput-object v5, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    .line 1456
    new-instance v5, Landroid/hardware/scontext/SContextService$2;

    invoke-direct {v5, p0}, Landroid/hardware/scontext/SContextService$2;-><init>(Landroid/hardware/scontext/SContextService;)V

    iput-object v5, p0, Landroid/hardware/scontext/SContextService;->mSensorHubEventListener:Landroid/hardware/sensorhub/SensorHubEventListener;

    .line 123
    iput-object p1, p0, Landroid/hardware/scontext/SContextService;->mContext:Landroid/content/Context;

    .line 124
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 125
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v5, "com.sec.feature.sensorhub"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 126
    new-instance v0, Landroid/os/HandlerThread;

    const-string v5, "scontext"

    invoke-direct {v0, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 128
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 129
    .local v1, "looper":Landroid/os/Looper;
    if-nez v1, :cond_0

    .line 130
    const-string v5, "SContextService"

    const-string v6, "looper is null."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .end local v0    # "handlerThread":Landroid/os/HandlerThread;
    .end local v1    # "looper":Landroid/os/Looper;
    :goto_0
    return-void

    .line 133
    .restart local v0    # "handlerThread":Landroid/os/HandlerThread;
    .restart local v1    # "looper":Landroid/os/Looper;
    :cond_0
    new-instance v5, Landroid/hardware/scontext/SContextService$ServiceHandler;

    invoke-direct {v5, p0, v1}, Landroid/hardware/scontext/SContextService$ServiceHandler;-><init>(Landroid/hardware/scontext/SContextService;Landroid/os/Looper;)V

    iput-object v5, p0, Landroid/hardware/scontext/SContextService;->mHandler:Landroid/hardware/scontext/SContextService$ServiceHandler;

    .line 134
    new-instance v5, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v5, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    .line 135
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContext:Landroid/content/Context;

    const-string v6, "context_aware"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/contextaware/ContextAwareManager;

    iput-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    .line 137
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Landroid/hardware/scontext/SContextService;->mPowerManager:Landroid/os/PowerManager;

    .line 140
    const-string v5, "com.sec.feature.sensorhub"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v4

    .line 141
    .local v4, "version":I
    new-instance v3, Landroid/hardware/scontext/SContextVersion;

    invoke-direct {v3, v4}, Landroid/hardware/scontext/SContextVersion;-><init>(I)V

    .line 142
    .local v3, "scontextVersion":Landroid/hardware/scontext/SContextVersion;
    invoke-virtual {v3}, Landroid/hardware/scontext/SContextVersion;->getAvailableServiceMap()Ljava/util/HashMap;

    move-result-object v5

    iput-object v5, p0, Landroid/hardware/scontext/SContextService;->mAvailableServiceMap:Ljava/util/HashMap;

    .line 143
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mAvailableServiceMap:Ljava/util/HashMap;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mAvailableServiceMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 145
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mAvailableServiceMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Landroid/hardware/scontext/SContextService;->mAirMotionFeatureLevel:I

    .line 147
    :cond_1
    invoke-virtual {v3}, Landroid/hardware/scontext/SContextVersion;->getUsedServiceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    iput-object v5, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 148
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, p0, Landroid/hardware/scontext/SContextService;->mPedometerCumulativeInfo:Landroid/os/Bundle;

    .line 150
    .end local v0    # "handlerThread":Landroid/os/HandlerThread;
    .end local v1    # "looper":Landroid/os/Looper;
    .end local v3    # "scontextVersion":Landroid/hardware/scontext/SContextVersion;
    .end local v4    # "version":I
    :cond_2
    const-string v5, "SContextService"

    const-string v6, "SContextService()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$1002(Landroid/hardware/scontext/SContextService;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/scontext/SContextService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 53
    iput-object p1, p0, Landroid/hardware/scontext/SContextService;->mPedometerDiffInfo:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/hardware/scontext/SContextService;I)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/scontext/SContextService;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextService;->removeSContextService(I)V

    return-void
.end method

.method static synthetic access$1200(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/SContextService;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/hardware/scontext/SContextService;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/scontext/SContextService;

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/hardware/scontext/SContextService;->showListenerList()V

    return-void
.end method

.method static synthetic access$1500(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/SContextService;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mLatestRegisteredListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/scontext/SContextService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Landroid/hardware/scontext/SContextService;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/SContextService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextService;->updatePedometerInfo(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/hardware/scontext/SContextService;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/SContextService;

    .prologue
    .line 53
    iget v0, p0, Landroid/hardware/scontext/SContextService;->mAirMotionFeatureLevel:I

    return v0
.end method

.method static synthetic access$600(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/SContextService;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$700(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/SContextService;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$800(Landroid/hardware/scontext/SContextService;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/SContextService;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$900(Landroid/hardware/scontext/SContextService;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/SContextService;

    .prologue
    .line 53
    iget v0, p0, Landroid/hardware/scontext/SContextService;->mPedometerExceptionMode:I

    return v0
.end method

.method static synthetic access$902(Landroid/hardware/scontext/SContextService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/hardware/scontext/SContextService;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Landroid/hardware/scontext/SContextService;->mPedometerExceptionMode:I

    return p1
.end method

.method private addSContextService(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "service"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 748
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextService;->sendPropertyToCAE(ILandroid/os/Bundle;)V

    .line 750
    packed-switch p1, :pswitch_data_0

    .line 935
    :cond_0
    :goto_0
    const-string v0, "SContextService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSContextService() : service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    return-void

    .line 753
    :pswitch_0
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 758
    :pswitch_1
    iget v0, p0, Landroid/hardware/scontext/SContextService;->mPedometerExceptionMode:I

    if-ne v0, v3, :cond_1

    .line 759
    iput v4, p0, Landroid/hardware/scontext/SContextService;->mPedometerExceptionMode:I

    goto :goto_0

    .line 761
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextService;->mPedometerDiffInfo:Landroid/os/Bundle;

    .line 762
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 768
    :pswitch_2
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 773
    :pswitch_3
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 778
    :pswitch_4
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 783
    :pswitch_5
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 788
    :pswitch_6
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContext:Landroid/content/Context;

    const-string v1, "sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/sensorhub/SensorHubManager;

    iput-object v0, p0, Landroid/hardware/scontext/SContextService;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    .line 790
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mSensorHubEventListener:Landroid/hardware/sensorhub/SensorHubEventListener;

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    invoke-virtual {v2, v4}, Landroid/hardware/sensorhub/SensorHubManager;->getDefaultSensorHub(I)Landroid/hardware/sensorhub/SensorHub;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/sensorhub/SensorHubManager;->registerListener(Landroid/hardware/sensorhub/SensorHubEventListener;Landroid/hardware/sensorhub/SensorHub;I)Z

    goto :goto_0

    .line 796
    :pswitch_7
    const-string v0, "environment_sensor_type"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 797
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_HUMIDITY_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 803
    :pswitch_8
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 808
    :pswitch_9
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 813
    :pswitch_a
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->CALL_POSE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 818
    :pswitch_b
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 823
    :pswitch_c
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->FLIP_COVER_ACTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 828
    :pswitch_d
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->GYRO_TEMPERATURE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 833
    :pswitch_e
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->PUT_DOWN_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 838
    :pswitch_f
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 843
    :pswitch_10
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->BOUNCE_SHORT_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 848
    :pswitch_11
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->BOUNCE_LONG_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 853
    :pswitch_12
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->WRIST_UP_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 858
    :pswitch_13
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->FLAT_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 863
    :pswitch_14
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 868
    :pswitch_15
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->TEST_FLAT_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 873
    :pswitch_16
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 878
    :pswitch_17
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 883
    :pswitch_18
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 888
    :pswitch_19
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_BATCH_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 893
    :pswitch_1a
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 898
    :pswitch_1b
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 903
    :pswitch_1c
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->SLEEP_MONITOR_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 908
    :pswitch_1d
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 913
    :pswitch_1e
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->CAPTURE_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 918
    :pswitch_1f
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->CALL_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 923
    :pswitch_20
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->DOUBLE_TAP_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 928
    :pswitch_21
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->SIDE_PRESS_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 750
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method

.method private divideReferenceData(I[B)Z
    .locals 6
    .param p1, "data_type"    # I
    .param p2, "data"    # [B

    .prologue
    .line 488
    const/4 v2, 0x0

    .line 490
    .local v2, "res":Z
    if-nez p2, :cond_0

    move v3, v2

    .line 505
    .end local v2    # "res":Z
    .local v3, "res":I
    :goto_0
    return v3

    .line 494
    .end local v3    # "res":I
    .restart local v2    # "res":Z
    :cond_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 495
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    const v4, 0x1fffe

    .line 497
    .local v4, "size":I
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lez v5, :cond_2

    .line 498
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-ge v5, v4, :cond_1

    .line 499
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 501
    :cond_1
    new-array v1, v4, [B

    .line 502
    .local v1, "dividedData":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 503
    invoke-direct {p0, p1, v1}, Landroid/hardware/scontext/SContextService;->sendReferenceDataToCAE(I[B)Z

    move-result v2

    .line 504
    goto :goto_1

    .end local v1    # "dividedData":[B
    :cond_2
    move v3, v2

    .line 505
    .restart local v3    # "res":I
    goto :goto_0
.end method

.method private encodeLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1220
    const-string v5, "ro.debug_level"

    const-string v6, "Unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1221
    .local v4, "state":Ljava/lang/String;
    const/4 v0, -0x1

    .line 1222
    .local v0, "debug_level":I
    const-string v2, ""

    .line 1223
    .local v2, "outStr":Ljava/lang/String;
    const-string v5, "Unknown"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v3, v2

    .line 1237
    .end local v2    # "outStr":Ljava/lang/String;
    .local v3, "outStr":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1228
    .end local v3    # "outStr":Ljava/lang/String;
    .restart local v2    # "outStr":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x2

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1233
    const/16 v5, 0x4f4c

    if-eq v0, v5, :cond_1

    .line 1234
    move-object v2, p1

    :cond_1
    move-object v3, v2

    .line 1237
    .end local v2    # "outStr":Ljava/lang/String;
    .restart local v3    # "outStr":Ljava/lang/String;
    goto :goto_0

    .line 1229
    .end local v3    # "outStr":Ljava/lang/String;
    .restart local v2    # "outStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "ne":Ljava/lang/NumberFormatException;
    move-object v3, v2

    .line 1230
    .end local v2    # "outStr":Ljava/lang/String;
    .restart local v3    # "outStr":Ljava/lang/String;
    goto :goto_0
.end method

.method private notifyListeners(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 1202
    const-string v1, ""

    .line 1204
    .local v1, "client":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Landroid/hardware/scontext/ISContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/scontext/ISContextCallback;

    move-result-object v0

    .line 1205
    .local v0, "cb":Landroid/hardware/scontext/ISContextCallback;
    if-eqz v0, :cond_0

    .line 1206
    invoke-interface {v0}, Landroid/hardware/scontext/ISContextCallback;->getListenerInfo()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1211
    .end local v0    # "cb":Landroid/hardware/scontext/ISContextCallback;
    :cond_0
    :goto_0
    const-string v3, "SContextService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", client="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v1}, Landroid/hardware/scontext/SContextService;->encodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    return-void

    .line 1208
    :catch_0
    move-exception v2

    .line 1209
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private removeSContextService(I)V
    .locals 4
    .param p1, "service"    # I

    .prologue
    .line 944
    packed-switch p1, :pswitch_data_0

    .line 1124
    :goto_0
    const-string v0, "SContextService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSContextService() : service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    return-void

    .line 947
    :pswitch_0
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 952
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 957
    :pswitch_2
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 962
    :pswitch_3
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 967
    :pswitch_4
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 972
    :pswitch_5
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 977
    :pswitch_6
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mSensorHubEventListener:Landroid/hardware/sensorhub/SensorHubEventListener;

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/hardware/sensorhub/SensorHubManager;->getDefaultSensorHub(I)Landroid/hardware/sensorhub/SensorHub;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/sensorhub/SensorHubManager;->unregisterListener(Landroid/hardware/sensorhub/SensorHubEventListener;Landroid/hardware/sensorhub/SensorHub;)V

    goto :goto_0

    .line 982
    :pswitch_7
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_HUMIDITY_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 987
    :pswitch_8
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 992
    :pswitch_9
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 997
    :pswitch_a
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->CALL_POSE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 1002
    :pswitch_b
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 1007
    :pswitch_c
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->FLIP_COVER_ACTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 1012
    :pswitch_d
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->GYRO_TEMPERATURE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 1017
    :pswitch_e
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->PUT_DOWN_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 1022
    :pswitch_f
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 1027
    :pswitch_10
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->BOUNCE_SHORT_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 1032
    :pswitch_11
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->BOUNCE_LONG_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 1037
    :pswitch_12
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->WRIST_UP_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 1042
    :pswitch_13
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->FLAT_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 1047
    :pswitch_14
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 1052
    :pswitch_15
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->TEST_FLAT_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 1057
    :pswitch_16
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 1062
    :pswitch_17
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 1067
    :pswitch_18
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 1072
    :pswitch_19
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_BATCH_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 1077
    :pswitch_1a
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mActivityFilterMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1078
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v1, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    const/16 v2, 0x25

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 1082
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 1087
    :pswitch_1b
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 1092
    :pswitch_1c
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->SLEEP_MONITOR_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 1097
    :pswitch_1d
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 1102
    :pswitch_1e
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->CAPTURE_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 1107
    :pswitch_1f
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->CALL_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 1112
    :pswitch_20
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->DOUBLE_TAP_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 1117
    :pswitch_21
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->SIDE_PRESS_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 944
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method

.method private sendPropertyToCAE(ILandroid/os/Bundle;)V
    .locals 13
    .param p1, "service"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/16 v12, 0x2a

    const/16 v11, 0x27

    const/16 v10, 0x26

    const/16 v9, 0x25

    const/4 v8, 0x1

    .line 555
    packed-switch p1, :pswitch_data_0

    .line 739
    :cond_0
    :goto_0
    :pswitch_0
    const-string v5, "SContextService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SendPropertyToCAE() : service = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    return-void

    .line 558
    :pswitch_1
    const-string v5, "pedometer_gender"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 559
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    const/4 v7, 0x6

    const-string v8, "pedometer_gender"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 562
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    const/4 v7, 0x5

    const-string v8, "pedometer_height"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IID)Z

    .line 565
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    const/4 v7, 0x4

    const-string v8, "pedometer_weight"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IID)Z

    goto :goto_0

    .line 572
    :pswitch_2
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    const/4 v7, 0x7

    const-string v8, "step_cout_alert_step"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto :goto_0

    .line 579
    :pswitch_3
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    const/16 v7, 0x8

    const-string v8, "auto_rotation_device_type"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto :goto_0

    .line 585
    :pswitch_4
    const-string v5, "environment_sensor_type"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 586
    .local v4, "sensorType":I
    if-ne v4, v8, :cond_0

    .line 587
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_HUMIDITY_SERVICE:I

    const/16 v7, 0xd

    const-string v8, "environment_update_interval"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_0

    .line 595
    .end local v4    # "sensorType":I
    :pswitch_5
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    const/16 v7, 0x9

    const-string v8, "mfp_nomove_duration_thrs"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 599
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    const/16 v7, 0xa

    const-string v8, "mfp_move_duration_thrs"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 603
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    const/16 v7, 0xb

    const-string v8, "mfp_move_min_duration_thrs"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 607
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    const/16 v7, 0xc

    const-string v8, "mfp_move_distance_thrs"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IID)Z

    goto/16 :goto_0

    .line 614
    :pswitch_6
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    const/16 v7, 0xe

    const-string v8, "shake_motion_strength"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 617
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    const/16 v7, 0xf

    const-string v8, "shake_motion_duration"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_0

    .line 623
    :pswitch_7
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    const/16 v7, 0x14

    const-string v8, "temperature_alert_low_temperature"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 627
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    const/16 v7, 0x15

    const-string v8, "temperature_alert_high_temperature"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 631
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    const/16 v7, 0x16

    const-string v8, "temperature_alert_is_including"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IIZ)Z

    goto/16 :goto_0

    .line 638
    :pswitch_8
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    const/16 v7, 0x1c

    const-string v8, "activity_location_logging_stop_period"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 641
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    const/16 v7, 0x1d

    const-string v8, "activity_location_logging_wait_period"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 644
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    const/16 v7, 0x1e

    const-string v8, "activity_location_logging_statying radius"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 647
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    const/16 v7, 0x1f

    const-string v8, "activity_location_logging_area_radius"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 650
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    const/16 v7, 0x20

    const-string v8, "activity_location_logging_lpp_resolution"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_0

    .line 656
    :pswitch_9
    const-string v5, "activity_notification_activity_filter"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 658
    .local v0, "actions":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_0

    .line 659
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mActivityFilterMap:Ljava/util/concurrent/ConcurrentHashMap;

    aget v6, v0, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    aget v7, v0, v3

    invoke-virtual {v5, v6, v9, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 658
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 668
    .end local v0    # "actions":[I
    .end local v3    # "i":I
    :pswitch_a
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    const/16 v7, 0x21

    const-string v8, "specific_pose_alert_retention_time"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 672
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    const/16 v7, 0x22

    const-string v8, "specific_pose_alert_minimum_angle"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 676
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    const/16 v7, 0x23

    const-string v8, "specific_pose_alert_maximum_angle"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 680
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    const/16 v7, 0x24

    const-string v8, "specific_pose_alert_moving_thrs"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_0

    .line 687
    :pswitch_b
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->SLEEP_MONITOR_SERVICE:I

    const-string v7, "sleep_monitor_sensibility"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v12, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 690
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->SLEEP_MONITOR_SERVICE:I

    const/16 v7, 0x2b

    const-string v8, "sleep_monitor_sampling_interval"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_0

    .line 696
    :pswitch_c
    const-string v5, "activity_notification_ex_activity_filter"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 698
    .local v1, "ex_actions":[I
    const-string v5, "activity_notification_ex_time_duration"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 701
    .local v2, "ex_duration":I
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

    invoke-virtual {v5, v6, v11, v2}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 706
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    array-length v5, v1

    if-ge v3, v5, :cond_0

    .line 707
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

    aget v7, v1, v3

    invoke-virtual {v5, v6, v10, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 706
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 716
    .end local v1    # "ex_actions":[I
    .end local v2    # "ex_duration":I
    .end local v3    # "i":I
    :pswitch_d
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->CAPTURE_MOTION_SERVICE:I

    const-string v7, "capture_motion_tilt_minimum_angle"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v9, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 719
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->CAPTURE_MOTION_SERVICE:I

    const-string v7, "capture_motion_tilt_maximum_angle"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v10, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 722
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->CAPTURE_MOTION_SERVICE:I

    const-string v7, "capture_motion_orientation_minimum_angle"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v11, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 725
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->CAPTURE_MOTION_SERVICE:I

    const/16 v7, 0x28

    const-string v8, "capture_motion_orientation_maximum_angle"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 728
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->CAPTURE_MOTION_SERVICE:I

    const/16 v7, 0x29

    const-string v8, "capture_motion_in_sampling_num"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 731
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->CAPTURE_MOTION_SERVICE:I

    const-string v7, "capture_motion_out_sampling_num"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v12, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_0

    .line 555
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private sendReferenceDataToCAE(I[B)Z
    .locals 6
    .param p1, "data_type"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v5, 0x1

    .line 515
    const/4 v1, 0x0

    .line 517
    .local v1, "res":Z
    if-nez p2, :cond_0

    move v2, v1

    .line 545
    :goto_0
    return v2

    .line 521
    :cond_0
    const/4 v0, 0x0

    .line 524
    .local v0, "cnt":I
    :cond_1
    if-ne p1, v5, :cond_3

    .line 525
    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v3, Landroid/hardware/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4, p2}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(II[B)Z

    move-result v1

    .line 534
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 535
    if-ne v1, v5, :cond_4

    .line 536
    const-string v2, "SContextService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendReferenceDataToCAE() : data_type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const-string v2, "SContextService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendReferenceDataToCAE() : data_type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 545
    goto :goto_0

    .line 528
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 529
    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v3, Landroid/hardware/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    const/16 v4, 0x12

    invoke-virtual {v2, v3, v4, p2}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(II[B)Z

    move-result v1

    goto :goto_1

    .line 539
    :cond_4
    const/4 v2, 0x5

    if-le v0, v2, :cond_1

    .line 540
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showListenerList()V
    .locals 7

    .prologue
    .line 1183
    const-string v4, "SContextService"

    const-string v5, "===== SContext Service List ====="

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    iget-object v4, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1185
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/SContextService$Listener;

    .line 1186
    .local v2, "next":Landroid/hardware/scontext/SContextService$Listener;
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "j":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1187
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1188
    .local v3, "service":I
    const-string v4, "SContextService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Listener : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Service : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1193
    .end local v1    # "j":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2    # "next":Landroid/hardware/scontext/SContextService$Listener;
    .end local v3    # "service":I
    :cond_1
    return-void
.end method

.method private updatePedometerInfo(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .param p1, "info"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 1246
    move-object v0, p1

    .line 1248
    .local v0, "context":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mPedometerCumulativeInfo:Landroid/os/Bundle;

    const-string v2, "CumulativeCalorie"

    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mPedometerCumulativeInfo:Landroid/os/Bundle;

    const-string v4, "CumulativeCalorie"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-string v5, "CalorieDiff"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 1252
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mPedometerCumulativeInfo:Landroid/os/Bundle;

    const-string v2, "CumulativeDistance"

    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mPedometerCumulativeInfo:Landroid/os/Bundle;

    const-string v4, "CumulativeDistance"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-string v5, "DistanceDiff"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 1256
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mPedometerCumulativeInfo:Landroid/os/Bundle;

    const-string v2, "CumulativeTotalStepCount"

    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mPedometerCumulativeInfo:Landroid/os/Bundle;

    const-string v4, "CumulativeTotalStepCount"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "TotalStepCountDiff"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1260
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mPedometerCumulativeInfo:Landroid/os/Bundle;

    const-string v2, "CumulativeWalkFlatStepCount"

    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mPedometerCumulativeInfo:Landroid/os/Bundle;

    const-string v4, "CumulativeWalkFlatStepCount"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "WalkStepCountDiff"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1264
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mPedometerCumulativeInfo:Landroid/os/Bundle;

    const-string v2, "CumulativeWalkUpStepCount"

    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mPedometerCumulativeInfo:Landroid/os/Bundle;

    const-string v4, "CumulativeWalkUpStepCount"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "WalkUpStepCountDiff"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1268
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mPedometerCumulativeInfo:Landroid/os/Bundle;

    const-string v2, "CumulativeWalkDownStepCount"

    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mPedometerCumulativeInfo:Landroid/os/Bundle;

    const-string v4, "CumulativeWalkDownStepCount"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "WalkDownStepCountDiff"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1272
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mPedometerCumulativeInfo:Landroid/os/Bundle;

    const-string v2, "CumulativeRunFlatStepCount"

    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mPedometerCumulativeInfo:Landroid/os/Bundle;

    const-string v4, "CumulativeRunFlatStepCount"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "RunStepCountDiff"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1276
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mPedometerCumulativeInfo:Landroid/os/Bundle;

    const-string v2, "CumulativeRunUpStepCount"

    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mPedometerCumulativeInfo:Landroid/os/Bundle;

    const-string v4, "CumulativeRunUpStepCount"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "RunUpStepCountDiff"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1280
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mPedometerCumulativeInfo:Landroid/os/Bundle;

    const-string v2, "CumulativeRunDownStepCount"

    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mPedometerCumulativeInfo:Landroid/os/Bundle;

    const-string v4, "CumulativeRunDownStepCount"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "RunDownStepCountDiff"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1286
    const-string v1, "CumulativeCalorie"

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mPedometerCumulativeInfo:Landroid/os/Bundle;

    const-string v3, "CumulativeCalorie"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 1288
    const-string v1, "CumulativeDistance"

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mPedometerCumulativeInfo:Landroid/os/Bundle;

    const-string v3, "CumulativeDistance"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 1290
    const-string v1, "CumulativeTotalStepCount"

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mPedometerCumulativeInfo:Landroid/os/Bundle;

    const-string v3, "CumulativeTotalStepCount"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1292
    const-string v1, "CumulativeWalkFlatStepCount"

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mPedometerCumulativeInfo:Landroid/os/Bundle;

    const-string v3, "CumulativeWalkFlatStepCount"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1294
    const-string v1, "CumulativeWalkUpStepCount"

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mPedometerCumulativeInfo:Landroid/os/Bundle;

    const-string v3, "CumulativeWalkUpStepCount"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1296
    const-string v1, "CumulativeWalkDownStepCount"

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mPedometerCumulativeInfo:Landroid/os/Bundle;

    const-string v3, "CumulativeWalkDownStepCount"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1298
    const-string v1, "CumulativeRunFlatStepCount"

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mPedometerCumulativeInfo:Landroid/os/Bundle;

    const-string v3, "CumulativeRunFlatStepCount"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1300
    const-string v1, "CumulativeRunUpStepCount"

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mPedometerCumulativeInfo:Landroid/os/Bundle;

    const-string v3, "CumulativeRunUpStepCount"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1302
    const-string v1, "CumulativeRunDownStepCount"

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mPedometerCumulativeInfo:Landroid/os/Bundle;

    const-string v3, "CumulativeRunDownStepCount"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1305
    iget v1, p0, Landroid/hardware/scontext/SContextService;->mPedometerExceptionMode:I

    if-eqz v1, :cond_0

    .line 1307
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mPedometerDiffInfo:Landroid/os/Bundle;

    const-string v2, "CalorieDiff"

    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mPedometerDiffInfo:Landroid/os/Bundle;

    const-string v4, "CalorieDiff"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-string v5, "CalorieDiff"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 1309
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mPedometerDiffInfo:Landroid/os/Bundle;

    const-string v2, "DistanceDiff"

    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mPedometerDiffInfo:Landroid/os/Bundle;

    const-string v4, "DistanceDiff"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-string v5, "DistanceDiff"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 1313
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mPedometerDiffInfo:Landroid/os/Bundle;

    const-string v2, "TotalStepCountDiff"

    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mPedometerDiffInfo:Landroid/os/Bundle;

    const-string v4, "TotalStepCountDiff"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "TotalStepCountDiff"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1317
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mPedometerDiffInfo:Landroid/os/Bundle;

    const-string v2, "WalkStepCountDiff"

    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mPedometerDiffInfo:Landroid/os/Bundle;

    const-string v4, "WalkStepCountDiff"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "WalkStepCountDiff"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1321
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mPedometerDiffInfo:Landroid/os/Bundle;

    const-string v2, "WalkUpStepCountDiff"

    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mPedometerDiffInfo:Landroid/os/Bundle;

    const-string v4, "WalkUpStepCountDiff"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "WalkUpStepCountDiff"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1325
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mPedometerDiffInfo:Landroid/os/Bundle;

    const-string v2, "WalkDownStepCountDiff"

    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mPedometerDiffInfo:Landroid/os/Bundle;

    const-string v4, "WalkDownStepCountDiff"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "WalkDownStepCountDiff"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1329
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mPedometerDiffInfo:Landroid/os/Bundle;

    const-string v2, "RunStepCountDiff"

    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mPedometerDiffInfo:Landroid/os/Bundle;

    const-string v4, "RunStepCountDiff"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "RunStepCountDiff"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1333
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mPedometerDiffInfo:Landroid/os/Bundle;

    const-string v2, "RunUpStepCountDiff"

    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mPedometerDiffInfo:Landroid/os/Bundle;

    const-string v4, "RunUpStepCountDiff"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "RunUpStepCountDiff"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1337
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mPedometerDiffInfo:Landroid/os/Bundle;

    const-string v2, "RunDownStepCountDiff"

    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mPedometerDiffInfo:Landroid/os/Bundle;

    const-string v4, "RunDownStepCountDiff"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "RunDownStepCountDiff"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1341
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mPedometerDiffInfo:Landroid/os/Bundle;

    const-string v2, "UpDownStepCountDiff"

    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mPedometerDiffInfo:Landroid/os/Bundle;

    const-string v4, "UpDownStepCountDiff"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "UpDownStepCountDiff"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1347
    const-string v1, "CalorieDiff"

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mPedometerDiffInfo:Landroid/os/Bundle;

    const-string v3, "CalorieDiff"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 1348
    const-string v1, "DistanceDiff"

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mPedometerDiffInfo:Landroid/os/Bundle;

    const-string v3, "DistanceDiff"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 1349
    const-string v1, "TotalStepCountDiff"

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mPedometerDiffInfo:Landroid/os/Bundle;

    const-string v3, "TotalStepCountDiff"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1350
    const-string v1, "WalkStepCountDiff"

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mPedometerDiffInfo:Landroid/os/Bundle;

    const-string v3, "WalkStepCountDiff"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1351
    const-string v1, "WalkUpStepCountDiff"

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mPedometerDiffInfo:Landroid/os/Bundle;

    const-string v3, "WalkUpStepCountDiff"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1353
    const-string v1, "WalkDownStepCountDiff"

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mPedometerDiffInfo:Landroid/os/Bundle;

    const-string v3, "WalkDownStepCountDiff"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1355
    const-string v1, "RunStepCountDiff"

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mPedometerDiffInfo:Landroid/os/Bundle;

    const-string v3, "RunStepCountDiff"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1356
    const-string v1, "RunUpStepCountDiff"

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mPedometerDiffInfo:Landroid/os/Bundle;

    const-string v3, "RunUpStepCountDiff"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1357
    const-string v1, "RunDownStepCountDiff"

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mPedometerDiffInfo:Landroid/os/Bundle;

    const-string v3, "RunDownStepCountDiff"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1359
    const-string v1, "UpDownStepCountDiff"

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mPedometerDiffInfo:Landroid/os/Bundle;

    const-string v3, "UpDownStepCountDiff"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1362
    iget v1, p0, Landroid/hardware/scontext/SContextService;->mPedometerExceptionMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1363
    iput v7, p0, Landroid/hardware/scontext/SContextService;->mPedometerExceptionMode:I

    .line 1366
    :cond_0
    const-string v1, "LoggingCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1367
    const-string v1, "Mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1371
    :goto_0
    return-object v0

    .line 1369
    :cond_1
    const-string v1, "Mode"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private declared-synchronized updateSContext(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "event"    # I
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 1134
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/hardware/scontext/SContext;->getReportingMode(I)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 1135
    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mLatestInfo:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1138
    :cond_0
    new-instance v1, Landroid/hardware/scontext/SContextEvent;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextEvent;-><init>()V

    .line 1139
    .local v1, "scontextEvent":Landroid/hardware/scontext/SContextEvent;
    invoke-virtual {v1, p1, p2}, Landroid/hardware/scontext/SContextEvent;->setSContextEvent(ILandroid/os/Bundle;)V

    .line 1140
    const-string v2, "SContextService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSContext() : event = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1143
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1144
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1145
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1146
    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mHandler:Landroid/hardware/scontext/SContextService$ServiceHandler;

    invoke-virtual {v2, v0}, Landroid/hardware/scontext/SContextService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1148
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    monitor-exit p0

    return-void

    .line 1134
    .end local v1    # "scontextEvent":Landroid/hardware/scontext/SContextEvent;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public changeParameters(Landroid/os/IBinder;Landroid/hardware/scontext/SContextProperty;)Z
    .locals 10
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "property"    # Landroid/hardware/scontext/SContextProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 321
    const/4 v4, 0x0

    .line 322
    .local v4, "res":Z
    if-nez p2, :cond_0

    move v5, v4

    .line 359
    .end local v4    # "res":Z
    .local v5, "res":I
    :goto_0
    return v5

    .line 326
    .end local v5    # "res":I
    .restart local v4    # "res":Z
    :cond_0
    iget-object v7, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 328
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/scontext/SContextProperty;->getType()I

    move-result v6

    .line 329
    .local v6, "service":I
    const/4 v1, 0x0

    .line 331
    .local v1, "listener":Landroid/hardware/scontext/SContextService$Listener;
    iget-object v7, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 332
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/SContextService$Listener;

    .line 333
    .local v2, "next":Landroid/hardware/scontext/SContextService$Listener;
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 334
    move-object v1, v2

    .line 339
    .end local v2    # "next":Landroid/hardware/scontext/SContextService$Listener;
    :cond_2
    if-nez v1, :cond_3

    .line 340
    const-string v7, "SContextService"

    const-string v8, "cannot change parameters! : this listener is not registered."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    iget-object v7, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v5, v4

    .line 341
    .restart local v5    # "res":I
    goto :goto_0

    .line 344
    .end local v5    # "res":I
    :cond_3
    :try_start_1
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v1}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 345
    invoke-virtual {p2}, Landroid/hardware/scontext/SContextProperty;->getProperty()Landroid/os/Bundle;

    move-result-object v3

    .line 346
    .local v3, "properties":Landroid/os/Bundle;
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Landroid/hardware/scontext/SContextService$Listener;->access$200(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Landroid/hardware/scontext/SContextService$Listener;->access$200(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    invoke-direct {p0, v6, v3}, Landroid/hardware/scontext/SContextService;->sendPropertyToCAE(ILandroid/os/Bundle;)V

    .line 349
    const-string v7, "SContextService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "changeParameters() : service = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    const/4 v4, 0x1

    .line 357
    .end local v3    # "properties":Landroid/os/Bundle;
    :goto_1
    iget-object v7, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v5, v4

    .line 359
    .restart local v5    # "res":I
    goto/16 :goto_0

    .line 352
    .end local v5    # "res":I
    :cond_4
    :try_start_2
    const-string v7, "SContextService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cannot change parameters! : This service ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") is not used."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 357
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    .end local v1    # "listener":Landroid/hardware/scontext/SContextService$Listener;
    .end local v6    # "service":I
    :catchall_0
    move-exception v7

    iget-object v8, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v7
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1152
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 1153
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump SContextService from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " without permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1177
    :cond_0
    return-void

    .line 1158
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "listener count : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1159
    const-string v6, "===== SContext Service List ====="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1160
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1161
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/scontext/SContextService$Listener;

    .line 1163
    .local v4, "next":Landroid/hardware/scontext/SContextService$Listener;
    :try_start_0
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/scontext/ISContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/scontext/ISContextCallback;

    move-result-object v0

    .line 1164
    .local v0, "cb":Landroid/hardware/scontext/ISContextCallback;
    if-eqz v0, :cond_2

    .line 1165
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Client Listener ID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Landroid/hardware/scontext/ISContextCallback;->getListenerInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1166
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service Listener ID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1167
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "j":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1168
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1169
    .local v5, "service":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Service : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1173
    .end local v0    # "cb":Landroid/hardware/scontext/ISContextCallback;
    .end local v3    # "j":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v5    # "service":I
    :catch_0
    move-exception v1

    .line 1174
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 1171
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "cb":Landroid/hardware/scontext/ISContextCallback;
    .restart local v3    # "j":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_3
    :try_start_1
    const-string v6, "\n"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public getAvailableServiceMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mAvailableServiceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public initializeSContextService(Landroid/os/IBinder;I)V
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 370
    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 372
    const/4 v1, 0x0

    .line 374
    .local v1, "listener":Landroid/hardware/scontext/SContextService$Listener;
    :try_start_0
    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 375
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/SContextService$Listener;

    .line 376
    .local v2, "next":Landroid/hardware/scontext/SContextService$Listener;
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 377
    move-object v1, v2

    .line 382
    .end local v2    # "next":Landroid/hardware/scontext/SContextService$Listener;
    :cond_1
    if-nez v1, :cond_2

    .line 383
    const-string v3, "SContextService"

    const-string v4, "cannot initialize scontext service! : this listener is not registered."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 401
    return-void

    .line 387
    :cond_2
    :try_start_1
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v1}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 388
    invoke-direct {p0, p2}, Landroid/hardware/scontext/SContextService;->removeSContextService(I)V

    .line 389
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Landroid/hardware/scontext/SContextService$Listener;->access$200(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-direct {p0, p2, v3}, Landroid/hardware/scontext/SContextService;->addSContextService(ILandroid/os/Bundle;)V

    .line 390
    const-string v3, "SContextService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initializeSContextService() : service = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    :goto_1
    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_0

    .line 394
    :cond_3
    :try_start_2
    const-string v3, "SContextService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot initialize scontext service! : This service ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is not used."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 399
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public registerCallback(Landroid/os/IBinder;Landroid/hardware/scontext/SContextProperty;)V
    .locals 17
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "property"    # Landroid/hardware/scontext/SContextProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 161
    if-nez p2, :cond_0

    .line 237
    :goto_0
    return-void

    .line 164
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 166
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/scontext/SContextProperty;->getType()I

    move-result v11

    .line 167
    .local v11, "service":I
    const/4 v9, 0x0

    .line 168
    .local v9, "listener":Landroid/hardware/scontext/SContextService$Listener;
    const/4 v12, 0x0

    .line 170
    .local v12, "used":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 171
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/scontext/SContextService$Listener;

    .line 172
    .local v10, "next":Landroid/hardware/scontext/SContextService$Listener;
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v10}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Landroid/os/IBinder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 173
    move-object v9, v10

    .line 178
    .end local v10    # "next":Landroid/hardware/scontext/SContextService$Listener;
    :cond_2
    if-nez v9, :cond_3

    .line 179
    new-instance v9, Landroid/hardware/scontext/SContextService$Listener;

    .end local v9    # "listener":Landroid/hardware/scontext/SContextService$Listener;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v9, v0, v1}, Landroid/hardware/scontext/SContextService$Listener;-><init>(Landroid/hardware/scontext/SContextService;Landroid/os/IBinder;)V

    .line 180
    .restart local v9    # "listener":Landroid/hardware/scontext/SContextService$Listener;
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v9, v13}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 181
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_3
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v9}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 185
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v9}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 186
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v9}, Landroid/hardware/scontext/SContextService$Listener;->access$200(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/scontext/SContextProperty;->getProperty()Landroid/os/Bundle;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v13, "registerCallback"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Landroid/hardware/scontext/SContextService;->notifyListeners(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 188
    invoke-direct/range {p0 .. p0}, Landroid/hardware/scontext/SContextService;->showListenerList()V

    .line 189
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 191
    if-nez v12, :cond_6

    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/scontext/SContextProperty;->getProperty()Landroid/os/Bundle;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Landroid/hardware/scontext/SContextService;->addSContextService(ILandroid/os/Bundle;)V

    .line 232
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    add-int/lit8 v12, v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 195
    :cond_6
    const/4 v13, 0x2

    if-ne v11, v13, :cond_7

    .line 196
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/scontext/SContextProperty;->getProperty()Landroid/os/Bundle;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Landroid/hardware/scontext/SContextService;->sendPropertyToCAE(ILandroid/os/Bundle;)V

    .line 199
    :cond_7
    invoke-static {v11}, Landroid/hardware/scontext/SContext;->getReportingMode(I)I

    move-result v13

    const/4 v14, 0x4

    if-ne v13, v14, :cond_8

    .line 200
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/scontext/SContextService;->mLatestRegisteredListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/scontext/SContextService;->mLatestInfo:Landroid/os/Bundle;

    invoke-static {v11}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 202
    .local v5, "context":Landroid/os/Bundle;
    if-eqz v5, :cond_8

    .line 203
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v5}, Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V

    .line 207
    .end local v5    # "context":Landroid/os/Bundle;
    :cond_8
    const/16 v13, 0x1b

    if-ne v11, v13, :cond_4

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/scontext/SContextProperty;->getProperty()Landroid/os/Bundle;

    move-result-object v4

    .line 209
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v13, "activity_notification_activity_filter"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 211
    .local v2, "actions":[I
    const/4 v8, 0x0

    .line 212
    .local v8, "isAddable":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v13, v2

    if-ge v6, v13, :cond_a

    .line 213
    const/4 v3, 0x0

    .line 214
    .local v3, "activityUsed":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/scontext/SContextService;->mActivityFilterMap:Ljava/util/concurrent/ConcurrentHashMap;

    aget v14, v2, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 215
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/scontext/SContextService;->mActivityFilterMap:Ljava/util/concurrent/ConcurrentHashMap;

    aget v14, v2, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 224
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/scontext/SContextService;->mActivityFilterMap:Ljava/util/concurrent/ConcurrentHashMap;

    aget v14, v2, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 217
    :cond_9
    const/4 v8, 0x1

    .line 218
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v14, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    const/16 v15, 0x25

    aget v16, v2, v6

    invoke-virtual/range {v13 .. v16}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 235
    .end local v2    # "actions":[I
    .end local v3    # "activityUsed":I
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v6    # "i":I
    .end local v7    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    .end local v8    # "isAddable":Z
    .end local v9    # "listener":Landroid/hardware/scontext/SContextService$Listener;
    .end local v11    # "service":I
    .end local v12    # "used":I
    :catchall_0
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v13

    .line 226
    .restart local v2    # "actions":[I
    .restart local v4    # "bundle":Landroid/os/Bundle;
    .restart local v6    # "i":I
    .restart local v7    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    .restart local v8    # "isAddable":Z
    .restart local v9    # "listener":Landroid/hardware/scontext/SContextService$Listener;
    .restart local v11    # "service":I
    .restart local v12    # "used":I
    :cond_a
    if-eqz v8, :cond_4

    .line 227
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v15, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    invoke-virtual {v13, v14, v15}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public requestToUpdate(Landroid/os/IBinder;I)V
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 420
    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 422
    const/4 v1, 0x0

    .line 424
    .local v1, "listener":Landroid/hardware/scontext/SContextService$Listener;
    :try_start_0
    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 425
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/SContextService$Listener;

    .line 426
    .local v2, "next":Landroid/hardware/scontext/SContextService$Listener;
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 427
    move-object v1, v2

    .line 432
    .end local v2    # "next":Landroid/hardware/scontext/SContextService$Listener;
    :cond_1
    if-nez v1, :cond_2

    .line 433
    const-string v3, "SContextService"

    const-string v4, "cannot initialize scontext service! : this listener is not registered."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 453
    return-void

    .line 437
    :cond_2
    :try_start_1
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v1}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 438
    const/4 v3, 0x2

    if-ne p2, v3, :cond_5

    .line 439
    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v4, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->REQUEST_PEDOMETER_CURRENT_INFO:I

    invoke-virtual {v3, v4, v5}, Landroid/hardware/contextaware/ContextAwareManager;->getContextInfo(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    .line 448
    :cond_3
    :goto_1
    const-string v3, "SContextService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestToUpdate() : service = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 451
    :cond_4
    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_0

    .line 441
    :cond_5
    const/16 v3, 0x19

    if-ne p2, v3, :cond_6

    .line 442
    :try_start_2
    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v4, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->REQUEST_ACTIVITY_TRACKER_CURRENT_INFO:I

    invoke-virtual {v3, v4, v5}, Landroid/hardware/contextaware/ContextAwareManager;->getContextInfo(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 451
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 444
    .restart local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :cond_6
    const/16 v3, 0x1d

    if-ne p2, v3, :cond_3

    .line 445
    :try_start_3
    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v4, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->REQUEST_SLEEP_MONITOR_CURRENT_INFO:I

    invoke-virtual {v3, v4, v5}, Landroid/hardware/contextaware/ContextAwareManager;->getContextInfo(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public setReferenceData(I[B)Z
    .locals 4
    .param p1, "data_type"    # I
    .param p2, "data"    # [B

    .prologue
    .line 462
    const/4 v0, 0x0

    .line 464
    .local v0, "res":Z
    if-nez p2, :cond_0

    move v1, v0

    .line 478
    .end local v0    # "res":Z
    .local v1, "res":I
    :goto_0
    return v1

    .line 468
    .end local v1    # "res":I
    .restart local v0    # "res":Z
    :cond_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 470
    :try_start_0
    array-length v2, p2

    const v3, 0x1fffe

    if-ge v2, v3, :cond_1

    .line 471
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextService;->sendReferenceDataToCAE(I[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 476
    :goto_1
    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v1, v0

    .line 478
    .restart local v1    # "res":I
    goto :goto_0

    .line 473
    .end local v1    # "res":I
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextService;->divideReferenceData(I[B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_1

    .line 476
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public unregisterCallback(Landroid/os/IBinder;I)Z
    .locals 13
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 247
    const/4 v5, 0x1

    .line 249
    .local v5, "isDeletableListener":Z
    iget-object v9, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 251
    const/4 v6, 0x0

    .line 252
    .local v6, "listener":Landroid/hardware/scontext/SContextService$Listener;
    const/4 v8, 0x0

    .line 254
    .local v8, "used":I
    :try_start_0
    iget-object v9, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 255
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/scontext/SContextService$Listener;

    .line 256
    .local v7, "next":Landroid/hardware/scontext/SContextService$Listener;
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v7}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 257
    move-object v6, v7

    .line 262
    .end local v7    # "next":Landroid/hardware/scontext/SContextService$Listener;
    :cond_1
    if-eqz v6, :cond_3

    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v6}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 263
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v6}, Landroid/hardware/scontext/SContextService$Listener;->access$200(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 264
    .local v2, "bundle":Landroid/os/Bundle;
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v6}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 265
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v6}, Landroid/hardware/scontext/SContextService$Listener;->access$200(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v9, "unregisterCallback"

    invoke-direct {p0, p1, v9}, Landroid/hardware/scontext/SContextService;->notifyListeners(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 267
    invoke-direct {p0}, Landroid/hardware/scontext/SContextService;->showListenerList()V

    .line 268
    iget-object v9, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 270
    const-string v9, "SContextService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unregisterCallback() : Listener = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Service = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", used = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    .line 274
    invoke-direct {p0, p2}, Landroid/hardware/scontext/SContextService;->removeSContextService(I)V

    .line 296
    :cond_2
    iget-object v9, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_3
    if-eqz v6, :cond_4

    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v6}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashSet;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 300
    :cond_4
    const/4 v5, 0x0

    .line 303
    :cond_5
    if-eqz v5, :cond_6

    .line 304
    const/4 v9, 0x0

    invoke-interface {p1, v6, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 305
    iget-object v9, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    :cond_6
    iget-object v9, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 310
    return v5

    .line 276
    .restart local v2    # "bundle":Landroid/os/Bundle;
    :cond_7
    const/16 v9, 0x1b

    if-ne p2, v9, :cond_2

    .line 277
    :try_start_1
    const-string v9, "activity_notification_activity_filter"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 279
    .local v0, "actions":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, v0

    if-ge v3, v9, :cond_2

    .line 280
    iget-object v9, p0, Landroid/hardware/scontext/SContextService;->mActivityFilterMap:Ljava/util/concurrent/ConcurrentHashMap;

    aget v10, v0, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 281
    .local v1, "activityUsed":I
    const/4 v9, 0x1

    if-ne v1, v9, :cond_8

    .line 282
    iget-object v9, p0, Landroid/hardware/scontext/SContextService;->mActivityFilterMap:Ljava/util/concurrent/ConcurrentHashMap;

    aget v10, v0, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v9, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v10, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    const/16 v11, 0x25

    aget v12, v0, v3

    invoke-virtual {v9, v10, v11, v12}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 288
    iget-object v9, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v10, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v11, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    invoke-virtual {v9, v10, v11}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    .line 279
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 291
    :cond_8
    iget-object v9, p0, Landroid/hardware/scontext/SContextService;->mActivityFilterMap:Ljava/util/concurrent/ConcurrentHashMap;

    aget v10, v0, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 308
    .end local v0    # "actions":[I
    .end local v1    # "activityUsed":I
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "i":I
    .end local v4    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :catchall_0
    move-exception v9

    iget-object v10, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v9
.end method
