.class public final Lcom/android/server/LEDManagerService;
.super Landroid/os/ILEDManager$Stub;
.source "LEDManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LEDManagerService$LED;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LEDManagerService"


# instance fields
.field private mLEDLight:Lcom/android/server/LightsService$Light;

.field private final mLEDList:[Lcom/android/server/LEDManagerService$LED;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/LightsService;)V
    .locals 2
    .param p1, "ls"    # Lcom/android/server/LightsService;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/ILEDManager$Stub;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/LEDManagerService;->mLock:Ljava/lang/Object;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/LEDManagerService$LED;

    iput-object v0, p0, Lcom/android/server/LEDManagerService;->mLEDList:[Lcom/android/server/LEDManagerService$LED;

    .line 38
    const-string v0, "LEDManagerService"

    const-string v1, "[SvcLED] Start LEDManagerService"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LEDManagerService;->mLEDLight:Lcom/android/server/LightsService$Light;

    .line 40
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/LEDManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LEDManagerService;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/server/LEDManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/LEDManagerService;)[Lcom/android/server/LEDManagerService$LED;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LEDManagerService;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/server/LEDManagerService;->mLEDList:[Lcom/android/server/LEDManagerService$LED;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/LEDManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LEDManagerService;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/server/LEDManagerService;->setSvcLEDLocked()V

    return-void
.end method

.method private setLEDStateLocked(Landroid/os/IBinder;IIIII)V
    .locals 3
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "id"    # I
    .param p3, "color"    # I
    .param p4, "mode"    # I
    .param p5, "onMS"    # I
    .param p6, "offMS"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/LEDManagerService;->mLEDList:[Lcom/android/server/LEDManagerService$LED;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    if-ltz p2, :cond_0

    const/4 v0, 0x4

    if-lt p2, v0, :cond_1

    .line 91
    :cond_0
    const-string v0, "LEDManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED] LED ID error. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/android/server/LEDManagerService;->mLEDList:[Lcom/android/server/LEDManagerService$LED;

    aget-object v0, v0, p2

    # invokes: Lcom/android/server/LEDManagerService$LED;->setLEDState(IIII)V
    invoke-static {v0, p3, p4, p5, p6}, Lcom/android/server/LEDManagerService$LED;->access$000(Lcom/android/server/LEDManagerService$LED;IIII)V

    goto :goto_0
.end method

.method private setSvcLEDLocked()V
    .locals 6

    .prologue
    const/4 v4, 0x4

    .line 135
    const/4 v0, 0x0

    .local v0, "priority":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/server/LEDManagerService;->mLEDList:[Lcom/android/server/LEDManagerService$LED;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/LEDManagerService;->mLEDList:[Lcom/android/server/LEDManagerService$LED;

    aget-object v1, v1, v0

    # getter for: Lcom/android/server/LEDManagerService$LED;->mColor:I
    invoke-static {v1}, Lcom/android/server/LEDManagerService$LED;->access$400(Lcom/android/server/LEDManagerService$LED;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    :cond_0
    const-string v1, "LEDManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SvcLED] setSvcLEDLocked : priority = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-ge v0, v4, :cond_2

    .line 142
    const-string v1, "LEDManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SvcLED] mColor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/LEDManagerService;->mLEDList:[Lcom/android/server/LEDManagerService$LED;

    aget-object v3, v3, v0

    # getter for: Lcom/android/server/LEDManagerService$LED;->mColor:I
    invoke-static {v3}, Lcom/android/server/LEDManagerService$LED;->access$400(Lcom/android/server/LEDManagerService$LED;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/LEDManagerService;->mLEDList:[Lcom/android/server/LEDManagerService$LED;

    aget-object v3, v3, v0

    # getter for: Lcom/android/server/LEDManagerService$LED;->mMode:I
    invoke-static {v3}, Lcom/android/server/LEDManagerService$LED;->access$500(Lcom/android/server/LEDManagerService$LED;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mOnMS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/LEDManagerService;->mLEDList:[Lcom/android/server/LEDManagerService$LED;

    aget-object v3, v3, v0

    # getter for: Lcom/android/server/LEDManagerService$LED;->mOnMS:I
    invoke-static {v3}, Lcom/android/server/LEDManagerService$LED;->access$600(Lcom/android/server/LEDManagerService$LED;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mOffMS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/LEDManagerService;->mLEDList:[Lcom/android/server/LEDManagerService$LED;

    aget-object v3, v3, v0

    # getter for: Lcom/android/server/LEDManagerService$LED;->mOffMS:I
    invoke-static {v3}, Lcom/android/server/LEDManagerService$LED;->access$700(Lcom/android/server/LEDManagerService$LED;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v1, p0, Lcom/android/server/LEDManagerService;->mLEDLight:Lcom/android/server/LightsService$Light;

    iget-object v2, p0, Lcom/android/server/LEDManagerService;->mLEDList:[Lcom/android/server/LEDManagerService$LED;

    aget-object v2, v2, v0

    # getter for: Lcom/android/server/LEDManagerService$LED;->mColor:I
    invoke-static {v2}, Lcom/android/server/LEDManagerService$LED;->access$400(Lcom/android/server/LEDManagerService$LED;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/LEDManagerService;->mLEDList:[Lcom/android/server/LEDManagerService$LED;

    aget-object v3, v3, v0

    # getter for: Lcom/android/server/LEDManagerService$LED;->mMode:I
    invoke-static {v3}, Lcom/android/server/LEDManagerService$LED;->access$500(Lcom/android/server/LEDManagerService$LED;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/LEDManagerService;->mLEDList:[Lcom/android/server/LEDManagerService$LED;

    aget-object v4, v4, v0

    # getter for: Lcom/android/server/LEDManagerService$LED;->mOnMS:I
    invoke-static {v4}, Lcom/android/server/LEDManagerService$LED;->access$600(Lcom/android/server/LEDManagerService$LED;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/LEDManagerService;->mLEDList:[Lcom/android/server/LEDManagerService$LED;

    aget-object v5, v5, v0

    # getter for: Lcom/android/server/LEDManagerService$LED;->mOffMS:I
    invoke-static {v5}, Lcom/android/server/LEDManagerService$LED;->access$700(Lcom/android/server/LEDManagerService$LED;)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 152
    :goto_1
    return-void

    .line 135
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 149
    :cond_2
    iget-object v1, p0, Lcom/android/server/LEDManagerService;->mLEDLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 150
    const-string v1, "LEDManagerService"

    const-string v2, "[SvcLED] setSvcLEDLocked : turnOff"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public setFlashingLED(Landroid/os/IBinder;IIIII)V
    .locals 9
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "id"    # I
    .param p3, "color"    # I
    .param p4, "mode"    # I
    .param p5, "onMS"    # I
    .param p6, "offMS"    # I

    .prologue
    .line 44
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 45
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 46
    .local v3, "pid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 48
    .local v1, "ident":J
    const-string v5, "LEDManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SvcLED] setFlashingLED. id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :try_start_0
    iget-object v6, p0, Lcom/android/server/LEDManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51
    :try_start_1
    iget-object v5, p0, Lcom/android/server/LEDManagerService;->mLEDList:[Lcom/android/server/LEDManagerService$LED;

    aget-object v5, v5, p2

    if-nez v5, :cond_0

    .line 52
    iget-object v5, p0, Lcom/android/server/LEDManagerService;->mLEDList:[Lcom/android/server/LEDManagerService$LED;

    new-instance v7, Lcom/android/server/LEDManagerService$LED;

    invoke-direct {v7, p0, p1, p2}, Lcom/android/server/LEDManagerService$LED;-><init>(Lcom/android/server/LEDManagerService;Landroid/os/IBinder;I)V

    aput-object v7, v5, p2

    .line 53
    const-string v5, "LEDManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SvcLED] init LED. id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :try_start_2
    iget-object v5, p0, Lcom/android/server/LEDManagerService;->mLEDList:[Lcom/android/server/LEDManagerService$LED;

    aget-object v5, v5, p2

    const/4 v7, 0x0

    invoke-interface {p1, v5, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    :cond_0
    :try_start_3
    invoke-direct/range {p0 .. p6}, Lcom/android/server/LEDManagerService;->setLEDStateLocked(Landroid/os/IBinder;IIIII)V

    .line 61
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v7, "[SvcLED] LED is already dead."

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 61
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 63
    :catchall_1
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public turnOffLED(Landroid/os/IBinder;I)V
    .locals 12
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "id"    # I

    .prologue
    .line 69
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 70
    .local v10, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 71
    .local v9, "pid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 73
    .local v7, "ident":J
    const-string v0, "LEDManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED] turnOffLED. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :try_start_0
    iget-object v11, p0, Lcom/android/server/LEDManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 76
    :try_start_1
    iget-object v0, p0, Lcom/android/server/LEDManagerService;->mLEDList:[Lcom/android/server/LEDManagerService$LED;

    aget-object v0, v0, p2

    if-nez v0, :cond_0

    .line 77
    const-string v0, "LEDManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED] turnOffLED : mLEDList["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :goto_0
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    return-void

    .line 80
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    :try_start_2
    invoke-direct/range {v0 .. v6}, Lcom/android/server/LEDManagerService;->setLEDStateLocked(Landroid/os/IBinder;IIIII)V

    .line 81
    iget-object v0, p0, Lcom/android/server/LEDManagerService;->mLEDList:[Lcom/android/server/LEDManagerService$LED;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/android/server/LEDManagerService$LED;->mLED:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/server/LEDManagerService;->mLEDList:[Lcom/android/server/LEDManagerService$LED;

    aget-object v1, v1, p2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 82
    iget-object v0, p0, Lcom/android/server/LEDManagerService;->mLEDList:[Lcom/android/server/LEDManagerService$LED;

    const/4 v1, 0x0

    aput-object v1, v0, p2

    .line 83
    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 85
    :catchall_1
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method
