.class public Lcom/android/server/SecExternalDisplayService;
.super Landroid/os/ISecExternalDisplayService$Stub;
.source "SecExternalDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SecExternalDisplayService$6;,
        Lcom/android/server/SecExternalDisplayService$SettingsObserver;,
        Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;,
        Lcom/android/server/SecExternalDisplayService$EDSToast;
    }
.end annotation


# static fields
.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "SecExternalDisplayService_Java"

.field private static bIsLogEnabled:Z

.field private static mContext:Landroid/content/Context;

.field private static mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;


# instance fields
.field private bDreamsEnabledByDefaultConfig:Z

.field private bIsAlarmRecieved:Z

.field private bIsDayDreamEnabled:Z

.field private bIsHomeTheatreConnected:Z

.field private cpuMinFreqBooster:Landroid/os/DVFSHelper;

.field private gpuMinFreqBooster:Landroid/os/DVFSHelper;

.field private mDockSurfaceHeight:I

.field private mDockSurfaceWidth:I

.field private mHDMIObserver:Landroid/os/UEventObserver;

.field private final mHandlerHT:Landroid/os/Handler;

.field private mHandlerSPC:Landroid/os/Handler;

.field public mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSettingsObserver:Lcom/android/server/SecExternalDisplayService$SettingsObserver;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private supportedCPUFreqTable:[I

.field private supportedGPUFreqTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x500

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 199
    invoke-direct {p0}, Landroid/os/ISecExternalDisplayService$Stub;-><init>()V

    .line 78
    iput v2, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceWidth:I

    .line 79
    iput v2, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceHeight:I

    .line 80
    iput-boolean v1, p0, Lcom/android/server/SecExternalDisplayService;->bIsHomeTheatreConnected:Z

    .line 81
    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 85
    iput-boolean v1, p0, Lcom/android/server/SecExternalDisplayService;->bIsAlarmRecieved:Z

    .line 90
    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 91
    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 165
    new-instance v0, Lcom/android/server/SecExternalDisplayService$1;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayService$1;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mHandlerSPC:Landroid/os/Handler;

    .line 177
    new-instance v0, Lcom/android/server/SecExternalDisplayService$2;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayService$2;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mHandlerHT:Landroid/os/Handler;

    .line 190
    new-instance v0, Lcom/android/server/SecExternalDisplayService$3;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayService$3;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x500

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 203
    invoke-direct {p0}, Landroid/os/ISecExternalDisplayService$Stub;-><init>()V

    .line 78
    iput v2, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceWidth:I

    .line 79
    iput v2, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceHeight:I

    .line 80
    iput-boolean v1, p0, Lcom/android/server/SecExternalDisplayService;->bIsHomeTheatreConnected:Z

    .line 81
    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 85
    iput-boolean v1, p0, Lcom/android/server/SecExternalDisplayService;->bIsAlarmRecieved:Z

    .line 90
    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 91
    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 165
    new-instance v0, Lcom/android/server/SecExternalDisplayService$1;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayService$1;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mHandlerSPC:Landroid/os/Handler;

    .line 177
    new-instance v0, Lcom/android/server/SecExternalDisplayService$2;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayService$2;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mHandlerHT:Landroid/os/Handler;

    .line 190
    new-instance v0, Lcom/android/server/SecExternalDisplayService$3;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayService$3;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 205
    const-string/jumbo v0, "persist.sys.SecEDS.Logs"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    .line 206
    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "SecExternalDisplayService +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    sput-object p1, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    .line 209
    new-instance v0, Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-direct {v0}, Landroid/hardware/SecExternalDisplayJNIInterface;-><init>()V

    sput-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    .line 214
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/switch/mhl_event_switch"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 217
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayInitWakeMode(Landroid/content/Context;I)V

    .line 234
    invoke-static {p0}, Lcom/android/server/SecExternalDisplayIntents;->StartEDSIntents(Lcom/android/server/SecExternalDisplayService;)V

    .line 237
    new-instance v0, Landroid/os/DVFSHelper;

    const/16 v1, 0xc

    invoke-direct {v0, p1, v1}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->cpuMinFreqBooster:Landroid/os/DVFSHelper;

    .line 238
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->cpuMinFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->supportedCPUFreqTable:[I

    .line 239
    new-instance v0, Landroid/os/DVFSHelper;

    const/16 v1, 0x10

    invoke-direct {v0, p1, v1}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->gpuMinFreqBooster:Landroid/os/DVFSHelper;

    .line 240
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->gpuMinFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->supportedGPUFreqTable:[I

    .line 241
    return-void
.end method

.method private SecExternalDisplayInitWakeMode(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nMode"    # I

    .prologue
    .line 253
    const/4 v1, 0x0

    .line 254
    .local v1, "wakelockHeld":Z
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    .line 256
    sget-boolean v2, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v2, :cond_0

    .line 257
    const-string v2, "SecExternalDisplayService_Java"

    const-string/jumbo v3, "mWakeLock is not null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_0
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    const/4 v1, 0x1

    .line 261
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 263
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 266
    :cond_2
    sget-boolean v2, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v2, :cond_3

    .line 267
    const-string v2, "SecExternalDisplayService_Java"

    const-string v3, "SecExternalDisplayInitWakeMode is called"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_3
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 270
    .local v0, "pm":Landroid/os/PowerManager;
    const/high16 v2, 0x20000000

    or-int/2addr v2, p2

    const-string v3, "SecExternalDisplayService_Java"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 272
    sget-boolean v2, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v2, :cond_4

    .line 273
    const-string v2, "SecExternalDisplayService_Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecExternalDisplayInitWakeMode set the mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_4
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 277
    if-eqz v1, :cond_5

    .line 279
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 281
    :cond_5
    return-void
.end method

.method private SecExternalDisplaySetWakeLock(Z)V
    .locals 2
    .param p1, "bStatus"    # Z

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_4

    .line 302
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 304
    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_0

    .line 305
    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "Acquire the lock for Wake status"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 320
    :cond_1
    :goto_0
    return-void

    .line 308
    :cond_2
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_3

    .line 311
    const-string v0, "SecExternalDisplayService_Java"

    const-string/jumbo v1, "release the lock for Wake status"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_3
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 317
    :cond_4
    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_1

    .line 318
    const-string v0, "SecExternalDisplayService_Java"

    const-string/jumbo v1, "mWakeLock is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/SecExternalDisplayService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SecExternalDisplayService;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetWakeLock(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/SecExternalDisplayService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SecExternalDisplayService;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bIsHomeTheatreConnected:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/SecExternalDisplayService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SecExternalDisplayService;

    .prologue
    .line 73
    iget v0, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/SecExternalDisplayService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SecExternalDisplayService;

    .prologue
    .line 73
    iget v0, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceHeight:I

    return v0
.end method

.method static synthetic access$400()Landroid/content/Context;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/SecExternalDisplayService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SecExternalDisplayService;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bDreamsEnabledByDefaultConfig:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/SecExternalDisplayService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SecExternalDisplayService;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/SecExternalDisplayService;->bDreamsEnabledByDefaultConfig:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/SecExternalDisplayService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SecExternalDisplayService;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bIsDayDreamEnabled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/SecExternalDisplayService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SecExternalDisplayService;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/SecExternalDisplayService;->bIsDayDreamEnabled:Z

    return p1
.end method

.method public static dispatchacquireCpuMinLock(I)V
    .locals 4
    .param p0, "value"    # I

    .prologue
    .line 803
    const-string v2, "SecExternalDisplayService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ISecExternalDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISecExternalDisplayService;

    move-result-object v1

    .line 805
    .local v1, "secExternalDisplayService":Landroid/os/ISecExternalDisplayService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/os/ISecExternalDisplayService;->acquireCpuMinLock(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    const-string v2, "SecExternalDisplayService_Java"

    const-string v3, "dispatchacquireCpuMinLock: "

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :goto_0
    return-void

    .line 806
    :catch_0
    move-exception v0

    .line 807
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SecExternalDisplayService_Java"

    const-string v3, "acquireCpuMinLock() -  fail!!! "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static dispatchacquireGpuMinLock(I)V
    .locals 4
    .param p0, "value"    # I

    .prologue
    .line 825
    const-string v2, "SecExternalDisplayService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ISecExternalDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISecExternalDisplayService;

    move-result-object v1

    .line 827
    .local v1, "secExternalDisplayService":Landroid/os/ISecExternalDisplayService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/os/ISecExternalDisplayService;->acquireGpuMinLock(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    const-string v2, "SecExternalDisplayService_Java"

    const-string v3, "dispatchacquireGpuMinLock: "

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :goto_0
    return-void

    .line 828
    :catch_0
    move-exception v0

    .line 829
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SecExternalDisplayService_Java"

    const-string v3, "acquireGpuMinLock() -  fail!!! "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static dispatchreleaseCpuMinLock()V
    .locals 4

    .prologue
    .line 814
    const-string v2, "SecExternalDisplayService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ISecExternalDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISecExternalDisplayService;

    move-result-object v1

    .line 816
    .local v1, "secExternalDisplayService":Landroid/os/ISecExternalDisplayService;
    :try_start_0
    invoke-interface {v1}, Landroid/os/ISecExternalDisplayService;->releaseCpuMinLock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    const-string v2, "SecExternalDisplayService_Java"

    const-string v3, "dispatchreleaseCpuMinLock: "

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :goto_0
    return-void

    .line 817
    :catch_0
    move-exception v0

    .line 818
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SecExternalDisplayService_Java"

    const-string/jumbo v3, "releaseCpuMinLock() -  fail!!! "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static dispatchreleaseGpuMinLock()V
    .locals 4

    .prologue
    .line 836
    const-string v2, "SecExternalDisplayService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ISecExternalDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISecExternalDisplayService;

    move-result-object v1

    .line 838
    .local v1, "secExternalDisplayService":Landroid/os/ISecExternalDisplayService;
    :try_start_0
    invoke-interface {v1}, Landroid/os/ISecExternalDisplayService;->releaseGpuMinLock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    const-string v2, "SecExternalDisplayService_Java"

    const-string v3, "dispatchreleaseGpuMinLock: "

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :goto_0
    return-void

    .line 839
    :catch_0
    move-exception v0

    .line 840
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SecExternalDisplayService_Java"

    const-string/jumbo v3, "releaseGpuMinLock() -  fail!!! "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setAidDim(I)V
    .locals 8
    .param p0, "value"    # I

    .prologue
    .line 688
    const/16 v2, 0x1f4a

    .line 689
    .local v2, "serviceNum":I
    const/16 v4, 0x90

    .line 691
    .local v4, "what":I
    const-string v5, "SecExternalDisplayService_Java"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tvout HMT_AID: 144, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :try_start_0
    const-string v5, "TvoutService_C"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 695
    .local v3, "tvout":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 696
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 697
    .local v0, "data":Landroid/os/Parcel;
    const-string v5, "android.hardware.ISecExternalDisplayService"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 698
    const/16 v5, 0x90

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 700
    const/16 v5, 0x1f4a

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v5, v0, v6, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v3    # "tvout":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 703
    :catch_0
    move-exception v1

    .line 704
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v5, "SecExternalDisplayService_Java"

    const-string/jumbo v6, "setHmtAid failed: TvoutService_C is dead!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setEnableDualScanMode(I)V
    .locals 8
    .param p0, "value"    # I

    .prologue
    .line 709
    const/16 v2, 0x1f4b

    .line 710
    .local v2, "serviceNum":I
    const/16 v4, 0x91

    .line 713
    .local v4, "what":I
    const-string v5, "SecExternalDisplayService_Java"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tvout DUAL_SCAN: 145, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :try_start_0
    const-string v5, "TvoutService_C"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 717
    .local v3, "tvout":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 718
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 719
    .local v0, "data":Landroid/os/Parcel;
    const-string v5, "android.hardware.ISecExternalDisplayService"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 720
    const/16 v5, 0x91

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 721
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 722
    const/16 v5, 0x1f4b

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v5, v0, v6, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 723
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v3    # "tvout":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 725
    :catch_0
    move-exception v1

    .line 726
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v5, "SecExternalDisplayService_Java"

    const-string/jumbo v6, "setDualScan failed: TvoutService_C is dead!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setHmtOn(I)V
    .locals 8
    .param p0, "value"    # I

    .prologue
    .line 732
    const/16 v2, 0x1f4c

    .line 733
    .local v2, "serviceNum":I
    const/16 v4, 0x92

    .line 735
    .local v4, "what":I
    const-string v5, "SecExternalDisplayService_Java"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tvout HMT_ON: 146, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :try_start_0
    const-string v5, "TvoutService_C"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 739
    .local v3, "tvout":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 740
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 741
    .local v0, "data":Landroid/os/Parcel;
    const-string v5, "android.hardware.ISecExternalDisplayService"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 742
    const/16 v5, 0x92

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 743
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 744
    const/16 v5, 0x1f4c

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v5, v0, v6, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v3    # "tvout":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 747
    :catch_0
    move-exception v1

    .line 748
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v5, "SecExternalDisplayService_Java"

    const-string/jumbo v6, "setHmtOn failed: TvoutService_C is dead!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public SecExternalDisplayCreateSurface(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "surface"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 624
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayCreateSurface(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayDestroySurface(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "surface"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 629
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayDestroySurface(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayGet3DMode()I
    .locals 1

    .prologue
    .line 614
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayGet3DMode()I

    move-result v0

    return v0
.end method

.method public SecExternalDisplayGetResolution()I
    .locals 1

    .prologue
    .line 603
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayGetResolution()I

    move-result v0

    return v0
.end method

.method public SecExternalDisplayGetStatus(I)Z
    .locals 1
    .param p1, "param"    # I

    .prologue
    .line 651
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayRegisterEVF(Z)I
    .locals 1
    .param p1, "bStatus"    # Z

    .prologue
    .line 634
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayRegisterEVF(Z)I

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySet3DMode(I)I
    .locals 1
    .param p1, "nS3DMode"    # I

    .prologue
    .line 619
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySet3DMode(I)I

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetExternalUITransform(I)Z
    .locals 1
    .param p1, "transform"    # I

    .prologue
    .line 665
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetExternalUITransform(I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetForceMirrorMode(Z)Z
    .locals 1
    .param p1, "bEnable"    # Z

    .prologue
    .line 657
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetForceMirrorMode(Z)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetGpuLock(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 682
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetGpuLock(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetOutputMode(I)Z
    .locals 1
    .param p1, "nOutputMode"    # I

    .prologue
    .line 608
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetOutputMode(I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetPause(Z)Z
    .locals 1
    .param p1, "bStatus"    # Z

    .prologue
    .line 640
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetPause(Z)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetResolution(I)Z
    .locals 1
    .param p1, "nResolution"    # I

    .prologue
    .line 598
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetResolution(I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetStatus(IZ)Z
    .locals 1
    .param p1, "param"    # I
    .param p2, "status"    # Z

    .prologue
    .line 646
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetStatus(IZ)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayTeminateWFD()Z
    .locals 3

    .prologue
    .line 414
    sget-boolean v1, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v1, :cond_0

    .line 415
    const-string v1, "SecExternalDisplayService_Java"

    const-string v2, "WFD is running, send intent to terminate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFI_DISPLAY_REQ"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    .local v0, "resSetActionIntent":Landroid/content/Intent;
    const-string v1, "Control"

    const-string/jumbo v2, "terminate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    sget-object v1, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 420
    const/4 v1, 0x1

    return v1
.end method

.method public SecExternalDisplayToast(I)V
    .locals 9
    .param p1, "nIndex"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 331
    sget-boolean v4, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v4, :cond_0

    .line 332
    const-string v4, "SecExternalDisplayService_Java"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " SecExternalDisplayToast : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    const/4 v0, 0x0

    .line 336
    .local v0, "strDefault":Ljava/lang/String;
    sget-object v4, Lcom/android/server/SecExternalDisplayService$6;->$SwitchMap$com$android$server$SecExternalDisplayService$EDSToast:[I

    invoke-static {p1}, Lcom/android/server/SecExternalDisplayService$EDSToast;->toStatus(I)Lcom/android/server/SecExternalDisplayService$EDSToast;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 377
    :goto_0
    if-eqz v0, :cond_1

    .line 378
    sget-object v4, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 379
    :cond_1
    return-void

    .line 340
    :pswitch_0
    sget-object v4, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104075d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 341
    goto :goto_0

    .line 345
    :pswitch_1
    sget-object v4, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104075e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 346
    goto :goto_0

    .line 350
    :pswitch_2
    sget-object v4, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104075f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 351
    goto :goto_0

    .line 355
    :pswitch_3
    sget-object v4, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040760

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, "strDefault2":Ljava/lang/String;
    sget-object v4, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-static {v4, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 358
    .local v3, "theatre":Landroid/widget/Toast;
    invoke-virtual {v3, v7}, Landroid/widget/Toast;->setDuration(I)V

    .line 359
    iput-boolean v7, p0, Lcom/android/server/SecExternalDisplayService;->bIsHomeTheatreConnected:Z

    .line 360
    new-instance v2, Lcom/android/server/SecExternalDisplayService$4;

    invoke-direct {v2, p0, v3}, Lcom/android/server/SecExternalDisplayService$4;-><init>(Lcom/android/server/SecExternalDisplayService;Landroid/widget/Toast;)V

    .line 369
    .local v2, "t":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 373
    .end local v1    # "strDefault2":Ljava/lang/String;
    .end local v2    # "t":Ljava/lang/Thread;
    .end local v3    # "theatre":Landroid/widget/Toast;
    :pswitch_4
    iput-boolean v8, p0, Lcom/android/server/SecExternalDisplayService;->bIsHomeTheatreConnected:Z

    goto :goto_0

    .line 336
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public SecExternalDisplayType(Z)Z
    .locals 1
    .param p1, "bIsTablet"    # Z

    .prologue
    .line 670
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayType(Z)Z

    move-result v0

    return v0
.end method

.method public acquireCpuMinLock(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 754
    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tvout CPUMINLOCK_ACQUIRE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->cpuMinFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->supportedCPUFreqTable:[I

    if-eqz v0, :cond_0

    .line 757
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->supportedCPUFreqTable:[I

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 758
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->cpuMinFreqBooster:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->supportedCPUFreqTable:[I

    aget v2, v2, p1

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 759
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->cpuMinFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 760
    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tvout CPU_MIN_LOCK was acquired : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->supportedCPUFreqTable:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Hz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is unsuitable value for supportedCPUFreqTable. Please put number : 0 ~ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->supportedCPUFreqTable:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public acquireGpuMinLock(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 779
    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tvout GPUMINLOCK_ACQUIRE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->gpuMinFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->supportedGPUFreqTable:[I

    if-eqz v0, :cond_0

    .line 782
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->supportedGPUFreqTable:[I

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 783
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->gpuMinFreqBooster:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->supportedGPUFreqTable:[I

    aget v2, v2, p1

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 784
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->gpuMinFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 785
    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tvout GPU_MIN_LOCK was acquired : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->supportedGPUFreqTable:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Hz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 787
    :cond_1
    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is unsuitable value for supportedGPUFreqTable. Please put number : 0 ~ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->supportedGPUFreqTable:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEDSContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public handleAlarm(Z)Z
    .locals 4
    .param p1, "status"    # Z

    .prologue
    const/4 v3, 0x1

    .line 503
    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_0

    .line 504
    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle Alarm : !! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_0
    if-eqz p1, :cond_3

    .line 507
    iput-boolean v3, p0, Lcom/android/server/SecExternalDisplayService;->bIsAlarmRecieved:Z

    .line 508
    iget-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bIsAlarmRecieved:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 509
    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_1

    .line 510
    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "Destroy SmartDock Surface !!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_1
    const-string v0, "Internal"

    iget v1, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceWidth:I

    iget v2, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayDestroySurface(Ljava/lang/String;II)Z

    .line 524
    :cond_2
    :goto_0
    return v3

    .line 517
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bIsAlarmRecieved:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 518
    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_4

    .line 519
    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "Create SmartDock Surface !!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_4
    const-string v0, "Internal"

    iget v1, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceWidth:I

    iget v2, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayCreateSurface(Ljava/lang/String;II)Z

    .line 521
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bIsAlarmRecieved:Z

    goto :goto_0
.end method

.method public handleHDMIConnection(Z)Z
    .locals 6
    .param p1, "status"    # Z

    .prologue
    const/4 v5, 0x1

    .line 437
    sget-boolean v2, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v2, :cond_0

    .line 438
    const-string v2, "SecExternalDisplayService_Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " handleHDMIConnection : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_0
    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    .line 440
    .local v0, "cable_status":Z
    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    .line 441
    invoke-direct {p0, p1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetWakeLock(Z)V

    .line 442
    if-ne p1, v5, :cond_3

    .line 444
    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_WFD:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 445
    invoke-virtual {p0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayTeminateWFD()Z

    .line 446
    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSToast;->EDS_TOAST_WFD_DISCONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayToast(I)V

    .line 447
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 448
    .local v1, "msg":Landroid/os/Message;
    const-string v2, "HDMI connected. AllShare Cast turned off"

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 449
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mHandlerSPC:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 456
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 458
    const-string v2, "Internal"

    iget v3, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceWidth:I

    iget v4, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceHeight:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayCreateSurface(Ljava/lang/String;II)Z

    .line 475
    :cond_1
    :goto_1
    return v5

    .line 452
    :cond_2
    const-string v2, "SecExternalDisplayService_Java"

    const-string v3, " HDMI Connected : "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSToast;->EDS_TOAST_HDMI_CONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayToast(I)V

    goto :goto_0

    .line 462
    :cond_3
    const-string v2, "SecExternalDisplayService_Java"

    const-string v3, " HDMI DisConnected : "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 465
    const-string v2, "Internal"

    iget v3, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceWidth:I

    iget v4, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceHeight:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayDestroySurface(Ljava/lang/String;II)Z

    .line 467
    :cond_4
    if-ne v0, v5, :cond_1

    .line 469
    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSToast;->EDS_TOAST_HDMI_DISCONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayToast(I)V

    goto :goto_1
.end method

.method handleHTPluggedEvent(Z)V
    .locals 5
    .param p1, "plugged"    # Z

    .prologue
    const/4 v4, 0x1

    .line 388
    sget-boolean v1, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v1, :cond_0

    .line 389
    const-string v1, "SecExternalDisplayService_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event received as  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 391
    .local v0, "msg":Landroid/os/Message;
    if-ne p1, v4, :cond_1

    .line 393
    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 394
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mHandlerHT:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 402
    :goto_0
    return-void

    .line 399
    :cond_1
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 400
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mHandlerHT:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public handleSmartDockConnection(I)Z
    .locals 6
    .param p1, "status"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 535
    const-string v1, "SecExternalDisplayService_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " handleSmartDockConnection status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Intent.EXTRA_USB_HID_STATE_ATTACHED value is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    if-ne v4, p1, :cond_4

    .line 538
    const-string v1, "SecExternalDisplayService_Java"

    const-string v2, "Mouse  Connected  Smart Dock!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1, v4}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    .line 541
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-ne v1, v4, :cond_0

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 543
    const-string v1, "Internal"

    iget v2, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceWidth:I

    iget v3, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceHeight:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayCreateSurface(Ljava/lang/String;II)Z

    .line 555
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 556
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_1

    .line 557
    sget-object v1, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 558
    :cond_1
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_3

    .line 560
    :try_start_0
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v1, :cond_2

    .line 561
    new-instance v1, Lcom/android/server/SecExternalDisplayService$5;

    invoke-direct {v1, p0}, Lcom/android/server/SecExternalDisplayService$5;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 576
    :cond_2
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    :cond_3
    :goto_1
    return v4

    .line 545
    :cond_4
    if-nez p1, :cond_0

    .line 546
    const-string v1, "SecExternalDisplayService_Java"

    const-string v2, "Mouse Disconnected from Smart Dock!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    const-string v1, "Internal"

    iget v2, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceWidth:I

    iget v3, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceHeight:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayDestroySurface(Ljava/lang/String;II)Z

    .line 551
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1, v5}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    goto :goto_0

    .line 577
    :catch_0
    move-exception v0

    .line 578
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "SecExternalDisplayService_Java"

    const-string v2, "Phone window manager doesn\'t have the permssion READ_PHONE_STATE. please defines it via <uses-permssion> in AndroidManifest.xml."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 583
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_5
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_3

    .line 584
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1
.end method

.method public handleWFDConnection(I)Z
    .locals 4
    .param p1, "status"    # I

    .prologue
    const/4 v3, 0x1

    .line 485
    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllShare Cast Connected Status : !! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    if-ne p1, v3, :cond_0

    .line 488
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_WFD:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    move-result v0

    .line 490
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_WFD:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public releaseCpuMinLock()V
    .locals 2

    .prologue
    .line 769
    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "Tvout CPUMINLOCK_RELEASE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->cpuMinFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->cpuMinFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 773
    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "Tvout CPU_MIN_LOCK was released."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_0
    return-void
.end method

.method public releaseGpuMinLock()V
    .locals 2

    .prologue
    .line 794
    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "Tvout GPUMINLOCK_RELEASE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->gpuMinFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->gpuMinFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 798
    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "Tvout GPU_MIN_LOCK was released."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_0
    return-void
.end method

.method public setHMTParams(FFF[F)Z
    .locals 1
    .param p1, "esd"    # F
    .param p2, "lsd"    # F
    .param p3, "ipd"    # F
    .param p4, "hmdWarpParams"    # [F

    .prologue
    .line 676
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/SecExternalDisplayJNIInterface;->setHMTParams(FFF[F)Z

    move-result v0

    return v0
.end method
