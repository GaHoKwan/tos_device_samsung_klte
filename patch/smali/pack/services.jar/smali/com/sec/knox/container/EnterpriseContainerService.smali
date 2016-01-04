.class public Lcom/sec/knox/container/EnterpriseContainerService;
.super Lcom/sec/knox/container/IEnterpriseContainerService$Stub;
.source "EnterpriseContainerService.java"

# interfaces
.implements Lcom/sec/knox/container/EnterpriseContainerConstants;
.implements Lcom/sec/knox/container/manager/IStateManagerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/knox/container/EnterpriseContainerService$3;,
        Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;,
        Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;,
        Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;,
        Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;,
        Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;,
        Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;,
        Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;,
        Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;,
        Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;,
        Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;,
        Lcom/sec/knox/container/EnterpriseContainerService$WakeLockHandler;,
        Lcom/sec/knox/container/EnterpriseContainerService$TimeoutRunnableStartAfterStop;,
        Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;,
        Lcom/sec/knox/container/EnterpriseContainerService$DeathBinder;,
        Lcom/sec/knox/container/EnterpriseContainerService$SecuritySpec;
    }
.end annotation


# static fields
.field private static final ACTION_REDEX_SERVICE:Ljava/lang/String; = "com.samsung.redexmobile.ReDexService"

.field private static ADD_EMAILID:I = 0x0

.field private static final APKPATH:Ljava/lang/String; = "/system/containers"

.field private static final B2B_CONTAINER:Ljava/lang/String; = "B2B_CONTAINER"

.field private static final B2C_CONTAINER:Ljava/lang/String; = "B2C_CONTAINER"

.field private static final CACHE_NULL:I = 0x38d

.field private static final CANCEL_REQUEST:I = 0x5

.field private static final CHANGE_PWD_REQUEST:I = 0x3

.field private static final CONTAINER:Ljava/lang/String; = "CONTAINER"

.field private static final CONTAINER_AGENT:Ljava/lang/String; = "com.sec.knox.containeragent"

.field private static final CONTAINER_FRAMEWORK_APK_PACKAGES_KEY:Ljava/lang/String; = "framework.pkgName.key"

.field private static final CONTAINER_FRAMEWORK_APK_PATH:Ljava/lang/String; = "/system/containers/framework"

.field private static final CONTAINER_PREFIX:Ljava/lang/String; = "sec_container_"

.field private static final CREATE_REQUEST:I = 0x1

.field private static final CUSTOM_CONTAINER_CATEGORY:Ljava/lang/String; = "sec_container_1.android.intent.category.LAUNCHER"

.field private static final DAY_MILISECONDS:J = 0x5265c00L

.field private static final DEFAULT_CONTAINER_ID:I = 0x0

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final ENCRYPTION_STATE_CHANGE_PASSWORD:I = 0x3

.field private static final ENCRYPTION_STATE_MOUNT:I = 0x0

.field private static final ENCRYPTION_STATE_PRIMARY_UNMOUNT:I = 0x4

.field private static final ENCRYPTION_STATE_REMOUNT:I = 0x2

.field private static final ENCRYPTION_STATE_UNMOUNT:I = 0x1

.field private static final EXCL_MEDIA_TYPES:I = 0x0

.field private static final FAILURE:I = 0x0

.field private static final INTENT_CONTAINER_CREATE_FROM_MDM:Ljava/lang/String; = "com.sec.knox.containeragent.createcontainer"

.field private static final INTENT_CONTAINER_EVENTS_MANAGER_SERVICE:Ljava/lang/String; = "com.sec.knox.eventsmanager.ContainerEventsRelayManager"

.field private static final INTENT_REMOVE_B2C_CONTAINER_FROM_SERVICE:Ljava/lang/String; = "com.sec.knox.containeragent.remove.b2ccontainer"

.field private static final INVALID_CONTAINER_ID:I = -0x1

.field private static final INVALID_UID:I = -0x1

.field private static final IS_PRIMARY:Ljava/lang/String; = "primary"

.field private static final KNOXPublickey:Ljava/lang/String; = "OpenSSLRSAPublicKey{modulus=94cbce4ea26fe955e571de283c5834a6ddb8161348775f654f1d629784460ecc2a50d690d98dc59edc9b6e5aade8eb469f49d18fc647abee1a84c45e40fb74aa97f1d6678ef31142790465a89449405e2e499e47b34fd84aa8aed32123a280cb238a20864428cec46e175b9f2c9f313de0e7e37720a211226e736424638eab865174cdebcb6008ec0cf37fbda0c1e73dfef84996d53c6324cecf4f977c1443826a793ad8853d20cc5285220b885280b11c46aba587797c1510cf5f13656bcabb2db2e0f11d340c3f48ef7ecd76644c1c3e0dd9e8aa62c23df68891f60c96df1bb83074893cc043b58d8a2d83f1c425353f5d85abb586631eadb839b0bca9fa13,publicExponent=10001}"

.field private static final KNOX_LAUNCHER:Ljava/lang/String; = "sec_container_1.com.sec.android.app.knoxlauncher"

.field private static final MAX_LENGTH:I = 0x20

.field private static final MILISECONDS:J = 0x3e8L

.field private static final MOUNT_PATH:Ljava/lang/String; = "/data/data"

.field private static final MOUNT_PATH_SD:Ljava/lang/String; = "/mnt_1/sdcard_"

.field private static final MOUNT_UNMOUNT_ERROR_CODE:Ljava/lang/String; = "mount-unmount"

.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "ENTERPRISE_CONTAINER_NOTIFICATION"

.field private static final OUT_PATH:Ljava/lang/String; = "/data/system/container/signedout"

.field private static final OnPremisePublickey:Ljava/lang/String; = "OpenSSLRSAPublicKey{modulus=c71e9ce440601350a3035ff34718c1e273869334ca6a4b574130dd82b2d60500342bcd3f52a42da3d1d63fe7ad6d688e59bbcba7de73ed2f78fc2c055e3449f221976e9eff415440ce3799cb1c8f892c8c13645a50026c80f8cfc4261eb6260d8b30c8fb6ee28c1065219d693bcef409e647949534056fac0fc5ea79e0f9b7cb,publicExponent=10001}"

.field private static final PACKAGE_INSTALL_NAME:Ljava/lang/String; = "package_install_name"

.field private static final PACKAGE_INSTALL_SOURCE:Ljava/lang/String; = "package_install_source"

.field private static final PACKAGE_INSTALL_STATE:Ljava/lang/String; = "package_install_state"

.field private static final PACKAGE_INSTALL_UID:Ljava/lang/String; = "package_install_uid"

.field private static final PACKAGE_ORIGINAL_SIGNATURE:Ljava/lang/String; = "package_original_signature"

.field private static final PACKAGE_UNINSTALL_NAME:Ljava/lang/String; = "package_uninstall_name"

.field private static final PACKAGE_UNINSTALL_STATE:Ljava/lang/String; = "package_uninstall_state"

.field private static final PACKAGE_UNINSTALL_UID:Ljava/lang/String; = "package_uninstall_uid"

.field private static final PASSWORD:Ljava/lang/String; = "password"

.field private static final PASSWORDID:Ljava/lang/String; = "password"

.field private static REMOVE_EMAILID:I = 0x0

.field private static final REMOVE_REQUEST:I = 0x2

.field private static final SRC_PATH:Ljava/lang/String; = "/data/.container_"

.field private static final SRC_PATH_SD:Ljava/lang/String; = "/storage/container/.sdcontainer_"

.field private static final STAGE_PATH:Ljava/lang/String; = "/data/system/container/redexcache"

.field private static final SUCCESS:I = 0x1

.field private static final SYSTEM_CERT_REFERENCE_PACKAGE:Ljava/lang/String; = "com.android.phone"

.field private static final TAG:Ljava/lang/String; = "EnterpriseContainerService"

.field private static final TIMA_STORE_INDEX:I = 0x0

.field private static final UNINSTALL_WHITELIST:[Ljava/lang/String;

.field private static final UNMOUNT_BOTH:I = 0x2

.field private static final UNMOUNT_CONTAINER_STOP:I = 0x1

.field private static final UNMOUNT_CONTAINER_UNINSTALL:I = 0x0

.field private static final UNMOUNT_PRIMARY:I = 0x0

.field private static final UNMOUNT_SECONDARY:I = 0x1

.field private static final VERIFY_PASSWORD_ACTION:Ljava/lang/String; = "com.sec.knox.container.VerifyContainerPassword"

.field private static final VERIFY_PWD_REQUEST:I = 0x4

.field private static final WHITELISTED_APPS:[Ljava/lang/String;

.field private static final WIPE_PRIVATE_BACKUP_DATA:I = 0x3

.field private static final WIPE_SDCARD:I = 0x1

.field private static final WIPE_SDCARD_DATA:I = 0x2

.field private static mB2BCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

.field private static mDownloadWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private gLastReqContainerId:I

.field private gLastReqUid:I

.field private handlerThread:Landroid/os/HandlerThread;

.field private isServiceInitialized:Z

.field private isTimaServiceExist:Z

.field private knoxLauncherName:Ljava/lang/String;

.field private mActiveAdminList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mAppService:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field private mBroadCastReciever:Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;

.field private mCallbackMgr:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList",
            "<",
            "Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mChangeContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

.field private mContainerId:I

.field private mContext:Landroid/content/Context;

.field private mCreateContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

.field private mCreateContainerRequestId:I

.field private mDPMStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mDatabase:Lcom/sec/knox/container/contentprovider/ContainerDatabase;

.field private mDeathCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mGenericVpnService:Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;

.field private mIBinderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mMountCallBackData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/knox/container/EnterpriseContainerObjectParam;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPasswordChangeResult:Z

.field private mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRIdGenerator:Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

.field private mRedexService:Lcom/samsung/redexmobile/IReDexService;

.field private mRemoveAdminMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRemoveContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

.field private mStateManager:Lcom/sec/knox/container/manager/StateManager;

.field private mSyncObject:Ljava/lang/Object;

.field private mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

.field private mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

.field private mVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

.field private mWakeLockHandler:Landroid/os/Handler;

.field redexServiceConnect:Landroid/content/ServiceConnection;

.field private refCountWakeLock:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 252
    sput v3, Lcom/sec/knox/container/EnterpriseContainerService;->ADD_EMAILID:I

    .line 253
    sput v4, Lcom/sec/knox/container/EnterpriseContainerService;->REMOVE_EMAILID:I

    .line 260
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.sec.knox.containeragent"

    aput-object v1, v0, v5

    const-string v1, "sec_container_1.com.sec.android.app.knoxlauncher"

    aput-object v1, v0, v3

    const-string v1, "sec_container_1.com.sec.android.app.knoxapps"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "com.sec.knox.seandroid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/knox/container/EnterpriseContainerService;->WHITELISTED_APPS:[Ljava/lang/String;

    .line 266
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "sec_container_1.com.sec.android.app.knoxlauncher"

    aput-object v1, v0, v5

    const-string v1, "sec_container_1.com.lookout"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/knox/container/EnterpriseContainerService;->UNINSTALL_WHITELIST:[Ljava/lang/String;

    .line 299
    sput-object v6, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 300
    sput-object v6, Lcom/sec/knox/container/EnterpriseContainerService;->mDownloadWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 607
    invoke-direct {p0}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;-><init>()V

    .line 274
    iput v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerRequestId:I

    .line 275
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    .line 276
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDatabase:Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    .line 277
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;

    .line 278
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mBroadCastReciever:Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;

    .line 279
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCallbackMgr:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    .line 280
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    .line 281
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    .line 282
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mChangeContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    .line 283
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    .line 284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mMountCallBackData:Ljava/util/HashMap;

    .line 285
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;

    .line 286
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    .line 287
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 288
    iput v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    .line 289
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mSyncObject:Ljava/lang/Object;

    .line 290
    iput-boolean v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordChangeResult:Z

    .line 291
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    .line 292
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 293
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRedexService:Lcom/samsung/redexmobile/IReDexService;

    .line 294
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    .line 295
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mGenericVpnService:Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;

    .line 296
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRIdGenerator:Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    .line 297
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    .line 298
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPowerManager:Landroid/os/PowerManager;

    .line 301
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mAppService:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 302
    const-string v0, "com.sec.android.app.knoxlauncher"

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->knoxLauncherName:Ljava/lang/String;

    .line 303
    iput v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    .line 304
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;

    .line 305
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDeathCallbackMap:Ljava/util/HashMap;

    .line 306
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mIBinderMap:Ljava/util/HashMap;

    .line 307
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->handlerThread:Landroid/os/HandlerThread;

    .line 308
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    .line 309
    iput-boolean v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->isServiceInitialized:Z

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->isTimaServiceExist:Z

    .line 313
    iput v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->gLastReqUid:I

    .line 314
    iput v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->gLastReqContainerId:I

    .line 577
    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerService$1;

    invoke-direct {v0, p0}, Lcom/sec/knox/container/EnterpriseContainerService$1;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->redexServiceConnect:Landroid/content/ServiceConnection;

    .line 795
    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerService$2;

    invoke-direct {v0, p0}, Lcom/sec/knox/container/EnterpriseContainerService$2;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDPMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 609
    const-string v0, "EnterpriseContainerService"

    const-string v1, "EnterpriseContainerService Constructor"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    .line 611
    return-void
.end method

.method private OnAdminRemoval(Landroid/content/ComponentName;)V
    .locals 10
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1147
    const-string v7, "EnterpriseContainerService"

    const-string v8, "EnterpriseContainerService: OnAdminRemoval()"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 1149
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1150
    .local v4, "cidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1151
    .local v3, "cid":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1152
    .local v0, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1153
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1154
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1155
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1157
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    .line 1159
    :cond_1
    const/4 v2, 0x0

    .line 1160
    .local v2, "cbList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;>;"
    const/4 v1, 0x0

    .line 1161
    .local v1, "callback":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->get(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1162
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 1163
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "callback":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    check-cast v1, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .line 1165
    .restart local v1    # "callback":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerNow(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    goto :goto_0

    .line 1167
    .end local v1    # "callback":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .end local v2    # "cbList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;>;"
    :cond_3
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1172
    .end local v0    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v3    # "cid":Ljava/lang/Integer;
    .end local v4    # "cidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v7, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->removeActiveAdmin(Landroid/content/ComponentName;)Z

    .line 1173
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/knox/container/manager/StateManager;->getContainerId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 1174
    .local v5, "containerId":I
    if-lez v5, :cond_5

    .line 1175
    invoke-direct {p0, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->loadPasswordInfoToCache(I)V

    .line 1176
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->scheduleTimer(Landroid/content/Context;I)V

    .line 1177
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v7, v5}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setExpirationAlarmCheck(I)V

    .line 1179
    :cond_5
    return-void
.end method

.method static synthetic access$000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/samsung/redexmobile/IReDexService;
    .locals 1
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRedexService:Lcom/samsung/redexmobile/IReDexService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/samsung/redexmobile/IReDexService;)Lcom/samsung/redexmobile/IReDexService;
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # Lcom/samsung/redexmobile/IReDexService;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRedexService:Lcom/samsung/redexmobile/IReDexService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/content/Context;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 159
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerService;->scheduleTimer(Landroid/content/Context;IZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/knox/container/EnterpriseContainerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;

    .prologue
    .line 159
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/knox/container/EnterpriseContainerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getWakeLockCounter()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRIdGenerator:Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;)Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRIdGenerator:Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sec/knox/container/EnterpriseContainerService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mIBinderMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/knox/container/EnterpriseContainerService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDeathCallbackMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->incrementWakeLock()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/knox/container/EnterpriseContainerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->killTimer(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->decrementWakeLock()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/knox/container/EnterpriseContainerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfAdminHasBeenRemoved()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->scheduleTimer(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->cleanUpBinder()V

    return-void
.end method

.method static synthetic access$2202(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/contentprovider/ContainerDatabase;)Lcom/sec/knox/container/contentprovider/ContainerDatabase;
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDatabase:Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;)Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCallbackMgr:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mChangeContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    .locals 1
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerPasswordService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->initializeDPMActiveAdminList()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->bindRedexService()V

    return-void
.end method

.method static synthetic access$3000(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->registerReciever()V

    return-void
.end method

.method static synthetic access$3100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/dirEncryption/DirEncryptionManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/dirEncryption/DirEncryptionManager;)Landroid/dirEncryption/DirEncryptionManager;
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # Landroid/dirEncryption/DirEncryptionManager;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/os/PowerManager;)Landroid/os/PowerManager;
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # Landroid/os/PowerManager;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPowerManager:Landroid/os/PowerManager;

    return-object p1
.end method

.method static synthetic access$3300()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3302(Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0
    .param p0, "x0"    # Landroid/os/PowerManager$WakeLock;

    .prologue
    .line 159
    sput-object p0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$3402(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;)Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getVpnService()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3602(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mGenericVpnService:Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getGenericVpnService()Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->initialiseContainer()V

    return-void
.end method

.method static synthetic access$3902(Lcom/sec/knox/container/EnterpriseContainerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->isServiceInitialized:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/knox/container/EnterpriseContainerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->checkExistence(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/sec/knox/container/EnterpriseContainerService;ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/sec/knox/container/EnterpriseContainerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->changePasswordIfPasswordHasExpired(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/sec/knox/container/EnterpriseContainerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->sendContainerSetupSuccessMessage(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/sec/knox/container/EnterpriseContainerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->loadPasswordInfoToCache(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->startContainerEventsRelayManager()V

    return-void
.end method

.method static synthetic access$4500(Lcom/sec/knox/container/EnterpriseContainerService;III)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerService;->unmount(III)V

    return-void
.end method

.method static synthetic access$4600(Lcom/sec/knox/container/EnterpriseContainerService;III)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerRemountFailureMessage(III)V

    return-void
.end method

.method static synthetic access$4700(Lcom/sec/knox/container/EnterpriseContainerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(II)V

    return-void
.end method

.method static synthetic access$4800(Lcom/sec/knox/container/EnterpriseContainerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/sec/knox/container/EnterpriseContainerService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mMountCallBackData:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 159
    sget v0, Lcom/sec/knox/container/EnterpriseContainerService;->ADD_EMAILID:I

    return v0
.end method

.method static synthetic access$5000(Lcom/sec/knox/container/EnterpriseContainerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/android/server/enterprise/application/ApplicationPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200(Lcom/sec/knox/container/EnterpriseContainerService;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->getOriginalPackageNameInternal(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300(Lcom/sec/knox/container/EnterpriseContainerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->sendContainerCreationIntent(I)V

    return-void
.end method

.method static synthetic access$5400(Lcom/sec/knox/container/EnterpriseContainerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->killUnmountTimer(I)V

    return-void
.end method

.method static synthetic access$5500(Lcom/sec/knox/container/EnterpriseContainerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->isContainerPartition(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerObjectParam;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    .param p2, "x2"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->addOrUpdateContainerToDB(Lcom/sec/knox/container/EnterpriseContainerObjectParam;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerObjectParam;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerService;->addContainerToCache(Lcom/sec/knox/container/EnterpriseContainerObjectParam;II)V

    return-void
.end method

.method static synthetic access$5800(Lcom/sec/knox/container/EnterpriseContainerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->removeUntrustedContainerApps(I)V

    return-void
.end method

.method static synthetic access$5900(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->acquireLock()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/knox/container/EnterpriseContainerService;ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/knox/container/EnterpriseContainerService;->updateContainerEmailId(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->releaseLock()V

    return-void
.end method

.method static synthetic access$6100(Lcom/sec/knox/container/EnterpriseContainerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6200(Lcom/sec/knox/container/EnterpriseContainerService;Ljava/lang/String;I)Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;
    .locals 1
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->installPackageInternal(Ljava/lang/String;I)Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6300(Lcom/sec/knox/container/EnterpriseContainerService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->checkInstalledPackageSignature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    return-object v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 159
    sget v0, Lcom/sec/knox/container/EnterpriseContainerService;->REMOVE_EMAILID:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/manager/StateManager;)Lcom/sec/knox/container/manager/StateManager;
    .locals 0
    .param p0, "x0"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p1, "x1"    # Lcom/sec/knox/container/manager/StateManager;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    return-object p1
.end method

.method private declared-synchronized acquireLock()V
    .locals 2

    .prologue
    .line 590
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 591
    const-string v0, "EnterpriseContainerService"

    const-string v1, "---------------------->acquiring wake lock<---------------------"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 595
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->setDownloadWakeState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    monitor-exit p0

    return-void

    .line 590
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private actOnWrongPasswordAttempt(I)V
    .locals 6
    .param p1, "containerId"    # I

    .prologue
    const/4 v5, 0x0

    .line 1321
    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v3, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->reportFailedPasswordAttempt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1323
    invoke-virtual {p0, p1, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I

    move-result v2

    .line 1324
    .local v2, "maximumFailedPasswordsForWipe":I
    invoke-virtual {p0, p1, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->getMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;)I

    move-result v1

    .line 1326
    .local v1, "maximumFailedPasswordsForDisable":I
    if-lez v2, :cond_3

    if-lez v1, :cond_3

    .line 1327
    if-ge v2, v1, :cond_1

    .line 1328
    invoke-direct {p0, p1, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    .line 1349
    .end local v1    # "maximumFailedPasswordsForDisable":I
    .end local v2    # "maximumFailedPasswordsForWipe":I
    :cond_0
    :goto_0
    return-void

    .line 1329
    .restart local v1    # "maximumFailedPasswordsForDisable":I
    .restart local v2    # "maximumFailedPasswordsForWipe":I
    :cond_1
    if-le v2, v1, :cond_2

    .line 1330
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->lockContainerInternal(I)Z

    goto :goto_0

    .line 1331
    :cond_2
    if-ne v2, v1, :cond_0

    .line 1332
    invoke-direct {p0, p1, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    goto :goto_0

    .line 1334
    :cond_3
    if-lez v2, :cond_6

    if-gtz v1, :cond_6

    .line 1335
    const-string v0, "B2B"

    .line 1336
    .local v0, "conType":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerTypeInternal(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 1337
    const-string v0, "B2B"

    .line 1341
    :cond_4
    :goto_1
    const-string v3, "[ECS] actOnWrongPasswordAttempt() maximumFailedPasswordsForWipe > 0 && maximumFailedPasswordsForDisable <= 0"

    invoke-virtual {p0, v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->WriteContainerHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    invoke-direct {p0, p1, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    goto :goto_0

    .line 1338
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerTypeInternal(I)I

    move-result v3

    if-nez v3, :cond_4

    .line 1339
    const-string v0, "B2C"

    goto :goto_1

    .line 1343
    .end local v0    # "conType":Ljava/lang/String;
    :cond_6
    if-lez v1, :cond_7

    if-gtz v2, :cond_7

    .line 1344
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->lockContainerInternal(I)Z

    goto :goto_0

    .line 1346
    :cond_7
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->lockContainerInternal(I)Z

    goto :goto_0
.end method

.method private activatePasswordAndContainer(ILjava/lang/String;)Z
    .locals 5
    .param p1, "containerId"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 4072
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v3, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_VERIFY_PWD_SUCCESS:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v2, p1, v3, v4}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v1

    .line 4074
    .local v1, "tempState":Lcom/sec/knox/container/constants/CSState;
    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 4075
    const-string v2, "EnterpriseContainerService"

    const-string v3, "activatePasswordAndContainer Restarting timer"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4076
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->scheduleTimer(Landroid/content/Context;I)V

    .line 4077
    const-string v2, "EnterpriseContainerService"

    const-string v3, "activatePasswordAndContainer firing intent: com.samsung.redex.proxy.activity.close_dialog"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4079
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.redex.proxy.activity.close_dialog"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4080
    .local v0, "redexclosedialog":Landroid/content/Intent;
    const-string v2, "containerid"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4081
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4082
    const/4 v2, 0x1

    .line 4084
    .end local v0    # "redexclosedialog":Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private addContainerToCache(Lcom/sec/knox/container/EnterpriseContainerObjectParam;II)V
    .locals 3
    .param p1, "container"    # Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    .param p2, "containerId"    # I
    .param p3, "containerStatus"    # I

    .prologue
    .line 2898
    new-instance v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    invoke-direct {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;-><init>()V

    .line 2899
    .local v0, "object":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    invoke-virtual {v0, p2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerId(I)V

    .line 2900
    invoke-virtual {v0, p3}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerStatus(I)V

    .line 2901
    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setEmail(Ljava/lang/String;)V

    .line 2902
    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setName(Ljava/lang/String;)V

    .line 2903
    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getSecurityText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setSecurityText(Ljava/lang/String;)V

    .line 2904
    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getAdmin()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setAdmin(I)V

    .line 2905
    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getLockType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setLockType(I)V

    .line 2906
    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfB2CContainer(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerType(I)V

    .line 2908
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setFirmwareVersion(Ljava/lang/String;)V

    .line 2909
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v1, v0}, Lcom/sec/knox/container/manager/StateManager;->updateCacheAddContainerObject(Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;)V

    .line 2910
    return-void

    .line 2906
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private addOrUpdateContainerToDB(Lcom/sec/knox/container/EnterpriseContainerObjectParam;I)Z
    .locals 7
    .param p1, "container"    # Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    .param p2, "containerId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2852
    const-string v3, "EnterpriseContainerService"

    const-string v5, "addOrUpdateContainerToDB()"

    invoke-static {v3, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2853
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2854
    .local v2, "contentValues":Landroid/content/ContentValues;
    const-string v3, "containerid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2855
    if-nez p1, :cond_1

    .line 2856
    const-string v3, "EnterpriseContainerService"

    const-string v4, "addOrUpdateContainerToDB - EnterpriseContainerObjectParam is null"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2882
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p2}, Lcom/sec/knox/container/manager/StateManager;->getContainerParamFromDB(Landroid/content/Context;I)Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    move-result-object v3

    if-nez v3, :cond_3

    .line 2885
    const-string v3, "activestatus"

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v4}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2887
    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v5}, Lcom/sec/knox/container/manager/StateManager;->insert(Landroid/content/Context;Landroid/content/ContentValues;Landroid/net/Uri;)Z

    move-result v3

    .line 2890
    :goto_1
    return v3

    .line 2858
    :cond_1
    const-string v3, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addOrUpdateContainerToDB-Email + owner + securitytext:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getEmail()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getSecurityText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2861
    const-string v3, "email"

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2862
    const-string v3, "name"

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2863
    const-string v3, "securitytext"

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getSecurityText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2865
    const-string v3, "admin_uid"

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getAdmin()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2866
    const-string v3, "locktype"

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getLockType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2867
    const-string v5, "containertype"

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfB2CContainer(Ljava/lang/String;)Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_2

    move v3, v4

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2869
    const-string v3, "deviceFirmwareVersion"

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2871
    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getSecurityIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2872
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2873
    .local v1, "blob":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getSecurityIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2874
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2875
    const-string v3, "securityicon"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 2867
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "blob":Ljava/io/ByteArrayOutputStream;
    :cond_2
    const/4 v3, 0x2

    goto :goto_2

    .line 2890
    :cond_3
    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5, v2, p2}, Lcom/sec/knox/container/manager/StateManager;->updateValuesForContainer(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v3

    goto/16 :goto_1
.end method

.method private bindRedexService()V
    .locals 4

    .prologue
    .line 573
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.redexmobile.ReDexService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->redexServiceConnect:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 575
    return-void
.end method

.method private changeContainerPassword(ILjava/lang/String;Ljava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V
    .locals 25
    .param p1, "containerId"    # I
    .param p2, "oldPassword"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .param p4, "statusCallback"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .prologue
    .line 3457
    const-string v3, "EnterpriseContainerService"

    const-string v4, "changeContainerPassword()"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3459
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 3460
    .local v7, "data":Landroid/os/Bundle;
    const-string v3, "containerid"

    move/from16 v0, p1

    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3461
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mRIdGenerator:Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    invoke-virtual {v3}, Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;->getNextContainerRequestId()I

    move-result v5

    .line 3463
    .local v5, "requestId":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mChangeContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    invoke-virtual {v3}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->size()I

    move-result v3

    if-gtz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    invoke-virtual {v3}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 3465
    :cond_0
    const-string v3, "EnterpriseContainerService"

    const-string v4, "A request for change password / verify password is in progress calling failure callback."

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3467
    const/16 v3, 0x3f5

    move-object/from16 v0, p4

    invoke-interface {v0, v3, v7}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V

    .line 3541
    :goto_0
    return-void

    .line 3471
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mChangeContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->add(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    .line 3472
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Change Password requestId: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3474
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->verifyPassword(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3476
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v8, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_CHANGE_PWD:Lcom/sec/knox/container/constants/CSEvent;

    move/from16 v0, p1

    invoke-virtual {v3, v0, v4, v8}, Lcom/sec/knox/container/manager/StateManager;->checkStateTransition(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    if-eq v3, v4, :cond_6

    .line 3479
    invoke-direct/range {p0 .. p3}, Lcom/sec/knox/container/EnterpriseContainerService;->validatePasswordInternal(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 3481
    .local v6, "validationMsg":I
    const/16 v3, 0x3b

    if-eq v6, v3, :cond_2

    .line 3482
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Validate Password  error code: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3483
    const/4 v4, 0x3

    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3536
    .end local v6    # "validationMsg":I
    :catch_0
    move-exception v19

    .line 3537
    .local v19, "ex":Ljava/lang/Exception;
    const/4 v14, 0x3

    const/16 v16, 0x3f5

    const/16 v18, 0x1

    move-object/from16 v13, p0

    move v15, v5

    move-object/from16 v17, v7

    invoke-virtual/range {v13 .. v18}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 3539
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ChangePassword Failure happend "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v19 .. v19}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3486
    .end local v19    # "ex":Ljava/lang/Exception;
    .restart local v6    # "validationMsg":I
    :cond_2
    :try_start_1
    new-instance v21, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3487
    .local v21, "oldEcryptfsKey":Ljava/lang/StringBuilder;
    new-instance v20, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3488
    .local v20, "newEcryptfsKey":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerService;->getEcryptfsKey(Ljava/lang/String;Ljava/lang/StringBuilder;)I

    move-result v11

    .line 3489
    .local v11, "retCode":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->isTimaServiceExist:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    if-eq v11, v3, :cond_3

    .line 3490
    const/4 v9, 0x3

    const/4 v13, 0x1

    move-object/from16 v8, p0

    move v10, v5

    move-object v12, v7

    invoke-virtual/range {v8 .. v13}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    goto/16 :goto_0

    .line 3494
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerService;->getEcryptfsKey(Ljava/lang/String;Ljava/lang/StringBuilder;)I

    move-result v11

    .line 3495
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->isTimaServiceExist:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    if-eq v11, v3, :cond_4

    .line 3496
    const/4 v9, 0x3

    const/4 v13, 0x1

    move-object/from16 v8, p0

    move v10, v5

    move-object v12, v7

    invoke-virtual/range {v8 .. v13}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    goto/16 :goto_0

    .line 3501
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/mnt_1/sdcard_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 3502
    .local v22, "sdMountPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v23

    .line 3503
    .local v23, "token":J
    if-eqz v21, :cond_5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_5

    if-eqz v20, :cond_5

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 3505
    new-instance v12, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;

    const/4 v14, 0x3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v13, p0

    move/from16 v15, p1

    move-object/from16 v16, p3

    invoke-direct/range {v12 .. v18}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;IILjava/lang/String;Ljava/lang/String;Z)V

    .line 3508
    .local v12, "callback":Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;
    invoke-virtual {v12, v5}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->setRequestId(I)V

    .line 3510
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v22

    move-object/from16 v17, v12

    move/from16 v18, p1

    invoke-virtual/range {v13 .. v18}, Landroid/dirEncryption/DirEncryptionManager;->changeEcryptfsPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/dirEncryption/IDirEncryptionManagerCallBack;I)I

    .line 3521
    :goto_1
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3522
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Moving ahead and Waiting for change password to be done"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3514
    .end local v12    # "callback":Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;
    :cond_5
    new-instance v12, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;

    const/4 v14, 0x3

    const/16 v17, 0x1

    move-object/from16 v13, p0

    move/from16 v15, p1

    move-object/from16 v16, p3

    invoke-direct/range {v12 .. v17}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;IILjava/lang/String;Z)V

    .line 3516
    .restart local v12    # "callback":Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;
    invoke-virtual {v12, v5}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->setRequestId(I)V

    .line 3518
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, v22

    move-object/from16 v17, v12

    move/from16 v18, p1

    invoke-virtual/range {v13 .. v18}, Landroid/dirEncryption/DirEncryptionManager;->changeEcryptfsPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/dirEncryption/IDirEncryptionManagerCallBack;I)I

    goto :goto_1

    .line 3526
    .end local v6    # "validationMsg":I
    .end local v11    # "retCode":I
    .end local v12    # "callback":Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;
    .end local v20    # "newEcryptfsKey":Ljava/lang/StringBuilder;
    .end local v21    # "oldEcryptfsKey":Ljava/lang/StringBuilder;
    .end local v22    # "sdMountPath":Ljava/lang/String;
    .end local v23    # "token":J
    :cond_6
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Container doesnt extsts. Change password failed."

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3527
    const/4 v14, 0x3

    const/16 v16, 0x3f5

    const/16 v18, 0x1

    move-object/from16 v13, p0

    move v15, v5

    move-object/from16 v17, v7

    invoke-virtual/range {v13 .. v18}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    goto/16 :goto_0

    .line 3531
    :cond_7
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Old password wrong - calling failure callback."

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3532
    const/4 v14, 0x3

    const/16 v16, 0x3f5

    const/16 v18, 0x1

    move-object/from16 v13, p0

    move v15, v5

    move-object/from16 v17, v7

    invoke-virtual/range {v13 .. v18}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private changePasswordIfPasswordHasExpired(I)Z
    .locals 2
    .param p1, "containerId"    # I

    .prologue
    .line 4212
    const-string v0, "EnterpriseContainerService"

    const-string v1, "changePasswordIfPasswordHasExpired() wrapper"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4213
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->changePasswordIfPasswordHasExpired(IZ)Z

    move-result v0

    return v0
.end method

.method private changePasswordIfPasswordHasExpired(IZ)Z
    .locals 5
    .param p1, "containerId"    # I
    .param p2, "enforce"    # Z

    .prologue
    const/4 v1, 0x1

    .line 4217
    const-string v2, "EnterpriseContainerService"

    const-string v3, "changePasswordIfPasswordHasExpired() internal"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4218
    if-eq p2, v1, :cond_0

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->passwordHasExpired(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4219
    :cond_0
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v3, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_RESET_PWD_TIMEOUT:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v2, p1, v3, v4}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    .line 4222
    .local v0, "tempState":Lcom/sec/knox/container/constants/CSState;
    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 4223
    const-string v2, "EnterpriseContainerService"

    const-string v3, "changePasswordIfPasswordHasExpired(): password has expired, rising event CSEVENT_RESET_PWD_TIMEOUT"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4233
    .end local v0    # "tempState":Lcom/sec/knox/container/constants/CSState;
    :goto_0
    return v1

    .line 4228
    .restart local v0    # "tempState":Lcom/sec/knox/container/constants/CSState;
    :cond_1
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changePasswordIfPasswordHasExpired(): state couldn\'t be changed. Current state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v3, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4233
    .end local v0    # "tempState":Lcom/sec/knox/container/constants/CSState;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkExistence(I)Z
    .locals 3
    .param p1, "containerId"    # I

    .prologue
    .line 3209
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerStatus(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3210
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkExistence: Container id matches. Returning true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3211
    const/4 v0, 0x1

    .line 3215
    :goto_0
    return v0

    .line 3213
    :cond_0
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkExistence: Container id doesnt match. Returning false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3215
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkIfAdminHasBeenRemoved()Z
    .locals 7

    .prologue
    .line 1122
    const-string v5, "EnterpriseContainerService"

    const-string v6, "checkIfAdminHasBeenRemoved()"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    const/4 v1, 0x0

    .line 1124
    .local v1, "adminWasRemoved":Z
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 1126
    .local v4, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v2

    .line 1128
    .local v2, "currentActiveAdminList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 1129
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1130
    .local v0, "admin":Landroid/content/ComponentName;
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1131
    const/4 v1, 0x1

    .line 1132
    invoke-direct {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->OnAdminRemoval(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 1137
    .end local v0    # "admin":Landroid/content/ComponentName;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    if-eqz v2, :cond_2

    .line 1138
    check-cast v2, Ljava/util/ArrayList;

    .end local v2    # "currentActiveAdminList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iput-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;

    .line 1143
    :goto_1
    return v1

    .line 1140
    .restart local v2    # "currentActiveAdminList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_2
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method private checkIfB2CContainer(Ljava/lang/String;)Z
    .locals 1
    .param p1, "containerName"    # Ljava/lang/String;

    .prologue
    .line 471
    const-string v0, "B2C_CONTAINER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    const/4 v0, 0x1

    .line 474
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkIfContainerizedApp(II)Z
    .locals 11
    .param p1, "uid"    # I
    .param p2, "cid"    # I

    .prologue
    .line 317
    const/4 v8, -0x1

    if-eq p2, v8, :cond_1

    .line 318
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 319
    .local v6, "packageNames":[Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 320
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v8, p2}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackagesInfoFromCache(I)Ljava/util/HashMap;

    move-result-object v7

    .line 322
    .local v7, "pkgsInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 323
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v0, v1

    .line 324
    .local v5, "packageName":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 326
    :try_start_0
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, "installer":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v8, "com.sec.knox.containeragent"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->knoxLauncherName:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_0

    .line 328
    const/4 v8, 0x1

    .line 338
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v3    # "installer":Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "packageNames":[Ljava/lang/String;
    .end local v7    # "pkgsInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    :goto_1
    return v8

    .line 330
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "packageNames":[Ljava/lang/String;
    .restart local v7    # "pkgsInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    :catch_0
    move-exception v2

    .line 331
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    const-string v8, "EnterpriseContainerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "An application which has pid 1000 was removed from PackageManager - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 338
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "packageNames":[Ljava/lang/String;
    .end local v7    # "pkgsInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private checkIfDPMAdmin()Z
    .locals 2

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 451
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 452
    const/4 v1, 0x1

    .line 454
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkIfMDMAdmin()Z
    .locals 3

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 461
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 462
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 464
    const/4 v1, 0x1

    .line 467
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkIfUninstallWhitelistPackage(I)Z
    .locals 12
    .param p1, "uid"    # I

    .prologue
    .line 434
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    .line 435
    .local v8, "packageNames":[Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 436
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v7, v0, v3

    .line 437
    .local v7, "packageName":Ljava/lang/String;
    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerService;->UNINSTALL_WHITELIST:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v6, v1, v2

    .line 438
    .local v6, "p":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 439
    const-string v9, "EnterpriseContainerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "packageName matches uninstall whitelisted package uid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const/4 v9, 0x1

    .line 446
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "p":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    :goto_2
    return v9

    .line 437
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "p":Ljava/lang/String;
    .restart local v7    # "packageName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 436
    .end local v6    # "p":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 446
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private checkIfWhitelistedApp(I)Z
    .locals 12
    .param p1, "uid"    # I

    .prologue
    .line 418
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    .line 419
    .local v8, "packageNames":[Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 420
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v7, v0, v3

    .line 421
    .local v7, "packageName":Ljava/lang/String;
    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerService;->WHITELISTED_APPS:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v6, v1, v2

    .line 422
    .local v6, "p":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 423
    const-string v9, "EnterpriseContainerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "packageName matches whitelisted app uid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const/4 v9, 0x1

    .line 430
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "p":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    :goto_2
    return v9

    .line 421
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "p":Ljava/lang/String;
    .restart local v7    # "packageName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 420
    .end local v6    # "p":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 430
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private checkInstalledPackageSignature(Ljava/lang/String;)Z
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 344
    if-nez p1, :cond_0

    .line 345
    const-string v14, "EnterpriseContainerService"

    const-string v15, "checkInstalledPackageSignature packageName is null..."

    invoke-static {v14, v15}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const/4 v14, 0x0

    .line 413
    :goto_0
    return v14

    .line 349
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 351
    .local v10, "pm":Landroid/content/pm/PackageManager;
    const-string v14, "EnterpriseContainerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "checkInstalledPackageSignature... ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v14, "sec_container_"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 353
    const/4 v9, 0x0

    .line 355
    .local v9, "packageInfo":Landroid/content/pm/PackageInfo;
    const/16 v14, 0x40

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 359
    if-nez v9, :cond_1

    .line 360
    const-string v14, "EnterpriseContainerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "packageInfo == null Absolute package = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const/4 v14, 0x0

    goto :goto_0

    .line 356
    :catch_0
    move-exception v8

    .line 357
    .local v8, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v14, 0x0

    goto :goto_0

    .line 363
    .end local v8    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    if-eqz v9, :cond_5

    .line 364
    iget-object v4, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 365
    .local v4, "OwnSignatures":[Landroid/content/pm/Signature;
    array-length v14, v4

    new-array v12, v14, [Ljava/lang/String;

    .line 366
    .local v12, "strOwnSignatures":[Ljava/lang/String;
    array-length v14, v4

    new-array v5, v14, [Ljava/security/PublicKey;

    .line 367
    .local v5, "PublicKey":[Ljava/security/PublicKey;
    array-length v14, v4

    new-array v13, v14, [Ljava/lang/String;

    .line 369
    .local v13, "strPublicKey":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 371
    .local v1, "CAPackageInfo":Landroid/content/pm/PackageInfo;
    :try_start_1
    const-string v14, "com.sec.knox.containeragent"

    const/16 v15, 0x40

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 377
    const/4 v2, 0x0

    .line 378
    .local v2, "CAPublicKey":Ljava/security/PublicKey;
    const/4 v11, 0x0

    .line 380
    .local v11, "strCAPublicKey":Ljava/lang/String;
    :try_start_2
    iget-object v14, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v14}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 381
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v11

    .line 387
    const-string v14, "EnterpriseContainerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "OwnSignatures Length = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v0, v4

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v14, v4

    if-ge v7, v14, :cond_5

    .line 389
    aget-object v14, v4, v7

    invoke-virtual {v14}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v7

    .line 391
    :try_start_3
    aget-object v14, v4, v7

    invoke-virtual {v14}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v14

    aput-object v14, v5, v7
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_3

    .line 396
    aget-object v14, v5, v7

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v7

    .line 400
    aget-object v14, v13, v7

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 401
    const-string v14, "EnterpriseContainerService"

    const-string/jumbo v15, "signature compared with [CA]CASignatures... passed!! "

    invoke-static {v14, v15}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 372
    .end local v2    # "CAPublicKey":Ljava/security/PublicKey;
    .end local v7    # "i":I
    .end local v11    # "strCAPublicKey":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 373
    .local v3, "NNE":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v14, "EnterpriseContainerService"

    const-string v15, "CA is not exist!!!! "

    invoke-static {v14, v15}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 382
    .end local v3    # "NNE":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "CAPublicKey":Ljava/security/PublicKey;
    .restart local v11    # "strCAPublicKey":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 383
    .local v6, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v6}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 384
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 392
    .end local v6    # "e":Ljava/security/cert/CertificateException;
    .restart local v7    # "i":I
    :catch_3
    move-exception v6

    .line 393
    .restart local v6    # "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v6}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 394
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 403
    .end local v6    # "e":Ljava/security/cert/CertificateException;
    :cond_2
    const-string v14, "OpenSSLRSAPublicKey{modulus=94cbce4ea26fe955e571de283c5834a6ddb8161348775f654f1d629784460ecc2a50d690d98dc59edc9b6e5aade8eb469f49d18fc647abee1a84c45e40fb74aa97f1d6678ef31142790465a89449405e2e499e47b34fd84aa8aed32123a280cb238a20864428cec46e175b9f2c9f313de0e7e37720a211226e736424638eab865174cdebcb6008ec0cf37fbda0c1e73dfef84996d53c6324cecf4f977c1443826a793ad8853d20cc5285220b885280b11c46aba587797c1510cf5f13656bcabb2db2e0f11d340c3f48ef7ecd76644c1c3e0dd9e8aa62c23df68891f60c96df1bb83074893cc043b58d8a2d83f1c425353f5d85abb586631eadb839b0bca9fa13,publicExponent=10001}"

    aget-object v15, v13, v7

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 404
    const-string v14, "EnterpriseContainerService"

    const-string/jumbo v15, "signature compared with [3rd]KNOXPublickey... passed!! "

    invoke-static {v14, v15}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 406
    :cond_3
    const-string v14, "OpenSSLRSAPublicKey{modulus=c71e9ce440601350a3035ff34718c1e273869334ca6a4b574130dd82b2d60500342bcd3f52a42da3d1d63fe7ad6d688e59bbcba7de73ed2f78fc2c055e3449f221976e9eff415440ce3799cb1c8f892c8c13645a50026c80f8cfc4261eb6260d8b30c8fb6ee28c1065219d693bcef409e647949534056fac0fc5ea79e0f9b7cb,publicExponent=10001}"

    aget-object v15, v13, v7

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 407
    const-string v14, "EnterpriseContainerService"

    const-string/jumbo v15, "signature compared with [gov]OnPremisePublickey... passed!! "

    invoke-static {v14, v15}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 388
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 413
    .end local v1    # "CAPackageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "CAPublicKey":Ljava/security/PublicKey;
    .end local v4    # "OwnSignatures":[Landroid/content/pm/Signature;
    .end local v5    # "PublicKey":[Ljava/security/PublicKey;
    .end local v7    # "i":I
    .end local v9    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v11    # "strCAPublicKey":Ljava/lang/String;
    .end local v12    # "strOwnSignatures":[Ljava/lang/String;
    .end local v13    # "strPublicKey":[Ljava/lang/String;
    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method private checkMount(Z)Z
    .locals 11
    .param p1, "isPrimary"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 6765
    const-string v6, ""

    .line 6766
    .local v6, "name":Ljava/lang/String;
    const/4 v5, -0x1

    .line 6768
    .local v5, "len":I
    new-instance v2, Ljava/io/File;

    const-string v9, "/proc/mounts"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6769
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-ne v9, v7, :cond_0

    .line 6770
    const/16 v9, 0x200

    new-array v0, v9, [B

    .line 6771
    .local v0, "buffer":[B
    const/4 v3, 0x0

    .line 6773
    .local v3, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6774
    .end local v3    # "in":Ljava/io/InputStream;
    .local v4, "in":Ljava/io/InputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_5

    .line 6775
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v6, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    goto :goto_0

    .line 6777
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 6778
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    const-string v9, "EnterpriseContainerService"

    const-string v10, "checkMount::File not found"

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6783
    if-eqz v3, :cond_0

    .line 6784
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 6792
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "in":Ljava/io/InputStream;
    :cond_0
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 6793
    if-eqz p1, :cond_3

    .line 6794
    const-string v9, "/data/data1 ecryptfs"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 6805
    :cond_1
    :goto_3
    return v7

    .line 6779
    .restart local v0    # "buffer":[B
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 6780
    .local v1, "e":Ljava/io/IOException;
    :goto_4
    :try_start_4
    const-string v9, "EnterpriseContainerService"

    const-string v10, "checkMount::"

    invoke-static {v9, v10, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 6783
    if-eqz v3, :cond_0

    .line 6784
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 6786
    :catch_2
    move-exception v1

    .line 6787
    const-string v9, "EnterpriseContainerService"

    const-string v10, "checkMount::"

    .end local v3    # "in":Ljava/io/InputStream;
    :goto_5
    invoke-static {v9, v10, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 6782
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v7

    .line 6783
    :goto_6
    if-eqz v3, :cond_2

    .line 6784
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 6782
    :cond_2
    :goto_7
    throw v7

    .line 6799
    .end local v0    # "buffer":[B
    .end local v3    # "in":Ljava/io/InputStream;
    :cond_3
    const-string v9, "/mnt_1/sdcard_1 ecryptfs"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_4
    move v7, v8

    .line 6805
    goto :goto_3

    .line 6786
    .restart local v0    # "buffer":[B
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_3
    move-exception v1

    .line 6787
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "EnterpriseContainerService"

    const-string v9, "checkMount::"

    invoke-static {v8, v9, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_7

    .line 6786
    .local v1, "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v1

    .line 6787
    .local v1, "e":Ljava/io/IOException;
    const-string v9, "EnterpriseContainerService"

    const-string v10, "checkMount::"

    goto :goto_5

    .line 6783
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :cond_5
    if-eqz v4, :cond_0

    .line 6784
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_2

    .line 6786
    :catch_5
    move-exception v1

    .line 6787
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "EnterpriseContainerService"

    const-string v10, "checkMount::"

    goto :goto_5

    .line 6782
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_6

    .line 6779
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_4

    .line 6777
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private cleanUpBinder()V
    .locals 10

    .prologue
    .line 1432
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mIBinderMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 1433
    .local v4, "mIBinderMapSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/IBinder;>;>;"
    if-eqz v4, :cond_1

    .line 1434
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1435
    .local v3, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1436
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1437
    .local v5, "pairs":Ljava/util/Map$Entry;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1438
    .local v6, "req":Ljava/lang/Integer;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 1439
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 1440
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDeathCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder$DeathRecipient;

    .line 1441
    .local v1, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    if-eqz v1, :cond_0

    .line 1443
    const/4 v7, 0x0

    :try_start_0
    invoke-interface {v0, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1454
    .end local v1    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDeathCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1444
    .restart local v1    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    :catch_0
    move-exception v2

    .line 1445
    .local v2, "ex":Ljava/util/NoSuchElementException;
    const-string v7, "EnterpriseContainerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "binder.unlinkToDeath Failed. Binder disconnect recipient is not found. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1448
    .end local v2    # "ex":Ljava/util/NoSuchElementException;
    :catch_1
    move-exception v2

    .line 1449
    .local v2, "ex":Ljava/lang/Exception;
    const-string v7, "EnterpriseContainerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "binder.unlinkToDeath Failed. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1458
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v5    # "pairs":Ljava/util/Map$Entry;
    .end local v6    # "req":Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method private cleanupContainer(I)V
    .locals 3
    .param p1, "containerId"    # I

    .prologue
    .line 3189
    const-string v0, "EnterpriseContainerService"

    const-string v1, "cleanupContainer()"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3195
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Deleting the .container_1 forcibly "

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3196
    const-string v0, "ctl.start"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "containersetup:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3198
    const-string v0, "EnterpriseContainerService"

    const-string v1, "After Deleting the .container_1 forcibly "

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3200
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->unmount(III)V

    .line 3201
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/manager/StateManager;->removeContainer(I)Z

    .line 3202
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/sec/knox/container/manager/StateManager;->removeContainer(Landroid/content/Context;I)Z

    .line 3203
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->removeContainer(I)Z

    .line 3204
    return-void
.end method

.method private clearVerifyCallback(I)V
    .locals 3
    .param p1, "containerId"    # I

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    if-eqz v0, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    const/16 v1, 0x3f7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->clear(ILandroid/os/Bundle;)V

    .line 1277
    :cond_0
    return-void
.end method

.method private createContainerDataDir()V
    .locals 5

    .prologue
    .line 615
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/system/container/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 616
    .local v0, "containerDataDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 617
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Creating Container data directory"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    .end local v0    # "containerDataDir":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 620
    :catch_0
    move-exception v1

    .line 621
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create container data directory exception. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized decrementWakeLock()V
    .locals 3

    .prologue
    .line 4548
    monitor-enter p0

    :try_start_0
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refCountWakeLock before decrement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4549
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    if-lez v0, :cond_0

    .line 4550
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    .line 4552
    :cond_0
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refCountWakeLock after decrement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4553
    monitor-exit p0

    return-void

    .line 4548
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private deleteBackupEDK()V
    .locals 3

    .prologue
    .line 6810
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/system/edk_p_container_1"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6811
    .local v0, "edk":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/edk_p_container_1.backup"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6813
    .local v1, "edkBackup":Ljava/io/File;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6814
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 6816
    :cond_0
    return-void
.end method

.method private doBootCompleteTaks()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 729
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->deleteBackupEDK()V

    .line 731
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-static {v1, v2, v4, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 733
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    invoke-virtual {v1, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 734
    return-void
.end method

.method private enforceEnterpriseContainerPermission(I)I
    .locals 1
    .param p1, "securitySpec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 525
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    move-result v0

    return v0
.end method

.method private enforceEnterpriseContainerPermission(II)I
    .locals 4
    .param p1, "securitySpec"    # I
    .param p2, "cid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 489
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 490
    .local v0, "uid":I
    iget-boolean v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->isServiceInitialized:Z

    if-nez v1, :cond_0

    .line 491
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service not initialized yet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 493
    :cond_0
    and-int/lit8 v1, p1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    .line 518
    :cond_1
    return v0

    .line 496
    :cond_2
    and-int/lit8 v1, p1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    .line 500
    :cond_3
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 501
    invoke-direct {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfWhitelistedApp(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 505
    :cond_4
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 506
    invoke-direct {p0, v0, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfContainerizedApp(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 510
    :cond_5
    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    .line 511
    const/4 v1, -0x1

    if-eq p2, v1, :cond_6

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfDPMAdmin()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, v0, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfContainerizedApp(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 516
    :cond_6
    and-int/lit8 v1, p1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_7

    .line 517
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfMDMAdmin()Z

    move-result v1

    if-nez v1, :cond_1

    .line 521
    :cond_7
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed to access Container service API :uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private enforcePackageManagerPermissionForContainerizedApps(IILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "cid"    # I
    .param p3, "permission"    # Ljava/lang/String;

    .prologue
    .line 530
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfContainerizedApp(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to access Container service API :uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Permission:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_0
    return-void
.end method

.method private generateAndStoreTimaKey()I
    .locals 10

    .prologue
    const/16 v9, 0x9

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 6575
    const/4 v0, 0x0

    .line 6576
    .local v0, "errorCode":I
    const/16 v7, 0x20

    new-array v2, v7, [B

    .line 6578
    .local v2, "key":[B
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 6579
    .local v3, "random":Ljava/security/SecureRandom;
    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 6581
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v4

    .line 6582
    .local v4, "timaService":Landroid/service/tima/ITimaService;
    if-eqz v4, :cond_4

    .line 6584
    :try_start_0
    invoke-interface {v4}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v0

    .line 6585
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TIMA :: keystoreInit results is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6586
    if-ne v0, v9, :cond_2

    .line 6587
    const-string v6, "EnterpriseContainerService"

    const-string v7, "KYS TIMA 1.0  TIMA_ERROR_KEYSTORE_NOT_SUPPORTED"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6606
    :goto_0
    if-eqz v0, :cond_1

    .line 6607
    if-eq v0, v5, :cond_0

    const/4 v6, 0x7

    if-ne v0, v6, :cond_5

    .line 6610
    :cond_0
    const-string v5, "EnterpriseContainerService"

    const-string v6, "Install: Device unauthorized to access Container."

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6611
    const/16 v5, 0x48

    .line 6647
    :cond_1
    :goto_1
    return v5

    .line 6589
    :cond_2
    if-nez v0, :cond_3

    .line 6590
    const/4 v6, 0x0

    :try_start_1
    invoke-interface {v4, v6, v2}, Landroid/service/tima/ITimaService;->keystoreInstallKey(I[B)I

    move-result v0

    .line 6591
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TIMA :: keystoreInstallKey results is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6593
    :cond_3
    invoke-interface {v4}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 6595
    :catch_0
    move-exception v1

    .line 6596
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to store TIMA key"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6597
    const/16 v0, 0x47

    .line 6598
    goto :goto_0

    .line 6601
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_4
    iput-boolean v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->isTimaServiceExist:Z

    .line 6602
    const-string v5, "EnterpriseContainerService"

    const-string v7, "generateAndStoreTimaKey : no TIMA"

    invoke-static {v5, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 6603
    goto :goto_1

    .line 6613
    :cond_5
    if-ne v0, v9, :cond_6

    .line 6614
    const-string v6, "EnterpriseContainerService"

    const-string v7, "TIMA 2.0 is not supported"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6617
    :cond_6
    const-string v5, "EnterpriseContainerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not able to store TIMA key, API failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6618
    const/16 v5, 0x47

    goto :goto_1
.end method

.method private getActivitynameForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 4238
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    const/4 v9, 0x0

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4239
    .local v3, "intent":Landroid/content/Intent;
    const-string v8, "sec_container_1.android.intent.category.LAUNCHER"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4240
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 4245
    .local v0, "appInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 4246
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 4247
    .local v4, "pi":Landroid/content/pm/ResolveInfo;
    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 4248
    .local v5, "strPackageName":Ljava/lang/String;
    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 4249
    .local v6, "strTargetActivity":Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_0

    .line 4256
    .end local v0    # "appInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "i":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "pi":Landroid/content/pm/ResolveInfo;
    .end local v5    # "strPackageName":Ljava/lang/String;
    .end local v6    # "strTargetActivity":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 4245
    .restart local v0    # "appInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v2    # "i":I
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "pi":Landroid/content/pm/ResolveInfo;
    .restart local v5    # "strPackageName":Ljava/lang/String;
    .restart local v6    # "strTargetActivity":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4253
    .end local v0    # "appInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "i":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "pi":Landroid/content/pm/ResolveInfo;
    .end local v5    # "strPackageName":Ljava/lang/String;
    .end local v6    # "strTargetActivity":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 4254
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "EnterpriseContainerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "could not start app "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v6, v7

    .line 4256
    goto :goto_1
.end method

.method private getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mAppService:Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-nez v0, :cond_0

    .line 820
    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mAppService:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mAppService:Lcom/android/server/enterprise/application/ApplicationPolicy;

    return-object v0
.end method

.method private getCertificateForPackage(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 4170
    const/4 v8, 0x0

    .line 4171
    .local v8, "packageCertificate":Ljava/security/cert/X509Certificate;
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 4172
    .local v7, "pManager":Landroid/content/pm/PackageManager;
    if-eqz v7, :cond_1

    .line 4173
    const/4 v6, 0x0

    .line 4174
    .local v6, "pInfo":Landroid/content/pm/PackageInfo;
    const/4 v4, 0x0

    .line 4176
    .local v4, "input":Ljava/io/InputStream;
    const/16 v10, 0x40

    :try_start_0
    invoke-virtual {v7, p1, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 4177
    if-eqz v6, :cond_0

    .line 4178
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 4179
    .local v9, "packageSign":[Landroid/content/pm/Signature;
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-virtual {v10}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    .line 4180
    .local v1, "byteSignature":[B
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4181
    .end local v4    # "input":Ljava/io/InputStream;
    .local v5, "input":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 4182
    .local v2, "cf":Ljava/security/cert/CertificateFactory;
    :try_start_1
    const-string v10, "X509"

    invoke-static {v10}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 4183
    invoke-virtual {v2, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v8, v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v5

    .line 4192
    .end local v1    # "byteSignature":[B
    .end local v2    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v5    # "input":Ljava/io/InputStream;
    .end local v9    # "packageSign":[Landroid/content/pm/Signature;
    .restart local v4    # "input":Ljava/io/InputStream;
    :cond_0
    if-eqz v4, :cond_1

    .line 4193
    :goto_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 4197
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v6    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    return-object v8

    .line 4185
    .restart local v4    # "input":Ljava/io/InputStream;
    .restart local v6    # "pInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    .line 4186
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    :try_start_2
    const-string v10, "EnterpriseContainerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid Package Name "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4192
    if-eqz v4, :cond_1

    goto :goto_0

    .line 4187
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 4188
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_2
    const-string v10, "EnterpriseContainerService"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4192
    if-eqz v4, :cond_1

    goto :goto_0

    .line 4189
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_2
    move-exception v3

    .line 4190
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    const-string v10, "EnterpriseContainerService"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4192
    if-eqz v4, :cond_1

    goto :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v4, :cond_2

    .line 4193
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 4192
    :cond_2
    throw v10

    .end local v4    # "input":Ljava/io/InputStream;
    .restart local v1    # "byteSignature":[B
    .restart local v2    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v5    # "input":Ljava/io/InputStream;
    .restart local v9    # "packageSign":[Landroid/content/pm/Signature;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5    # "input":Ljava/io/InputStream;
    .restart local v4    # "input":Ljava/io/InputStream;
    goto :goto_4

    .line 4189
    .end local v4    # "input":Ljava/io/InputStream;
    .restart local v5    # "input":Ljava/io/InputStream;
    :catch_3
    move-exception v3

    move-object v4, v5

    .end local v5    # "input":Ljava/io/InputStream;
    .restart local v4    # "input":Ljava/io/InputStream;
    goto :goto_3

    .line 4187
    .end local v4    # "input":Ljava/io/InputStream;
    .restart local v5    # "input":Ljava/io/InputStream;
    :catch_4
    move-exception v3

    move-object v4, v5

    .end local v5    # "input":Ljava/io/InputStream;
    .restart local v4    # "input":Ljava/io/InputStream;
    goto :goto_2

    .line 4185
    .end local v4    # "input":Ljava/io/InputStream;
    .restart local v5    # "input":Ljava/io/InputStream;
    :catch_5
    move-exception v3

    move-object v4, v5

    .end local v5    # "input":Ljava/io/InputStream;
    .restart local v4    # "input":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private getCommandResult(Ljava/lang/Process;)Ljava/lang/String;
    .locals 10
    .param p1, "processResult"    # Ljava/lang/Process;

    .prologue
    .line 2394
    const/16 v6, 0x400

    new-array v4, v6, [B

    .line 2395
    .local v4, "resultBuffer":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2396
    .local v5, "resultBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 2398
    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2400
    .end local v1    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 2401
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 2403
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 2404
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCommandResult : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2407
    if-eqz v1, :cond_0

    .line 2408
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2414
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Command result:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2415
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 2407
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    .line 2408
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_3
    move-object v1, v2

    .line 2413
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 2406
    .end local v3    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v6

    .line 2407
    :goto_4
    if-eqz v1, :cond_3

    .line 2408
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2406
    :cond_3
    :goto_5
    throw v6

    .line 2410
    :catch_1
    move-exception v0

    .line 2411
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "EnterpriseContainerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 2410
    :catch_2
    move-exception v0

    .line 2411
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2410
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 2411
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2406
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "line":Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .line 2403
    :catch_4
    move-exception v0

    goto/16 :goto_1
.end method

.method private getContainerIdFromAppId(I)I
    .locals 10
    .param p1, "appUid"    # I

    .prologue
    .line 3997
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 3998
    .local v8, "pm":Landroid/content/pm/PackageManager;
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v9}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackagesInfoFromCache()Ljava/util/HashMap;

    move-result-object v1

    .line 4000
    .local v1, "cacheInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    invoke-virtual {v8, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 4001
    .local v5, "names":[Ljava/lang/String;
    if-eqz v5, :cond_2

    array-length v9, v5

    if-lez v9, :cond_2

    .line 4002
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .line 4005
    .local v6, "packageName":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 4006
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;

    .line 4007
    .local v7, "pkgInfo":Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;
    if-nez v7, :cond_1

    .line 4002
    .end local v7    # "pkgInfo":Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4010
    .restart local v7    # "pkgInfo":Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;
    :cond_1
    invoke-virtual {v7}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->getContainerId()I

    move-result v2

    .line 4021
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "pkgInfo":Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;
    :goto_1
    return v2

    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private getContainerStatus(I)I
    .locals 5
    .param p1, "containerId"    # I

    .prologue
    .line 3671
    const/4 v0, -0x1

    .line 3673
    .local v0, "result":I
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v1

    .line 3674
    .local v1, "state":Lcom/sec/knox/container/constants/CSState;
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New State :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3675
    invoke-direct {p0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->getPlatformContainerState(Lcom/sec/knox/container/constants/CSState;)I

    move-result v0

    .line 3676
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Returning State :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3677
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getMountStatus(I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 3678
    const-string v2, "EnterpriseContainerService"

    const-string v3, " getMountStatus : true"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3683
    :goto_0
    return v0

    .line 3680
    :cond_0
    const-string v2, "EnterpriseContainerService"

    const-string v3, " getMountStatus : false"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getContainerTypeInternal(I)I
    .locals 2
    .param p1, "containerId"    # I

    .prologue
    .line 4201
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    if-eqz v1, :cond_0

    .line 4202
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v1, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerObjectFromCache(I)Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    move-result-object v0

    .line 4203
    .local v0, "data":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    if-eqz v0, :cond_0

    .line 4204
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerType()I

    move-result v1

    .line 4208
    .end local v0    # "data":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getDeviceAccountPolicy()Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    .locals 2

    .prologue
    .line 827
    const-string v1, "device_account_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .line 829
    .local v0, "dapService":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    return-object v0
.end method

.method private getDeviceFirmwareVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1182
    const-string v1, "ro.build.PDA"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1183
    .local v0, "pdaVersion":Ljava/lang/String;
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1. pdaVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    invoke-direct {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->trimHiddenVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1185
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2. pdaVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getEcryptfsKey(Ljava/lang/String;Ljava/lang/StringBuilder;)I
    .locals 12
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "retValue"    # Ljava/lang/StringBuilder;

    .prologue
    .line 6651
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v8

    .line 6652
    .local v8, "timaService":Landroid/service/tima/ITimaService;
    if-eqz v8, :cond_b

    .line 6653
    const/4 v2, 0x0

    .line 6654
    .local v2, "errorCode":I
    const/4 v5, 0x0

    .line 6656
    .local v5, "key":[B
    :try_start_0
    invoke-interface {v8}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v2

    .line 6657
    const-string v9, "EnterpriseContainerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TIMA :: keystoreInit results is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6658
    const/16 v9, 0x9

    if-ne v2, v9, :cond_1

    .line 6659
    const-string v9, "EnterpriseContainerService"

    const-string v10, "KYS TIMA 1.0  TIMA_ERROR_KEYSTORE_NOT_SUPPORTED"

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6678
    :goto_0
    if-eqz v2, :cond_5

    .line 6679
    const/4 v9, 0x1

    if-eq v2, v9, :cond_0

    const/4 v9, 0x7

    if-ne v2, v9, :cond_4

    .line 6682
    :cond_0
    const-string v9, "EnterpriseContainerService"

    const-string v10, "Retrieve: Device unauthorized to access Container."

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6683
    const/16 v9, 0x48

    .line 6720
    .end local v2    # "errorCode":I
    .end local v5    # "key":[B
    :goto_1
    return v9

    .line 6662
    .restart local v2    # "errorCode":I
    .restart local v5    # "key":[B
    :cond_1
    if-nez v2, :cond_2

    .line 6663
    const/4 v9, 0x0

    :try_start_1
    invoke-interface {v8, v9}, Landroid/service/tima/ITimaService;->keystoreRetrieveKey(I)[B

    move-result-object v5

    .line 6664
    if-nez v5, :cond_3

    .line 6665
    const/4 v2, 0x0

    .line 6669
    :goto_2
    const-string v9, "EnterpriseContainerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TIMA :: keystoreRetrieveKey results is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6671
    :cond_2
    invoke-interface {v8}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 6673
    :catch_0
    move-exception v3

    .line 6674
    .local v3, "ex":Landroid/os/RemoteException;
    const-string v9, "EnterpriseContainerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to get TIMA key"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6675
    const/16 v2, 0x47

    goto :goto_0

    .line 6667
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_3
    const/4 v9, 0x0

    :try_start_2
    aget-byte v2, v5, v9
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 6685
    :cond_4
    const/16 v9, 0x9

    if-ne v2, v9, :cond_7

    .line 6686
    const-string v9, "EnterpriseContainerService"

    const-string v10, "TIMA 2.0 is not supported"

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6694
    :cond_5
    if-eqz v2, :cond_6

    const/16 v9, 0x9

    if-ne v2, v9, :cond_a

    .line 6695
    :cond_6
    const-string v9, "%1$32s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 6696
    .local v7, "str":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 6698
    .local v0, "bytes":[B
    const/16 v9, 0x20

    new-array v6, v9, [B

    .line 6699
    .local v6, "resultBuf":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    const/16 v9, 0x20

    if-ge v4, v9, :cond_9

    .line 6700
    if-eqz v5, :cond_8

    .line 6701
    aget-byte v9, v0, v4

    add-int/lit8 v10, v4, 0x1

    aget-byte v10, v5, v10

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v6, v4

    .line 6699
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 6689
    .end local v0    # "bytes":[B
    .end local v4    # "i":I
    .end local v6    # "resultBuf":[B
    .end local v7    # "str":Ljava/lang/String;
    :cond_7
    const-string v9, "EnterpriseContainerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Not able to get TIMA key, API failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6690
    const/16 v9, 0x47

    goto/16 :goto_1

    .line 6704
    .restart local v0    # "bytes":[B
    .restart local v4    # "i":I
    .restart local v6    # "resultBuf":[B
    .restart local v7    # "str":Ljava/lang/String;
    :cond_8
    aget-byte v9, v0, v4

    aput-byte v9, v6, v4

    goto :goto_4

    .line 6707
    :cond_9
    const/4 v9, 0x0

    invoke-static {v6, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 6708
    .local v1, "ecryptfsKey":Ljava/lang/String;
    if-eqz v1, :cond_a

    .line 6709
    const/4 v9, 0x0

    const/16 v10, 0x20

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6713
    .end local v0    # "bytes":[B
    .end local v1    # "ecryptfsKey":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v6    # "resultBuf":[B
    .end local v7    # "str":Ljava/lang/String;
    :cond_a
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 6716
    .end local v2    # "errorCode":I
    .end local v5    # "key":[B
    :cond_b
    const-string v9, "EnterpriseContainerService"

    const-string v10, "getEcryptfsKey : no TIMA"

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6717
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/knox/container/EnterpriseContainerService;->isTimaServiceExist:Z

    .line 6720
    const/4 v9, 0x0

    goto/16 :goto_1
.end method

.method private getGenericVpnService()Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mGenericVpnService:Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;

    if-nez v0, :cond_0

    .line 812
    const-string v0, "generic_vpn_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mGenericVpnService:Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mGenericVpnService:Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;

    return-object v0
.end method

.method private getKnoxApplicationPolicy(I)Lcom/sec/enterprise/knox/ContainerApplicationPolicy;
    .locals 3
    .param p1, "containerId"    # I

    .prologue
    .line 547
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v1

    .line 548
    .local v1, "mKEDM":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getEnterpriseContainerManager(I)Lcom/sec/enterprise/knox/EnterpriseContainerManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 549
    invoke-virtual {v1, p1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getEnterpriseContainerManager(I)Lcom/sec/enterprise/knox/EnterpriseContainerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerApplicationPolicy()Lcom/sec/enterprise/knox/ContainerApplicationPolicy;

    move-result-object v0

    .line 553
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    .prologue
    .line 839
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private getOriginalPackageNameInternal(ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4088
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v7, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackages(I)Ljava/util/List;

    move-result-object v6

    .line 4089
    .local v6, "stringNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_3

    .line 4090
    const-string v7, "EnterpriseContainerService"

    const-string v8, "getOriginalPackageName start"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4091
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4092
    .local v1, "lPackageName":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4093
    const-string v7, "sec_container_"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4094
    const-string v7, "EnterpriseContainerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getContainerizedPackageName Matched"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4095
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 4096
    .local v2, "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4097
    .local v5, "str":Ljava/lang/StringBuilder;
    const-string v7, "sec_container_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4098
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 4099
    .local v3, "prefixLen":I
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 4100
    .local v4, "returnedString":Ljava/lang/String;
    const-string v7, "EnterpriseContainerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Returned string is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4112
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "lPackageName":Ljava/lang/String;
    .end local v2    # "length":I
    .end local v3    # "prefixLen":I
    .end local v4    # "returnedString":Ljava/lang/String;
    .end local v5    # "str":Ljava/lang/StringBuilder;
    :goto_0
    return-object v4

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "lPackageName":Ljava/lang/String;
    :cond_1
    move-object v4, v1

    .line 4104
    goto :goto_0

    .line 4108
    .end local v1    # "lPackageName":Ljava/lang/String;
    :cond_2
    const-string v7, "EnterpriseContainerService"

    const-string v8, "getContainerizedPackageName Nothing matched"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4112
    .end local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 4110
    :cond_3
    const-string v7, "EnterpriseContainerService"

    const-string v8, "getContainerizedPackageName is null"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getOriginalPackageNamesInternal(I)Ljava/util/List;
    .locals 10
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4117
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v8, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackages(I)Ljava/util/List;

    move-result-object v7

    .line 4118
    .local v7, "stringNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4119
    .local v4, "returnPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_1

    .line 4120
    const-string v8, "EnterpriseContainerService"

    const-string v9, "getOriginalPackageName start"

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4121
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4122
    .local v1, "lPackageName":Ljava/lang/String;
    const-string v8, "sec_container_"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4125
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 4126
    .local v2, "length":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 4127
    .local v6, "str":Ljava/lang/StringBuilder;
    const-string v8, "sec_container_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4128
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 4129
    .local v3, "prefixLen":I
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 4131
    .local v5, "returnString":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4134
    .end local v2    # "length":I
    .end local v3    # "prefixLen":I
    .end local v5    # "returnString":Ljava/lang/String;
    .end local v6    # "str":Ljava/lang/StringBuilder;
    :cond_0
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4139
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "lPackageName":Ljava/lang/String;
    :cond_1
    const-string v8, "EnterpriseContainerService"

    const-string v9, "getOriginalPackageNamesInternal is null"

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4141
    const/4 v4, 0x0

    .end local v4    # "returnPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-object v4
.end method

.method private getPlatformContainerState(Lcom/sec/knox/container/constants/CSState;)I
    .locals 3
    .param p1, "state"    # Lcom/sec/knox/container/constants/CSState;

    .prologue
    .line 3620
    const/4 v0, -0x1

    .line 3621
    .local v0, "result":I
    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerService$3;->$SwitchMap$com$sec$knox$container$constants$CSState:[I

    invoke-virtual {p1}, Lcom/sec/knox/container/constants/CSState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3667
    :goto_0
    :pswitch_0
    return v0

    .line 3623
    :pswitch_1
    const/4 v0, -0x1

    .line 3624
    goto :goto_0

    .line 3626
    :pswitch_2
    const/16 v0, 0x5d

    .line 3627
    goto :goto_0

    .line 3629
    :pswitch_3
    const/16 v0, 0x5b

    .line 3630
    goto :goto_0

    .line 3633
    :pswitch_4
    const/16 v0, 0x5f

    .line 3634
    goto :goto_0

    .line 3640
    :pswitch_5
    const/16 v0, 0x5a

    .line 3641
    goto :goto_0

    .line 3643
    :pswitch_6
    const/16 v0, 0x52

    .line 3644
    goto :goto_0

    .line 3646
    :pswitch_7
    const/16 v0, 0x53

    .line 3647
    goto :goto_0

    .line 3650
    :pswitch_8
    const/16 v0, 0x62

    .line 3651
    goto :goto_0

    .line 3653
    :pswitch_9
    const/16 v0, 0x5e

    .line 3654
    goto :goto_0

    .line 3656
    :pswitch_a
    const/16 v0, 0x60

    .line 3657
    goto :goto_0

    .line 3660
    :pswitch_b
    const/16 v0, 0x61

    .line 3661
    goto :goto_0

    .line 3621
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_5
        :pswitch_b
        :pswitch_5
    .end packed-switch
.end method

.method private getTimaService()Landroid/service/tima/ITimaService;
    .locals 2

    .prologue
    .line 6569
    const-string/jumbo v1, "tima"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    .line 6571
    .local v0, "timaService":Landroid/service/tima/ITimaService;
    return-object v0
.end method

.method private getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 3704
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    move-object v0, p1

    goto :goto_0
.end method

.method private getVpnService()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    if-nez v0, :cond_0

    .line 804
    const-string v0, "enterprise_premium_vpn_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    return-object v0
.end method

.method private declared-synchronized getWakeLockCounter()I
    .locals 1

    .prologue
    .line 4556
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized incrementWakeLock()V
    .locals 3

    .prologue
    .line 4542
    monitor-enter p0

    :try_start_0
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refCountWakeLock before increment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4543
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    .line 4544
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refCountWakeLock after increment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4545
    monitor-exit p0

    return-void

    .line 4542
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initialiseContainer()V
    .locals 2

    .prologue
    .line 834
    const-string v0, "EnterpriseContainerService"

    const-string v1, "initialiseContainer()"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const-string v0, "ctl.start"

    const-string v1, "containersetup"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    return-void
.end method

.method private initializeDPMActiveAdminList()V
    .locals 3

    .prologue
    .line 722
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 724
    .local v0, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;

    .line 725
    return-void
.end method

.method private installPackageInternal(Ljava/lang/String;I)Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;
    .locals 9
    .param p1, "apkFilePath"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    const/4 v8, 0x1

    const/16 v7, -0x66

    .line 2638
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installPackageInternal() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2639
    const/16 v2, 0x92

    .line 2643
    .local v2, "installFlags":I
    new-instance v3, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;

    invoke-direct {v3, p0, p2}, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    .line 2645
    .local v3, "obs":Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2646
    .local v0, "apkFile":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2647
    const/4 v4, -0x2

    iput v4, v3, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->result:I

    .line 2648
    const-string v4, "EnterpriseContainerService"

    const-string v5, "Invalid Apk. installation failed"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2679
    .end local v0    # "apkFile":Ljava/io/File;
    :goto_0
    return-object v3

    .line 2652
    .restart local v0    # "apkFile":Ljava/io/File;
    :cond_0
    invoke-virtual {v3}, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->init()V

    .line 2653
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "com.sec.knox.containeragent"

    invoke-virtual {v4, v5, v3, v2, v6}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 2655
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2656
    :goto_1
    :try_start_1
    iget-boolean v4, v3, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    .line 2658
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2659
    :catch_0
    move-exception v1

    .line 2660
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InterruptedException during Package installation."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2662
    const/16 v4, -0x66

    iput v4, v3, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->result:I

    .line 2663
    monitor-exit v3

    goto :goto_0

    .line 2666
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 2674
    .end local v0    # "apkFile":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 2675
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception during Package installation. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2676
    iput v7, v3, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->result:I

    goto :goto_0

    .line 2666
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "apkFile":Ljava/io/File;
    :cond_1
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2667
    :try_start_6
    iget-boolean v4, v3, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->retry:Z

    if-ne v4, v8, :cond_2

    .line 2668
    const-string v4, "EnterpriseContainerService"

    const-string v5, "Package installation failed due to internal error. Retry but before that sleep for 1 sec"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2670
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 2672
    :cond_2
    iget-boolean v4, v3, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->retry:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    if-eq v4, v8, :cond_0

    goto :goto_0
.end method

.method private isContainerPackageInstallable(I)Z
    .locals 4
    .param p1, "containerId"    # I

    .prologue
    const/4 v1, 0x0

    .line 5038
    const-string v2, "EnterpriseContainerService"

    const-string v3, "isContainerPackageInstallable()"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5039
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    .line 5040
    .local v0, "currentState":Lcom/sec/knox/container/constants/CSState;
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerService$3;->$SwitchMap$com$sec$knox$container$constants$CSState:[I

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 5058
    :goto_0
    :pswitch_0
    return v1

    .line 5046
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 5040
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isContainerPartition(I)Z
    .locals 5
    .param p1, "containerId"    # I

    .prologue
    .line 627
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/container/.sdcontainer_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 628
    .local v0, "containerPart":Ljava/io/File;
    const/4 v1, 0x0

    .line 630
    .local v1, "ret":Z
    if-nez v0, :cond_0

    .line 631
    const-string v2, "EnterpriseContainerService"

    const-string v3, "isContainerPartition : File object not created"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const/4 v2, 0x0

    .line 641
    :goto_0
    return v2

    .line 635
    :cond_0
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    .line 638
    if-nez v1, :cond_1

    .line 639
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not existing.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v2, v1

    .line 641
    goto :goto_0
.end method

.method private isPackageInInstallWhiteList(II)Z
    .locals 11
    .param p1, "containerId"    # I
    .param p2, "callingUid"    # I

    .prologue
    .line 4277
    const-string v8, "EnterpriseContainerService"

    const-string v9, "isPackageInInstallWhiteList()"

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4279
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getKnoxApplicationPolicy(I)Lcom/sec/enterprise/knox/ContainerApplicationPolicy;

    move-result-object v4

    .line 4281
    .local v4, "mAppPolicy":Lcom/sec/enterprise/knox/ContainerApplicationPolicy;
    if-eqz v4, :cond_1

    .line 4282
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 4283
    .local v6, "packageNames":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v7, v0, v2

    .line 4284
    .local v7, "pkgName":Ljava/lang/String;
    invoke-direct {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerService;->getOriginalPackageNameInternal(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4285
    .local v5, "orgPkgName":Ljava/lang/String;
    invoke-virtual {v4, v5}, Lcom/sec/enterprise/knox/ContainerApplicationPolicy;->isPackageInInstallWhiteList(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4286
    const/4 v8, 0x1

    .line 4295
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "mAppPolicy":Lcom/sec/enterprise/knox/ContainerApplicationPolicy;
    .end local v5    # "orgPkgName":Ljava/lang/String;
    .end local v6    # "packageNames":[Ljava/lang/String;
    .end local v7    # "pkgName":Ljava/lang/String;
    :goto_1
    return v8

    .line 4283
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "mAppPolicy":Lcom/sec/enterprise/knox/ContainerApplicationPolicy;
    .restart local v5    # "orgPkgName":Ljava/lang/String;
    .restart local v6    # "packageNames":[Ljava/lang/String;
    .restart local v7    # "pkgName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4290
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "orgPkgName":Ljava/lang/String;
    .end local v6    # "packageNames":[Ljava/lang/String;
    .end local v7    # "pkgName":Ljava/lang/String;
    :cond_1
    const-string v8, "EnterpriseContainerService"

    const-string v9, "ContainerApplicationPolicy is null"

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4295
    .end local v4    # "mAppPolicy":Lcom/sec/enterprise/knox/ContainerApplicationPolicy;
    :cond_2
    :goto_2
    const/4 v8, 0x0

    goto :goto_1

    .line 4292
    :catch_0
    move-exception v1

    .line 4293
    .local v1, "ex":Ljava/lang/Exception;
    const-string v8, "EnterpriseContainerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error in isPackageInInstallWhiteList(). "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private isPasswordForbiddenInternal(ILjava/lang/String;Z)Z
    .locals 7
    .param p1, "containerId"    # I
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "allowAll"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 3250
    const-string v4, "EnterpriseContainerService"

    const-string v5, "isPasswordForbiddenInternal()"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3251
    const/4 v1, 0x0

    .line 3253
    .local v1, "result":Z
    const-wide/16 v2, 0x0

    .line 3254
    .local v2, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    .line 3257
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3259
    :cond_2
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v4, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->isPasswordForbidden(ILjava/lang/String;)Z

    move-result v1

    .line 3260
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    .line 3261
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3270
    :cond_3
    :goto_0
    return v1

    .line 3263
    :catch_0
    move-exception v0

    .line 3264
    .local v0, "ex":Ljava/lang/SecurityException;
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPasswordForbidden() allowAll= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " API Permission is not granted for Non-MDM and Non-DPM API Calls"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3266
    const-string v4, "EnterpriseContainerService"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3267
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 3268
    .local v0, "ex":Ljava/lang/Exception;
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPasswordForbidden() Error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private killTimer(I)V
    .locals 1
    .param p1, "containerId"    # I

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->killTimer(I)V

    .line 1233
    return-void
.end method

.method private killUnmountTimer(I)V
    .locals 1
    .param p1, "containerId"    # I

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->killUnmountTimer(I)V

    .line 1237
    return-void
.end method

.method private launchActivityForPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 4261
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4262
    .local v2, "mIntent":Landroid/content/Intent;
    const-string v3, "sec_container_1.android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4263
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4264
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4265
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4266
    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4267
    const/4 v3, 0x1

    .line 4273
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v2    # "mIntent":Landroid/content/Intent;
    :goto_0
    return v3

    .line 4268
    :catch_0
    move-exception v1

    .line 4269
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActivityNotFoundException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4273
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 4270
    :catch_1
    move-exception v1

    .line 4271
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not start app "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private loadPasswordInfoToCache(I)V
    .locals 10
    .param p1, "containerId"    # I

    .prologue
    const/4 v9, 0x0

    .line 1201
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v7, p1, v9}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordExpiration(ILandroid/content/ComponentName;)J

    move-result-wide v3

    .line 1202
    .local v3, "passwordExpirationDate":J
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v7, p1, v9}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J

    move-result-wide v5

    .line 1204
    .local v5, "passwordExpirationTimeout":J
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, p1}, Lcom/sec/knox/container/manager/StateManager;->getFailedPasswordAttempts(Landroid/content/Context;I)I

    move-result v0

    .line 1205
    .local v0, "failedPasswordAttempts":I
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v7, p1, v9}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getMaximumTimeToLock(ILandroid/content/ComponentName;)J

    move-result-wide v1

    .line 1207
    .local v1, "maximumTimeToLock":J
    const-string v7, "EnterpriseContainerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update: Password Info: passwordExpirationDate = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", passwordExpirationTimeout = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", failedPasswordAttempts = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", maximumTimeToLock = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v7, p1, v3, v4}, Lcom/sec/knox/container/manager/StateManager;->setPasswordExpirationDate(IJ)Z

    .line 1213
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v7, p1, v5, v6}, Lcom/sec/knox/container/manager/StateManager;->setPasswordExpirationTimeout(IJ)Z

    .line 1214
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v7, p1, v0}, Lcom/sec/knox/container/manager/StateManager;->setFailedPasswordAttempts(II)Z

    .line 1215
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v7, p1, v1, v2}, Lcom/sec/knox/container/manager/StateManager;->setMaximumTimeToLock(IJ)Z

    .line 1216
    return-void
.end method

.method private lockContainerInternal(I)Z
    .locals 8
    .param p1, "containerId"    # I

    .prologue
    const/4 v4, 0x1

    .line 1281
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v6, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v6

    sget-object v7, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_LOCK_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v5, p1, v6, v7}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v1

    .line 1283
    .local v1, "temp":Lcom/sec/knox/container/constants/CSState;
    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v5

    sget-object v6, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v6}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 1284
    const-string v5, "EnterpriseContainerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Locking for container"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    const-wide/16 v2, 0x0

    .line 1286
    .local v2, "token":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1287
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->killAllApps(I)Z

    .line 1288
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->killTimer(I)V

    .line 1290
    const/4 v5, 0x2

    invoke-direct {p0, p1, v5, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->unmount(III)V

    .line 1292
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->clearVerifyCallback(I)V

    .line 1294
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1296
    new-instance v0, Landroid/content/Intent;

    const-string v5, "enterprise.container.locked"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1297
    .local v0, "lockContainerCompleted":Landroid/content/Intent;
    const-string v5, "containerid"

    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1298
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1301
    .end local v0    # "lockContainerCompleted":Landroid/content/Intent;
    .end local v2    # "token":J
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private mount(Lcom/sec/knox/container/EnterpriseContainerObjectParam;III)I
    .locals 28
    .param p1, "container"    # Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    .param p2, "containerId"    # I
    .param p3, "state"    # I
    .param p4, "requestId"    # I

    .prologue
    .line 2914
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Mount()"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2915
    new-instance v17, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2916
    .local v17, "ecryptfsKey":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getPassword()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->getEcryptfsKey(Ljava/lang/String;Ljava/lang/StringBuilder;)I

    move-result v18

    .line 2917
    .local v18, "errorCode":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->isTimaServiceExist:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_1

    .line 3009
    .end local v18    # "errorCode":I
    :cond_0
    :goto_0
    return v18

    .line 2924
    .restart local v18    # "errorCode":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/.container_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 2925
    .local v23, "srcPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2926
    .local v9, "mountPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/storage/container/.sdcontainer_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2927
    .local v22, "sdSrcPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/mnt_1/sdcard_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 2928
    .local v21, "sdMountPath":Ljava/lang/String;
    const-wide/16 v26, 0x0

    .line 2931
    .local v26, "token":J
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .line 2932
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2933
    .local v24, "srcPathFile":Ljava/io/File;
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2934
    .local v19, "mountPathFile":Ljava/io/File;
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2935
    .local v25, "srcSDPathFile":Ljava/io/File;
    new-instance v20, Ljava/io/File;

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2937
    .local v20, "mountSDPathFile":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2939
    :cond_2
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Error create container: One or more source/mount path does not exist."

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2941
    const/16 v18, 0x0

    .line 3005
    .end local v18    # "errorCode":I
    const-wide/16 v3, 0x0

    cmp-long v3, v26, v3

    if-eqz v3, :cond_0

    .line 3006
    .end local v19    # "mountPathFile":Ljava/io/File;
    .end local v20    # "mountSDPathFile":Ljava/io/File;
    .end local v24    # "srcPathFile":Ljava/io/File;
    .end local v25    # "srcSDPathFile":Ljava/io/File;
    :goto_1
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 2943
    .restart local v18    # "errorCode":I
    .restart local v19    # "mountPathFile":Ljava/io/File;
    .restart local v20    # "mountSDPathFile":Ljava/io/File;
    .restart local v24    # "srcPathFile":Ljava/io/File;
    .restart local v25    # "srcSDPathFile":Ljava/io/File;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->isContainerPartition(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2944
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sdcard directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not exist, so creating it ...."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2946
    invoke-direct/range {p0 .. p0}, Lcom/sec/knox/container/EnterpriseContainerService;->initialiseContainer()V

    .line 2949
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getPassword()Ljava/lang/String;

    move-result-object v6

    .line 2950
    .local v6, "newPassword":Ljava/lang/String;
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Path to mount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2952
    const/4 v2, 0x0

    .line 2954
    .local v2, "encryptCallback":Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;
    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 2955
    new-instance v2, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;

    .end local v2    # "encryptCallback":Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, p3

    move/from16 v5, p2

    invoke-direct/range {v2 .. v8}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;IILjava/lang/String;Ljava/lang/String;Z)V

    .line 2961
    .restart local v2    # "encryptCallback":Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;
    :goto_2
    if-lez p4, :cond_5

    .line 2962
    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->setRequestId(I)V

    .line 2965
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mMountCallBackData:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2967
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->checkMount(Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2968
    const-string v3, "EnterpriseContainerService"

    const-string v4, "primary mount already exists for some reason, force unmount"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2969
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move/from16 v0, p2

    invoke-virtual {v3, v9, v4, v5, v0}, Landroid/dirEncryption/DirEncryptionManager;->unmountEcryptfsStorage(Ljava/lang/String;Landroid/dirEncryption/IDirEncryptionManagerCallBack;II)I

    .line 2975
    :goto_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->checkMount(Z)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2976
    const-string v3, "EnterpriseContainerService"

    const-string v4, "secondary mount already exists for some reason, force unmount"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2977
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v3, v0, v4, v5, v1}, Landroid/dirEncryption/DirEncryptionManager;->unmountEcryptfsStorage(Ljava/lang/String;Landroid/dirEncryption/IDirEncryptionManagerCallBack;II)I

    .line 2983
    :goto_4
    if-eqz v17, :cond_a

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_a

    .line 2984
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v8, v23

    move/from16 v13, p2

    move/from16 v14, p3

    move-object v15, v2

    invoke-virtual/range {v7 .. v15}, Landroid/dirEncryption/DirEncryptionManager;->mountEcryptfsStorage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIILandroid/dirEncryption/IDirEncryptionManagerCallBack;)I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_b

    .line 2987
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Error create container: DirEncryptionManager Primary mount failed"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2989
    const/16 v18, 0x0

    .line 3005
    .end local v18    # "errorCode":I
    const-wide/16 v3, 0x0

    cmp-long v3, v26, v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    .line 2958
    .restart local v18    # "errorCode":I
    :cond_6
    new-instance v2, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;

    .end local v2    # "encryptCallback":Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;
    const/4 v7, 0x1

    move-object/from16 v3, p0

    move/from16 v4, p3

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;IILjava/lang/String;Z)V

    .restart local v2    # "encryptCallback":Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;
    goto/16 :goto_2

    .line 2972
    :cond_7
    const-string v3, "EnterpriseContainerService"

    const-string v4, "primary mount is clear for mount"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 3001
    .end local v2    # "encryptCallback":Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;
    .end local v6    # "newPassword":Ljava/lang/String;
    .end local v19    # "mountPathFile":Ljava/io/File;
    .end local v20    # "mountSDPathFile":Ljava/io/File;
    .end local v24    # "srcPathFile":Ljava/io/File;
    .end local v25    # "srcSDPathFile":Ljava/io/File;
    :catch_0
    move-exception v16

    .line 3002
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "EnterpriseContainerService"

    invoke-static/range {v16 .. v16}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3003
    const/16 v18, 0x0

    .line 3005
    .end local v18    # "errorCode":I
    const-wide/16 v3, 0x0

    cmp-long v3, v26, v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    .line 2980
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v2    # "encryptCallback":Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;
    .restart local v6    # "newPassword":Ljava/lang/String;
    .restart local v18    # "errorCode":I
    .restart local v19    # "mountPathFile":Ljava/io/File;
    .restart local v20    # "mountSDPathFile":Ljava/io/File;
    .restart local v24    # "srcPathFile":Ljava/io/File;
    .restart local v25    # "srcSDPathFile":Ljava/io/File;
    :cond_8
    :try_start_3
    const-string v3, "EnterpriseContainerService"

    const-string v4, "secondary mount is clear for mount"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 3005
    .end local v2    # "encryptCallback":Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;
    .end local v6    # "newPassword":Ljava/lang/String;
    .end local v19    # "mountPathFile":Ljava/io/File;
    .end local v20    # "mountSDPathFile":Ljava/io/File;
    .end local v24    # "srcPathFile":Ljava/io/File;
    .end local v25    # "srcSDPathFile":Ljava/io/File;
    :catchall_0
    move-exception v3

    const-wide/16 v4, 0x0

    cmp-long v4, v26, v4

    if-eqz v4, :cond_9

    .line 3006
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3005
    :cond_9
    throw v3

    .line 2993
    .restart local v2    # "encryptCallback":Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;
    .restart local v6    # "newPassword":Ljava/lang/String;
    .restart local v19    # "mountPathFile":Ljava/io/File;
    .restart local v20    # "mountSDPathFile":Ljava/io/File;
    .restart local v24    # "srcPathFile":Ljava/io/File;
    .restart local v25    # "srcSDPathFile":Ljava/io/File;
    :cond_a
    :try_start_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v8, v23

    move-object v10, v6

    move/from16 v13, p2

    move/from16 v14, p3

    move-object v15, v2

    invoke-virtual/range {v7 .. v15}, Landroid/dirEncryption/DirEncryptionManager;->mountEcryptfsStorage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIILandroid/dirEncryption/IDirEncryptionManagerCallBack;)I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_b

    .line 2996
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Error create container: DirEncryptionManager Primary mount failed"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2998
    const/16 v18, 0x0

    .line 3005
    .end local v18    # "errorCode":I
    const-wide/16 v3, 0x0

    cmp-long v3, v26, v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    .restart local v18    # "errorCode":I
    :cond_b
    const-wide/16 v3, 0x0

    cmp-long v3, v26, v3

    if-eqz v3, :cond_c

    .line 3006
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3009
    :cond_c
    const/16 v18, 0x1

    goto/16 :goto_0
.end method

.method private registerReceiverPerContainer(Ljava/lang/String;)V
    .locals 5
    .param p1, "intentSting"    # Ljava/lang/String;

    .prologue
    .line 761
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 764
    .local v0, "filter":Landroid/content/IntentFilter;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 765
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registering action >> sec_container_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sec_container_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 764
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 768
    :cond_0
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mBroadCastReciever:Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 769
    return-void
.end method

.method private registerReciever()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 772
    new-instance v1, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;

    invoke-direct {v1, p0}, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mBroadCastReciever:Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;

    .line 773
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 774
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 775
    const-string v1, "android.intent.action.EMAIL_ACCOUNT_CREATED_INTENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 776
    const-string v1, "android.intent.action.EMAIL_ACCOUNT_DELETED_INTENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 777
    const-string v1, "com.sec.knox.container.INTENT_ALARM_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 778
    const-string v1, "com.sec.knox.container.INTENT_ALARM_UNMOUNT_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 779
    const-string v1, "enterprise.container.INTENT_ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 780
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDPMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 782
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mBroadCastReciever:Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 784
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 785
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 786
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 787
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 788
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 789
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mBroadCastReciever:Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 791
    const-string v1, "android.intent.action.EMAIL_ACCOUNT_CREATED_INTENT"

    invoke-direct {p0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->registerReceiverPerContainer(Ljava/lang/String;)V

    .line 792
    const-string v1, "android.intent.action.EMAIL_ACCOUNT_DELETED_INTENT"

    invoke-direct {p0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->registerReceiverPerContainer(Ljava/lang/String;)V

    .line 793
    return-void
.end method

.method private declared-synchronized releaseLock()V
    .locals 2

    .prologue
    .line 599
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 600
    const-string v0, "EnterpriseContainerService"

    const-string v1, "---------------------->releasing wake lock<---------------------"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 604
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->setDownloadWakeState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    monitor-exit p0

    return-void

    .line 599
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeContainerActiveAdmin(I)V
    .locals 13
    .param p1, "cid"    # I

    .prologue
    .line 4025
    const-string v10, "EnterpriseContainerService"

    const-string v11, "removeContainerActiveAdmin()"

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4026
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 4028
    .local v8, "token":J
    :try_start_0
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v10, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackages(I)Ljava/util/List;

    move-result-object v6

    .line 4029
    .local v6, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_2

    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 4031
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    const-string v11, "device_policy"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 4033
    .local v4, "mDPM":Landroid/app/admin/DevicePolicyManager;
    if-eqz v4, :cond_2

    .line 4034
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4035
    .local v7, "removeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 4036
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4037
    .local v5, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 4039
    const-string v10, "EnterpriseContainerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removeActiveAdmin called with ComponentName= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4042
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "sec_container_1.com.android.email"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 4043
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4047
    :goto_1
    invoke-virtual {v4, v0}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4063
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "removeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :catch_0
    move-exception v1

    .line 4064
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v10, "EnterpriseContainerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception occured while removing admin: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4066
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4068
    return-void

    .line 4045
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "removeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :cond_3
    :try_start_2
    const-string v10, "EnterpriseContainerService"

    const-string/jumbo v11, "skip removeActiveAdmin : sec_container_1.com.android.email"

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 4066
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "removeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v10

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    .line 4051
    .restart local v4    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .restart local v6    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "removeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :cond_4
    :try_start_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    .line 4052
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    if-nez v10, :cond_5

    .line 4053
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    .line 4055
    :cond_5
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 4057
    :cond_6
    const-string v10, "EnterpriseContainerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removeContainerActiveAdmin: no admins found in Container Id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method private removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    .locals 5
    .param p1, "containerId"    # I
    .param p2, "callback"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .prologue
    .line 3082
    const-string v2, "EnterpriseContainerService"

    const-string v3, " removeContainerHelper()"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3083
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->killTimer(I)V

    .line 3084
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v3, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNINSTALL_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v2, p1, v3, v4}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v1

    .line 3086
    .local v1, "transitState":Lcom/sec/knox/container/constants/CSState;
    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 3089
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerActiveAdmin(I)V

    .line 3092
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Updating DB ContainerStatus: 94"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3096
    new-instance v0, Landroid/content/Intent;

    const-string v2, "enterprise.container.remove.progress"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3097
    .local v0, "containerRemoveProgress":Landroid/content/Intent;
    const-string v2, "containerid"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3098
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3100
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Putting the call back in the map"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3101
    if-eqz p2, :cond_0

    .line 3102
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, p2}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->add(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    .line 3104
    :cond_0
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 3105
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerNow(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    .line 3107
    :cond_2
    const/4 v2, 0x1

    .line 3109
    .end local v0    # "containerRemoveProgress":Landroid/content/Intent;
    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private removeContainerNow(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V
    .locals 23
    .param p1, "containerId"    # I
    .param p2, "callback"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .prologue
    .line 3114
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " removeContainerNow(): id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3116
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3117
    .local v6, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "framework.pkgName.key"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3119
    .local v14, "frameworkPackageList":Ljava/lang/String;
    if-nez v14, :cond_1

    const/4 v15, 0x0

    .line 3121
    .local v15, "frameworkPackages":[Ljava/lang/String;
    :goto_0
    if-eqz v15, :cond_2

    .line 3122
    move-object v9, v15

    .local v9, "arr$":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    aget-object v16, v9, v17

    .line 3123
    .local v16, "frameworkPkg":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3124
    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3122
    :cond_0
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 3119
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v15    # "frameworkPackages":[Ljava/lang/String;
    .end local v16    # "frameworkPkg":Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v18    # "len$":I
    :cond_1
    const-string v3, ";"

    invoke-virtual {v14, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .line 3128
    .restart local v15    # "frameworkPackages":[Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    if-nez v3, :cond_4

    .line 3185
    :cond_3
    :goto_2
    return-void

    .line 3131
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    move/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Lcom/sec/knox/container/manager/StateManager;->getPackageNames(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v12

    .line 3132
    .local v12, "containerPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v12, :cond_5

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 3133
    invoke-interface {v6, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3138
    :cond_5
    if-eqz v6, :cond_b

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 3139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerObjectFromCache(I)Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    move-result-object v13

    .line 3140
    .local v13, "data":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    if-eqz v13, :cond_3

    .line 3141
    invoke-virtual {v13}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerAdmin()I

    move-result v8

    .line 3142
    .local v8, "adminId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21

    .line 3143
    .local v21, "token":J
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setApplicationUninstallationDisabledBySystem to false admin:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3144
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 3145
    .local v20, "packageName":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 3146
    invoke-direct/range {p0 .. p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v3, v8, v0, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    goto :goto_3

    .line 3154
    .end local v20    # "packageName":Ljava/lang/String;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getDeviceAccountPolicy()Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 3155
    const-string v3, "EnterpriseContainerService"

    const-string v4, "clearing BL/WL account settings for various types."

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3156
    invoke-direct/range {p0 .. p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getDeviceAccountPolicy()Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLBySystem(I[Ljava/lang/String;)Z

    .line 3160
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/sec/knox/container/EnterpriseContainerService;->killAllApps(I)Z

    .line 3161
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3162
    invoke-direct/range {p0 .. p0}, Lcom/sec/knox/container/EnterpriseContainerService;->resetWakeLock()V

    .line 3163
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Start the Uninstaller Thread"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3164
    new-instance v2, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;ILandroid/os/Handler;Ljava/util/List;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    .line 3166
    .local v2, "unInstaller":Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;
    invoke-virtual {v2}, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->start()V

    .line 3167
    const-string v11, "B2B"

    .line 3168
    .local v11, "conType":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a

    .line 3169
    const-string v11, "B2B"

    .line 3173
    :cond_9
    :goto_4
    const-string v3, "[ECS] removeContainerNow()"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Lcom/sec/knox/container/EnterpriseContainerService;->WriteContainerHistory(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3170
    :cond_a
    invoke-virtual {v13}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerType()I

    move-result v3

    if-nez v3, :cond_9

    .line 3171
    const-string v11, "B2C"

    goto :goto_4

    .line 3177
    .end local v2    # "unInstaller":Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;
    .end local v8    # "adminId":I
    .end local v11    # "conType":Ljava/lang/String;
    .end local v13    # "data":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v21    # "token":J
    :cond_b
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3178
    .local v10, "bundle":Landroid/os/Bundle;
    const-string v3, "containerid"

    move/from16 v0, p1

    invoke-virtual {v10, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v7, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    .line 3182
    .local v19, "msg":Landroid/os/Message;
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Uninstaller Thread msg to Handler"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2
.end method

.method private removeUntrustedContainerApps(I)V
    .locals 12
    .param p1, "containerId"    # I

    .prologue
    .line 2369
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 2370
    .local v11, "pm":Landroid/content/pm/PackageManager;
    const/16 v1, 0x80

    invoke-virtual {v11, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v6

    .line 2371
    .local v6, "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2372
    .local v4, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    .line 2373
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v10, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2374
    .local v10, "packageName":Ljava/lang/String;
    if-eqz v10, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sec_container_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2375
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2376
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Untrusted Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " will be uninstalled before container creation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2381
    .end local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "packageName":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2383
    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;ILandroid/os/Handler;Ljava/util/List;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    .line 2385
    .local v0, "packageUninstaller":Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;
    invoke-virtual {v0}, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->start()V

    .line 2386
    invoke-virtual {v0}, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2391
    .end local v0    # "packageUninstaller":Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;
    :cond_2
    :goto_1
    return-void

    .line 2388
    :catch_0
    move-exception v8

    .line 2389
    .local v8, "e":Ljava/lang/InterruptedException;
    const-string v1, "EnterpriseContainerService"

    const-string v2, "UninstallPackageThread interrupted"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private declared-synchronized resetWakeLock()V
    .locals 3

    .prologue
    .line 4535
    monitor-enter p0

    :try_start_0
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refCountWakeLock before reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4536
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    .line 4538
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->setDownloadWakeState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4539
    monitor-exit p0

    return-void

    .line 4535
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private scheduleTimer(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerId"    # I

    .prologue
    .line 1219
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->scheduleTimer(Landroid/content/Context;IZ)V

    .line 1220
    return-void
.end method

.method private scheduleTimer(Landroid/content/Context;IZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerId"    # I
    .param p3, "forceStart"    # Z

    .prologue
    .line 1223
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getWakeLockCounter()I

    move-result v0

    if-nez v0, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->scheduleTimer(Landroid/content/Context;IZ)V

    .line 1229
    :goto_0
    return-void

    .line 1226
    :cond_0
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On scheduleTimer, WakeLockCounter is not 0, it is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getWakeLockCounter()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendContainerCreationIntent(I)V
    .locals 3
    .param p1, "containerId"    # I

    .prologue
    .line 1267
    const-string v1, "EnterpriseContainerService"

    const-string v2, "sending sendContainerCreationIntent"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    new-instance v0, Landroid/content/Intent;

    const-string v1, "enterprise.container.created.nonactive"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1269
    .local v0, "sendContainerCreationIntent":Landroid/content/Intent;
    const-string v1, "containerid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1270
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1271
    return-void
.end method

.method private sendContainerSetupSuccessMessage(I)V
    .locals 5
    .param p1, "containerId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1249
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1250
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "containerid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1251
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    const/16 v3, 0xc

    invoke-static {v2, v3, v4, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1253
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    invoke-virtual {v2, v1}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1254
    return-void
.end method

.method private sendNewContainerNotificationRequest(III)V
    .locals 5
    .param p1, "containerId"    # I
    .param p2, "admin"    # I
    .param p3, "containerRequestId"    # I

    .prologue
    .line 848
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendNewContainerNotificationRequest() ReqId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 851
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.knox.containeragent.createcontainer"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 852
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 853
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 854
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "admin"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 855
    const-string v2, "requestid"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 856
    const-string v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 857
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 858
    return-void
.end method

.method private sendRemountSuccessMessageToHandler(ILjava/lang/String;I)V
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "requestId"    # I

    .prologue
    const/4 v5, 0x0

    .line 4764
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4765
    .local v0, "message":Landroid/os/Bundle;
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remount success for : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4766
    const-string v2, "containerid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4767
    const-string v2, "rid"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4769
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    const/16 v3, 0xd

    invoke-static {v2, v3, v5, v5, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4771
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    invoke-virtual {v2, v1}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4772
    return-void
.end method

.method private sendRemovePersonalContainerRequest(III)V
    .locals 5
    .param p1, "containerId"    # I
    .param p2, "admin"    # I
    .param p3, "containerRequestId"    # I

    .prologue
    .line 862
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRemovePersonalContainerRequest() ReqId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 865
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.knox.containeragent.remove.b2ccontainer"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 866
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 867
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "admin"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 868
    const-string v2, "requestid"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 869
    const-string v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 870
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 871
    return-void
.end method

.method private setContainerFirmwareVersionToCacheAndDB(ILjava/lang/String;)Z
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "firmwareVersion"    # Ljava/lang/String;

    .prologue
    .line 6329
    const-string v1, "EnterpriseContainerService"

    const-string v2, "setContainerFirmwareVersionToCacheAndDB()"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6330
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6331
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "deviceFirmwareVersion"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6332
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/sec/knox/container/manager/StateManager;->updateValuesForContainer(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6334
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating firmware Version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6335
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/manager/StateManager;->setFirmwareVersion(ILjava/lang/String;)Z

    .line 6336
    const/4 v1, 0x1

    .line 6338
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupContainer(Lcom/sec/knox/container/EnterpriseContainerObjectParam;I)I
    .locals 5
    .param p1, "container"    # Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    .param p2, "containerId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3069
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->generateAndStoreTimaKey()I

    move-result v0

    .line 3070
    .local v0, "errorCode":I
    iget-boolean v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->isTimaServiceExist:Z

    if-eqz v2, :cond_0

    if-eq v0, v4, :cond_0

    move v1, v0

    .line 3078
    .end local v0    # "errorCode":I
    .local v1, "errorCode":I
    :goto_0
    return v1

    .line 3074
    .end local v1    # "errorCode":I
    .restart local v0    # "errorCode":I
    :cond_0
    invoke-direct {p0, p1, p2, v3, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->mount(Lcom/sec/knox/container/EnterpriseContainerObjectParam;III)I

    move-result v0

    .line 3075
    if-ne v0, v4, :cond_1

    .line 3076
    const-string v2, "EnterpriseContainerService"

    const-string/jumbo v3, "setupContainer() Mount Succes"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v1, v0

    .line 3078
    .end local v0    # "errorCode":I
    .restart local v1    # "errorCode":I
    goto :goto_0
.end method

.method private setupContainerCreationFailureMessage(II)V
    .locals 5
    .param p1, "containerId"    # I
    .param p2, "errorCode"    # I

    .prologue
    const/4 v4, 0x0

    .line 1240
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1241
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "containerid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1242
    const-string v2, "errCode"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1243
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    const/16 v3, 0xa

    invoke-static {v2, v3, v4, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1245
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    invoke-virtual {v2, v1}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1246
    return-void
.end method

.method private setupContainerRemountFailureMessage(III)V
    .locals 5
    .param p1, "containerId"    # I
    .param p2, "requestId"    # I
    .param p3, "errorCode"    # I

    .prologue
    const/4 v4, 0x0

    .line 1257
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1258
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "containerid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1259
    const-string v2, "rid"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1260
    const-string v2, "errCode"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1261
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    const/16 v3, 0xb

    invoke-static {v2, v3, v4, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1263
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    invoke-virtual {v2, v1}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1264
    return-void
.end method

.method private startContainerEventsRelayManager()V
    .locals 4

    .prologue
    .line 558
    :try_start_0
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.knox.eventsmanager.ContainerEventsRelayManager"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    .line 559
    const-string v1, "EnterpriseContainerService"

    const-string v2, "Failed to start ContainerEventsRelayManager service"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, "ex":Ljava/lang/SecurityException;
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do not have permission to start service ContainerEventsRelayManager. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 564
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 565
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while starting ContainerEventsRelayManager service. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private trimHiddenVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x5f

    .line 1190
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trimHiddenVersion("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    const/4 v0, 0x0

    .line 1192
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1193
    const/4 v1, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1197
    :goto_0
    return-object v0

    .line 1195
    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private unlockContainerInternal(I)Z
    .locals 5
    .param p1, "containerId"    # I

    .prologue
    .line 1305
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v3, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNLOCK_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v2, p1, v3, v4}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    .line 1307
    .local v0, "temp":Lcom/sec/knox/container/constants/CSState;
    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 1308
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->reportSuccessfulPasswordAttempt(I)V

    .line 1309
    const-string v2, "EnterpriseContainerService"

    const-string/jumbo v3, "unlockContainer API: Container State = CONTAINER_INACTIVE"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    new-instance v1, Landroid/content/Intent;

    const-string v2, "enterprise.container.unlocked"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1311
    .local v1, "unlockContainerCompleted":Landroid/content/Intent;
    const-string v2, "containerid"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1312
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1317
    const/4 v2, 0x1

    .end local v1    # "unlockContainerCompleted":Landroid/content/Intent;
    :goto_0
    return v2

    .line 1314
    :cond_0
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Container is not locked so no unlock"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private unmount(III)V
    .locals 10
    .param p1, "containerId"    # I
    .param p2, "whichOne"    # I
    .param p3, "uninstallOrStop"    # I

    .prologue
    .line 3020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3021
    .local v7, "mountPath":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/mnt_1/sdcard_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3022
    .local v8, "sdMountPath":Ljava/lang/String;
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 3023
    :cond_0
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "containerunmount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UNMOUNT_PRIMARY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "OR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3027
    :cond_1
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;

    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;

    const/4 v2, 0x4

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;IILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v9, v7, v0, p3, p1}, Landroid/dirEncryption/DirEncryptionManager;->unmountEcryptfsStorage(Ljava/lang/String;Landroid/dirEncryption/IDirEncryptionManagerCallBack;II)I

    .line 3031
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 3032
    :cond_2
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "containerunmount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UNMOUNT_SECONDARY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "OR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3035
    :cond_3
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;

    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;

    const/4 v2, 0x1

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;IILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v9, v8, v0, p3, p1}, Landroid/dirEncryption/DirEncryptionManager;->unmountEcryptfsStorage(Ljava/lang/String;Landroid/dirEncryption/IDirEncryptionManagerCallBack;II)I

    .line 3038
    return-void
.end method

.method private updateContainerEmailId(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .param p1, "containerId"    # I
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "domain"    # Ljava/lang/String;
    .param p4, "action"    # I

    .prologue
    .line 3221
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateContainerEmailId() with action "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3222
    const/4 v1, 0x0

    .line 3223
    .local v1, "emailId":Ljava/lang/String;
    sget v4, Lcom/sec/knox/container/EnterpriseContainerService;->ADD_EMAILID:I

    if-ne p4, v4, :cond_0

    .line 3224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3228
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3229
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v4, "email"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3230
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6, v0, p1}, Lcom/sec/knox/container/manager/StateManager;->updateValuesForContainer(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3232
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sending email update intent for user-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", domain-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", container-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3234
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v4, p1, v1}, Lcom/sec/knox/container/manager/StateManager;->updateEmailId(ILjava/lang/String;)Z

    .line 3235
    const-string/jumbo v2, "sys.samsung.knox.email"

    .line 3236
    .local v2, "emailProp":Ljava/lang/String;
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3237
    new-instance v3, Landroid/content/Intent;

    sget v4, Lcom/sec/knox/container/EnterpriseContainerService;->ADD_EMAILID:I

    if-ne p4, v4, :cond_1

    const-string v4, "enterprise.container.email.added"

    :goto_1
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3239
    .local v3, "emailUpdated":Landroid/content/Intent;
    const-string v4, "containerid"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3240
    const-string/jumbo v4, "username"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3241
    const-string v4, "domain"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3242
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3243
    const/4 v4, 0x1

    .line 3245
    .end local v2    # "emailProp":Ljava/lang/String;
    .end local v3    # "emailUpdated":Landroid/content/Intent;
    :goto_2
    return v4

    .line 3226
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 3237
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    .restart local v2    # "emailProp":Ljava/lang/String;
    :cond_1
    const-string v4, "enterprise.container.email.removed"

    goto :goto_1

    .line 3245
    .end local v2    # "emailProp":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private validatePasswordInternal(ILjava/lang/String;Ljava/lang/String;)I
    .locals 24
    .param p1, "containerId"    # I
    .param p2, "oldPassword"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 3274
    const-string v21, "EnterpriseContainerService"

    const-string/jumbo v22, "validatePasswordInternal()"

    invoke-static/range {v21 .. v22}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3275
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 3276
    :cond_0
    const/16 v21, 0x33

    .line 3452
    :goto_0
    return v21

    .line 3279
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMaximumLength(II)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_2

    .line 3283
    const/16 v21, 0x45

    goto :goto_0

    .line 3285
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->isPasswordContainsValidChars(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 3286
    const/16 v21, 0x46

    goto :goto_0

    .line 3288
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->verifyPassword(ILjava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 3289
    const/16 v21, 0x44

    goto :goto_0

    .line 3291
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->checkOldPasswordHistory(ILjava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_5

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 3296
    :cond_5
    const/16 v21, 0x41

    goto :goto_0

    .line 3298
    :cond_6
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerService;->getSimplePasswordEnabled(ILandroid/content/ComponentName;)Z

    move-result v21

    if-nez v21, :cond_8

    .line 3300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->checkSequentialChars(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 3301
    const/16 v21, 0x42

    goto/16 :goto_0

    .line 3303
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 3304
    const/16 v21, 0x43

    goto/16 :goto_0

    .line 3307
    :cond_8
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->isPasswordForbiddenInternal(ILjava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 3309
    const/16 v21, 0x3c

    goto/16 :goto_0

    .line 3312
    :cond_9
    const/4 v7, 0x0

    .line 3313
    .local v7, "letters":I
    const/16 v20, 0x0

    .line 3314
    .local v20, "uppercase":I
    const/4 v8, 0x0

    .line 3315
    .local v8, "lowercase":I
    const/16 v16, 0x0

    .line 3316
    .local v16, "numbers":I
    const/16 v19, 0x0

    .line 3317
    .local v19, "symbols":I
    const/4 v15, 0x0

    .line 3318
    .local v15, "nonletter":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v5, v0, :cond_d

    .line 3319
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 3320
    .local v4, "c":C
    const/16 v21, 0x41

    move/from16 v0, v21

    if-lt v4, v0, :cond_a

    const/16 v21, 0x5a

    move/from16 v0, v21

    if-gt v4, v0, :cond_a

    .line 3321
    add-int/lit8 v7, v7, 0x1

    .line 3322
    add-int/lit8 v20, v20, 0x1

    .line 3318
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3323
    :cond_a
    const/16 v21, 0x61

    move/from16 v0, v21

    if-lt v4, v0, :cond_b

    const/16 v21, 0x7a

    move/from16 v0, v21

    if-gt v4, v0, :cond_b

    .line 3324
    add-int/lit8 v7, v7, 0x1

    .line 3325
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 3326
    :cond_b
    const/16 v21, 0x30

    move/from16 v0, v21

    if-lt v4, v0, :cond_c

    const/16 v21, 0x39

    move/from16 v0, v21

    if-gt v4, v0, :cond_c

    .line 3327
    add-int/lit8 v16, v16, 0x1

    .line 3328
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 3330
    :cond_c
    add-int/lit8 v19, v19, 0x1

    .line 3331
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 3335
    .end local v4    # "c":C
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordQuality(ILandroid/content/ComponentName;)I

    move-result v17

    .line 3336
    .local v17, "quality":I
    if-eqz v17, :cond_11

    .line 3337
    invoke-static/range {p3 .. p3}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v18

    .line 3338
    .local v18, "realQuality":I
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_10

    const/high16 v21, 0x60000

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_10

    .line 3343
    const/high16 v21, 0x50000

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 3344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumLetters(ILandroid/content/ComponentName;)I

    move-result v9

    .line 3346
    .local v9, "neededLetters":I
    if-ge v7, v9, :cond_e

    .line 3351
    const/16 v21, 0x35

    goto/16 :goto_0

    .line 3353
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I

    move-result v12

    .line 3355
    .local v12, "neededNumbers":I
    move/from16 v0, v16

    if-ge v0, v12, :cond_f

    .line 3362
    const/16 v21, 0x36

    goto/16 :goto_0

    .line 3365
    .end local v9    # "neededLetters":I
    .end local v12    # "neededNumbers":I
    :cond_f
    const/16 v21, 0x33

    goto/16 :goto_0

    .line 3367
    :cond_10
    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 3370
    .end local v18    # "realQuality":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumLength(ILandroid/content/ComponentName;)I

    move-result v6

    .line 3371
    .local v6, "length":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v0, v6, :cond_12

    .line 3375
    const/16 v21, 0x34

    goto/16 :goto_0

    .line 3378
    :cond_12
    const/high16 v21, 0x60000

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_18

    .line 3379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumLetters(ILandroid/content/ComponentName;)I

    move-result v9

    .line 3380
    .restart local v9    # "neededLetters":I
    if-ge v7, v9, :cond_13

    .line 3385
    const/16 v21, 0x35

    goto/16 :goto_0

    .line 3387
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I

    move-result v12

    .line 3388
    .restart local v12    # "neededNumbers":I
    move/from16 v0, v16

    if-ge v0, v12, :cond_14

    .line 3393
    const/16 v21, 0x36

    goto/16 :goto_0

    .line 3395
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumLowerCase(ILandroid/content/ComponentName;)I

    move-result v10

    .line 3396
    .local v10, "neededLowerCase":I
    if-ge v8, v10, :cond_15

    .line 3401
    const/16 v21, 0x37

    goto/16 :goto_0

    .line 3403
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumUpperCase(ILandroid/content/ComponentName;)I

    move-result v14

    .line 3404
    .local v14, "neededUpperCase":I
    move/from16 v0, v20

    if-ge v0, v14, :cond_16

    .line 3409
    const/16 v21, 0x38

    goto/16 :goto_0

    .line 3411
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I

    move-result v11

    .line 3412
    .local v11, "neededNonLetter":I
    if-ge v15, v11, :cond_17

    .line 3418
    const/16 v21, 0x3a

    goto/16 :goto_0

    .line 3420
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I

    move-result v13

    .line 3421
    .local v13, "neededSymbols":I
    move/from16 v0, v19

    if-ge v0, v13, :cond_18

    .line 3426
    const/16 v21, 0x39

    goto/16 :goto_0

    .line 3430
    .end local v9    # "neededLetters":I
    .end local v10    # "neededLowerCase":I
    .end local v11    # "neededNonLetter":I
    .end local v12    # "neededNumbers":I
    .end local v13    # "neededSymbols":I
    .end local v14    # "neededUpperCase":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->checkMinimumCharacterChangeLength(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_19

    .line 3433
    const/16 v21, 0x3d

    goto/16 :goto_0

    .line 3436
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->checkMaximumCharacterOccurrences(ILjava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1a

    .line 3439
    const/16 v21, 0x3e

    goto/16 :goto_0

    .line 3441
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->checkMaximumCharacterSequenceLength(ILjava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1b

    .line 3444
    const/16 v21, 0x3f

    goto/16 :goto_0

    .line 3446
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->checkMaximumNumericSequenceLength(ILjava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1c

    .line 3449
    const/16 v21, 0x40

    goto/16 :goto_0

    .line 3452
    :cond_1c
    const/16 v21, 0x3b

    goto/16 :goto_0
.end method

.method private verifyPasswordInternal(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;Z)V
    .locals 10
    .param p1, "containerId"    # I
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "statusCallback"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .param p4, "isAutoMount"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4792
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "verifyPassword() isAutoMount "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4794
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 4795
    .local v4, "data":Landroid/os/Bundle;
    const-string v0, "containerid"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4796
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRIdGenerator:Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    invoke-virtual {v0}, Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;->getNextContainerRequestId()I

    move-result v2

    .line 4798
    .local v2, "requestId":I
    :try_start_0
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mChangeContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    invoke-virtual {v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    invoke-virtual {v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 4800
    :cond_0
    const-string v0, "EnterpriseContainerService"

    const-string v1, "A Request for Verify Password / Change Password is already in progress"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4802
    const/16 v0, 0x3f7

    invoke-interface {p3, v0, v4}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V

    .line 4872
    :goto_0
    return-void

    .line 4806
    :cond_1
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->add(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    .line 4807
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->verifyPassword(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4808
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v7

    .line 4809
    .local v7, "containerStatus":I
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Container Status :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4810
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v0

    if-eq v7, v0, :cond_2

    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v0

    if-eq v7, v0, :cond_2

    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATED_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v0

    if-eq v7, v0, :cond_2

    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_UPGRADE:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v0

    if-eq v7, v0, :cond_2

    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_UPGRADE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v0

    if-eq v7, v0, :cond_2

    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_ADMIN_PWD_RESET:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v0

    if-ne v7, v0, :cond_7

    .line 4817
    :cond_2
    if-nez p4, :cond_3

    .line 4818
    const-string v0, "EnterpriseContainerService"

    const-string v1, "############### reportSuccessfulPasswordAttempt #################"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4819
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->reportSuccessfulPasswordAttempt(I)V

    .line 4821
    :cond_3
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Starting container remounting"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4823
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerParamFromDB(Landroid/content/Context;I)Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    move-result-object v6

    .line 4825
    .local v6, "container":Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    if-eqz v6, :cond_4

    .line 4826
    invoke-virtual {v6, p2}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->setPassword(Ljava/lang/String;)V

    .line 4831
    :goto_1
    if-eqz v6, :cond_5

    .line 4832
    const/4 v0, 0x2

    invoke-direct {p0, v6, p1, v0, v2}, Lcom/sec/knox/container/EnterpriseContainerService;->mount(Lcom/sec/knox/container/EnterpriseContainerObjectParam;III)I

    move-result v8

    .line 4836
    .local v8, "errorCode":I
    :goto_2
    const/4 v0, 0x1

    if-eq v8, v0, :cond_6

    .line 4837
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Mount not success"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4838
    invoke-direct {p0, p1, v2, v8}, Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerRemountFailureMessage(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4867
    .end local v6    # "container":Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    .end local v7    # "containerStatus":I
    .end local v8    # "errorCode":I
    :catch_0
    move-exception v9

    .line 4868
    .local v9, "ex":Ljava/lang/Exception;
    const/4 v1, 0x4

    const/16 v3, 0x3f7

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 4870
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Verify Password Failure happend "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4828
    .end local v9    # "ex":Ljava/lang/Exception;
    .restart local v6    # "container":Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    .restart local v7    # "containerStatus":I
    :cond_4
    :try_start_1
    const-string v0, "EnterpriseContainerService"

    const-string v1, "container is null"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4834
    :cond_5
    const/4 v8, 0x0

    .restart local v8    # "errorCode":I
    goto :goto_2

    .line 4840
    :cond_6
    const-string v0, "EnterpriseContainerService"

    const-string v1, " Remount Async process started. State will be changed in the callback...."

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4845
    .end local v6    # "container":Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    .end local v8    # "errorCode":I
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->activatePasswordAndContainer(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4846
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->reportSuccessfulPasswordAttempt(I)V

    .line 4847
    const/4 v1, 0x4

    const/16 v3, 0x3f6

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    goto/16 :goto_0

    .line 4851
    :cond_8
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->actOnWrongPasswordAttempt(I)V

    .line 4852
    const/4 v1, 0x4

    const/16 v3, 0x3f7

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    goto/16 :goto_0

    .line 4859
    .end local v7    # "containerStatus":I
    :cond_9
    if-nez p4, :cond_a

    .line 4860
    const-string v0, "EnterpriseContainerService"

    const-string v1, "############### CALLING ACT ON WRONG PWD#################"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4861
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->actOnWrongPasswordAttempt(I)V

    .line 4863
    :cond_a
    const/4 v1, 0x4

    const/16 v3, 0x3f7

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public WriteContainerHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "containerNote"    # Ljava/lang/String;
    .param p2, "contioanerType"    # Ljava/lang/String;

    .prologue
    .line 6725
    new-instance v4, Ljava/io/File;

    const-string v10, "/data/log/"

    const-string v11, "ContainerHistory.txt"

    invoke-direct {v4, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6727
    .local v4, "fileMoveHistory":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/32 v12, 0x200000

    cmp-long v10, v10, v12

    if-lez v10, :cond_0

    .line 6728
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 6729
    new-instance v4, Ljava/io/File;

    .end local v4    # "fileMoveHistory":Ljava/io/File;
    const-string v10, "/data/log/"

    const-string v11, "ContainerHistory.txt"

    invoke-direct {v4, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6732
    .restart local v4    # "fileMoveHistory":Ljava/io/File;
    :cond_0
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v10, "yyyy.MM.dd HH:mm:ss"

    sget-object v11, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v7, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 6733
    .local v7, "mSimpleDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 6734
    .local v2, "currentTime":Ljava/util/Date;
    invoke-virtual {v7, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 6735
    .local v8, "mTime":Ljava/lang/String;
    const/4 v5, 0x0

    .line 6737
    .local v5, "fw":Ljava/io/FileWriter;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 6738
    .local v1, "callerUid":I
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 6739
    .local v9, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v9, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 6742
    .local v0, "CallerName":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/FileWriter;

    const/4 v10, 0x1

    invoke-direct {v6, v4, v10}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6743
    .end local v5    # "fw":Ljava/io/FileWriter;
    .local v6, "fw":Ljava/io/FileWriter;
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\n\ntime :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 6744
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\nNote :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 6745
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\nType :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 6746
    invoke-virtual {v6}, Ljava/io/FileWriter;->flush()V

    .line 6747
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6752
    if-eqz v6, :cond_1

    .line 6754
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_0
    move-object v5, v6

    .line 6761
    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    :cond_2
    :goto_1
    return-void

    .line 6748
    :catch_0
    move-exception v3

    .line 6750
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6752
    if-eqz v5, :cond_2

    .line 6754
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 6755
    :catch_1
    move-exception v3

    .line 6757
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 6752
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_3
    if-eqz v5, :cond_3

    .line 6754
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 6752
    :cond_3
    :goto_4
    throw v10

    .line 6755
    :catch_2
    move-exception v3

    .line 6757
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 6755
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_3
    move-exception v3

    .line 6757
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 6752
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_3

    .line 6748
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_4
    move-exception v3

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_2
.end method

.method public activateContainer(I)Z
    .locals 4
    .param p1, "containerId"    # I

    .prologue
    .line 4474
    const-string v1, "EnterpriseContainerService"

    const-string v2, "activate Container is called"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4475
    const/16 v1, 0x18

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4477
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v2

    sget-object v3, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_ACTIVATE_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    .line 4479
    .local v0, "transitState":Lcom/sec/knox/container/constants/CSState;
    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v1

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 4480
    const-string v1, "EnterpriseContainerService"

    const-string v2, "activateContainer container state changed to active"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4481
    const/4 v1, 0x1

    .line 4485
    :goto_0
    return v1

    .line 4483
    :cond_0
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activateContainer container state cannot change :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4485
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public adminPasswordReset(I)Z
    .locals 4
    .param p1, "containerId"    # I

    .prologue
    .line 6437
    const/16 v1, 0x8

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 6438
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v2

    sget-object v3, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_ADMIN_RESET_PASSWORD:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    .line 6440
    .local v0, "temp":Lcom/sec/knox/container/constants/CSState;
    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v1

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 6441
    const-string v1, "EnterpriseContainerService"

    const-string v2, "setPasswordVerifyMode SUCCESS "

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6442
    const/4 v1, 0x1

    .line 6445
    :goto_0
    return v1

    .line 6444
    :cond_0
    const-string v1, "EnterpriseContainerService"

    const-string v2, "setPasswordVerifyMode FAIL "

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6445
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cancelCreateContainer(I)Z
    .locals 7
    .param p1, "containerReqId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 4595
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelCreateContainer() Req ID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4596
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerIdForRequestId(I)I

    move-result v2

    .line 4597
    .local v2, "containerId":I
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelCreateContainer() Container ID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4598
    const/16 v0, 0xa

    invoke-direct {p0, v0, v2}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4600
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v0

    sget-object v1, Lcom/sec/knox/container/constants/CSState;->CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 4602
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Cancel Container before createContainerInternal"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4603
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 4604
    .local v4, "data":Landroid/os/Bundle;
    const-string v0, "containerid"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4605
    const-string v0, "requestid"

    iget v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerRequestId:I

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4606
    const/4 v1, 0x5

    const/16 v3, 0x3f8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 4609
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerRequestId:I

    .line 4611
    new-instance v6, Landroid/content/Intent;

    const-string v0, "enterprise.container.cancelled"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4612
    .local v6, "containerRemoved":Landroid/content/Intent;
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Container Cancelled intent Container id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4613
    const-string v0, "containerid"

    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4614
    const-string v0, "requestid"

    invoke-virtual {v6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4615
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4616
    invoke-direct {p0, v2}, Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V

    .line 4624
    .end local v4    # "data":Landroid/os/Bundle;
    .end local v6    # "containerRemoved":Landroid/content/Intent;
    :goto_0
    return v5

    .line 4618
    :cond_0
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v0

    sget-object v1, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATION_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 4620
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Cancel Container during container creation"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4621
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/manager/StateManager;->containerCanceled(I)Z

    move-result v5

    goto :goto_0

    .line 4623
    :cond_1
    const-string v0, "EnterpriseContainerService"

    const-string v1, "cancelCreateContainer() API has failed due to Id mismatch"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4624
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public changeActiveContainerPasswordStatus(I)V
    .locals 4
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 6070
    const-string v1, "EnterpriseContainerService"

    const-string v2, "changeActiveContainerPasswordStatus "

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6071
    const/4 v1, 0x2

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 6073
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v2

    sget-object v3, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_VERIFY_PWD_TIMEOUT:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    .line 6075
    .local v0, "temp":Lcom/sec/knox/container/constants/CSState;
    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v1

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_VERIFY_PWD:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 6076
    const-string v1, "EnterpriseContainerService"

    const-string v2, "changeActiveContainerPasswordStatus container moved to verify password killing timer "

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6078
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->killTimer(I)V

    .line 6081
    :cond_0
    return-void
.end method

.method public changePassword(ILjava/lang/String;Ljava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "oldPassword"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5873
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5875
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/knox/container/EnterpriseContainerService;->changeContainerPassword(ILjava/lang/String;Ljava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    .line 5876
    return-void
.end method

.method public checkPassword(ILjava/lang/String;)I
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 4729
    const/4 v1, 0x3

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4732
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->verifyPassword(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4733
    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->activatePasswordAndContainer(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4734
    const-string v0, "EnterpriseContainerService"

    const-string v1, "check password activating"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4735
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->reportSuccessfulPasswordAttempt(I)V

    .line 4736
    const/4 v0, 0x1

    .line 4746
    :goto_0
    return v0

    .line 4738
    :cond_0
    const-string v1, "EnterpriseContainerService"

    const-string v2, "checkPassword could not activate"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4739
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->actOnWrongPasswordAttempt(I)V

    goto :goto_0

    .line 4744
    :cond_1
    const-string v1, "EnterpriseContainerService"

    const-string v2, "check Password failed"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4745
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->actOnWrongPasswordAttempt(I)V

    goto :goto_0
.end method

.method public containerizedAppStarting(I)V
    .locals 7
    .param p1, "containerId"    # I

    .prologue
    .line 5132
    const/4 v4, 0x1

    invoke-direct {p0, v4, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5134
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 5135
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5137
    .local v1, "token":J
    :try_start_0
    const-string v4, "EnterpriseContainerService"

    const-string v5, "containerizedAppStarting executing from proxies"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5138
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getVpnService()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 5139
    const-string v4, "EnterpriseContainerService"

    const-string v5, "containerizedAppStarting - Notify EnterpriseVpnPolicy"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5140
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getVpnService()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;->notifyContainerAppLaunch(I)V

    .line 5142
    :cond_0
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getGenericVpnService()Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 5143
    const-string v4, "EnterpriseContainerService"

    const-string v5, "containerizedAppStarting - Notify GenericVpnPolicy"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5144
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getGenericVpnService()Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;->notifyContainerAppLaunch(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5151
    :cond_1
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5153
    return-void

    .line 5146
    :catch_0
    move-exception v0

    .line 5147
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "containerizedAppStarting crashed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5151
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 5148
    :catch_1
    move-exception v0

    .line 5149
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "containerizedAppStarting crashed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public createContainer(Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;I)Z
    .locals 10
    .param p1, "callback"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 4386
    const-string v7, "EnterpriseContainerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-------------------------------->createContainer() FLAG: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "<--------------------------------"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4388
    const/16 v7, 0x8

    invoke-direct {p0, v7}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(I)I

    move-result v0

    .line 4389
    .local v0, "adminId":I
    const/4 v1, -0x1

    .line 4390
    .local v1, "containerId":I
    iget v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    if-nez v7, :cond_0

    .line 4391
    const-string v7, "EnterpriseContainerService"

    const-string v8, "container id : 1 creation in progress"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4392
    iput v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    .line 4394
    :cond_0
    iget v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    .line 4395
    invoke-direct {p0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->checkExistence(I)Z

    move-result v7

    if-ne v7, v5, :cond_2

    .line 4396
    invoke-direct {p0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerTypeInternal(I)I

    move-result v7

    if-nez v7, :cond_1

    .line 4397
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Personal Container "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "is already present either in active or inactive, at first removing or canceling"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4399
    sput-object p1, Lcom/sec/knox/container/EnterpriseContainerService;->mB2BCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .line 4400
    iget v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerRequestId:I

    invoke-direct {p0, v1, v0, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->sendRemovePersonalContainerRequest(III)V

    .line 4431
    :goto_0
    return v5

    .line 4403
    :cond_1
    const-string v5, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Container "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "is already present either in active or inactive so returning"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 4405
    goto :goto_0

    .line 4407
    :cond_2
    const/4 v7, 0x2

    if-ge v1, v7, :cond_5

    .line 4408
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v7, v1}, Lcom/sec/knox/container/manager/StateManager;->getRequestIdForContainer(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 4409
    const-string v5, "EnterpriseContainerService"

    const-string v7, "Request Id already present, returning "

    invoke-static {v5, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 4410
    goto :goto_0

    .line 4413
    :cond_3
    const/4 v7, 0x0

    invoke-direct {p0, v7, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->addOrUpdateContainerToDB(Lcom/sec/knox/container/EnterpriseContainerObjectParam;I)Z

    move-result v4

    .line 4414
    .local v4, "result":Z
    if-nez v4, :cond_4

    .line 4415
    const-string v5, "EnterpriseContainerService"

    const-string v7, "Could not add to DB, returning "

    invoke-static {v5, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 4416
    goto :goto_0

    .line 4418
    :cond_4
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRIdGenerator:Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    invoke-virtual {v6}, Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;->getNextContainerRequestId()I

    move-result v6

    iput v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerRequestId:I

    .line 4419
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7, p1}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->add(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    .line 4420
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4421
    .local v2, "owner":J
    const-string v6, "EnterpriseContainerService"

    const-string v7, "checkIfWhitelistedApp called"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4423
    iget v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerRequestId:I

    invoke-direct {p0, v1, v0, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->sendNewContainerNotificationRequest(III)V

    .line 4424
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerRequestId:I

    invoke-virtual {v6, v1, v7}, Lcom/sec/knox/container/manager/StateManager;->setRequestIdForContainer(II)V

    .line 4425
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v6, v1, p2}, Lcom/sec/knox/container/manager/StateManager;->setFeatureFlagForContainer(II)V

    .line 4426
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4427
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New Container Req ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerRequestId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4430
    .end local v2    # "owner":J
    .end local v4    # "result":Z
    :cond_5
    const-string v5, "EnterpriseContainerService"

    const-string v7, "Reached Max number of Containers, returning "

    invoke-static {v5, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 4431
    goto/16 :goto_0
.end method

.method public createContainerFromB2CtoB2B(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;I)Z
    .locals 8
    .param p1, "containerRequestId"    # I
    .param p2, "callback"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .param p3, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4438
    iget v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    if-nez v6, :cond_0

    .line 4439
    const-string v6, "EnterpriseContainerService"

    const-string v7, "container id : 1 creation in progress"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4440
    iput v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    .line 4442
    :cond_0
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    .line 4444
    .local v0, "containerId":I
    const/4 v6, 0x2

    if-ge v0, v6, :cond_3

    .line 4445
    const-string v6, "EnterpriseContainerService"

    const-string v7, "createContainer from B2C to B2B"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4446
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v6, v0}, Lcom/sec/knox/container/manager/StateManager;->getRequestIdForContainer(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 4447
    const-string v5, "EnterpriseContainerService"

    const-string v6, "Request Id already present, returning "

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4468
    :goto_0
    return v4

    .line 4451
    :cond_1
    const/4 v6, 0x0

    invoke-direct {p0, v6, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->addOrUpdateContainerToDB(Lcom/sec/knox/container/EnterpriseContainerObjectParam;I)Z

    move-result v3

    .line 4452
    .local v3, "result":Z
    if-nez v3, :cond_2

    .line 4453
    const-string v5, "EnterpriseContainerService"

    const-string v6, "Could not add to DB, returning "

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4456
    :cond_2
    iput p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerRequestId:I

    .line 4457
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerService;->mB2BCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    invoke-virtual {v4, v6, v7}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->add(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    .line 4458
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4459
    .local v1, "owner":J
    const-string v4, "EnterpriseContainerService"

    const-string v6, "checkIfWhitelistedApp called"

    invoke-static {v4, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4461
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerRequestId:I

    invoke-virtual {v4, v0, v6}, Lcom/sec/knox/container/manager/StateManager;->setRequestIdForContainer(II)V

    .line 4462
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v4, v0, p3}, Lcom/sec/knox/container/manager/StateManager;->setFeatureFlagForContainer(II)V

    .line 4463
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4464
    const-string v4, "EnterpriseContainerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New Container Req ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerRequestId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 4465
    goto :goto_0

    .line 4467
    .end local v1    # "owner":J
    .end local v3    # "result":Z
    :cond_3
    const-string v5, "EnterpriseContainerService"

    const-string v6, "Reached Max number of Containers, returning "

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createContainerInternal(Lcom/sec/knox/container/EnterpriseContainerObjectParam;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    .locals 10
    .param p1, "container"    # Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    .param p2, "callback"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4319
    if-eqz p1, :cond_0

    .line 4320
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createContainerInternal() ReqId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getRequestId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4322
    :cond_0
    invoke-direct {p0, v9}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(I)I

    .line 4324
    :try_start_0
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->acquireLock()V

    .line 4325
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    new-instance v7, Ljava/lang/Integer;

    iget v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7, p2}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->add(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    .line 4326
    if-nez p1, :cond_1

    .line 4327
    const-string v5, "EnterpriseContainerService"

    const-string v6, "Error create container: Container object is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4328
    iget v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(II)V

    .line 4329
    iget v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {p0, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4379
    :goto_0
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->releaseLock()V

    .line 4376
    :goto_1
    return v4

    .line 4332
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getRequestId()I

    move-result v6

    iget v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerRequestId:I

    if-eq v6, v7, :cond_2

    .line 4333
    iget v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(II)V

    .line 4334
    iget v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {p0, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4379
    :catchall_0
    move-exception v4

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->releaseLock()V

    throw v4

    .line 4338
    :cond_2
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4339
    .local v1, "oldId":J
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4341
    iget v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {p0, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->checkExistence(I)Z

    move-result v6

    if-ne v6, v5, :cond_4

    .line 4342
    :cond_3
    const-string v5, "EnterpriseContainerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Container "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is already present either in active or inactive so returning"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4344
    iget v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(II)V

    .line 4345
    iget v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {p0, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V

    goto :goto_0

    .line 4348
    :cond_4
    iget v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    if-ge v6, v9, :cond_9

    .line 4349
    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getPassword()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8

    .line 4350
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget v9, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-virtual {v8, v9}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v8

    sget-object v9, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_CREATE_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    .line 4353
    .local v3, "tempState":Lcom/sec/knox/container/constants/CSState;
    iget v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {p0, p1, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->setupContainer(Lcom/sec/knox/container/EnterpriseContainerObjectParam;I)I

    move-result v0

    .line 4354
    .local v0, "errorCode":I
    sget-object v6, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    if-eq v3, v6, :cond_5

    if-eq v0, v5, :cond_7

    .line 4356
    :cond_5
    const-string v6, "EnterpriseContainerService"

    const-string v7, "Container primary mount failed"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4357
    if-ne v0, v5, :cond_6

    .line 4358
    const/4 v0, 0x0

    .line 4360
    :cond_6
    iget v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {p0, v5, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(II)V

    .line 4361
    iget v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {p0, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 4379
    :cond_7
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->releaseLock()V

    move v4, v5

    .line 4364
    goto/16 :goto_1

    .line 4367
    .end local v0    # "errorCode":I
    .end local v3    # "tempState":Lcom/sec/knox/container/constants/CSState;
    :cond_8
    :try_start_3
    const-string v5, "EnterpriseContainerService"

    const-string v6, "Container password: is either null or empty"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4368
    iget v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(II)V

    .line 4369
    iget v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {p0, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V

    goto/16 :goto_0

    .line 4373
    :cond_9
    const-string v5, "EnterpriseContainerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Container: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Max number of container reached."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4374
    iget v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(II)V

    .line 4375
    iget v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {p0, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public enforcePasswordChange(I)Z
    .locals 4
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 4751
    const/16 v2, 0x8

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4752
    invoke-direct {p0, p1, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->changePasswordIfPasswordHasExpired(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4753
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.redex.proxy.activity.show_dialog"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4754
    .local v0, "passwordExpired":Landroid/content/Intent;
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Password is expired. Fire a change password intent"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4755
    const-string v2, "containerid"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4756
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4759
    .end local v0    # "passwordExpired":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllowBluetoothMode(ILandroid/content/ComponentName;)I
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5658
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5662
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getAllowBluetoothMode(ILandroid/content/ComponentName;)I

    move-result v0

    .line 5663
    .local v0, "allowBluetoothMode":I
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowBluetoothMode containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5665
    return v0
.end method

.method public getAllowBrowser(ILandroid/content/ComponentName;)Z
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5805
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5809
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getAllowBrowser(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 5810
    .local v0, "allowBrowser":Z
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowBrowser containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5812
    return v0
.end method

.method public getAllowCamera(ILandroid/content/ComponentName;)Z
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5781
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5785
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getAllowCamera(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 5786
    .local v0, "allowCamera":Z
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowCamera containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5788
    return v0
.end method

.method public getAllowDesktopSync(ILandroid/content/ComponentName;)Z
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5683
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5687
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getAllowDesktopSync(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 5688
    .local v0, "allowDesktopSync":Z
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowDesktopSync containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5690
    return v0
.end method

.method public getAllowInternetSharing(ILandroid/content/ComponentName;)Z
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5634
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5638
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getAllowInternetSharing(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 5639
    .local v0, "allowInternetSharing":Z
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowInternetSharing containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5641
    return v0
.end method

.method public getAllowIrDA(ILandroid/content/ComponentName;)Z
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5707
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5711
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getAllowIrDA(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 5712
    .local v0, "allowIrDA":Z
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowIrDA containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5714
    return v0
.end method

.method public getAllowPOPIMAPEmail(ILandroid/content/ComponentName;)Z
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5757
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5761
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getAllowPOPIMAPEmail(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 5762
    .local v0, "allowPOPIMAPEmail":Z
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowPOPIMAPEmail containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5764
    return v0
.end method

.method public getAllowStorageCard(ILandroid/content/ComponentName;)Z
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5732
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5736
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getAllowStorageCard(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 5737
    .local v0, "allowStorageCard":Z
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowStorageCard containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5739
    return v0
.end method

.method public getAllowTextMessaging(ILandroid/content/ComponentName;)Z
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5609
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5613
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getAllowTextMessaging(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 5614
    .local v0, "allowTextMessaging":Z
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowTextMessaging containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5616
    return v0
.end method

.method public getAllowWifi(ILandroid/content/ComponentName;)Z
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5584
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5588
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getAllowWifi(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 5589
    .local v0, "allowWifi":Z
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowWifi containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5591
    return v0
.end method

.method public getAndroidId(I)Ljava/lang/String;
    .locals 2
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 6020
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 6022
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/sec/knox/container/manager/StateManager;->getAndroidId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getApksFromFolder(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "folder"    # Ljava/io/File;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3041
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 3042
    .local v5, "str":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3043
    .local v4, "mlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 3044
    .local v1, "fileEntry":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 3045
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3046
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Apk From Folder: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3047
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3048
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 3043
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3051
    .end local v1    # "fileEntry":Ljava/io/File;
    :cond_1
    return-object v4
.end method

.method public getAppInstallationSource(ILjava/lang/String;)I
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5892
    const/4 v2, 0x2

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5894
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackagesInfoFromCache(I)Ljava/util/HashMap;

    move-result-object v1

    .line 5897
    .local v1, "pkgsInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 5898
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;

    .line 5899
    .local v0, "info":Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;
    if-eqz v0, :cond_0

    .line 5900
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->getInstallationSource()I

    move-result v2

    .line 5904
    .end local v0    # "info":Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x4

    goto :goto_0
.end method

.method public getAppUninstallAllowed(ILjava/lang/String;)Z
    .locals 5
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5909
    const-string v2, "EnterpriseContainerService"

    const-string v3, "getAppUninstallAllowed()"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5910
    const/16 v2, 0x10

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5911
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackagesInfoFromCache(I)Ljava/util/HashMap;

    move-result-object v1

    .line 5914
    .local v1, "pkgsInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContainerTypeInternal(containerId) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerTypeInternal(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5915
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 5916
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;

    .line 5917
    .local v0, "info":Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;
    if-eqz v0, :cond_0

    .line 5918
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "info.getInstallationSource() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->getInstallationSource()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5919
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->getInstallationSource()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 5920
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerTypeInternal(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 5921
    const/4 v2, 0x1

    .line 5926
    .end local v0    # "info":Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getContainerEmailId(I)Ljava/lang/String;
    .locals 3
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4712
    const/16 v1, 0xf

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4716
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerParamFromDB(Landroid/content/Context;I)Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    move-result-object v0

    .line 4718
    .local v0, "container":Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    invoke-virtual {v0}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getEmail()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4719
    const-string v1, "EnterpriseContainerService"

    const-string v2, "getContainerEmailId: Email is null. Container is not yet created."

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4720
    const/4 v1, 0x0

    .line 4722
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getEmail()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getContainerFirmwareVersion(I)Ljava/lang/String;
    .locals 1
    .param p1, "containerId"    # I

    .prologue
    .line 6324
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(I)I

    .line 6325
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerFirmwareVersion(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContainerForPackage(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 6063
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContainerForPackage() Package Name= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6064
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(I)I

    .line 6065
    const/4 v0, -0x1

    return v0
.end method

.method public getContainerId(I)I
    .locals 1
    .param p1, "appUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4656
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(I)I

    .line 4657
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->gLastReqUid:I

    if-ne v0, p1, :cond_0

    .line 4659
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->gLastReqContainerId:I

    .line 4663
    :goto_0
    return v0

    .line 4661
    :cond_0
    iput p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->gLastReqUid:I

    .line 4662
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerIdFromAppId(I)I

    move-result v0

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->gLastReqContainerId:I

    .line 4663
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->gLastReqContainerId:I

    goto :goto_0
.end method

.method public getContainerLockOnScreenLock(I)Z
    .locals 3
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 6205
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContainerLockOnScreenLock called with containerid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6206
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 6208
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerLockOnScreenLock(I)Z

    move-result v0

    return v0
.end method

.method public getContainerPackages(I)Ljava/util/List;
    .locals 3
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4631
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4636
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getPackageNames(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 4637
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v0
.end method

.method public getContainerSecurityInformation(I)Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    .locals 2
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5962
    const/16 v0, 0xf

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5966
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerParamFromDB(Landroid/content/Context;I)Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    move-result-object v0

    return-object v0
.end method

.method public getContainerType(I)I
    .locals 1
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5880
    const/16 v0, 0x2b

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5885
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerTypeInternal(I)I

    move-result v0

    return v0
.end method

.method public getContainerisedString(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 6100
    const-string v1, "EnterpriseContainerService"

    const-string v2, "getContainerized string"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6101
    const/16 v1, 0x20

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 6102
    const/4 v0, 0x0

    .line 6103
    .local v0, "res":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 6104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sec_container_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6105
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContainerisedString"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6109
    :goto_0
    return-object v0

    .line 6107
    :cond_0
    const-string v1, "EnterpriseContainerService"

    const-string v2, "getContainerized string is null"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "containerId"    # I
    .param p2, "packageNm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4671
    if-nez p2, :cond_0

    move-object v1, v4

    .line 4691
    :goto_0
    return-object v1

    .line 4675
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sec_container_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4676
    .local v2, "packageNm_temp":Ljava/lang/String;
    const/16 v5, 0x20

    invoke-direct {p0, v5, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4677
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v5, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackages(I)Ljava/util/List;

    move-result-object v3

    .line 4678
    .local v3, "stringNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_3

    .line 4679
    const-string v5, "EnterpriseContainerService"

    const-string v6, "getContainerizedPackageName start"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4680
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4681
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 4687
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_2
    const-string v5, "EnterpriseContainerService"

    const-string v6, "getContainerizedPackageName Nothing matched"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    move-object v1, v4

    .line 4691
    goto :goto_0

    .line 4689
    :cond_3
    const-string v5, "EnterpriseContainerService"

    const-string v6, "getContainerizedPackageName input is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getContainers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/EnterpriseContainerObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4644
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContainers   --  Called + uid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4647
    const/16 v0, 0x3a

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4650
    const-string v0, "EnterpriseContainerService"

    const-string v1, "getContainers   --  Called passing security"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4651
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0}, Lcom/sec/knox/container/manager/StateManager;->getContainers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFailedPasswordAttempts(I)I
    .locals 4
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5157
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5161
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    .line 5163
    .local v0, "currentFailedPasswordAttempts":I
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentFailedPasswordAttempts containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5165
    return v0
.end method

.method getFrameworkApks(Ljava/io/File;)Ljava/util/List;
    .locals 9
    .param p1, "folder"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3055
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 3056
    .local v5, "str":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3057
    .local v4, "mlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 3058
    .local v1, "fileEntry":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3059
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3060
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Framework Apk From Folder: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3061
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3062
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 3057
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3065
    .end local v1    # "fileEntry":Ljava/io/File;
    :cond_1
    return-object v4
.end method

.method public getInstalledApplications(II)Ljava/util/List;
    .locals 10
    .param p1, "containerId"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6394
    const-string v7, "EnterpriseContainerService"

    const-string v8, "getInstalledApplications()"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6395
    const/4 v7, 0x1

    invoke-direct {p0, v7, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 6397
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 6399
    .local v6, "returnList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :try_start_0
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 6400
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v5, p2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 6401
    .local v1, "applications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v7, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackages(I)Ljava/util/List;

    move-result-object v2

    .line 6402
    .local v2, "containerPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 6403
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 6404
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6407
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "applications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v2    # "containerPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 6408
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "EnterpriseContainerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in getInstalledApplications: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6410
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v6
.end method

.method public getInstalledPackages(II)Ljava/util/List;
    .locals 10
    .param p1, "containerId"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6415
    const-string v7, "EnterpriseContainerService"

    const-string/jumbo v8, "upgradeComplete()"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6416
    const/4 v7, 0x1

    invoke-direct {p0, v7, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 6418
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 6420
    .local v6, "returnList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :try_start_0
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 6421
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v5, p2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 6422
    .local v4, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v7, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackages(I)Ljava/util/List;

    move-result-object v0

    .line 6423
    .local v0, "containerPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 6424
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 6425
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6428
    .end local v0    # "containerPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 6429
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "EnterpriseContainerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in getInstalledPackages: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6431
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v6
.end method

.method public getLaunchIntentForContainerizedApp(ILjava/lang/String;)Landroid/content/Intent;
    .locals 8
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 6213
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLaunchIntentForContainerizedApp - containerId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pakcage name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sec_container_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6217
    .local v3, "strPrefix":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6218
    .local v1, "intentToResolve":Landroid/content/Intent;
    const-string v4, "android.intent.category.INFO"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6219
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6223
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 6226
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query Result #1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", intentToResolve: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6228
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 6230
    :cond_0
    const-string v4, "android.intent.category.INFO"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 6233
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6234
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6235
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 6237
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query Result #2 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", intentToResolve: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6240
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_3

    .line 6241
    :cond_2
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ris is null! - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6242
    const/4 v0, 0x0

    .line 6247
    :goto_0
    return-object v0

    .line 6244
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 6245
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6246
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getLockType(I)I
    .locals 2
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5931
    const/16 v1, 0xa

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5934
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v1, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerObjectFromCache(I)Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    move-result-object v0

    .line 5935
    .local v0, "data":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    if-eqz v0, :cond_0

    .line 5936
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerLockType()I

    move-result v1

    .line 5938
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;)I
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5197
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5201
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;)I

    move-result v0

    .line 5203
    .local v0, "maximumFailedPasswordsForDisable":I
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaximumFailedPasswordsForDisable containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5205
    return v0
.end method

.method public getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5171
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5175
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I

    move-result v0

    .line 5177
    .local v0, "maximumFailedPasswordsForWipe":I
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaximumFailedPasswordsForWipe containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5179
    return v0
.end method

.method public getMaximumTimeToLock(ILandroid/content/ComponentName;)J
    .locals 5
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5237
    const/16 v2, 0x1f

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5241
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v2, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getMaximumTimeToLock(ILandroid/content/ComponentName;)J

    move-result-wide v0

    .line 5242
    .local v0, "maximumTimeToLock":J
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMaximumTimeToLock containerId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", admin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", returning = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5244
    return-wide v0
.end method

.method public getMinPasswordComplexChars(ILandroid/content/ComponentName;)I
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5005
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5009
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I

    move-result v0

    .line 5011
    .local v0, "minPasswordComplexChars":I
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordMinimumNonLetter containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5013
    return v0
.end method

.method public getMountStatus(I)Z
    .locals 5
    .param p1, "containerId"    # I

    .prologue
    const/4 v1, 0x0

    .line 5827
    const/16 v2, 0x20

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5828
    const-string v2, "EnterpriseContainerService"

    const-string v3, "getMountStatus() permission get it"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5829
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    .line 5830
    .local v0, "currentState":Lcom/sec/knox/container/constants/CSState;
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentStateId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5831
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerService$3;->$SwitchMap$com$sec$knox$container$constants$CSState:[I

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 5852
    :goto_0
    :pswitch_0
    return v1

    .line 5836
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 5831
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getOriginalPackageName(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4697
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4698
    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->getOriginalPackageNameInternal(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalPackageNames(I)Ljava/util/List;
    .locals 1
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4703
    const/16 v0, 0x1f

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4707
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getOriginalPackageNamesInternal(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 9

    .prologue
    .line 4490
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4491
    .local v0, "appUid":I
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 4493
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v4

    .line 4497
    .local v4, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v3, 0x0

    .line 4498
    .local v3, "packageName":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 4499
    .local v2, "packageInfo":Landroid/content/pm/ApplicationInfo;
    iget v6, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v6, v0, :cond_0

    .line 4500
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getContainerId UID matched"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "UID"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4501
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4505
    .end local v2    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    if-eqz v3, :cond_2

    .line 4507
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getContainerId packageName --"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4512
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 4510
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_2
    const-string v6, "EnterpriseContainerService"

    const-string v7, "getContainerId packageName is null"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4512
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getPassword(ILandroid/content/ComponentName;)Ljava/lang/String;
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5018
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5020
    const-string v0, "EnterpriseContainerService"

    const-string v1, "getPassword() returns null all the time."

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5021
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPasswordEnabledContainerLockTimeout(I)J
    .locals 6
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4963
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 4964
    .local v0, "admin":Landroid/content/ComponentName;
    const/16 v3, 0x1f

    invoke-direct {p0, v3, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4968
    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v3, p1, v0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordEnabledContainerLockTimeout(ILandroid/content/ComponentName;)J

    move-result-wide v1

    .line 4969
    .local v1, "maximumTimeToUnmount":J
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPasswordEnabledContainerLockTimeout containerId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", admin = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", returning = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4971
    return-wide v1
.end method

.method public getPasswordExpiration(ILandroid/content/ComponentName;)J
    .locals 5
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5250
    const/16 v2, 0x1f

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5254
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v2, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordExpiration(ILandroid/content/ComponentName;)J

    move-result-wide v0

    .line 5255
    .local v0, "passwordExpiration":J
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPasswordExpiration containerId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", admin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", returning = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5257
    return-wide v0
.end method

.method public getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J
    .locals 5
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5275
    const/16 v2, 0x1f

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5279
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v2, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J

    move-result-wide v0

    .line 5281
    .local v0, "passwordExpirationTimeout":J
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPasswordExpirationTimeout containerId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", admin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", returning = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5283
    return-wide v0
.end method

.method public getPasswordExpires(ILandroid/content/ComponentName;)I
    .locals 5
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4976
    const-string v2, "EnterpriseContainerService"

    const-string v3, "getPasswordExpires()"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4977
    const/16 v2, 0x1f

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4981
    invoke-virtual {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J

    move-result-wide v0

    .line 4982
    .local v0, "result":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 4983
    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    .line 4985
    :cond_0
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPasswordExpires: containerId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", admin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", returning = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4987
    long-to-int v2, v0

    return v2
.end method

.method public getPasswordHistory(ILandroid/content/ComponentName;)I
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4907
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4911
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordHistory(ILandroid/content/ComponentName;)I

    move-result v0

    .line 4912
    .local v0, "passwordHistory":I
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordHistory containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4914
    return v0
.end method

.method public getPasswordHistoryLength(ILandroid/content/ComponentName;)I
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5289
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5293
    invoke-virtual {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->getPasswordHistory(ILandroid/content/ComponentName;)I

    move-result v0

    .line 5294
    .local v0, "passwordHistory":I
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordHistoryLength: containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5296
    return v0
.end method

.method public getPasswordMaximumLength(II)I
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "quality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5311
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5315
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMaximumLength(II)I

    move-result v0

    .line 5316
    .local v0, "passwordMaximumLength":I
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordMaximumLength containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5318
    return v0
.end method

.method public getPasswordMinimumLength(ILandroid/content/ComponentName;)I
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5324
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5328
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumLength(ILandroid/content/ComponentName;)I

    move-result v0

    .line 5329
    .local v0, "passwordMinimumLength":I
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordMinimumLength containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5331
    return v0
.end method

.method public getPasswordMinimumLetters(ILandroid/content/ComponentName;)I
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5349
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5353
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumLetters(ILandroid/content/ComponentName;)I

    move-result v0

    .line 5354
    .local v0, "passwordMinimumLetters":I
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordMinimumLetters containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5356
    return v0
.end method

.method public getPasswordMinimumLowerCase(ILandroid/content/ComponentName;)I
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5374
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5378
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumLowerCase(ILandroid/content/ComponentName;)I

    move-result v0

    .line 5380
    .local v0, "passwordMinimumLowerCase":I
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordMinimumLowerCase containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5382
    return v0
.end method

.method public getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5400
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5404
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I

    move-result v0

    .line 5406
    .local v0, "passwordMinimumNonLetter":I
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordMinimumNonLetter containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5408
    return v0
.end method

.method public getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5426
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5430
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I

    move-result v0

    .line 5431
    .local v0, "passwordMinimumNumeric":I
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordMinimumNumeric containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5433
    return v0
.end method

.method public getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5451
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5455
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I

    move-result v0

    .line 5456
    .local v0, "passwordMinimumSymbols":I
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordMinimumSymbols: containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5458
    return v0
.end method

.method public getPasswordMinimumUpperCase(ILandroid/content/ComponentName;)I
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5477
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5481
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumUpperCase(ILandroid/content/ComponentName;)I

    move-result v0

    .line 5483
    .local v0, "passwordMinimumUpperCase":I
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPasswordMinimumNumeric containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5485
    return v0
.end method

.method public getPasswordQuality(ILandroid/content/ComponentName;)I
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5502
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5506
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordQuality(ILandroid/content/ComponentName;)I

    move-result v0

    .line 5507
    .local v0, "passwordQuality":I
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordQuality containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5509
    return v0
.end method

.method public getPasswordVerifyOnlyOnModeChange(I)Z
    .locals 1
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 6093
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 6095
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerVerifyOnlyOnChangeMode(I)Z

    move-result v0

    return v0
.end method

.method public getProperty(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 6033
    if-nez p2, :cond_0

    .line 6034
    const-string v0, "EnterpriseContainerService"

    const-string v1, "getProperty propertyName is null"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6035
    const/4 v0, 0x0

    .line 6039
    :goto_0
    return-object v0

    .line 6037
    :cond_0
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 6039
    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPropertyOpt(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 6051
    if-nez p2, :cond_0

    .line 6052
    const-string v0, "EnterpriseContainerService"

    const-string v1, "getProperty propertyName is null"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6053
    const/4 v0, 0x0

    .line 6057
    :goto_0
    return-object v0

    .line 6055
    :cond_0
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 6057
    invoke-static {p2, p3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimplePasswordEnabled(ILandroid/content/ComponentName;)Z
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5527
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5531
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getSimplePasswordEnabled(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 5532
    .local v0, "retVal":Z
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimplePasswordEnabled containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5534
    return v0
.end method

.method public getStatus(I)I
    .locals 2
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5819
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5820
    const-string v0, "EnterpriseContainerService"

    const-string v1, "getStatus(). This will be same as getContainerActivation status"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5821
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerStatus(I)I

    move-result v0

    return v0
.end method

.method public inKeyguardRestrictedInputMode(I)Z
    .locals 1
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 6009
    const/4 v0, 0x0

    return v0
.end method

.method public installPackages(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;II)Z
    .locals 10
    .param p1, "containerId"    # I
    .param p2, "apkFilePath"    # Ljava/lang/String;
    .param p3, "statusCallback"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .param p4, "installType"    # I
    .param p5, "installSource"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5069
    const-string v1, "EnterpriseContainerService"

    const-string v2, "installPackages()"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5070
    const/16 v1, 0xb

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5074
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->isContainerPackageInstallable(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getMountStatus(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1f7

    if-eq p4, v1, :cond_1

    .line 5076
    :cond_0
    const/4 v1, 0x0

    .line 5097
    :goto_0
    return v1

    .line 5079
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 5080
    .local v9, "callingUid":I
    invoke-direct {p0, v9, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfContainerizedApp(II)Z

    move-result v8

    .line 5081
    .local v8, "bConApp":Z
    const/16 v1, 0x3e8

    if-eq v9, v1, :cond_2

    if-eqz v8, :cond_2

    invoke-direct {p0, v9}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfWhitelistedApp(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1, v9}, Lcom/sec/knox/container/EnterpriseContainerService;->isPackageInInstallWhiteList(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5085
    const-string v1, "EnterpriseContainerService"

    const-string v2, "installPackage failed. Calling containerized app does not have permission to install."

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5087
    const/4 v1, 0x0

    goto :goto_0

    .line 5090
    :cond_2
    const/4 v1, 0x1

    if-ne v8, v1, :cond_3

    .line 5091
    invoke-static {p2, p1}, Lcom/android/server/container/util/StringUtil;->getMountedPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 5094
    :cond_3
    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;ILandroid/os/Handler;Ljava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;II)V

    .line 5096
    .local v0, "packageInstaller":Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;
    invoke-virtual {v0}, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->start()V

    .line 5097
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isActivePasswordSufficient(I)Z
    .locals 5
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5551
    const/16 v2, 0xc

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5554
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfMDMAdmin()Z

    move-result v0

    .line 5555
    .local v0, "calledFromMDM":Z
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v2, p1, v0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->isActivePasswordSufficient(IZ)Z

    move-result v1

    .line 5557
    .local v1, "pwdSufficient":Z
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActivePasswordSufficient value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5558
    return v1
.end method

.method public isKeyguardLocked(I)Z
    .locals 2
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5981
    const/16 v0, 0xf

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5986
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getStatus(I)I

    move-result v0

    const/16 v1, 0x5f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyguardSecure(I)Z
    .locals 2
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5991
    const/16 v0, 0xf

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5996
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getStatus(I)I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPasswordForbidden(ILjava/lang/String;)Z
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 6183
    const-string v1, "EnterpriseContainerService"

    const-string v2, "isPasswordForbidden()"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6184
    const/16 v1, 0x1c

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 6187
    if-nez p2, :cond_0

    .line 6190
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->isPasswordForbiddenInternal(ILjava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isPasswordVisisbilityEnabled(I)Z
    .locals 4
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4928
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4932
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->isPasswordVisisbilityEnabled(I)Z

    move-result v0

    .line 4934
    .local v0, "isPasswordVisisbilityEnabled":Z
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPasswordVisisbilityEnabled containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4936
    return v0
.end method

.method killAllApps(I)Z
    .locals 9
    .param p1, "containerId"    # I

    .prologue
    const/4 v5, 0x0

    .line 4516
    const-string v6, "EnterpriseContainerService"

    const-string v7, "Killing all apps"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4517
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v6, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackages(I)Ljava/util/List;

    move-result-object v3

    .line 4518
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4519
    .local v4, "packageName":Ljava/lang/String;
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Killing Package"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4521
    :try_start_0
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 4522
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4524
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4526
    .end local v0    # "am":Landroid/app/ActivityManager;
    :catch_0
    move-exception v1

    .line 4527
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Killing all apps Exception. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4531
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "packageName":Ljava/lang/String;
    :goto_1
    return v5

    :cond_1
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public lockContainer(I)Z
    .locals 1
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5860
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5861
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->lockContainerInternal(I)Z

    move-result v0

    return v0
.end method

.method public onContainerStateChange(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSState;)V
    .locals 5
    .param p1, "containerId"    # I
    .param p2, "oldState"    # Lcom/sec/knox/container/constants/CSState;
    .param p3, "state"    # Lcom/sec/knox/container/constants/CSState;

    .prologue
    .line 646
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendBroadcast STATE_CHANGED("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p3}, Lcom/sec/knox/container/EnterpriseContainerService;->getPlatformContainerState(Lcom/sec/knox/container/constants/CSState;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 650
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.enterprise.container_state_changed"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 653
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "containerid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 654
    const-string v2, "container_old_state"

    invoke-direct {p0, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->getPlatformContainerState(Lcom/sec/knox/container/constants/CSState;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 655
    const-string v2, "container_new_state"

    invoke-direct {p0, p3}, Lcom/sec/knox/container/EnterpriseContainerService;->getPlatformContainerState(Lcom/sec/knox/container/constants/CSState;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 656
    const-string v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 657
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 659
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerService$3;->$SwitchMap$com$sec$knox$container$constants$CSState:[I

    invoke-virtual {p3}, Lcom/sec/knox/container/constants/CSState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 705
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 666
    :pswitch_1
    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATED_NOT_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    if-ne p2, v2, :cond_0

    .line 667
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->sendContainerSetupSuccessMessage(I)V

    goto :goto_0

    .line 659
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4306
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 4313
    :goto_0
    return v1

    .line 4307
    :catch_0
    move-exception v0

    .line 4308
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4313
    const/4 v1, 0x0

    goto :goto_0

    .line 4309
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 4310
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4311
    throw v0
.end method

.method public onUserInteraction(I)V
    .locals 2
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4881
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4883
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v0

    sget-object v1, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getWakeLockCounter()I

    move-result v0

    if-nez v0, :cond_0

    .line 4885
    const-string v0, "EnterpriseContainerService"

    const-string v1, "onUserInteraction: Restaring Timeout"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4886
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->scheduleTimerOnUserInteraction(Landroid/content/Context;I)V

    .line 4891
    :goto_0
    return-void

    .line 4889
    :cond_0
    const-string v0, "EnterpriseContainerService"

    const-string v1, "onUserInteraction: Password is inactive. Ignoring..."

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public preSystemReady()V
    .locals 0

    .prologue
    .line 719
    return-void
.end method

.method public reboot(ILjava/lang/String;)V
    .locals 5
    .param p1, "containerId"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x52

    .line 5026
    const/4 v1, 0x4

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5029
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5030
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "passwordstatus"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5031
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/sec/knox/container/manager/StateManager;->updateValuesForContainer(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5033
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/sec/knox/container/manager/StateManager;->updatePasswordStatus(ILjava/lang/Integer;)Z

    .line 5035
    :cond_0
    return-void
.end method

.method public registerEventReceiver(I[ILcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;)Z
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "eventId"    # [I
    .param p3, "receiver"    # Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 6309
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(I)I

    .line 6311
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCallbackMgr:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    invoke-static {p1, p2}, Lcom/android/server/container/util/StringUtil;->getRegisteringKey(I[I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->register([Ljava/lang/String;Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method public removeContainer(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    .locals 5
    .param p1, "cid"    # I
    .param p2, "callback"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4571
    const/16 v2, 0x1d

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    move-result v1

    .line 4575
    .local v1, "uid":I
    const-string v2, "android.permission.sec.ENTERPRISE_MOUNT_UNMOUNT_ENCRYPT"

    invoke-direct {p0, v1, p1, v2}, Lcom/sec/knox/container/EnterpriseContainerService;->enforcePackageManagerPermissionForContainerizedApps(IILjava/lang/String;)V

    .line 4581
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeContainer() ContainerId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4582
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    .line 4584
    .local v0, "state":Lcom/sec/knox/container/constants/CSState;
    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATION_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 4587
    :cond_0
    const-string v2, "EnterpriseContainerService"

    const-string v3, "removeContainer Failed, Reason: Invalid container state."

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4588
    const/4 v2, 0x0

    .line 4590
    :goto_0
    return v2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    move-result v2

    goto :goto_0
.end method

.method public resetPassword(ILjava/lang/String;I)Z
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5564
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5566
    const-string v0, "EnterpriseContainerService"

    const-string v1, "resetPassword called. Ignoring and returning false."

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5567
    const/4 v0, 0x0

    return v0
.end method

.method public setAllowBluetoothMode(ILandroid/content/ComponentName;I)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5647
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5649
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllowBluetoothMode containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5651
    if-eqz p2, :cond_0

    .line 5652
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setAllowBluetoothMode(ILandroid/content/ComponentName;I)V

    .line 5654
    :cond_0
    return-void
.end method

.method public setAllowBrowser(ILandroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5794
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5796
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllowBrowser containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5798
    if-eqz p2, :cond_0

    .line 5799
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setAllowBrowser(ILandroid/content/ComponentName;Z)V

    .line 5801
    :cond_0
    return-void
.end method

.method public setAllowCamera(ILandroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5770
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5772
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllowCamera containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5774
    if-eqz p2, :cond_0

    .line 5775
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setAllowCamera(ILandroid/content/ComponentName;Z)V

    .line 5777
    :cond_0
    return-void
.end method

.method public setAllowDesktopSync(ILandroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5671
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5673
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllowDesktopSync containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5675
    if-eqz p2, :cond_0

    .line 5676
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setAllowDesktopSync(ILandroid/content/ComponentName;Z)V

    .line 5678
    :cond_0
    return-void
.end method

.method public setAllowInternetSharing(ILandroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5622
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5624
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllowInternetSharing containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5626
    if-eqz p2, :cond_0

    .line 5627
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setAllowInternetSharing(ILandroid/content/ComponentName;Z)V

    .line 5629
    :cond_0
    return-void
.end method

.method public setAllowIrDA(ILandroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5696
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5698
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllowIrDA containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5700
    if-eqz p2, :cond_0

    .line 5701
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setAllowIrDA(ILandroid/content/ComponentName;Z)V

    .line 5703
    :cond_0
    return-void
.end method

.method public setAllowPOPIMAPEmail(ILandroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5745
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5747
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllowStorageCard containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5749
    if-eqz p2, :cond_0

    .line 5750
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setAllowPOPIMAPEmail(ILandroid/content/ComponentName;Z)V

    .line 5752
    :cond_0
    return-void
.end method

.method public setAllowStorageCard(ILandroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5720
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5722
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllowStorageCard containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5724
    if-eqz p2, :cond_0

    .line 5725
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setAllowStorageCard(ILandroid/content/ComponentName;Z)V

    .line 5727
    :cond_0
    return-void
.end method

.method public setAllowTextMessaging(ILandroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5597
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5599
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllowTextMessaging containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5601
    if-eqz p2, :cond_0

    .line 5602
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setAllowTextMessaging(ILandroid/content/ComponentName;Z)V

    .line 5604
    :cond_0
    return-void
.end method

.method public setAllowWifi(ILandroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5573
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5575
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllowWifi containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5577
    if-eqz p2, :cond_0

    .line 5578
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setAllowWifi(ILandroid/content/ComponentName;Z)V

    .line 5580
    :cond_0
    return-void
.end method

.method public setContainerLockOnScreenLock(IZ)Z
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "containerLockOnScreenLock"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 6196
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContainerLockOnScreenLock called with value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6198
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 6200
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/manager/StateManager;->setContainerLockOnScreenLock(IZ)Z

    move-result v0

    return v0
.end method

.method public setDownloadWakeState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 6451
    monitor-enter p0

    .line 6452
    packed-switch p1, :pswitch_data_0

    .line 6476
    :cond_0
    :goto_0
    :try_start_0
    monitor-exit p0

    .line 6477
    return-void

    .line 6454
    :pswitch_0
    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerService;->mDownloadWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 6455
    const-string v1, "EnterpriseContainerService"

    const-string v2, "---------------------->setDownloadWakeState: releasing wake lock<---------------------"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6456
    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerService;->mDownloadWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6457
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/knox/container/EnterpriseContainerService;->mDownloadWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0

    .line 6476
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6461
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerService;->mDownloadWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 6462
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 6463
    .local v0, "pm":Landroid/os/PowerManager;
    if-eqz v0, :cond_0

    .line 6464
    const/4 v1, 0x1

    const-string v2, "EnterpriseContainerService2"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/sec/knox/container/EnterpriseContainerService;->mDownloadWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 6465
    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerService;->mDownloadWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 6466
    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerService;->mDownloadWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 6467
    const-string v1, "EnterpriseContainerService"

    const-string v2, "---------------------->setDownloadWakeState: acquiring wake lock<---------------------"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6468
    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerService;->mDownloadWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6452
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setLockType(II)Z
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "lockType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5945
    const-string v1, "EnterpriseContainerService"

    const-string v2, "setLockType()"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5946
    const/16 v1, 0xa

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5948
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5949
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "locktype"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5950
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/sec/knox/container/manager/StateManager;->updateValuesForContainer(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5952
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating lock type :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5953
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/manager/StateManager;->updateLockType(II)Z

    .line 5954
    const/4 v1, 0x1

    .line 5956
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;I)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "num"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5211
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5213
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaximumFailedPasswordsForDisable containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5215
    if-gez p3, :cond_0

    .line 5216
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaximumFailedPasswordsForDisable num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Should not set negative num."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5217
    :cond_0
    if-eqz p2, :cond_1

    .line 5218
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;I)V

    .line 5220
    :cond_1
    return-void
.end method

.method public setMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;I)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "num"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5185
    const/16 v0, 0x1c

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5187
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaximumFailedPasswordsForWipe containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5189
    if-eqz p2, :cond_0

    .line 5190
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;I)V

    .line 5192
    :cond_0
    return-void
.end method

.method public setMaximumTimeToLock(ILandroid/content/ComponentName;J)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "timeMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5225
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5228
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaximumTimeToLock containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timeMs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5230
    if-eqz p2, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 5231
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setMaximumTimeToLock(ILandroid/content/ComponentName;J)V

    .line 5233
    :cond_0
    return-void
.end method

.method public setMinPasswordComplexChars(ILandroid/content/ComponentName;I)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4993
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4995
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordMinimumNonLetter containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4997
    if-eqz p2, :cond_0

    .line 4998
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordMinimumNonLetter(ILandroid/content/ComponentName;I)V

    .line 5000
    :cond_0
    return-void
.end method

.method public setPasswordEnabledContainerLockTimeout(IJ)V
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "timeMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4952
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 4953
    .local v0, "admin":Landroid/content/ComponentName;
    const/16 v1, 0x8

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4954
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPasswordEnabledContainerLockTimeout containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", timeMs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4956
    if-eqz v0, :cond_0

    .line 4957
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordEnabledContainerLockTimeout(ILandroid/content/ComponentName;J)V

    .line 4959
    :cond_0
    return-void
.end method

.method public setPasswordExpirationTimeout(ILandroid/content/ComponentName;J)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5263
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5265
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordExpirationTimeout containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5267
    if-eqz p2, :cond_0

    .line 5268
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordExpirationTimeout(ILandroid/content/ComponentName;J)V

    .line 5270
    :cond_0
    return-void
.end method

.method public setPasswordExpires(ILandroid/content/ComponentName;I)V
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4943
    const-string v0, "EnterpriseContainerService"

    const-string v1, "setPasswordExpires()"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4944
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4946
    int-to-long v0, p3

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->setPasswordExpirationTimeout(ILandroid/content/ComponentName;J)V

    .line 4947
    return-void
.end method

.method public setPasswordHistory(ILandroid/content/ComponentName;I)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4896
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4898
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordHistory containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4900
    if-eqz p2, :cond_0

    .line 4901
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordHistory(ILandroid/content/ComponentName;I)V

    .line 4903
    :cond_0
    return-void
.end method

.method public setPasswordHistoryLength(ILandroid/content/ComponentName;I)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5302
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordHistoryLength.ComponentName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5304
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5306
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerService;->setPasswordHistory(ILandroid/content/ComponentName;I)V

    .line 5307
    return-void
.end method

.method public setPasswordMinimumLength(ILandroid/content/ComponentName;I)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5337
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5339
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordMinimumLength containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5341
    if-eqz p2, :cond_0

    if-ltz p3, :cond_0

    .line 5342
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordMinimumLength(ILandroid/content/ComponentName;I)V

    .line 5344
    :cond_0
    return-void
.end method

.method public setPasswordMinimumLetters(ILandroid/content/ComponentName;I)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5362
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5364
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordMinimumLetters containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5366
    if-eqz p2, :cond_0

    .line 5367
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordMinimumLetters(ILandroid/content/ComponentName;I)V

    .line 5369
    :cond_0
    return-void
.end method

.method public setPasswordMinimumLowerCase(ILandroid/content/ComponentName;I)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5388
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5390
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordMinimumLowerCase containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5392
    if-eqz p2, :cond_0

    .line 5393
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordMinimumLowerCase(ILandroid/content/ComponentName;I)V

    .line 5395
    :cond_0
    return-void
.end method

.method public setPasswordMinimumNonLetter(ILandroid/content/ComponentName;I)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5414
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5416
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordMinimumNonLetter containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5418
    if-eqz p2, :cond_0

    .line 5419
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordMinimumNonLetter(ILandroid/content/ComponentName;I)V

    .line 5421
    :cond_0
    return-void
.end method

.method public setPasswordMinimumNumeric(ILandroid/content/ComponentName;I)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5439
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5441
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordMinimumNumeric containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5443
    if-eqz p2, :cond_0

    .line 5444
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordMinimumNumeric(ILandroid/content/ComponentName;I)V

    .line 5446
    :cond_0
    return-void
.end method

.method public setPasswordMinimumSymbols(ILandroid/content/ComponentName;I)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5464
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordMinimumSymbols: containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5466
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5469
    if-eqz p2, :cond_0

    .line 5470
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordMinimumSymbols(ILandroid/content/ComponentName;I)V

    .line 5472
    :cond_0
    return-void
.end method

.method public setPasswordMinimumUpperCase(ILandroid/content/ComponentName;I)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5491
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5493
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordMinimumUpperCase containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5495
    if-eqz p2, :cond_0

    .line 5496
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordMinimumUpperCase(ILandroid/content/ComponentName;I)V

    .line 5498
    :cond_0
    return-void
.end method

.method public setPasswordQuality(ILandroid/content/ComponentName;I)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "quality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5515
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5517
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordQuality containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", quality = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5519
    if-eqz p2, :cond_0

    .line 5520
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordQuality(ILandroid/content/ComponentName;I)V

    .line 5522
    :cond_0
    return-void
.end method

.method public setPasswordVerifyOnlyOnModeChange(IZ)Z
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "toggleFlag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 6086
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 6088
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/manager/StateManager;->setContainerVerifyOnlyOnChangeMode(IZ)Z

    move-result v0

    return v0
.end method

.method public setPasswordVisibilityEnabled(IZ)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "val"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4919
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4921
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordVisibilityEnabled containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", val = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4923
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordVisibilityEnabled(IZ)V

    .line 4924
    return-void
.end method

.method public setSimplePasswordEnabled(ILandroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5540
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5542
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSimplePasswordEnabled containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5544
    if-eqz p2, :cond_0

    .line 5545
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setSimplePasswordEnabled(ILandroid/content/ComponentName;Z)V

    .line 5547
    :cond_0
    return-void
.end method

.method public startApp(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 6126
    const-string v5, "EnterpriseContainerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startApp() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6127
    const/16 v5, 0x8

    invoke-direct {p0, v5, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 6128
    if-eqz p2, :cond_2

    .line 6129
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 6131
    .local v2, "token":J
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerisedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6132
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, p1}, Lcom/sec/knox/container/manager/StateManager;->getPackageNames(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    .line 6133
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerStatus(I)I

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_1

    .line 6136
    if-nez p3, :cond_0

    .line 6137
    invoke-direct {p0, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->getActivitynameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 6139
    :cond_0
    if-eqz p3, :cond_1

    .line 6140
    invoke-direct {p0, p3}, Lcom/sec/knox/container/EnterpriseContainerService;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 6141
    invoke-direct {p0, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerService;->launchActivityForPackage(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 6148
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6151
    .end local v2    # "token":J
    :cond_2
    return v4

    .line 6145
    .restart local v2    # "token":J
    :catch_0
    move-exception v0

    .line 6146
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "EnterpriseContainerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not start app "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6148
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public startTimer(ILandroid/os/IBinder;)Z
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 6252
    const-string v1, "EnterpriseContainerService"

    const-string v2, "Start Timer"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6254
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6256
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6257
    const/4 v1, 0x1

    return v1
.end method

.method public declared-synchronized startUpgrade(I)Z
    .locals 7
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 6343
    monitor-enter p0

    :try_start_0
    const-string v4, "EnterpriseContainerService"

    const-string/jumbo v5, "startUpgrade()"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6344
    const/4 v4, 0x2

    invoke-direct {p0, v4, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 6347
    const/4 v0, 0x0

    .line 6348
    .local v0, "returnValue":Z
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v5, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v5

    sget-object v6, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UPGRADE:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v4, p1, v5, v6}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v1

    .line 6350
    .local v1, "temp":Lcom/sec/knox/container/constants/CSState;
    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    sget-object v5, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v5}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 6351
    const-wide/16 v2, 0x0

    .line 6352
    .local v2, "token":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 6353
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->killAllApps(I)Z

    .line 6354
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6355
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->killTimer(I)V

    .line 6356
    const-string v4, "EnterpriseContainerService"

    const-string v5, "Killed all apps and timer"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6357
    const/4 v0, 0x1

    .line 6364
    .end local v2    # "token":J
    :goto_0
    monitor-exit p0

    return v0

    .line 6359
    :cond_0
    :try_start_1
    const-string v4, "EnterpriseContainerService"

    const-string/jumbo v5, "upgrade container failed. Upgrade allowed only on active/inactive upgrade/reset_pwd container state"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6362
    const/4 v0, 0x0

    goto :goto_0

    .line 6343
    .end local v0    # "returnValue":Z
    .end local v1    # "temp":Lcom/sec/knox/container/constants/CSState;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public stopApp(ILjava/lang/String;)Z
    .locals 9
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 6156
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopApp() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6157
    const/16 v6, 0x8

    invoke-direct {p0, v6, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 6158
    if-eqz p2, :cond_1

    .line 6159
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, p1}, Lcom/sec/knox/container/manager/StateManager;->getPackageNames(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    .line 6160
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 6162
    .local v3, "token":J
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerisedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6163
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p2, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerStatus(I)I

    move-result v6

    const/16 v7, 0x5b

    if-ne v6, v7, :cond_0

    .line 6165
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 6167
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, p2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6168
    const/4 v5, 0x1

    .line 6175
    .end local v0    # "am":Landroid/app/ActivityManager;
    :cond_0
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6178
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "token":J
    :cond_1
    return v5

    .line 6170
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "token":J
    :catch_0
    move-exception v1

    .line 6171
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ActivityNotFoundException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6175
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 6172
    :catch_1
    move-exception v1

    .line 6173
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could not start app "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public stopTimer(ILandroid/os/IBinder;)Z
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 6262
    const-string v1, "EnterpriseContainerService"

    const-string v2, "Stop Timer called "

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6264
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6266
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6267
    const/4 v1, 0x1

    return v1
.end method

.method public stopTimerWithTimeOut(ILandroid/os/IBinder;J)Z
    .locals 5
    .param p1, "containerId"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "milliseconds"    # J

    .prologue
    .line 6272
    const-string v2, "EnterpriseContainerService"

    const-string/jumbo v3, "stopTimerWithTimeOut called timeout"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6274
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-static {v2, v3, p1, v4, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6276
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6277
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopTimerWithTimeOut scheduling timer At"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6278
    new-instance v1, Lcom/sec/knox/container/EnterpriseContainerService$TimeoutRunnableStartAfterStop;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService$TimeoutRunnableStartAfterStop;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/content/Context;I)V

    .line 6280
    .local v1, "timeoutRunnable":Lcom/sec/knox/container/EnterpriseContainerService$TimeoutRunnableStartAfterStop;
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6281
    const/4 v2, 0x1

    return v2
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 708
    const-string v0, "EnterpriseContainerService"

    const-string v1, "SystemReady()"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->createContainerDataDir()V

    .line 710
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->startContainerEventsRelayManager()V

    .line 711
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ContainerServiceHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->handlerThread:Landroid/os/HandlerThread;

    .line 713
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 714
    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/os/Looper;Lcom/sec/knox/container/EnterpriseContainerService;)V

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    .line 715
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->doBootCompleteTaks()V

    .line 716
    return-void
.end method

.method public unRegisterEventReceiver(Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;)Z
    .locals 1
    .param p1, "receiver"    # Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 6317
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(I)I

    .line 6319
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCallbackMgr:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method public uninstallPackages(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    .locals 7
    .param p1, "containerId"    # I
    .param p2, "packagepath"    # Ljava/lang/String;
    .param p3, "statusCallback"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 5103
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uninstallPackages(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5104
    const/16 v2, 0xb

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5108
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getMountStatus(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5126
    :cond_0
    :goto_0
    return v1

    .line 5111
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 5112
    .local v6, "callingUid":I
    invoke-direct {p0, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfUninstallWhitelistPackage(I)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x3e8

    if-eq v6, v2, :cond_2

    invoke-direct {p0, v6, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfContainerizedApp(II)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->isPackageInInstallWhiteList(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5115
    const-string v2, "EnterpriseContainerService"

    const-string/jumbo v3, "uninstallPackage failed. Calling containerized app does not have permission to uninstall."

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5119
    :cond_2
    invoke-direct {p0, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5120
    if-eqz p2, :cond_0

    .line 5121
    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;ILandroid/os/Handler;Ljava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    .line 5123
    .local v0, "packageUninstaller":Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;
    invoke-virtual {v0}, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->start()V

    .line 5124
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public unlockContainer(I)Z
    .locals 1
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5866
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5867
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->unlockContainerInternal(I)Z

    move-result v0

    return v0
.end method

.method public updateCallbackStatus(IIILandroid/os/Bundle;Z)V
    .locals 11
    .param p1, "requestType"    # I
    .param p2, "key"    # I
    .param p3, "errorcode"    # I
    .param p4, "data"    # Landroid/os/Bundle;
    .param p5, "lastUpdate"    # Z

    .prologue
    .line 876
    const/4 v1, 0x0

    .line 877
    .local v1, "cbList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;>;"
    const/4 v5, 0x0

    .line 878
    .local v5, "mgr":Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    const/4 v7, 0x0

    .line 879
    .local v7, "requestId":I
    packed-switch p1, :pswitch_data_0

    .line 902
    const/4 v5, 0x0

    .line 904
    :cond_0
    :goto_0
    const-string v8, "EnterpriseContainerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Callback manager:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    if-eqz v5, :cond_2

    .line 906
    if-eqz p5, :cond_3

    .line 907
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->remove(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 913
    :goto_1
    if-eqz v1, :cond_4

    .line 914
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .line 915
    .local v0, "cb":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    const-string v8, "EnterpriseContainerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Calling callback : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    if-eqz v0, :cond_1

    .line 917
    invoke-interface {v0, p3, p4}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 923
    .end local v0    # "cb":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 924
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "EnterpriseContainerService"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v8, p2}, Lcom/sec/knox/container/manager/StateManager;->getRequestIdForContainer(I)I

    move-result v6

    .line 927
    .local v6, "requestID":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    .line 928
    :try_start_1
    const-string v8, "EnterpriseContainerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cancelCreateContainer "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    invoke-virtual {p0, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->cancelCreateContainer(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 936
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "requestID":I
    :cond_2
    :goto_3
    return-void

    .line 882
    :pswitch_0
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    .line 883
    if-eqz p5, :cond_0

    .line 884
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v8, p2}, Lcom/sec/knox/container/manager/StateManager;->getRequestIdForContainer(I)I

    move-result v7

    .line 885
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v8, v7}, Lcom/sec/knox/container/manager/StateManager;->clearContainerRequestId(I)V

    goto/16 :goto_0

    .line 889
    :pswitch_1
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    .line 890
    if-eqz p5, :cond_0

    .line 891
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v8, p2}, Lcom/sec/knox/container/manager/StateManager;->getRequestIdForContainer(I)I

    move-result v7

    .line 892
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v8, v7}, Lcom/sec/knox/container/manager/StateManager;->clearContainerRequestId(I)V

    goto/16 :goto_0

    .line 896
    :pswitch_2
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mChangeContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    .line 897
    goto/16 :goto_0

    .line 899
    :pswitch_3
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    .line 900
    goto/16 :goto_0

    .line 909
    :cond_3
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->get(I)Ljava/util/ArrayList;

    move-result-object v1

    goto/16 :goto_1

    .line 921
    :cond_4
    :try_start_2
    const-string v8, "EnterpriseContainerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Call Back not found for key "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 931
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "requestID":I
    :catch_1
    move-exception v3

    .line 932
    .local v3, "e2":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 879
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method updateEventToListners(IILandroid/os/Bundle;)V
    .locals 7
    .param p1, "cid"    # I
    .param p2, "event"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 6285
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCallbackMgr:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    invoke-static {p1, p2}, Lcom/android/server/container/util/StringUtil;->getBroadcastingKey(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->beginBroadcast(Ljava/lang/String;)I

    move-result v2

    .line 6286
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 6287
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCallbackMgr:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    invoke-virtual {v4, v1}, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;

    .line 6288
    .local v3, "receiver":Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;
    if-eqz v3, :cond_0

    .line 6290
    :try_start_0
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEventToListners() - sending event:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6291
    invoke-interface {v3, p2, p3}, Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;->onEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6286
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6292
    :catch_0
    move-exception v0

    .line 6293
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6297
    :try_start_1
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCallbackMgr:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    invoke-virtual {v4, v3}, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 6298
    :catch_1
    move-exception v4

    goto :goto_1

    .line 6303
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "receiver":Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;
    :cond_1
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCallbackMgr:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    invoke-virtual {v4}, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->finishBroadcast()V

    .line 6304
    return-void
.end method

.method public upgradeComplete(I)Z
    .locals 5
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 6369
    const-string v2, "EnterpriseContainerService"

    const-string/jumbo v3, "upgradeComplete()"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6370
    const/4 v2, 0x2

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 6373
    const/4 v0, 0x0

    .line 6374
    .local v0, "returnValue":Z
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v3, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UPGRADE_COMPLETED:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v2, p1, v3, v4}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v1

    .line 6376
    .local v1, "temp":Lcom/sec/knox/container/constants/CSState;
    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 6377
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Upgrade completed. Saving current device firmware version."

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6378
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/knox/container/EnterpriseContainerService;->setContainerFirmwareVersionToCacheAndDB(ILjava/lang/String;)Z

    .line 6379
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->sendContainerSetupSuccessMessage(I)V

    .line 6380
    const/4 v0, 0x1

    .line 6389
    :goto_0
    return v0

    .line 6382
    :cond_0
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Upgrade failed.  Current state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v4, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6386
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public validatePasswordComplexity(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "oldpassword"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5972
    const/16 v0, 0x1f

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5976
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerService;->validatePasswordInternal(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public verifyPassword(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "statusCallback"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4777
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4779
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->verifyPasswordInternal(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;Z)V

    .line 4780
    return-void
.end method

.method public verifyPasswordForAutoMount(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "statusCallback"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4785
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4787
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->verifyPasswordInternal(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;Z)V

    .line 4788
    return-void
.end method

.method public wipeSDCardData(I)Z
    .locals 3
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 6114
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing data for container "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6116
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 6119
    const-string v0, "ctl.start"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "containersetup:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6120
    const/4 v0, 0x1

    return v0
.end method
