.class public Lcom/samsung/android/fingerprint/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;,
        Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;,
        Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    }
.end annotation


# static fields
.field public static final CLIENTSPEC_KEY_APPNAME:Ljava/lang/String; = "appName"

.field public static final CLIENTSPEC_KEY_BACKGROUND:Ljava/lang/String; = "background"

.field public static final CLIENTSPEC_KEY_DEMANDED_PROPERTY_NAME:Ljava/lang/String; = "propertyName"

.field public static final CLIENTSPEC_KEY_DEMAND_EXTRA_EVENT:Ljava/lang/String; = "demandExtraEvent"

.field public static final CLIENTSPEC_KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final CLIENTSPEC_KEY_SECURITY_LEVEL:Ljava/lang/String; = "securityLevel"

.field public static final CLIENTSPEC_KEY_USE_MANUAL_TIMEOUT:Ljava/lang/String; = "useManualTimeout"

.field private static final DEBUG:Z

.field private static final ENROLL_FINISHED:Ljava/lang/String; = "com.samsung.android.fingerprint.action.ENROLL_FINISHED"

.field private static final ERROR_MSG_SERVICE_NOT_FOUND:Ljava/lang/String; = "FingerprintService is not running!"

.field public static final EXTRAS_KEY_TOKEN:Ljava/lang/String; = "token"

.field private static final FINGERPRINT_MANAGER_SERVICE:Ljava/lang/String; = "com.sec.feature.fingerprint_manager_service"

.field public static final FINGER_ALL:I = 0xb

.field public static final FINGER_LEFT_INDEX:I = 0x2

.field public static final FINGER_LEFT_LITTLE:I = 0x5

.field public static final FINGER_LEFT_MIDDLE:I = 0x3

.field public static final FINGER_LEFT_RING:I = 0x4

.field public static final FINGER_LEFT_THUMB:I = 0x1

.field public static final FINGER_NOT_SPECIFIED:I = 0x0

.field public static final FINGER_PERMISSION_DELIMITER:Ljava/lang/String; = ","

.field public static final FINGER_RIGHT_INDEX:I = 0x7

.field public static final FINGER_RIGHT_LITTLE:I = 0xa

.field public static final FINGER_RIGHT_MIDDLE:I = 0x8

.field public static final FINGER_RIGHT_RING:I = 0x9

.field public static final FINGER_RIGHT_THUMB:I = 0x6

.field public static final SECURITY_LEVEL_HIGH:I = 0x2

.field public static final SECURITY_LEVEL_LOW:I = 0x0

.field public static final SECURITY_LEVEL_REGULAR:I = 0x1

.field public static final SECURITY_LEVEL_VERY_HIGH:I = 0x3

.field public static final SERVICE_NAME:Ljava/lang/String; = "fingerprint_service"

.field private static final START_ENROLL_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "FingerprintManager"

.field private static isEnroll:Z

.field private static mContext:Landroid/content/Context;

.field private static mEnrollListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

.field private static mIdentifyDialog:Landroid/app/Dialog;

.field private static mSecurityLevel:I

.field private static mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

.field private static mString:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;


# instance fields
.field public mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

.field final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.fingerprint.service"

    const-string v4, "com.samsung.android.fingerprint.service.activity.StartEnrollActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->START_ENROLL_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

    sput-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    sput-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->mString:Ljava/lang/String;

    sput v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mSecurityLevel:I

    sput-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->mIdentifyDialog:Landroid/app/Dialog;

    sput-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    sput-boolean v2, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnroll:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/fingerprint/FingerprintManager$3;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    sput-object p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mIdentifyDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/fingerprint/FingerprintManager;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    .locals 1

    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mString:Ljava/lang/String;

    return-object v0
.end method

.method private clearEnrollStatus()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnroll:Z

    return-void
.end method

.method private declared-synchronized ensureServiceConnected()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_2

    const-string v1, "fingerprint_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/fingerprint/IFingerprintManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string v1, "FingerprintManager"

    const-string v2, "ensureServiceConnected: mService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "ensureServiceConnected:"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    :try_start_4
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FingerprintManager"

    const-string/jumbo v2, "mService is not valid so retieve the service again."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "fingerprint_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/fingerprint/IFingerprintManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_6
    const-string v1, "ensureServiceConnected:"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :cond_3
    :try_start_7
    const-string v1, "FingerprintManager"

    const-string v2, "ensureServiceConnected: mService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized getIdentifyDialogObj()Landroid/app/Dialog;
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mIdentifyDialog:Landroid/app/Dialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getImageQualityFeedback(I)I
    .locals 1

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const v0, 0x1040025

    goto :goto_0

    :sswitch_1
    const v0, 0x1040027

    goto :goto_0

    :sswitch_2
    const v0, 0x1040028

    goto :goto_0

    :sswitch_3
    const v0, 0x1040029

    goto :goto_0

    :sswitch_4
    const v0, 0x104002a

    goto :goto_0

    :sswitch_5
    const v0, 0x104002a

    goto :goto_0

    :sswitch_6
    const v0, 0x104002b

    goto :goto_0

    :sswitch_7
    const v0, 0x104002c

    goto :goto_0

    :sswitch_8
    const v0, 0x104002d

    goto :goto_0

    :sswitch_9
    const v0, 0x104002e

    goto :goto_0

    :sswitch_a
    const v0, 0x104002f

    goto :goto_0

    :sswitch_b
    const v0, 0x1040030

    goto :goto_0

    :sswitch_c
    const v0, 0x1040031

    goto :goto_0

    :sswitch_d
    const v0, 0x1040039

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_8
        0x2 -> :sswitch_3
        0x4 -> :sswitch_1
        0x10 -> :sswitch_2
        0x200 -> :sswitch_d
        0x1000 -> :sswitch_4
        0x2000 -> :sswitch_1
        0x8000 -> :sswitch_c
        0x10000 -> :sswitch_a
        0x20000 -> :sswitch_5
        0x40000 -> :sswitch_6
        0x80000 -> :sswitch_9
        0x1000000 -> :sswitch_b
        0x2000000 -> :sswitch_7
    .end sparse-switch
.end method

.method public static getImageQualityIcon(I)I
    .locals 1

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    const v0, 0x1080312

    :goto_0
    return v0

    :sswitch_0
    const v0, 0x108031c

    goto :goto_0

    :sswitch_1
    const v0, 0x1080314

    goto :goto_0

    :sswitch_2
    const v0, 0x1080316

    goto :goto_0

    :sswitch_3
    const v0, 0x1080315

    goto :goto_0

    :sswitch_4
    const v0, 0x108031d

    goto :goto_0

    :sswitch_5
    const v0, 0x1080317

    goto :goto_0

    :sswitch_6
    const v0, 0x1080313

    goto :goto_0

    :sswitch_7
    const v0, 0x108031b

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x10 -> :sswitch_2
        0x200 -> :sswitch_7
        0x1000 -> :sswitch_3
        0x8000 -> :sswitch_6
        0x20000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x1000000 -> :sswitch_5
    .end sparse-switch
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 2

    const-class v0, Lcom/samsung/android/fingerprint/FingerprintManager;

    monitor-enter v0

    const/4 v1, 0x2

    :try_start_0
    invoke-static {p0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 4

    const-class v3, Lcom/samsung/android/fingerprint/FingerprintManager;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v2, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "com.sec.feature.fingerprint_manager_service"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-direct {v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;-><init>(Landroid/os/Handler;)V

    sput-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    sput p1, Lcom/samsung/android/fingerprint/FingerprintManager;->mSecurityLevel:I

    :cond_0
    sput-object p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->startFingerprintManagerService()V

    :cond_1
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static isEnrolling()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnroll:Z

    return v0
.end method

.method private logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method private logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v1, "FingerprintManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "FingerprintManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v1, "FingerprintManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "FingerprintManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private setEnrollStatus()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnroll:Z

    return-void
.end method

.method private static startFingerprintManagerService()V
    .locals 5

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.fingerprint.service"

    const-string v4, "com.samsung.android.fingerprint.service.FingerprintServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "FingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string v2, "addPermission"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->addPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "addPermission"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public attachClient(Landroid/os/IBinder;Lcom/samsung/android/fingerprint/IFingerprintClient;)Landroid/os/IBinder;
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string v2, "attachClient"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->attachClient(Landroid/os/IBinder;Lcom/samsung/android/fingerprint/IFingerprintClient;)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "attachClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", client="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public binderDied()V
    .locals 4

    const-string v0, "FingerprintManager"

    const-string v1, "====== binderDied ====="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/fingerprint/FingerprintManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/fingerprint/FingerprintManager$1;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public cancel(Landroid/os/IBinder;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_1

    const-string v2, "cancel"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->cancel(Landroid/os/IBinder;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "cancel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkAlternativePassword(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not supported API"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public closeTransaction(Landroid/os/IBinder;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string v2, "closeTransaction"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->closeTransaction(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "closeTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public detachClient(Landroid/os/IBinder;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string v2, "detachClient"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->detachClient(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "detachClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enroll(Landroid/os/IBinder;Ljava/lang/String;I)I
    .locals 5

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string v2, "enroll"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->enroll(Landroid/os/IBinder;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "enroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enrollForMultiUser(Landroid/os/IBinder;ILjava/lang/String;I)I
    .locals 6

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string v2, "enrollForMultiUser"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/fingerprint/IFingerprintManager;->enrollForMultiUser(Landroid/os/IBinder;ILjava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "enrollForMultiUser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public finishIdentify(Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string v2, "finishIdentify"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->finishIdentify(Landroid/os/IBinder;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "finishIdentify"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getEnrolledFingers()I
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string v2, "getEnrolledFingers"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getEnrolledFingers()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "getEnrolledFingers"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getEnrolledPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string v2, "getEnrolledPermissions"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getEnrolledPermissions(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "getEnrolledPermissions"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getEnrolledUserCount()I
    .locals 5

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string v2, "getEnrolledUserCount"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getEnrolledUserCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "getEnrolledUserCount"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getEnrolledUsers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string v2, "getEnrolledUsers"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getEnrolledUsers()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "getEnrolledUsers"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getIndexName(I)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string v2, "getIndexName"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getIndexName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "getIndexName"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getLastImageQuality(Landroid/content/Context;)I
    .locals 5

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string v2, "getLastImageQuality"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "FingerprintService is not running!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getLastImageQuality(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityIcon(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    const-string v2, "FingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLastImageQuality: return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_0
    move-exception v0

    const-string v2, "getLastImageQuality"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getLastImageQualityMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_1

    const-string v2, "getLastImageQualityMessage"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-eqz p1, :cond_0

    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getLastImageQualityMessage(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "getLastImageQualityMessage"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getSensorServiceVersion()Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_0

    const-string v1, "getSensorServiceVersion"

    const/4 v2, 0x0

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getSensorServiceVersion()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "getSensorServiceVersion"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    const-string v1, ""

    goto :goto_0
.end method

.method public getVersion()I
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string v2, "getVersion"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getVersion()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "getVersion"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public hasPendingCommand()Z
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string v2, "hasPendingCommand"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->hasPendingCommand()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "hasPendingCommand"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public identify(Landroid/os/IBinder;Ljava/lang/String;)I
    .locals 5

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string v2, "identify"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->identify(Landroid/os/IBinder;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "identify"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public identifyForMultiUser(Landroid/os/IBinder;ILjava/lang/String;)I
    .locals 6

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string v2, "identifyForMultiUser"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->identifyForMultiUser(Landroid/os/IBinder;ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "identifyForMultiUser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public identifyForMultiUser(Landroid/os/IBinder;Ljava/lang/String;)I
    .locals 5

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string v2, "identifyForMultiUser"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    const/4 v3, -0x1

    invoke-interface {v2, p1, v3, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->identifyForMultiUser(Landroid/os/IBinder;ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "identifyForMultiUser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isEnrolledPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string v2, "isEnrolledPermission"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->isEnrolledPermission(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "isEnrolledPermission"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public isSensorReady()Z
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string v2, "isSensorReady"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->isSensorReady()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "isSensorReady"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public notifyAlternativePasswordBegin()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "notifyAlternativePasswordBegin"

    const/4 v2, 0x0

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyAlternativePasswordBegin()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "notifyAlternativePasswordBegin"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public notifyAuthSessionBegin()Z
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "notifyAuthSessionBegin"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyAuthSessionBegin()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "notifyAuthSessionBegin"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public notifyAuthSessionEnd()Z
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "notifyAuthSessionEnd"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyAuthSessionEnd()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "notifyAuthSessionEnd"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public notifyEnrollBegin()Z
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "notifyEnrollBegin"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->setEnrollStatus()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyEnrollBegin()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->clearEnrollStatus()V

    const-string/jumbo v2, "notifyEnrollBegin"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public notifyEnrollEnd()Z
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->clearEnrollStatus()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "notifyEnrollEnd"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyEnrollEnd()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "notifyEnrollEnd"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public openTransaction(Landroid/os/IBinder;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "openTransaction"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->openTransaction(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "openTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processFIDO(Landroid/content/Context;Landroid/os/IBinder;Ljava/lang/String;[B)[B
    .locals 7

    const-string v3, "FingerprintManager"

    const-string/jumbo v4, "processFIDO"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v3, :cond_0

    const-string/jumbo v3, "processFIDO"

    const/4 v4, 0x0

    const-string v5, "FingerprintService is not running!"

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_0
    if-eqz p4, :cond_1

    :try_start_0
    array-length v3, p4

    if-eqz v3, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move-object v2, v1

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p2, v4, p3, p4}, Lcom/samsung/android/fingerprint/IFingerprintManager;->processFIDO(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_3
    :goto_1
    move-object v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "processFIDO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", permissionName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v0, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    sget-boolean v3, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string/jumbo v4, "processFIDO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", requestData="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p4, :cond_4

    const-string v3, "NULL"

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v3, p4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_2
.end method

.method public protect(Landroid/os/IBinder;Ljava/lang/String;[B)[B
    .locals 7

    const/4 v1, 0x0

    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v3, :cond_0

    const-string/jumbo v3, "protect"

    const/4 v4, 0x0

    const-string v5, "FingerprintService is not running!"

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_0
    if-eqz p3, :cond_1

    :try_start_0
    array-length v3, p3

    if-nez v3, :cond_2

    :cond_1
    move-object v2, v1

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->protect(Landroid/os/IBinder;Ljava/lang/String;[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_3
    :goto_1
    move-object v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "protect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", permissionName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v0, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    sget-boolean v3, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string/jumbo v4, "protect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unprotectedData="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p3, :cond_4

    const-string v3, ""

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v3, p3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_2
.end method

.method public reEnroll(Landroid/os/IBinder;I)I
    .locals 5

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "reenroll"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->reEnroll(Landroid/os/IBinder;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "reenroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "registerClient"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v2, "securityLevel"

    sget v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mSecurityLevel:I

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "packageName"

    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "registerClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "client="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", clientSpec="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;)Landroid/os/IBinder;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "registerClient"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-virtual {p2}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->build()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "registerClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "client="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", clientSpec="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->build()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeAllEnrolledFingers()Z
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "removeAllEnrolledFingers"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->removeAllEnrolledFingers()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "removeAllEnrolledFingers"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public removeEnrolledFinger(I)Z
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "removeEnrolledFinger"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->removeEnrolledFinger(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "removeEnrolledFinger"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public removeEnrolledPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "removeEnrolledPermission"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->removeEnrolledPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "removeEnrolledPermission"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeEnrolledPermissions(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "removeEnrolledPermissions"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->removeEnrolledPermissions(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "removeEnrolledPermissions"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public secondaryEnroll(Landroid/os/IBinder;I)I
    .locals 5

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "secondaryEnroll"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->secondaryEnroll(Landroid/os/IBinder;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "secondaryEnroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setIndexName(ILjava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "setIndexName"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->setIndexName(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "setIndexName"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setPassword(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "setPassword"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->setPassword(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "setPassword"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public showIdentifyDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;Ljava/lang/String;Z)Landroid/app/Dialog;
    .locals 7

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "showIdentifyDialog"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getIdentifyDialogObj()Landroid/app/Dialog;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$Builder;

    sget v5, Lcom/samsung/android/fingerprint/FingerprintManager;->mSecurityLevel:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$Builder;-><init>(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;Ljava/lang/String;ZI)V

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$Builder;->create()Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mIdentifyDialog:Landroid/app/Dialog;

    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mIdentifyDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mIdentifyDialog:Landroid/app/Dialog;

    new-instance v2, Lcom/samsung/android/fingerprint/FingerprintManager$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/fingerprint/FingerprintManager$2;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mIdentifyDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_2
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mIdentifyDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public startEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "FingerprintManager"

    const-string v2, "ActivityContext is null!! startEnrollActivity need activityContext"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    const-string v1, "FingerprintManager"

    const-string v2, "Listener is null!! startEnrollActivity need EnrollFinishListener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-string v1, "FingerprintManager"

    const-string v2, "Id parameter is needed. Please give a correct id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sput-object p1, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    sput-object p3, Lcom/samsung/android/fingerprint/FingerprintManager;->mString:Ljava/lang/String;

    sput-object p2, Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollBegin()Z

    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->showIdentifyDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;Ljava/lang/String;Z)Landroid/app/Dialog;

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/fingerprint/FingerprintManager;->startSettingEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public startSettingEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;

    invoke-direct {v0, p0, p2, p3}, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.android.fingerprint.action.ENROLL_FINISHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->START_ENROLL_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v3, "previousStage"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public unprotect(Landroid/os/IBinder;Ljava/lang/String;[B)[B
    .locals 7

    const/4 v1, 0x0

    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v3, :cond_0

    const-string/jumbo v3, "unprotect"

    const/4 v4, 0x0

    const-string v5, "FingerprintService is not running!"

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_0
    if-eqz p3, :cond_1

    :try_start_0
    array-length v3, p3

    if-nez v3, :cond_2

    :cond_1
    move-object v2, v1

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->unprotect(Landroid/os/IBinder;Ljava/lang/String;[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_3
    :goto_1
    move-object v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "unprotect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", permissionName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v0, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    sget-boolean v3, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string/jumbo v4, "unprotect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", protectedData="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p3, :cond_4

    const-string v3, "NULL"

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v3, p3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_2
.end method

.method public unregisterClient(Landroid/os/IBinder;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "unregisterClient"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->unregisterClient(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "unregisterClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public verifyPassword(Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "verifyPassword"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->verifyPassword(Landroid/os/IBinder;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "verifyPassword"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public verifyPassword(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/fingerprint/FingerprintManager;->verifyPassword(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
