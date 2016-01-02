.class Lcom/samsung/android/fingerprint/FingerprintClientWrapper;
.super Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;
.source "FingerprintIdentifyDialog.java"


# static fields
.field static mFingerprintClientSpecBuilder:Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

.field static mFingerprintClientWrapper:Lcom/samsung/android/fingerprint/FingerprintClientWrapper;

.field static mHandler:Landroid/os/Handler;

.field static mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintClientWrapper;->mFingerprintClientWrapper:Lcom/samsung/android/fingerprint/FingerprintClientWrapper;

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintClientWrapper;->mFingerprintClientSpecBuilder:Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintClientWrapper;->mHandler:Landroid/os/Handler;

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintClientWrapper;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;-><init>()V

    const-string v0, "FingerprintIdentifyDialog"

    const-string v1, "Create FingerprintClientWrapper"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static declared-synchronized init()V
    .locals 3

    const-class v1, Lcom/samsung/android/fingerprint/FingerprintClientWrapper;

    monitor-enter v1

    :try_start_0
    const-string v0, "FingerprintIdentifyDialog"

    const-string v2, "FingerprintClientWrapper.init"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintClientWrapper;->mFingerprintClientWrapper:Lcom/samsung/android/fingerprint/FingerprintClientWrapper;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintClientWrapper;->mFingerprintClientSpecBuilder:Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintClientWrapper;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintClientWrapper;->mToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized registerClient(Lcom/samsung/android/fingerprint/FingerprintManager;Landroid/os/Handler;I)Landroid/os/IBinder;
    .locals 4

    const-class v2, Lcom/samsung/android/fingerprint/FingerprintClientWrapper;

    monitor-enter v2

    :try_start_0
    sput-object p1, Lcom/samsung/android/fingerprint/FingerprintClientWrapper;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintClientWrapper;->mFingerprintClientWrapper:Lcom/samsung/android/fingerprint/FingerprintClientWrapper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/fingerprint/FingerprintClientWrapper;

    invoke-direct {v1}, Lcom/samsung/android/fingerprint/FingerprintClientWrapper;-><init>()V

    sput-object v1, Lcom/samsung/android/fingerprint/FingerprintClientWrapper;->mFingerprintClientWrapper:Lcom/samsung/android/fingerprint/FingerprintClientWrapper;

    new-instance v1, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    const-string v3, "com.samsung.android.fingerprint.FingerprintIdentifyDialog"

    invoke-direct {v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->setSecurityLevel(I)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/fingerprint/FingerprintClientWrapper;->mFingerprintClientSpecBuilder:Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintClientWrapper;->mFingerprintClientSpecBuilder:Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->build()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintClientWrapper;->mFingerprintClientWrapper:Lcom/samsung/android/fingerprint/FingerprintClientWrapper;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/fingerprint/FingerprintClientWrapper;->mToken:Landroid/os/IBinder;

    :cond_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintClientWrapper;->mToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static unregisterClient()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintClientWrapper;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p1

    if-eqz v0, :cond_0

    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintClientWrapper;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintClientWrapper;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintClientWrapper;->mHandler:Landroid/os/Handler;

    iget v3, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    const-string v1, "FingerprintIdentifyDialog"

    const-string v2, "Invalid Event"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
