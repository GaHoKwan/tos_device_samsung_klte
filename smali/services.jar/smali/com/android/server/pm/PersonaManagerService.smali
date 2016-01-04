.class public Lcom/android/server/pm/PersonaManagerService;
.super Landroid/os/IPersonaManager$Stub;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PersonaManagerService$SettingsObserver;,
        Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;,
        Lcom/android/server/pm/PersonaManagerService$PersonaHandler;,
        Lcom/android/server/pm/PersonaManagerService$BootReceiver;,
        Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;
    }
.end annotation


# static fields
.field private static final ALLOWED_INSTALLER_LIST_SP:Ljava/lang/String; = "AllowedInstallerListForUser"

.field private static final APPROVED_INSTALLERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ATTR_CREATION_TIME:Ljava/lang/String; = "created"

.field private static final ATTR_CREATOR_UID:Ljava/lang/String; = "creatorUid"

.field private static final ATTR_ENCRYPTED_ID:Ljava/lang/String; = "encryptedId"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_FS_MOUNTED:Ljava/lang/String; = "fsMounted"

.field private static final ATTR_ICON_PATH:Ljava/lang/String; = "icon"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_INSTALLED_PKG_LIST:Ljava/lang/String; = "installedPkgList"

.field private static final ATTR_LAST_LOGGED_IN_TIME:Ljava/lang/String; = "lastLoggedIn"

.field private static final ATTR_LAST_LOGGED_OUT_TIME:Ljava/lang/String; = "lastLoggedOut"

.field private static final ATTR_NEXT_SERIAL_NO:Ljava/lang/String; = "nextSerialNumber"

.field private static final ATTR_OLD_STATE:Ljava/lang/String; = "oldState"

.field private static final ATTR_PARTIAL:Ljava/lang/String; = "partial"

.field private static final ATTR_PEROSNA_HANDLER:Ljava/lang/String; = "personahandlername"

.field private static final ATTR_PEROSNA_HANDLER_PACKAGE:Ljava/lang/String; = "personahandlerpackage"

.field private static final ATTR_PEROSNA_SETUPWIZARDAPK:Ljava/lang/String; = "setupapklocation"

.field private static final ATTR_PEROSNA_TYPE:Ljava/lang/String; = "personatype"

.field private static final ATTR_PERSONA_ADMIN_PACKAGE_NAME:Ljava/lang/String; = "adminpackagename"

.field private static final ATTR_PERSONA_ADMIN_UID:Ljava/lang/String; = "adminuid"

.field private static final ATTR_PERSONA_HANDLERAPKLOCATION:Ljava/lang/String; = "handlerapklocation"

.field private static final ATTR_REMOVE_PERSONA:Ljava/lang/String; = "removePersona"

.field private static final ATTR_RESET_PASSWORD:Ljava/lang/String; = "resetPassword"

.field private static final ATTR_SAMSUNGACOOUNT:Ljava/lang/String; = "samsungAccount"

.field private static final ATTR_SERIAL_NO:Ljava/lang/String; = "serialNumber"

.field private static final ATTR_STATE:Ljava/lang/String; = "personastate"

.field private static final ATTR_SUPERLOCKED:Ljava/lang/String; = "superlocked"

.field private static final ATTR_USER_MANAGED_PERSONA:Ljava/lang/String; = "isUserManaged"

.field private static final ATTR_USER_VERSION:Ljava/lang/String; = "version"

.field private static final DBG:Z = true

.field private static final DISABLED_HOME_LAUNCHERS_LIST_SP:Ljava/lang/String; = "DisabledHomeLaunchers"

.field private static final EPOCH_PLUS_30_YEARS:J = 0xdc46c32800L

.field private static final FAILURE:I = 0x0

.field private static final INSTALLATION_WAIT_TIME:J = 0x2bf20L

.field private static final INTENT_ACTION_PASSWORD_TIMEOUT_NOTIFICATION:Ljava/lang/String; = "com.sec.knox.container.INTENT_KNOX_ALARM_TIMEOUT"

.field private static final KEY_INSTALLER_WHITELIST:Ljava/lang/String; = "installerWhitelist"

.field private static final LOG_TAG:Ljava/lang/String; = "PersonaManagerService"

.field private static final MAX_LENGTH:I = 0x400

.field private static final MAX_PERSONA_ALLOWED:I = 0x2

.field private static final MIN_PERSONA_ID:I = 0x64

.field private static final MSG_ACTION_SCREEN_OFF:I = 0xb

.field private static final MSG_ADMIN_LOCK_PERSONA:I = 0x5

.field private static final MSG_CANCEL_TIMER_IN_USER_ACTIVITY:I = 0x8

.field private static final MSG_LOCK_TIME_EXPIRED:I = 0x6

.field private static final MSG_PERSONA_SESSION_EXPIRED:I = 0x1388

.field private static final MSG_SCHEDULE_TIMER_IN_HANDLER:I = 0x7

.field private static final MSG_SETTINGS_OBSERVER_TRIGGERED:I = 0x9

.field private static final MSG_START_REMOVE_PERSONA_AFTER_SWITCH:I = 0x1

.field private static final MSG_START_RESET_PERSONA_AFTER_SWITCH:I = 0x4

.field private static final MSG_STOP_TIMER:I = 0xc

.field private static final MSG_UNINSTALL_THIRDPARTY_APPS_DONE_FOR_REMOVE:I = 0x3

.field private static final MSG_UNINSTALL_THIRDPARTY_APPS_DONE_FOR_RESET:I = 0x2

.field private static final MSG_WAKE_LOCK_CHANGE:I = 0xa

.field private static final PACKAGE_TYPE_GENERAL:I = 0x69

.field private static final PACKAGE_TYPE_HANDLER:I = 0x67

.field private static final PACKAGE_TYPE_SETUPWIZARD:I = 0x68

.field private static final PARAMETER_TYPE_APK:I = 0x65

.field private static final PARAMETER_TYPE_PACKAGE_NAME:I = 0x66

.field private static final PASSWORD_FILE_PATH:Ljava/lang/String; = "/data/system/users/knoxpassword_"

.field private static final PERSONAID:Ljava/lang/String; = "personaid"

.field private static final PERSONA_LIST_FILENAME:Ljava/lang/String; = "personalist.xml"

.field private static PERSONA_PWD:Ljava/lang/String; = null

.field private static final PERSONA_TYPE_KNOX:Ljava/lang/String; = "knox"

.field private static final PERSONA_VERSION:I = 0x2

.field private static final REQUEST_PASSWORD_TIMEOUT:I = 0x263e

.field private static SEANDROID_SECURITY_VERIFICATION:Z = false

.field private static final SUCCESS:I = 0x1

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_USER:Ljava/lang/String; = "user"

.field private static final TAG_USERS:Ljava/lang/String; = "users"

.field private static final TAG_USERS_WITH_PERSONA:Ljava/lang/String; = "userswithpersona"

.field private static TIMA_KEYSTORE_NAME:Ljava/lang/String; = null

.field private static final TIMA_STORE_INDEX:I = 0x0

.field private static final USER_INFO_DIR:Ljava/lang/String;

.field private static final USER_PHOTO_FILENAME:Ljava/lang/String; = "photo.png"

.field private static final USER_WITH_PERSONA_LIST_FILENAME:Ljava/lang/String; = "userwithpersonalist.xml"

.field private static mPolicyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Lcom/android/server/pm/PersonaManagerService;


# instance fields
.field private PhoneCaller:I

.field private handlerThread:Landroid/os/HandlerThread;

.field private installResult:I

.field private lastTimeToBackground:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mAdminLockSettings:Ljava/util/HashMap;
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

.field private final mBaseUserPath:Ljava/io/File;

.field private mClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/IPersonaCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;

.field private mGuestEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;

.field private final mISystemPersonaObserver:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/content/pm/ISystemPersonaObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mIdGenerator:Lcom/android/server/pm/PersonaIdentificationGenerator;

.field private final mInstallLock:Ljava/lang/Object;

.field private mNextSerialNumber:I

.field private final mPackageInstallObserver:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

.field private final mPackagesLock:Ljava/lang/Object;

.field private mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

.field private mPersonaIds:[I

.field private final mPersonaLock:Ljava/lang/Object;

.field private mPersonaPolicyManagerService:Lcom/android/server/pm/PersonaPolicyManagerService;

.field private mPersonaStateManagerService:Lcom/android/server/pm/PersonaStateManagerService;

.field private final mPersonas:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

.field private mSettingsObserver:Lcom/android/server/pm/PersonaManagerService$SettingsObserver;

.field private final mShortcutModes:Landroid/util/SparseBooleanArray;

.field private mTimerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserLastPersonaMap:Ljava/util/HashMap;
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

.field private final mUserListFile:Ljava/io/File;

.field private final mUserPersonaMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUserVersion:I

.field private final mUsersDir:Ljava/io/File;

.field private final mUsersWithPersonaList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeLockRefCount:I

.field private packageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private widgetAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->USER_INFO_DIR:Ljava/lang/String;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.osp.app.signin"

    aput-object v3, v1, v2

    const-string v2, "com.sec.android.app.samsungapps"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "com.sec.knox.containeragent2"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->APPROVED_INSTALLERS:Ljava/util/List;

    .line 265
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->mPolicyMap:Ljava/util/Map;

    .line 279
    const-string v0, "TimaKeyStore"

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->TIMA_KEYSTORE_NAME:Ljava/lang/String;

    .line 280
    const-string v0, "PersonaPasswordKey"

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->PERSONA_PWD:Ljava/lang/String;

    .line 305
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->sContext:Landroid/content/Context;

    .line 306
    sput-boolean v4, Lcom/android/server/pm/PersonaManagerService;->SEANDROID_SECURITY_VERIFICATION:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "installLock"    # Ljava/lang/Object;
    .param p4, "packagesLock"    # Ljava/lang/Object;

    .prologue
    .line 349
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PersonaManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V

    .line 351
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "installLock"    # Ljava/lang/Object;
    .param p4, "packagesLock"    # Ljava/lang/Object;
    .param p5, "dataDir"    # Ljava/io/File;
    .param p6, "baseUserPath"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 357
    invoke-direct {p0}, Landroid/os/IPersonaManager$Stub;-><init>()V

    .line 224
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaLock:Ljava/lang/Object;

    .line 233
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/pm/PersonaManagerService;->installResult:I

    .line 238
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    .line 239
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    .line 240
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mUserLastPersonaMap:Ljava/util/HashMap;

    .line 241
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    .line 248
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    .line 249
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mShortcutModes:Landroid/util/SparseBooleanArray;

    .line 252
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    .line 255
    iput v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUserVersion:I

    .line 256
    iput v5, p0, Lcom/android/server/pm/PersonaManagerService;->PhoneCaller:I

    .line 257
    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mClients:Ljava/util/ArrayList;

    .line 267
    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;

    .line 268
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    .line 269
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->widgetAppList:Ljava/util/ArrayList;

    .line 270
    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 271
    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mIdGenerator:Lcom/android/server/pm/PersonaIdentificationGenerator;

    .line 272
    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mSettingsObserver:Lcom/android/server/pm/PersonaManagerService$SettingsObserver;

    .line 307
    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->handlerThread:Landroid/os/HandlerThread;

    .line 2705
    iput v5, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRefCount:I

    .line 4664
    new-instance v3, Lcom/android/server/pm/PersonaManagerService$8;

    invoke-direct {v3, p0}, Lcom/android/server/pm/PersonaManagerService$8;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 5100
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mAdminLockSettings:Ljava/util/HashMap;

    .line 5101
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;

    .line 358
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 359
    sput-object p1, Lcom/android/server/pm/PersonaManagerService;->sContext:Landroid/content/Context;

    .line 360
    iput-object p2, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 361
    iput-object p3, p0, Lcom/android/server/pm/PersonaManagerService;->mInstallLock:Ljava/lang/Object;

    .line 362
    iput-object p4, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    .line 363
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mHandler:Landroid/os/Handler;

    .line 364
    new-instance v3, Lcom/sec/knox/container/util/KnoxFileHandler;

    invoke-direct {v3, p1}, Lcom/sec/knox/container/util/KnoxFileHandler;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;

    .line 365
    new-instance v3, Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    invoke-direct {v3, p0, v4}, Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;-><init>(Lcom/android/server/pm/PersonaManagerService;Lcom/android/server/pm/PersonaManagerService$1;)V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPackageInstallObserver:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    .line 366
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;

    .line 367
    new-instance v3, Lcom/android/server/pm/PersonaIdentificationGenerator;

    const-string v4, "AES"

    invoke-direct {v3, v4}, Lcom/android/server/pm/PersonaIdentificationGenerator;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mIdGenerator:Lcom/android/server/pm/PersonaIdentificationGenerator;

    .line 369
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.android.keychain"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.sec.android.inputmethod"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.android.certinstaller"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.sec.android.app.keyguard"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.android.defcontainer"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.android.keyguard"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "android"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.android.settings"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.android.providers.settings"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.sec.providers.settingsearch"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.android.providers.applications"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.android.systemui"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.sec.android.app.wallpaperchooser"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.android.inputmethod.latin"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.android.inputdevices"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.android.providers.media"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.android.providers.downloads.ui"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.android.providers.downloads"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.sec.android.app.sbrowser"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    const-string v4, "com.sec.android.app.sbrowsertry"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->widgetAppList:Ljava/util/ArrayList;

    const-string v4, "com.google.android.gm"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->widgetAppList:Ljava/util/ArrayList;

    const-string v4, "com.sec.android.widgetapp.digitalclock"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->widgetAppList:Ljava/util/ArrayList;

    const-string v4, "com.samsung.android.app.memo"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->widgetAppList:Ljava/util/ArrayList;

    const-string v4, "com.sec.android.app.music"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->widgetAppList:Ljava/util/ArrayList;

    const-string v4, "com.sec.android.app.videoplayer"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    .line 398
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 399
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mClients:Ljava/util/ArrayList;

    .line 400
    new-instance v3, Ljava/io/File;

    sget-object v6, Lcom/android/server/pm/PersonaManagerService;->USER_INFO_DIR:Ljava/lang/String;

    invoke-direct {v3, p5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    .line 406
    iput-object p6, p0, Lcom/android/server/pm/PersonaManagerService;->mBaseUserPath:Ljava/io/File;

    .line 412
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    const-string/jumbo v7, "userwithpersonalist.xml"

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    .line 413
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 415
    :try_start_2
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 416
    const-string v3, "PersonaManagerService"

    const-string v6, "PMS list file created "

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 427
    :cond_0
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/android/server/pm/HandlerCacheManager;->getInstance()Lcom/android/server/pm/HandlerCacheManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;

    .line 430
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->readUserList()V

    .line 432
    sput-object p0, Lcom/android/server/pm/PersonaManagerService;->sInstance:Lcom/android/server/pm/PersonaManagerService;

    .line 434
    const-string v3, "PersonaManagerService"

    const-string v6, "<init> adding PersonaStateManagerService"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    new-instance v3, Lcom/android/server/pm/PersonaStateManagerService;

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/android/server/pm/PersonaStateManagerService;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaStateManagerService:Lcom/android/server/pm/PersonaStateManagerService;

    .line 436
    const-string v3, "persona_state_manager"

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaStateManagerService:Lcom/android/server/pm/PersonaStateManagerService;

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 437
    sget-object v3, Lcom/android/server/pm/PersonaManagerService;->mPolicyMap:Ljava/util/Map;

    const-string v6, "persona_state_manager"

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaStateManagerService:Lcom/android/server/pm/PersonaStateManagerService;

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    const-string v3, "PersonaManagerService"

    const-string v6, "<init> adding PersonaFileManagerService"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    new-instance v1, Lcom/android/server/pm/PersonaFileManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/server/pm/PersonaFileManagerService;-><init>(Landroid/content/Context;)V

    .line 441
    .local v1, "fileService":Lcom/android/server/pm/PersonaFileManagerService;
    const-string v3, "persona_file_system"

    invoke-static {v3, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 442
    sget-object v3, Lcom/android/server/pm/PersonaManagerService;->mPolicyMap:Ljava/util/Map;

    const-string v6, "persona_file_system"

    invoke-interface {v3, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    const-string v3, "PersonaManagerService"

    const-string v6, "<init> adding PersonaPolicyManagerService"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    new-instance v2, Lcom/android/server/pm/PersonaPolicyManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/pm/PersonaPolicyManagerService;-><init>(Landroid/content/Context;)V

    .line 446
    .local v2, "policyService":Lcom/android/server/pm/PersonaPolicyManagerService;
    const-string v3, "persona_policy"

    invoke-static {v3, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 447
    sget-object v3, Lcom/android/server/pm/PersonaManagerService;->mPolicyMap:Ljava/util/Map;

    const-string v6, "persona_policy"

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    new-instance v3, Landroid/os/HandlerThread;

    const-string v6, "PersonaManagerService"

    const/16 v7, 0xa

    invoke-direct {v3, v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->handlerThread:Landroid/os/HandlerThread;

    .line 450
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 451
    new-instance v3, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v3, p0, v6}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;-><init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 453
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 454
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 455
    return-void

    .line 418
    .end local v1    # "fileService":Lcom/android/server/pm/PersonaFileManagerService;
    .end local v2    # "policyService":Lcom/android/server/pm/PersonaPolicyManagerService;
    :cond_1
    :try_start_5
    const-string v3, "PersonaManagerService"

    const-string v6, "Error Creating PMS list file!!!! "

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 420
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 453
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v3

    .line 454
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v3
.end method

.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .param p1, "dataDir"    # Ljava/io/File;
    .param p2, "baseUserPath"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 339
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object v2, v1

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PersonaManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V

    .line 340
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/pm/PersonaManagerService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->scheduleTimer(IZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/pm/PersonaManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/pm/PersonaManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->killTimer(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/pm/PersonaManagerService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->killTimer(IZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/pm/PersonaManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->changeStateAndSwitch(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/pm/PersonaManagerService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->startResetPersona(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 162
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/HandlerCacheManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPackageInstallObserver:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInstallLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/pm/PersonaManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->removeUserStateLocked(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # Landroid/content/pm/PersonaInfo;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getAdminPackageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/pm/PersonaManagerService;ILjava/util/Set;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/Set;

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->unInstallThirdPartyApksOnReset(ILjava/util/Set;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/pm/PersonaManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/android/server/pm/PersonaManagerService;->installResult:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/pm/PersonaManagerService;Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->setKnoxAppsComponentSetting(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/pm/PersonaManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->unInstallThirdPartyApks(I)V

    return-void
.end method

.method private activateAdmin(Landroid/content/pm/PersonaInfo;JLjava/lang/String;)I
    .locals 20
    .param p1, "personaInfo"    # Landroid/content/pm/PersonaInfo;
    .param p2, "flags"    # J
    .param p4, "admin"    # Ljava/lang/String;

    .prologue
    .line 2173
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->getAdminPackageName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2174
    .local v4, "adminPackageName":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 2175
    const-string v16, "PersonaManagerService"

    const-string v17, "Admin package Name is NULL \n"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    const/16 v16, -0x3f1

    .line 2265
    :goto_0
    return v16

    .line 2182
    :cond_0
    new-instance v12, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 2184
    .local v12, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    new-instance v17, Landroid/content/Intent;

    const-string v18, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v18, 0x8080

    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v19, v0

    invoke-virtual/range {v16 .. v19}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v7

    .line 2187
    .local v7, "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v7, :cond_1

    .line 2189
    const-string v16, "PersonaManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "No Admin available for Persona "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/PersonaManagerService;->cleanPartialPersona(Landroid/content/pm/PersonaInfo;)V

    .line 2191
    const/16 v16, -0x3f1

    goto :goto_0

    .line 2194
    :cond_1
    const/4 v8, 0x0

    .line 2196
    .local v8, "cn":Landroid/content/ComponentName;
    const-string v16, "PersonaManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "activateAdmin count for Resolve info "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    const/4 v13, 0x0

    .local v13, "i":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "count":I
    :goto_1
    if-ge v13, v9, :cond_5

    .line 2201
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 2202
    .local v15, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2203
    .local v5, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v14, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2204
    .local v14, "packageName":Ljava/lang/String;
    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2206
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v6, :cond_2

    .line 2207
    const-string v16, "PersonaManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "activateAdmin appInfo for package  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " AppInfo :-- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    :cond_2
    if-nez v14, :cond_4

    .line 2211
    const-string v16, "PersonaManagerService"

    const-string v17, "activateAdmin packageName is null in Resolve info \n"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    :cond_3
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2215
    :cond_4
    const-string v16, "PersonaManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "packageName is \n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 2221
    :try_start_0
    new-instance v10, Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v10, v0, v15}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 2222
    .local v10, "dpi":Landroid/app/admin/DeviceAdminInfo;
    invoke-virtual {v10}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 2224
    const-string v16, "PersonaManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "activateAdmin appInfo for package  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " component is  :-- \n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2237
    .end local v5    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "dpi":Landroid/app/admin/DeviceAdminInfo;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_5
    if-nez v8, :cond_6

    .line 2239
    const-string v16, "PersonaManagerService"

    const-string v17, "Error activateAdmin admin component is null \n"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    const/16 v16, -0x3f1

    goto/16 :goto_0

    .line 2227
    .restart local v5    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v14    # "packageName":Ljava/lang/String;
    .restart local v15    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v11

    .line 2229
    .local v11, "e":Ljava/lang/Exception;
    const-string v16, "PersonaManagerService"

    const-string v17, "Exception throw during creating  DeviceAdminInfo \n"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2244
    .end local v5    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_6
    const/16 v16, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v12, v8, v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->activateAdminForUser(Landroid/content/ComponentName;ZI)V

    .line 2262
    const-string v16, "PersonaManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "\n isAdminActive return false \n "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method private changeEncryptFsKey(ILjava/lang/String;)Z
    .locals 6
    .param p1, "personaId"    # I
    .param p2, "newPassword"    # Ljava/lang/String;

    .prologue
    .line 5015
    const/4 v2, 0x0

    .line 5017
    .local v2, "resullt":Z
    :try_start_0
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PMS.changeEncryptFsKey->  personaId :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5018
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5019
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v1

    .line 5020
    .local v1, "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v1, :cond_0

    .line 5021
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/content/pm/PersonaInfo;->isSecureStorageEnabled()Z

    move-result v5

    invoke-virtual {v3, p1, v4, p2, v5}, Lcom/sec/knox/container/util/KnoxFileHandler;->changeEncryptionKey(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 5029
    .end local v1    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_0
    :goto_0
    return v2

    .line 5024
    :cond_1
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PMS.changeEncryptFsKey->  not valid personaid - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5026
    :catch_0
    move-exception v0

    .line 5027
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private changeStateAndSwitch(I)V
    .locals 9
    .param p1, "personaId"    # I

    .prologue
    const/4 v5, 0x0

    .line 2677
    :try_start_0
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeStateAndLaunchKeyGuard: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    new-instance v3, Landroid/content/pm/PersonaEvent;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Landroid/content/pm/PersonaEvent;-><init>(I)V

    .line 2679
    .local v3, "pe":Landroid/content/pm/PersonaEvent;
    const/4 v2, 0x0

    .line 2680
    .local v2, "mPersonaStateHandler":Landroid/content/pm/IPersonaStateHandler;
    const-string v6, "persona_state"

    invoke-static {p1, v6}, Lcom/android/server/pm/HandlerCacheManager;->getHandlerForPersona(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 2682
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_2

    .line 2683
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeStateAndLaunchKeyGuard b is not null: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    invoke-static {v0}, Landroid/content/pm/IPersonaStateHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaStateHandler;

    move-result-object v2

    .line 2685
    if-eqz v2, :cond_0

    .line 2686
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PersonaInfo;

    .line 2687
    .local v4, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v4, :cond_0

    .line 2688
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/content/pm/PersonaInfo;->state:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    iget v6, v4, Landroid/content/pm/PersonaInfo;->state:I

    if-nez v6, :cond_0

    .line 2690
    invoke-interface {v2, v3}, Landroid/content/pm/IPersonaStateHandler;->postEvent(Landroid/content/pm/PersonaEvent;)I

    .line 2691
    const-string v6, "PersonaManagerService"

    const-string/jumbo v7, "switchPersona"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    if-nez v4, :cond_1

    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/server/pm/PersonaManagerService;->switchPersona(I)Z

    .line 2703
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "mPersonaStateHandler":Landroid/content/pm/IPersonaStateHandler;
    .end local v3    # "pe":Landroid/content/pm/PersonaEvent;
    .end local v4    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :cond_0
    :goto_1
    return-void

    .line 2692
    .restart local v0    # "b":Landroid/os/IBinder;
    .restart local v2    # "mPersonaStateHandler":Landroid/content/pm/IPersonaStateHandler;
    .restart local v3    # "pe":Landroid/content/pm/PersonaEvent;
    .restart local v4    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :cond_1
    invoke-virtual {v4}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v5

    goto :goto_0

    .line 2697
    .end local v4    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :cond_2
    const-string v5, "PersonaManagerService"

    const-string v6, "postEvent() IPersonaStateHandler from HandlerCacheManager is null."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2700
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "mPersonaStateHandler":Landroid/content/pm/IPersonaStateHandler;
    .end local v3    # "pe":Landroid/content/pm/PersonaEvent;
    :catch_0
    move-exception v1

    .line 2701
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot change state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 5
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    .line 310
    const-string v1, "PersonaManagerService"

    .line 311
    .local v1, "serviceName":Ljava/lang/String;
    sget-object v2, Lcom/android/server/pm/PersonaManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v2, 0x0

    if-eqz v2, :cond_1

    .line 312
    sget-boolean v2, Lcom/android/server/pm/PersonaManagerService;->SEANDROID_SECURITY_VERIFICATION:Z

    if-eqz v2, :cond_0

    .line 313
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 315
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 316
    throw v0

    .line 318
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Security Exception Occurred while pid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] with uid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] trying to access methodName ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] in ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 322
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 325
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private checkCreatePersonaParameters(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "personaType"    # Ljava/lang/String;
    .param p5, "admin"    # Ljava/lang/String;
    .param p6, "handlerApkUri"    # Landroid/net/Uri;

    .prologue
    const-wide/16 v4, 0x8

    const/16 v1, -0x3ea

    .line 1723
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1724
    :cond_0
    const-string v1, "PersonaManagerService"

    const-string v2, "Persona Name cann\'t be null & should have length greater than 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    const/16 v1, -0x3e9

    .line 1759
    :goto_0
    return v1

    .line 1728
    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 1729
    :cond_2
    const-string v1, "PersonaManagerService"

    const-string v2, "Persona Type cann\'t be null & should have length greater than 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    const/16 v1, -0x3ed

    goto :goto_0

    .line 1732
    :cond_3
    and-long v2, p2, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 1733
    if-eqz p5, :cond_4

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 1734
    :cond_4
    const-string v1, "PersonaManagerService"

    const-string v2, "Persona Admin Apk cann\'t be null & should have length greater than 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    const/16 v1, -0x3ec

    goto :goto_0

    .line 1747
    :cond_5
    if-nez p6, :cond_6

    .line 1748
    const-string v2, "PersonaManagerService"

    const-string v3, "Persona Handler Apk cann\'t be null & should have length greater than 1"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1751
    :cond_6
    new-instance v0, Ljava/io/File;

    invoke-virtual {p6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1752
    .local v0, "handlerApk":Ljava/io/File;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1753
    :cond_7
    const-string v2, "PersonaManagerService"

    const-string v3, "Persona Handler Apk file not found"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1759
    :cond_8
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static final checkManagePersonasPermission(Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 745
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 746
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "android.permission.MANAGE_USERS"

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1

    if-eqz v1, :cond_0

    .line 750
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You need MANAGE_USERS permission to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 752
    :cond_0
    return-void
.end method

.method private checkTimaError(II)V
    .locals 2
    .param p1, "personaId"    # I
    .param p2, "timaStatus"    # I

    .prologue
    .line 4977
    packed-switch p2, :pswitch_data_0

    .line 4987
    :goto_0
    return-void

    .line 4982
    :pswitch_0
    const-string v0, "PersonaManagerService"

    const-string v1, "Setting to KNOX_STATE_TIMA_COMPROMISED....."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4983
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->setTimaCompromisedState(I)V

    goto :goto_0

    .line 4977
    nop

    :pswitch_data_0
    .packed-switch 0x1000c
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private cleanPartialPersona(Landroid/content/pm/PersonaInfo;)V
    .locals 2
    .param p1, "personaInfo"    # Landroid/content/pm/PersonaInfo;

    .prologue
    .line 2269
    const-string v0, "PersonaManagerService"

    const-string v1, " cleanPartialPersona called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/content/pm/PersonaInfo;->partial:Z

    .line 2271
    const/4 v0, 0x4

    iput v0, p1, Landroid/content/pm/PersonaInfo;->state:I

    .line 2272
    const-string v0, "PersonaManagerService"

    const-string/jumbo v1, "writeUserLocked called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 2274
    const-string v0, "PersonaManagerService"

    const-string/jumbo v1, "updateUserIdsLocked called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->updateUserIdsLocked()V

    .line 2277
    return-void
.end method

.method private cleanUpSharedPreferences(I)V
    .locals 5
    .param p1, "personaId"    # I

    .prologue
    .line 5048
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getSharedPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 5049
    .local v0, "personaSP":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5050
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DisabledHomeLaunchers"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 5052
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5053
    return-void
.end method

.method private collectInstalledPackages(ILjava/util/Set;)V
    .locals 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3611
    .local p2, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 3612
    const-string v3, "PersonaManagerService"

    const-string v4, "mContext is null inside collectInstalledPackages"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3630
    :cond_0
    return-void

    .line 3616
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v3, v4, p1}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v2

    .line 3617
    .local v2, "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageInfoList size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for id -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3618
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 3620
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    .line 3624
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Non system Installed package for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3625
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private deleteTimaKeyStoreKeys(I)V
    .locals 5
    .param p1, "personaId"    # I

    .prologue
    .line 4955
    :try_start_0
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteTimaKeyStoreKeys-> personaId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4956
    sget-object v2, Lcom/android/server/pm/PersonaManagerService;->TIMA_KEYSTORE_NAME:Ljava/lang/String;

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 4957
    .local v1, "ks":Ljava/security/KeyStore;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 4958
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/pm/PersonaManagerService;->PERSONA_PWD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4959
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/pm/PersonaManagerService;->PERSONA_PWD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 4970
    .end local v1    # "ks":Ljava/security/KeyStore;
    :cond_0
    :goto_0
    return-void

    .line 4961
    :catch_0
    move-exception v0

    .line 4962
    .local v0, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_0

    .line 4963
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v0

    .line 4964
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 4965
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v0

    .line 4966
    .local v0, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_0

    .line 4967
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_3
    move-exception v0

    .line 4968
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private fallbackToSingleUserLocked()V
    .locals 0

    .prologue
    .line 1012
    return-void
.end method

.method private getAdminPackageName(I)Ljava/lang/String;
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    .line 1506
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 1507
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    .line 1508
    invoke-virtual {v0}, Landroid/content/pm/PersonaInfo;->getAdminPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1510
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAdminPackageName(JLjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "flags"    # J
    .param p3, "admin"    # Ljava/lang/String;

    .prologue
    const-wide/16 v9, 0x40

    const-wide/16 v7, 0x20

    const-wide/16 v5, 0x10

    const/4 v2, 0x0

    .line 2283
    and-long v3, p1, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 2286
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2287
    .local v0, "apkUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2288
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_1

    .line 2289
    const-string v3, "PersonaManagerService"

    const-string v4, " getAdminPackageName package info is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v2

    .line 2302
    .end local v0    # "apkUri":Landroid/net/Uri;
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local p3    # "admin":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p3

    .line 2293
    .restart local v0    # "apkUri":Landroid/net/Uri;
    .restart local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local p3    # "admin":Ljava/lang/String;
    :cond_1
    iget-object p3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 2294
    .end local v0    # "apkUri":Landroid/net/Uri;
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    and-long v3, p1, v7

    cmp-long v3, v3, v7

    if-eqz v3, :cond_0

    .line 2297
    and-long v3, p1, v9

    cmp-long v3, v3, v9

    if-nez v3, :cond_3

    .line 2298
    const-string v3, "PersonaManagerService"

    const-string v4, " getAdminPackageName returning null as FLAG_ADMIN_TYPE_NONE"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v2

    .line 2299
    goto :goto_0

    :cond_3
    move-object p3, v2

    .line 2302
    goto :goto_0
.end method

.method private getAdminUid(IJLjava/lang/String;)I
    .locals 10
    .param p1, "personaId"    # I
    .param p2, "flags"    # J
    .param p4, "adminPackageName"    # Ljava/lang/String;

    .prologue
    .line 2103
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAdminUid called  for Persona"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    if-nez p4, :cond_0

    .line 2105
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adminPackageName == null for Persona"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    const/16 v0, -0x3f1

    .line 2160
    :goto_0
    return v0

    .line 2111
    :cond_0
    const/4 v5, 0x0

    .line 2112
    .local v5, "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-wide/16 v6, 0x40

    and-long/2addr v6, p2

    const-wide/16 v8, 0x40

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 2113
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const v7, 0x8080

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 2118
    :goto_1
    if-nez v5, :cond_2

    .line 2119
    const-string v6, "PersonaManagerService"

    const-string v7, "getAdminUid packageInfoList is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    const/16 v0, -0x3f1

    goto :goto_0

    .line 2115
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const v7, 0x8080

    invoke-virtual {v6, v7, p1}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v5

    goto :goto_1

    .line 2122
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 2123
    .local v4, "info":Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_4

    .line 2124
    const-string v6, "PersonaManagerService"

    const-string v7, "getAdminUid packageInfoList info is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2157
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 2159
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "PersonaManagerService"

    const-string v7, "Exception in  getAdminUid available for Persona"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    const/16 v0, -0x3f1

    goto :goto_0

    .line 2127
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "info":Landroid/content/pm/PackageInfo;
    :cond_4
    :try_start_1
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-eqz v6, :cond_3

    .line 2129
    const/4 v1, 0x0

    .line 2130
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_2
    iget-object v1, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2131
    if-nez v1, :cond_5

    .line 2132
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Application info is null for admin package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const v7, 0x8080

    invoke-virtual {v6, p4, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2134
    if-nez v1, :cond_5

    .line 2135
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Application info is null for admin package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    const/16 v0, -0x3f1

    goto/16 :goto_0

    .line 2140
    :cond_5
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2141
    .local v0, "adminUid":I
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin uid is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_6

    .line 2144
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "activateAdmin adminUid is proper for persona "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 2150
    .end local v0    # "adminUid":I
    :catch_1
    move-exception v2

    .line 2151
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception getting application info "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 2146
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "adminUid":I
    :cond_6
    :try_start_4
    invoke-static {p1, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 2147
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Making admin uid proper for persona "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 2155
    .end local v0    # "adminUid":I
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    :cond_7
    :try_start_5
    const-string v6, "PersonaManagerService"

    const-string v7, "No Admin available for Persona"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 2156
    const/16 v0, -0x3f1

    goto/16 :goto_0
.end method

.method private getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 5009
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5010
    .local v0, "password":Ljava/lang/String;
    new-instance v1, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    return-object v1
.end method

.method private getHandlerApkLocation(I)Ljava/lang/String;
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    .line 1514
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 1515
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    .line 1516
    invoke-virtual {v0}, Landroid/content/pm/PersonaInfo;->getHandlerApkLocation()Ljava/lang/String;

    move-result-object v1

    .line 1518
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/server/pm/PersonaManagerService;
    .locals 2

    .prologue
    .line 329
    const-string v0, "getInstance"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 330
    const-class v1, Lcom/android/server/pm/PersonaManagerService;

    monitor-enter v1

    .line 331
    :try_start_0
    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->sInstance:Lcom/android/server/pm/PersonaManagerService;

    monitor-exit v1

    return-object v0

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked(I)J
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 5137
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5138
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mAdminLockSettings:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 5139
    .local v0, "obj":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 5140
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    .line 5142
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method private getNextAvailableIdLocked()I
    .locals 3

    .prologue
    .line 3853
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3854
    const/16 v0, 0x64

    .line 3855
    .local v0, "i":I
    :goto_0
    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    .line 3856
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3861
    :cond_0
    monitor-exit v2

    return v0

    .line 3859
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3862
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPasswordFromTima(I)Ljava/lang/String;
    .locals 10
    .param p1, "personaId"    # I

    .prologue
    .line 4919
    const/4 v4, 0x0

    .line 4921
    .local v4, "password":Ljava/lang/String;
    :try_start_0
    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPasswordFromTima-> personaId :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4922
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getTimaState()I

    move-result v6

    .line 4923
    .local v6, "timaStatus":I
    if-nez v6, :cond_2

    .line 4924
    sget-object v7, Lcom/android/server/pm/PersonaManagerService;->TIMA_KEYSTORE_NAME:Ljava/lang/String;

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 4925
    .local v3, "ks":Ljava/security/KeyStore;
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 4926
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/server/pm/PersonaManagerService;->PERSONA_PWD:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4927
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/server/pm/PersonaManagerService;->PERSONA_PWD:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v7

    check-cast v7, Ljava/security/KeyStore$SecretKeyEntry;

    move-object v0, v7

    check-cast v0, Ljava/security/KeyStore$SecretKeyEntry;

    move-object v2, v0

    .line 4928
    .local v2, "entry":Ljava/security/KeyStore$SecretKeyEntry;
    if-eqz v2, :cond_0

    .line 4929
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v7

    invoke-interface {v7}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_4

    .line 4930
    .end local v4    # "password":Ljava/lang/String;
    .local v5, "password":Ljava/lang/String;
    :try_start_1
    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found key : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/pm/PersonaManagerService;->PERSONA_PWD:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from TIMA keystore"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_1 .. :try_end_1} :catch_5

    move-object v4, v5

    .line 4950
    .end local v2    # "entry":Ljava/security/KeyStore$SecretKeyEntry;
    .end local v3    # "ks":Ljava/security/KeyStore;
    .end local v5    # "password":Ljava/lang/String;
    .end local v6    # "timaStatus":I
    .restart local v4    # "password":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .line 4933
    .restart local v3    # "ks":Ljava/security/KeyStore;
    .restart local v6    # "timaStatus":I
    :cond_1
    :try_start_2
    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "key not found : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/pm/PersonaManagerService;->PERSONA_PWD:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in TIMA keystore"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 4938
    .end local v3    # "ks":Ljava/security/KeyStore;
    .end local v6    # "timaStatus":I
    :catch_0
    move-exception v1

    .line 4939
    .local v1, "e":Ljava/security/KeyStoreException;
    :goto_1
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_0

    .line 4936
    .end local v1    # "e":Ljava/security/KeyStoreException;
    .restart local v6    # "timaStatus":I
    :cond_2
    :try_start_3
    invoke-direct {p0, p1, v6}, Lcom/android/server/pm/PersonaManagerService;->checkTimaError(II)V
    :try_end_3
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    .line 4940
    .end local v6    # "timaStatus":I
    :catch_1
    move-exception v1

    .line 4941
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_2
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 4942
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v1

    .line 4943
    .local v1, "e":Ljava/security/cert/CertificateException;
    :goto_3
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_0

    .line 4944
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :catch_3
    move-exception v1

    .line 4945
    .local v1, "e":Ljava/io/IOException;
    :goto_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 4946
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 4947
    .local v1, "e":Ljava/security/UnrecoverableEntryException;
    :goto_5
    invoke-virtual {v1}, Ljava/security/UnrecoverableEntryException;->printStackTrace()V

    goto :goto_0

    .line 4946
    .end local v1    # "e":Ljava/security/UnrecoverableEntryException;
    .end local v4    # "password":Ljava/lang/String;
    .restart local v2    # "entry":Ljava/security/KeyStore$SecretKeyEntry;
    .restart local v3    # "ks":Ljava/security/KeyStore;
    .restart local v5    # "password":Ljava/lang/String;
    .restart local v6    # "timaStatus":I
    :catch_5
    move-exception v1

    move-object v4, v5

    .end local v5    # "password":Ljava/lang/String;
    .restart local v4    # "password":Ljava/lang/String;
    goto :goto_5

    .line 4944
    .end local v4    # "password":Ljava/lang/String;
    .restart local v5    # "password":Ljava/lang/String;
    :catch_6
    move-exception v1

    move-object v4, v5

    .end local v5    # "password":Ljava/lang/String;
    .restart local v4    # "password":Ljava/lang/String;
    goto :goto_4

    .line 4942
    .end local v4    # "password":Ljava/lang/String;
    .restart local v5    # "password":Ljava/lang/String;
    :catch_7
    move-exception v1

    move-object v4, v5

    .end local v5    # "password":Ljava/lang/String;
    .restart local v4    # "password":Ljava/lang/String;
    goto :goto_3

    .line 4940
    .end local v4    # "password":Ljava/lang/String;
    .restart local v5    # "password":Ljava/lang/String;
    :catch_8
    move-exception v1

    move-object v4, v5

    .end local v5    # "password":Ljava/lang/String;
    .restart local v4    # "password":Ljava/lang/String;
    goto :goto_2

    .line 4938
    .end local v4    # "password":Ljava/lang/String;
    .restart local v5    # "password":Ljava/lang/String;
    :catch_9
    move-exception v1

    move-object v4, v5

    .end local v5    # "password":Ljava/lang/String;
    .restart local v4    # "password":Ljava/lang/String;
    goto :goto_1
.end method

.method private getPersonaInfoLocked(I)Landroid/content/pm/PersonaInfo;
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 587
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaInfo;

    .line 591
    .local v0, "ui":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-nez v1, :cond_0

    .line 592
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserInfo: unknown user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const/4 v0, 0x0

    .line 595
    .end local v0    # "ui":Landroid/content/pm/PersonaInfo;
    :cond_0
    return-object v0
.end method

.method private getPersonaPolicyManagerService()Lcom/android/server/pm/PersonaPolicyManagerService;
    .locals 1

    .prologue
    .line 2457
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/pm/PersonaPolicyManagerService;

    if-nez v0, :cond_0

    .line 2458
    const-string v0, "persona_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaPolicyManagerService;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/pm/PersonaPolicyManagerService;

    .line 2461
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/pm/PersonaPolicyManagerService;

    return-object v0
.end method

.method public static final getPolicyService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "policyService"    # Ljava/lang/String;

    .prologue
    .line 2595
    const-string v0, "getPolicyService"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2596
    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->mPolicyMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getSharedPreferences(I)Landroid/content/SharedPreferences;
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 5039
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllowedInstallerListForUser"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private getTimaService()Landroid/service/tima/ITimaService;
    .locals 2

    .prologue
    .line 5003
    const-string/jumbo v1, "tima"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    .line 5005
    .local v0, "timaService":Landroid/service/tima/ITimaService;
    return-object v0
.end method

.method private getTimaState()I
    .locals 5

    .prologue
    .line 4990
    const/4 v1, -0x1

    .line 4991
    .local v1, "timaStatus":I
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4993
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/tima/ITimaService;->KeyStore3_init()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4998
    :cond_0
    :goto_0
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "timaStatus :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4999
    return v1

    .line 4994
    :catch_0
    move-exception v0

    .line 4995
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private getTimeToLock(I)J
    .locals 5
    .param p1, "personaId"    # I

    .prologue
    .line 3823
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "knox_screen_off_timeout"

    const v4, 0x927c0

    invoke-static {v2, v3, v4, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    int-to-long v0, v2

    .line 3826
    .local v0, "timeout":J
    return-wide v0
.end method

.method private getUninstallablePackagesForRemovePersona(I)Ljava/util/Set;
    .locals 17
    .param p1, "personaHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3538
    const-string v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getUninstallablePackagesForRemovePersona : is called for"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3540
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PersonaInfo;

    .line 3541
    .local v12, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v12, :cond_1

    .line 3542
    const-string v14, "PersonaManagerService"

    const-string v15, "getUninstallablePackagesForRemovePersona no personaInfo for this persona"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3543
    const/4 v8, 0x0

    .line 3606
    :cond_0
    return-object v8

    .line 3546
    :cond_1
    invoke-virtual {v12}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v9

    .line 3547
    .local v9, "parentUserId":I
    const-string v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getUninstallablePackagesForRemovePersona : parentUserId "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3549
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 3550
    .local v7, "otherUsersPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 3551
    .local v13, "personaPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 3553
    .local v8, "packagesToBeUnInstall":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 3554
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 3556
    .local v11, "personaIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 3558
    .local v10, "personaId":Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3560
    .local v4, "id":I
    move/from16 v0, p1

    if-eq v4, v0, :cond_2

    .line 3561
    const-string v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Collect packages started for  : personaid "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3562
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7}, Lcom/android/server/pm/PersonaManagerService;->collectInstalledPackages(ILjava/util/Set;)V

    goto :goto_0

    .line 3564
    :cond_2
    const-string v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Collect packages igonored for  : personaid "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3567
    .end local v4    # "id":I
    .end local v10    # "personaId":Ljava/lang/Integer;
    :cond_3
    const-string v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Collect packages started for  : parentUserId "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3568
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7}, Lcom/android/server/pm/PersonaManagerService;->collectInstalledPackages(ILjava/util/Set;)V

    .line 3571
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v11    # "personaIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    const-string v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Collect packages started for removing : personaId "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3572
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/android/server/pm/PersonaManagerService;->collectInstalledPackages(ILjava/util/Set;)V

    .line 3578
    const-string v14, "com.sec.knox.securehandler"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3579
    const-string v14, "com.sec.knox.containeragent2"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3580
    const-string v14, "com.sec.knox.packageverifier"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3581
    const-string v14, "com.sec.knox.shortcutsms"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3582
    const-string v14, "com.sec.knox.switcher"

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3584
    const-string v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "otherUsersPackages size -"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3585
    const-string v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "personaPackages size -"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3587
    invoke-virtual {v12}, Landroid/content/pm/PersonaInfo;->getInstalledPkgList()Ljava/util/List;

    move-result-object v5

    .line 3588
    .local v5, "installedPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_5

    .line 3593
    const-string v14, "PersonaManagerService"

    const-string v15, "Removing packages added to Owner user during boot."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3594
    invoke-interface {v7, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 3596
    :cond_5
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3597
    .local v6, "name":Ljava/lang/String;
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 3598
    invoke-interface {v8, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3602
    .end local v6    # "name":Ljava/lang/String;
    :cond_7
    const-string v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "packagesToBeUnInstall size -"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3603
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3604
    .local v2, "finalPackage":Ljava/lang/String;
    const-string v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Pkg to be uninstalled is -"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private installAdminApk(IJLjava/lang/String;)I
    .locals 10
    .param p1, "personaId"    # I
    .param p2, "flags"    # J
    .param p4, "admin"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x40

    const-wide/16 v6, 0x20

    const-wide/16 v4, 0x10

    const/4 v1, 0x0

    const/16 v0, -0x3f0

    .line 2309
    and-long v2, p2, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 2311
    const/16 v2, 0x65

    invoke-direct {p0, p1, v2, p4}, Lcom/android/server/pm/PersonaManagerService;->installPackageForPersona(IILjava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    .line 2312
    const-string v1, "PersonaManagerService"

    const-string v2, "installAdminApk installPackageForPersona returns error"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2316
    goto :goto_0

    .line 2319
    :cond_2
    and-long v2, p2, v6

    cmp-long v2, v2, v6

    if-nez v2, :cond_4

    .line 2321
    const/16 v2, 0x66

    invoke-direct {p0, p1, v2, p4}, Lcom/android/server/pm/PersonaManagerService;->installPackageForPersona(IILjava/lang/String;)I

    move-result v2

    if-gez v2, :cond_3

    .line 2322
    const-string v1, "PersonaManagerService"

    const-string v2, "installAdminApk installPackageForPersona returns error"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v0, v1

    .line 2326
    goto :goto_0

    .line 2328
    :cond_4
    and-long v2, p2, v8

    cmp-long v2, v2, v8

    if-nez v2, :cond_0

    move v0, v1

    .line 2329
    goto :goto_0
.end method

.method private installApkUriForPersona(ILandroid/net/Uri;)I
    .locals 12
    .param p1, "personaId"    # I
    .param p2, "apkUri"    # Landroid/net/Uri;

    .prologue
    .line 2407
    const/4 v9, 0x0

    .line 2408
    .local v9, "packageAlreadyInstalled":Z
    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mPackageInstallObserver:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    monitor-enter v11

    .line 2409
    :try_start_0
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " installApkUriForPersona  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 2413
    .local v10, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v10, :cond_1

    .line 2415
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2417
    const/4 v9, 0x1

    .line 2426
    :goto_0
    if-eqz v9, :cond_2

    .line 2428
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I

    move-result v0

    monitor-exit v11

    .line 2449
    :goto_1
    return v0

    .line 2420
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 2423
    :cond_1
    const-string v0, "PersonaManagerService"

    const-string v1, " installApkUriForPersona  returns error "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    const/4 v0, -0x1

    monitor-exit v11

    goto :goto_1

    .line 2451
    .end local v10    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2431
    .restart local v10    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    const/4 v0, -0x1

    :try_start_1
    iput v0, p0, Lcom/android/server/pm/PersonaManagerService;->installResult:I

    .line 2432
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPackageInstallObserver:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService;->installPackageForPersonaWithVerificationAndEncryption(ILandroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V

    .line 2434
    const-string v0, "PersonaManagerService"

    const-string v1, " installPackageForPersonaWithVerificationAndEncryption  returns "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2436
    :try_start_2
    const-string v0, "PersonaManagerService"

    const-string v1, " calling mPackageInstallObserver  wait "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPackageInstallObserver:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    const-wide/32 v1, 0x2bf20

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 2438
    const-string v0, "PersonaManagerService"

    const-string v1, "mPackageInstallObserver wait returns"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    iget v0, p0, Lcom/android/server/pm/PersonaManagerService;->installResult:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 2440
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Failure to install package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " package manager result code is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/PersonaManagerService;->installResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2441
    const/4 v0, -0x1

    :try_start_3
    monitor-exit v11

    goto :goto_1

    .line 2443
    :cond_3
    const/4 v0, 0x0

    monitor-exit v11

    goto :goto_1

    .line 2445
    :catch_0
    move-exception v8

    .line 2447
    .local v8, "e":Ljava/lang/InterruptedException;
    const-string v0, "PersonaManagerService"

    const-string v1, "Package installPackageForPersonaWithVerificationAndEncryption  wait error "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2449
    const/4 v0, -0x1

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private installDefaultApplications(ILjava/util/List;)Z
    .locals 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1453
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installDefaultApplications for  :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mBaseUserPath:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1455
    .local v0, "userPath":Ljava/io/File;
    const-string v1, "PersonaManagerService"

    const-string v2, "installDefaultApplications createNewPersonaLILPw called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1, v0, p2}, Lcom/android/server/pm/PackageManagerService;->createNewPersonaLILPw(ILjava/io/File;Ljava/util/List;)V

    .line 1461
    const/4 v1, 0x1

    return v1
.end method

.method private installExistingPackageForPersona(ILjava/lang/String;)I
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 2386
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p2}, Lcom/android/server/pm/PackageManagerService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2387
    const-string v2, "PersonaManagerService"

    const-string v3, "packageAlreadyInstalled is true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " installExistingPackageForPersona "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    iput v1, p0, Lcom/android/server/pm/PersonaManagerService;->installResult:I

    .line 2390
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/PackageManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I

    move-result v0

    .line 2391
    .local v0, "installResult":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 2392
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Failure to install package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " package manager result code is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    .end local v0    # "installResult":I
    :cond_0
    :goto_0
    return v1

    .line 2396
    .restart local v0    # "installResult":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private installPackageForPersona(IILjava/lang/String;)I
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "type"    # I
    .param p3, "pathOrPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 2359
    const/16 v2, 0x65

    if-ne p2, v2, :cond_2

    .line 2362
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2363
    .local v0, "apkUri":Landroid/net/Uri;
    if-nez v0, :cond_1

    .line 2364
    const-string v2, "PersonaManagerService"

    const-string v3, "installPackageForPersona apkUri is  null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    .end local v0    # "apkUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return v1

    .line 2368
    .restart local v0    # "apkUri":Landroid/net/Uri;
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->installApkUriForPersona(ILandroid/net/Uri;)I

    move-result v1

    goto :goto_0

    .line 2369
    .end local v0    # "apkUri":Landroid/net/Uri;
    :cond_2
    const/16 v2, 0x66

    if-ne p2, v2, :cond_0

    .line 2370
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p3}, Lcom/android/server/pm/PackageManagerService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2372
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private installPackageUriForPersona(IILandroid/net/Uri;)I
    .locals 2
    .param p1, "personaId"    # I
    .param p2, "type"    # I
    .param p3, "apkUri"    # Landroid/net/Uri;

    .prologue
    .line 2338
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/PersonaManagerService;->installApkUriForPersona(ILandroid/net/Uri;)I

    move-result v0

    .line 2339
    .local v0, "result":I
    if-gez v0, :cond_0

    .line 2340
    packed-switch p2, :pswitch_data_0

    .line 2348
    const/4 v1, -0x1

    .line 2353
    :goto_0
    return v1

    .line 2342
    :pswitch_0
    const/16 v1, -0x3ee

    goto :goto_0

    .line 2344
    :pswitch_1
    const/16 v1, -0x3ef

    goto :goto_0

    .line 2346
    :pswitch_2
    const/16 v1, -0x7d1

    goto :goto_0

    .line 2353
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2340
    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isAppInList(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "personaId"    # I

    .prologue
    .line 5062
    invoke-direct {p0, p3}, Lcom/android/server/pm/PersonaManagerService;->getSharedPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 5063
    .local v1, "personaSP":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 5065
    .local v0, "apps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 5066
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 5069
    :goto_0
    return v2

    .line 5068
    :cond_0
    const-string v2, "PersonaManagerService"

    const-string v3, "app list null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5069
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isKeyGuardEnabledFromMDM(I)Z
    .locals 8
    .param p1, "personaId"    # I

    .prologue
    .line 5346
    const/4 v4, 0x1

    .line 5347
    .local v4, "returnValue":Z
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v3

    .line 5349
    .local v3, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5, p1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v1

    .line 5350
    .local v1, "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;

    move-result-object v0

    .line 5351
    .local v0, "ccp":Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;->getEnforceAuthForContainer()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 5355
    .end local v0    # "ccp":Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;
    .end local v1    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    :goto_0
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isKeyGuardEnabledFromMDM : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5356
    return v4

    .line 5352
    :catch_0
    move-exception v2

    .line 5353
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SecurityException:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 5131
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked(I)J

    move-result-wide v0

    .line 5132
    .local v0, "maximumScreenOffTimeoutFromDeviceAdmin":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isPersonaLimitReachedLocked()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1764
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v0

    .line 1766
    .local v0, "mPersonaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v0, :cond_0

    .line 1768
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 1769
    const-string v2, "PersonaManagerService"

    const-string v3, " isPersonaLimitReachedLocked returns true"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    :goto_0
    return v1

    .line 1773
    :cond_0
    const-string v1, "PersonaManagerService"

    const-string v2, " isPersonaLimitReachedLocked returns false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSuperLockState(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 4038
    packed-switch p1, :pswitch_data_0

    .line 4044
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 4042
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 4038
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isUserLimitReachedLocked()Z
    .locals 2

    .prologue
    .line 732
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 733
    .local v0, "nPersonas":I
    const/4 v1, 0x0

    return v1
.end method

.method private killTimer(I)V
    .locals 1
    .param p1, "personaId"    # I

    .prologue
    .line 5273
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->killTimer(IZ)V

    .line 5274
    return-void
.end method

.method private killTimer(IZ)V
    .locals 9
    .param p1, "personaId"    # I
    .param p2, "force"    # Z

    .prologue
    .line 5277
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 5278
    :try_start_0
    const-string v5, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "killtimer: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5279
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 5280
    .local v3, "token":J
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v7, "alarm"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 5281
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.sec.knox.container.INTENT_KNOX_ALARM_TIMEOUT"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5282
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "personaid"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5283
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const/16 v7, 0x263e

    const/high16 v8, 0x48000000    # 131072.0f

    invoke-static {v5, v7, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 5285
    .local v2, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 5286
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5287
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5288
    monitor-exit v6

    .line 5289
    return-void

    .line 5288
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pi":Landroid/app/PendingIntent;
    .end local v3    # "token":J
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private printLastTimeToBackground()V
    .locals 5

    .prologue
    .line 3830
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "print lastTimeToBackground size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3831
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3832
    .local v1, "tId":Ljava/lang/Integer;
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastTimeToBackground "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3834
    .end local v1    # "tId":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 1365
    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1366
    .local v1, "valueString":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1371
    .end local p3    # "defaultValue":I
    :goto_0
    return p3

    .line 1369
    .restart local p3    # "defaultValue":I
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    goto :goto_0

    .line 1370
    :catch_0
    move-exception v0

    .line 1371
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .prologue
    .line 1376
    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1377
    .local v1, "valueString":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1382
    .end local p3    # "defaultValue":J
    :goto_0
    return-wide p3

    .line 1380
    .restart local p3    # "defaultValue":J
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p3

    goto :goto_0

    .line 1381
    :catch_0
    move-exception v0

    .line 1382
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private readUser(II)Landroid/content/pm/PersonaInfo;
    .locals 52
    .param p1, "id"    # I
    .param p2, "parentId"    # I

    .prologue
    .line 1202
    const/4 v8, 0x0

    .line 1203
    .local v8, "flags":I
    move/from16 v42, p1

    .line 1204
    .local v42, "serialNumber":I
    const/4 v10, -0x1

    .line 1205
    .local v10, "creatorUid":I
    const/4 v6, 0x0

    .line 1206
    .local v6, "name":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1207
    .local v7, "iconPath":Ljava/lang/String;
    const-wide/16 v13, 0x0

    .line 1208
    .local v13, "creationTime":J
    const-wide/16 v26, 0x0

    .line 1209
    .local v26, "lastLoggedInTime":J
    const-wide/16 v28, 0x0

    .line 1210
    .local v28, "lastLoggedOutTime":J
    const/4 v15, 0x0

    .line 1211
    .local v15, "encryptedId":Ljava/lang/String;
    const/16 v41, 0x0

    .line 1213
    .local v41, "samsungAccount":Ljava/lang/String;
    const/16 v33, 0x0

    .line 1214
    .local v33, "partial":Z
    const/16 v37, 0x0

    .line 1215
    .local v37, "removePersona":Z
    const/16 v24, 0x0

    .line 1216
    .local v24, "isUserManaged":Z
    const/16 v39, 0x0

    .line 1217
    .local v39, "resetPassword":Z
    const/16 v30, -0x1

    .line 1218
    .local v30, "oldState":I
    const/16 v44, -0x1

    .line 1219
    .local v44, "state":I
    const/16 v21, 0x0

    .line 1220
    .local v21, "isFsMounted":Z
    const/16 v22, 0x0

    .line 1221
    .local v22, "isSuperLocked":Z
    const-string v19, ""

    .line 1222
    .local v19, "handlerServiceName":Ljava/lang/String;
    const-string v31, ""

    .line 1223
    .local v31, "packageName":Ljava/lang/String;
    const-string v43, ""

    .line 1224
    .local v43, "setupWizardApkLocation":Ljava/lang/String;
    const-string v18, ""

    .line 1225
    .local v18, "handlerApkLocation":Ljava/lang/String;
    const-string v11, ""

    .line 1226
    .local v11, "adminPackageName":Ljava/lang/String;
    const/4 v12, -0x1

    .line 1227
    .local v12, "adminUid":I
    const-string v34, "default"

    .line 1228
    .local v34, "personaType":Ljava/lang/String;
    const/16 v20, 0x0

    .line 1229
    .local v20, "installedPkgs":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1231
    .local v16, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v48, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v50, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v50

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, ".xml"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-direct {v5, v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v48

    invoke-direct {v0, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1232
    .local v48, "userFile":Landroid/util/AtomicFile;
    invoke-virtual/range {v48 .. v48}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v16

    .line 1233
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v32

    .line 1234
    .local v32, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1237
    :cond_0
    invoke-interface/range {v32 .. v32}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v46

    .local v46, "type":I
    const/4 v5, 0x2

    move/from16 v0, v46

    if-eq v0, v5, :cond_1

    const/4 v5, 0x1

    move/from16 v0, v46

    if-ne v0, v5, :cond_0

    .line 1241
    :cond_1
    const/4 v5, 0x2

    move/from16 v0, v46

    if-eq v0, v5, :cond_3

    .line 1242
    const-string v5, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Unable to read user "

    move-object/from16 v0, v50

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1243
    const/4 v4, 0x0

    .line 1354
    if-eqz v16, :cond_2

    .line 1356
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 1361
    .end local v32    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v46    # "type":I
    .end local v48    # "userFile":Landroid/util/AtomicFile;
    :cond_2
    :goto_0
    return-object v4

    .line 1246
    .restart local v32    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v46    # "type":I
    .restart local v48    # "userFile":Landroid/util/AtomicFile;
    :cond_3
    const/4 v5, 0x2

    move/from16 v0, v46

    if-ne v0, v5, :cond_c

    :try_start_2
    invoke-interface/range {v32 .. v32}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-interface/range {v32 .. v32}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "user"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1247
    const-string v5, "id"

    const/4 v9, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v5, v9}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v45

    .line 1248
    .local v45, "storedId":I
    move/from16 v0, v45

    move/from16 v1, p1

    if-eq v0, v1, :cond_4

    .line 1249
    const-string v5, "PersonaManagerService"

    const-string v9, "User id does not match the file name"

    invoke-static {v5, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1250
    const/4 v4, 0x0

    .line 1354
    if-eqz v16, :cond_2

    .line 1356
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1357
    :catch_0
    move-exception v5

    goto :goto_0

    .line 1252
    :cond_4
    :try_start_4
    const-string v5, "serialNumber"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, p1

    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v42

    .line 1253
    const-string v5, "flags"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v5, v9}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 1254
    const/4 v5, 0x0

    const-string v9, "icon"

    move-object/from16 v0, v32

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1255
    const-string v5, "created"

    const-wide/16 v50, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v50

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v13

    .line 1256
    const-string v5, "lastLoggedIn"

    const-wide/16 v50, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v50

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v26

    .line 1257
    const-string v5, "lastLoggedOut"

    const-wide/16 v50, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v50

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v28

    .line 1258
    const/4 v5, 0x0

    const-string v9, "encryptedId"

    move-object/from16 v0, v32

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1259
    const/4 v5, 0x0

    const-string v9, "samsungAccount"

    move-object/from16 v0, v32

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1261
    const/4 v5, 0x0

    const-string v9, "partial"

    move-object/from16 v0, v32

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 1263
    .local v49, "valueString":Ljava/lang/String;
    const/4 v5, 0x0

    const-string v9, "removePersona"

    move-object/from16 v0, v32

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1265
    .local v38, "removeString":Ljava/lang/String;
    const/4 v5, 0x0

    const-string v9, "isUserManaged"

    move-object/from16 v0, v32

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1267
    .local v25, "isUserManagedString":Ljava/lang/String;
    const/4 v5, 0x0

    const-string v9, "resetPassword"

    move-object/from16 v0, v32

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 1269
    .local v40, "resetPasswordString":Ljava/lang/String;
    const-string v5, "oldState"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v5, v9}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v30

    .line 1272
    const/4 v5, 0x0

    const-string v9, "fsMounted"

    move-object/from16 v0, v32

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1273
    .local v17, "fsMountedString":Ljava/lang/String;
    const/4 v5, 0x0

    const-string v9, "personatype"

    move-object/from16 v0, v32

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 1275
    .local v47, "typeString":Ljava/lang/String;
    const-string v5, "personastate"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v5, v9}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v44

    .line 1276
    const/4 v5, 0x0

    const-string v9, "personahandlername"

    move-object/from16 v0, v32

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1277
    const/4 v5, 0x0

    const-string v9, "personahandlerpackage"

    move-object/from16 v0, v32

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1278
    const/4 v5, 0x0

    const-string/jumbo v9, "setupapklocation"

    move-object/from16 v0, v32

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 1279
    const/4 v5, 0x0

    const-string v9, "handlerapklocation"

    move-object/from16 v0, v32

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1280
    const/4 v5, 0x0

    const-string v9, "adminpackagename"

    move-object/from16 v0, v32

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1281
    const-string v5, "adminuid"

    const/4 v9, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v5, v9}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v12

    .line 1282
    const-string v5, "creatorUid"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v5, v10}, Lcom/android/server/pm/PersonaManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    .line 1284
    const/4 v5, 0x0

    const-string v9, "installedPkgList"

    move-object/from16 v0, v32

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1285
    const/4 v5, 0x0

    const-string/jumbo v9, "superlocked"

    move-object/from16 v0, v32

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1286
    .local v23, "isSuperLockedString":Ljava/lang/String;
    const-string/jumbo v5, "true"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 1287
    const-string/jumbo v5, "true"

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1288
    const/16 v33, 0x1

    .line 1290
    :cond_5
    const-string/jumbo v5, "true"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1291
    const/16 v37, 0x1

    .line 1293
    :cond_6
    const-string/jumbo v5, "true"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1294
    const/16 v24, 0x1

    .line 1296
    :cond_7
    const-string/jumbo v5, "true"

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1297
    const/16 v39, 0x1

    .line 1299
    :cond_8
    const-string/jumbo v5, "true"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1300
    const/16 v21, 0x1

    .line 1302
    :cond_9
    if-eqz v47, :cond_a

    .line 1304
    move-object/from16 v34, v47

    .line 1307
    :cond_a
    invoke-interface/range {v32 .. v32}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v46

    const/4 v5, 0x2

    move/from16 v0, v46

    if-eq v0, v5, :cond_b

    const/4 v5, 0x1

    move/from16 v0, v46

    if-ne v0, v5, :cond_a

    .line 1309
    :cond_b
    const/4 v5, 0x2

    move/from16 v0, v46

    if-ne v0, v5, :cond_c

    invoke-interface/range {v32 .. v32}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-interface/range {v32 .. v32}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v9, "name"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1310
    invoke-interface/range {v32 .. v32}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v46

    .line 1311
    const/4 v5, 0x4

    move/from16 v0, v46

    if-ne v0, v5, :cond_c

    .line 1312
    invoke-interface/range {v32 .. v32}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 1317
    .end local v17    # "fsMountedString":Ljava/lang/String;
    .end local v23    # "isSuperLockedString":Ljava/lang/String;
    .end local v25    # "isUserManagedString":Ljava/lang/String;
    .end local v38    # "removeString":Ljava/lang/String;
    .end local v40    # "resetPasswordString":Ljava/lang/String;
    .end local v45    # "storedId":I
    .end local v47    # "typeString":Ljava/lang/String;
    .end local v49    # "valueString":Ljava/lang/String;
    :cond_c
    new-instance v4, Landroid/content/pm/PersonaInfo;

    move/from16 v5, p1

    move/from16 v9, p2

    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PersonaInfo;-><init>(ILjava/lang/String;Ljava/lang/String;III)V

    .line 1318
    .local v4, "personaInfo":Landroid/content/pm/PersonaInfo;
    move/from16 v0, v42

    iput v0, v4, Landroid/content/pm/PersonaInfo;->serialNumber:I

    .line 1319
    iput-wide v13, v4, Landroid/content/pm/PersonaInfo;->creationTime:J

    .line 1320
    move-wide/from16 v0, v26

    iput-wide v0, v4, Landroid/content/pm/PersonaInfo;->lastLoggedInTime:J

    .line 1321
    move-wide/from16 v0, v28

    iput-wide v0, v4, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 1322
    iput-object v15, v4, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 1323
    move/from16 v0, v33

    iput-boolean v0, v4, Landroid/content/pm/PersonaInfo;->partial:Z

    .line 1324
    move/from16 v0, v37

    iput-boolean v0, v4, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 1325
    move-object/from16 v0, v34

    iput-object v0, v4, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 1326
    move/from16 v0, v44

    iput v0, v4, Landroid/content/pm/PersonaInfo;->state:I

    .line 1327
    move/from16 v0, v22

    iput-boolean v0, v4, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    .line 1328
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/pm/PersonaInfo;->setHandlerServiceName(Ljava/lang/String;)V

    .line 1329
    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/content/pm/PersonaInfo;->setHandlerPackageName(Ljava/lang/String;)V

    .line 1330
    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Landroid/content/pm/PersonaInfo;->setSetupWizardApkLocation(Ljava/lang/String;)V

    .line 1331
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/pm/PersonaInfo;->setHandlerApkLocation(Ljava/lang/String;)V

    .line 1332
    invoke-virtual {v4, v11}, Landroid/content/pm/PersonaInfo;->setAdminPackageName(Ljava/lang/String;)V

    .line 1333
    invoke-virtual {v4, v12}, Landroid/content/pm/PersonaInfo;->setAdminUid(I)V

    .line 1334
    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Landroid/content/pm/PersonaInfo;->setsamsungAccount(Ljava/lang/String;)V

    .line 1335
    move/from16 v0, v24

    iput-boolean v0, v4, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 1336
    move/from16 v0, v39

    iput-boolean v0, v4, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 1337
    move/from16 v0, v21

    iput-boolean v0, v4, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 1338
    if-eqz v20, :cond_d

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    .line 1339
    const-string v5, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "readUser: Installed pkg list: "

    move-object/from16 v0, v50

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    const-string v5, ","

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v35

    .line 1341
    .local v35, "pkgArray":[Ljava/lang/String;
    new-instance v36, Ljava/util/ArrayList;

    invoke-static/range {v35 .. v35}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1342
    .local v36, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v9, 0x0

    const/16 v50, 0x0

    aput-object v50, v5, v9

    const/4 v9, 0x1

    const-string v50, ""

    aput-object v50, v5, v9

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-interface {v0, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1343
    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Landroid/content/pm/PersonaInfo;->setInstalledPkgList(Ljava/util/List;)V

    .line 1348
    .end local v35    # "pkgArray":[Ljava/lang/String;
    .end local v36    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d
    move/from16 v0, v30

    iput v0, v4, Landroid/content/pm/PersonaInfo;->oldState:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1354
    if-eqz v16, :cond_2

    .line 1356
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 1357
    :catch_1
    move-exception v5

    goto/16 :goto_0

    .line 1351
    .end local v4    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .end local v32    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v46    # "type":I
    .end local v48    # "userFile":Landroid/util/AtomicFile;
    :catch_2
    move-exception v5

    .line 1354
    if-eqz v16, :cond_e

    .line 1356
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1361
    :cond_e
    :goto_1
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1352
    :catch_3
    move-exception v5

    .line 1354
    if-eqz v16, :cond_e

    .line 1356
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 1357
    :catch_4
    move-exception v5

    goto :goto_1

    .line 1354
    :catchall_0
    move-exception v5

    if-eqz v16, :cond_f

    .line 1356
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 1358
    :cond_f
    :goto_2
    throw v5

    .line 1357
    .restart local v32    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v46    # "type":I
    .restart local v48    # "userFile":Landroid/util/AtomicFile;
    :catch_5
    move-exception v5

    goto/16 :goto_0

    .end local v32    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v46    # "type":I
    .end local v48    # "userFile":Landroid/util/AtomicFile;
    :catch_6
    move-exception v5

    goto :goto_1

    :catch_7
    move-exception v9

    goto :goto_2
.end method

.method private readUserList()V
    .locals 3

    .prologue
    .line 795
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 797
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->readUsersWithPersonaLocked()V

    .line 799
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 800
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->readUserListLocked(I)V

    .line 799
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 808
    :cond_0
    monitor-exit v2

    .line 809
    return-void

    .line 808
    .end local v0    # "k":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private readUserListLocked(I)V
    .locals 14
    .param p1, "userId"    # I

    .prologue
    .line 813
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/pm/PersonaManagerService;->mGuestEnabled:Z

    .line 814
    const-string v11, "PersonaManagerService"

    const-string v12, "readUserListLocked"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    new-instance v7, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "personalist.xml"

    invoke-direct {v7, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    .local v7, "personaListFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 817
    const-string v11, "PersonaManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "File does not exists, creating it "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    move-result v11

    if-nez v11, :cond_0

    .line 820
    const-string v11, ""

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error creating file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 829
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 831
    .local v0, "atomicPersonaListFile":Landroid/util/AtomicFile;
    :try_start_1
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 832
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 833
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v5, v2, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 836
    :cond_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    const/4 v11, 0x2

    if-eq v8, v11, :cond_2

    const/4 v11, 0x1

    if-ne v8, v11, :cond_1

    .line 840
    :cond_2
    const/4 v11, 0x2

    if-eq v8, v11, :cond_4

    .line 841
    const-string v11, "PersonaManagerService"

    const-string v12, "Unable to read persona list"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 897
    if-eqz v2, :cond_3

    .line 899
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 904
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    :cond_3
    :goto_1
    return-void

    .line 822
    .end local v0    # "atomicPersonaListFile":Landroid/util/AtomicFile;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 824
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 825
    const-string v11, "PersonaManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error creating file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 846
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "atomicPersonaListFile":Landroid/util/AtomicFile;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    :cond_4
    const/16 v11, 0x64

    :try_start_3
    iput v11, p0, Lcom/android/server/pm/PersonaManagerService;->mNextSerialNumber:I

    .line 847
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "users"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 848
    const/4 v11, 0x0

    const-string v12, "nextSerialNumber"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 849
    .local v4, "lastSerialNumber":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 850
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/server/pm/PersonaManagerService;->mNextSerialNumber:I

    .line 852
    :cond_5
    const/4 v11, 0x0

    const-string/jumbo v12, "version"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 853
    .local v10, "versionNumber":Ljava/lang/String;
    if-eqz v10, :cond_6

    .line 854
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/server/pm/PersonaManagerService;->mUserVersion:I

    .line 858
    .end local v4    # "lastSerialNumber":Ljava/lang/String;
    .end local v10    # "versionNumber":Ljava/lang/String;
    :cond_6
    :goto_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v11, 0x1

    if-eq v8, v11, :cond_b

    .line 859
    const/4 v11, 0x2

    if-ne v8, v11, :cond_6

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "user"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 860
    const/4 v11, 0x0

    const-string v12, "id"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 861
    .local v3, "id":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {p0, v11, p1}, Lcom/android/server/pm/PersonaManagerService;->readUser(II)Landroid/content/pm/PersonaInfo;

    move-result-object v9

    .line 863
    .local v9, "user":Landroid/content/pm/PersonaInfo;
    if-eqz v9, :cond_6

    .line 864
    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    iget v12, v9, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v11, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 866
    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 867
    const-string v11, "PersonaManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "found previous persona(s) for user "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    iget v12, v9, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 869
    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    new-instance v12, Ljava/lang/Integer;

    iget v13, v9, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v12, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    :cond_7
    :goto_3
    invoke-virtual {v9}, Landroid/content/pm/PersonaInfo;->isGuest()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 879
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/pm/PersonaManagerService;->mGuestEnabled:Z

    .line 881
    :cond_8
    iget v11, p0, Lcom/android/server/pm/PersonaManagerService;->mNextSerialNumber:I

    if-ltz v11, :cond_9

    iget v11, p0, Lcom/android/server/pm/PersonaManagerService;->mNextSerialNumber:I

    iget v12, v9, Landroid/content/pm/PersonaInfo;->id:I

    if-gt v11, v12, :cond_6

    .line 882
    :cond_9
    iget v11, v9, Landroid/content/pm/PersonaInfo;->id:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/android/server/pm/PersonaManagerService;->mNextSerialNumber:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 892
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    .end local v9    # "user":Landroid/content/pm/PersonaInfo;
    :catch_1
    move-exception v11

    .line 897
    if-eqz v2, :cond_3

    .line 899
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 900
    :catch_2
    move-exception v11

    goto/16 :goto_1

    .line 873
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    .restart local v9    # "user":Landroid/content/pm/PersonaInfo;
    :cond_a
    :try_start_5
    const-string v11, "PersonaManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "creating new persona list to user "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 875
    .local v6, "personaIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v11, Ljava/lang/Integer;

    iget v12, v9, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 894
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "personaIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "type":I
    .end local v9    # "user":Landroid/content/pm/PersonaInfo;
    :catch_3
    move-exception v11

    .line 897
    if-eqz v2, :cond_3

    .line 899
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_1

    .line 900
    :catch_4
    move-exception v11

    goto/16 :goto_1

    .line 889
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    :cond_b
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->updateUserIdsLocked()V

    .line 890
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->printLastTimeToBackground()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 897
    if-eqz v2, :cond_3

    .line 899
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_1

    .line 900
    :catch_5
    move-exception v11

    goto/16 :goto_1

    .line 897
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    :catchall_0
    move-exception v11

    if-eqz v2, :cond_c

    .line 899
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 901
    :cond_c
    :goto_4
    throw v11

    .line 900
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    :catch_6
    move-exception v11

    goto/16 :goto_1

    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    :catch_7
    move-exception v12

    goto :goto_4
.end method

.method private readUsersWithPersonaLocked()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    .line 908
    const/4 v0, 0x0

    .line 909
    .local v0, "fis":Ljava/io/FileInputStream;
    new-instance v6, Landroid/util/AtomicFile;

    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v6, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 911
    .local v6, "userListFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 912
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 913
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v8, 0x0

    invoke-interface {v3, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 916
    :cond_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    if-eq v4, v10, :cond_1

    if-ne v4, v11, :cond_0

    .line 920
    :cond_1
    if-eq v4, v10, :cond_3

    .line 921
    const-string v8, "PersonaManagerService"

    const-string v9, "Unable to read user list"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 954
    if-eqz v0, :cond_2

    .line 956
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 961
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    :cond_2
    :goto_0
    return-void

    .line 926
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "type":I
    :cond_3
    const/4 v8, -0x1

    :try_start_2
    iput v8, p0, Lcom/android/server/pm/PersonaManagerService;->mNextSerialNumber:I

    .line 927
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "users"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 928
    const/4 v8, 0x0

    const-string v9, "nextSerialNumber"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 929
    .local v2, "lastSerialNumber":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 930
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/pm/PersonaManagerService;->mNextSerialNumber:I

    .line 932
    :cond_4
    const/4 v8, 0x0

    const-string/jumbo v9, "version"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 933
    .local v7, "versionNumber":Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 934
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/pm/PersonaManagerService;->mUserVersion:I

    .line 938
    .end local v2    # "lastSerialNumber":Ljava/lang/String;
    .end local v7    # "versionNumber":Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    if-eq v4, v11, :cond_6

    .line 939
    if-ne v4, v10, :cond_5

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 940
    const/4 v8, 0x0

    const-string v9, "id"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 941
    .local v1, "id":Ljava/lang/String;
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 942
    .local v5, "userId":Ljava/lang/Integer;
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 943
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 949
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    .end local v5    # "userId":Ljava/lang/Integer;
    :catch_0
    move-exception v8

    .line 954
    if-eqz v0, :cond_2

    .line 956
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 957
    :catch_1
    move-exception v8

    goto :goto_0

    .line 954
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "type":I
    :cond_6
    if-eqz v0, :cond_2

    .line 956
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 957
    :catch_2
    move-exception v8

    goto :goto_0

    .line 951
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    :catch_3
    move-exception v8

    .line 954
    if-eqz v0, :cond_2

    .line 956
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 957
    :catch_4
    move-exception v8

    goto/16 :goto_0

    .line 954
    :catchall_0
    move-exception v8

    if-eqz v0, :cond_7

    .line 956
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 958
    :cond_7
    :goto_2
    throw v8

    .line 957
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "type":I
    :catch_5
    move-exception v8

    goto/16 :goto_0

    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    :catch_6
    move-exception v9

    goto :goto_2
.end method

.method private registerHandlerForPersona(Landroid/content/pm/PersonaInfo;)V
    .locals 11
    .param p1, "pi"    # Landroid/content/pm/PersonaInfo;

    .prologue
    .line 1389
    if-nez p1, :cond_1

    .line 1427
    :cond_0
    :goto_0
    return-void

    .line 1393
    :cond_1
    const/16 v2, 0x80

    .line 1395
    .local v2, "flags":I
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x80

    iget v10, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v6

    .line 1397
    .local v6, "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Iterating through all packages for  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 1400
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1401
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 1404
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1405
    .local v1, "bundle":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 1406
    .local v3, "handlerProxyServiceName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1409
    .local v7, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 1411
    const-string v8, "HandlerProxyService"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1416
    :goto_1
    if-eqz v3, :cond_2

    .line 1417
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1418
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Found handlerProxyServiceName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in package - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    invoke-virtual {p1, v3}, Landroid/content/pm/PersonaInfo;->setHandlerServiceName(Ljava/lang/String;)V

    .line 1420
    invoke-virtual {p1, v7}, Landroid/content/pm/PersonaInfo;->setHandlerPackageName(Ljava/lang/String;)V

    .line 1421
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    goto :goto_0

    .line 1413
    :cond_3
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MetaData is null for   "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private removeDirectoryRecursive(Ljava/io/File;)V
    .locals 7
    .param p1, "parent"    # Ljava/io/File;

    .prologue
    .line 3695
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3696
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 3697
    .local v3, "files":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 3698
    .local v2, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3699
    .local v1, "child":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    .line 3697
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3702
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "child":Ljava/io/File;
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "files":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 3703
    return-void
.end method

.method private removeFilesForSysApp(Lcom/sec/knox/container/util/EnterprisePartitionManager;ILjava/io/File;)V
    .locals 7
    .param p1, "epm"    # Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .param p2, "personaId"    # I
    .param p3, "dir"    # Ljava/io/File;

    .prologue
    .line 1655
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getFiles(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1656
    .local v1, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 1657
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1658
    .local v3, "value":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1659
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1660
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/PersonaManagerService;->removeFilesForSysApp(Lcom/sec/knox/container/util/EnterprisePartitionManager;ILjava/io/File;)V

    .line 1662
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->deleteFile(Ljava/lang/String;I)Z

    .line 1664
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " removing file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1667
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private removeUserStateLocked(I)V
    .locals 9
    .param p1, "personaHandle"    # I

    .prologue
    .line 3637
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, p1}, Lcom/android/server/pm/PackageManagerService;->cleanUpUserLILPw(I)V

    .line 3639
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeUserStateLocked personaHandle "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3643
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PersonaInfo;

    .line 3644
    .local v4, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v4, :cond_1

    .line 3645
    const-string v5, "PersonaManagerService"

    const-string v6, "removeUserStateLocked no personaInfo for this persona"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3692
    :cond_0
    :goto_0
    return-void

    .line 3648
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/content/pm/PersonaInfo;->partial:Z

    .line 3649
    invoke-direct {p0, v4}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 3651
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3652
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3653
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->printLastTimeToBackground()V

    .line 3655
    invoke-virtual {v4}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v1

    .line 3656
    .local v1, "parentUserId":I
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeUserStateLocked parentUserId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3658
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3659
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 3660
    .local v3, "personaIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3661
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 3662
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3663
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3670
    .end local v3    # "personaIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/pm/PersonaManagerService$6;

    invoke-direct {v6, p0, p1}, Lcom/android/server/pm/PersonaManagerService$6;-><init>(Lcom/android/server/pm/PersonaManagerService;I)V

    const-wide/32 v7, 0xea60

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3680
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3681
    .local v2, "personaFile":Ljava/io/File;
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 3682
    .local v0, "atomicPersonaFile":Landroid/util/AtomicFile;
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeUserStateLocked personaFile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3683
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 3685
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->writeUsersWithPersona()V

    .line 3686
    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->writeUserListLocked(I)V

    .line 3687
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->updateUserIdsLocked()V

    .line 3688
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/pm/PersonaManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    .line 3689
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isInMdppMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3690
    invoke-static {}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->getInstance()Lcom/android/server/LockSettingsService$KeyStoreMdpp;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->resetHard(I)Z

    goto/16 :goto_0
.end method

.method private scheduleTimer(IZ)V
    .locals 13
    .param p1, "personaId"    # I
    .param p2, "forceStart"    # Z

    .prologue
    .line 5166
    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 5167
    :try_start_0
    const-string v9, "PersonaManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "scheduleTimer called: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5168
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x1

    if-ne p2, v9, :cond_2

    .line 5169
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 5171
    .local v7, "token":J
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v11, "alarm"

    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 5172
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v9, "com.sec.knox.container.INTENT_KNOX_ALARM_TIMEOUT"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5173
    .local v1, "intent":Landroid/content/Intent;
    const-string v9, "personaid"

    invoke-virtual {v1, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5174
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const/16 v11, 0x263e

    const/high16 v12, 0x48000000    # 131072.0f

    invoke-static {v9, v11, v1, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 5176
    .local v4, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 5177
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5178
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 5179
    const/4 v9, 0x1

    if-ne p2, v9, :cond_3

    const-wide/16 v5, 0x1

    .line 5183
    .local v5, "timeoutMm":J
    :goto_0
    const-wide/16 v11, 0x0

    cmp-long v9, v5, v11

    if-lez v9, :cond_1

    .line 5184
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 5185
    .local v2, "now":J
    const-string v9, "PersonaManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "scheduleTimer(): force restart: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5186
    const-string v9, "PersonaManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setting am scheduleTimer() timeout value: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5187
    const/4 v9, 0x3

    add-long v11, v2, v5

    invoke-virtual {v0, v9, v11, v12, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 5188
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5191
    .end local v2    # "now":J
    .end local v5    # "timeoutMm":J
    :cond_1
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5193
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "pi":Landroid/app/PendingIntent;
    .end local v7    # "token":J
    :cond_2
    monitor-exit v10

    .line 5194
    return-void

    .line 5179
    .restart local v0    # "am":Landroid/app/AlarmManager;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v4    # "pi":Landroid/app/PendingIntent;
    .restart local v7    # "token":J
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v5

    goto :goto_0

    .line 5193
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "pi":Landroid/app/PendingIntent;
    .end local v7    # "token":J
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method private sendIntentForAdminLock(Ljava/lang/String;II)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "personaId"    # I
    .param p3, "ownerId"    # I

    .prologue
    .line 5376
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.knox.container.admin.locked"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5377
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5378
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5380
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5381
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "containerid"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5382
    const-string v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5383
    if-eqz p1, :cond_1

    .line 5384
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 5391
    :goto_0
    return-void

    .line 5387
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendIntentForRemoveContainer(Ljava/lang/String;II)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "personaId"    # I
    .param p3, "ownerId"    # I

    .prologue
    .line 5394
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.knox.container.removed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5395
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5396
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5398
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5399
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "containerid"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5400
    const-string v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5401
    if-eqz p1, :cond_1

    .line 5402
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 5408
    :goto_0
    return-void

    .line 5405
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendPersonaInfoChangedBroadcast(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 668
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 669
    .local v0, "changedIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 670
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 671
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 672
    return-void
.end method

.method private setKnoxAppsComponentForceDisable(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentUserId"    # I

    .prologue
    .line 4748
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.app.samsungapps"

    const-string v3, "com.sec.android.app.samsungapps.KnoxAppsMainActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4752
    .local v0, "componentKnoxApps":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 4753
    .local v1, "result":Z
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->setComponentEnabledSetting(Landroid/content/ComponentName;III)Z

    move-result v1

    .line 4757
    const-string v2, "PersonaManagerService"

    const-string v3, "ALL KnoxApps COMPONENT_ENABLED_STATE_DISABLED"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4758
    return-void
.end method

.method private setKnoxAppsComponentSetting(Landroid/content/Context;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentUserId"    # I

    .prologue
    const/4 v11, 0x1

    .line 4697
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 4698
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "it\'s not knox mode currentUserId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4745
    :goto_0
    return-void

    .line 4701
    :cond_0
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "it\'s knox mode currentUserId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4703
    const-string v0, "com.sec.android.app.samsungapps"

    .line 4704
    .local v0, "SamsungAppsPKGName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 4705
    .local v5, "pi":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    .line 4706
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    const-string v8, "ro.csc.sales_code"

    const-string v9, "none"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4708
    .local v7, "szSalesCode":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v0, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 4709
    iget-object v1, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4710
    if-eqz v1, :cond_2

    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, "Samsung Updates"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 4711
    const-string v8, "CHM"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4712
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->setKnoxAppsComponentForceDisable(Landroid/content/Context;I)V

    .line 4713
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SamsungApps installed, disable knoxapps and return!! because // szSalesCode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4718
    :catch_0
    move-exception v4

    .line 4719
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "PersonaManagerService"

    const-string v9, "SamsungApps Not installed..... So just return!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4716
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :try_start_1
    const-string v8, "PersonaManagerService"

    const-string v9, "SamsungApps installed, but hidden state !!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4723
    :cond_2
    new-instance v3, Landroid/content/ComponentName;

    const-string v8, "com.sec.android.app.samsungapps"

    const-string v9, "com.sec.android.app.samsungapps.SamsungAppsMainActivity"

    invoke-direct {v3, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4726
    .local v3, "componentSamsungApps":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/ComponentName;

    const-string v8, "com.sec.android.app.samsungapps"

    const-string v9, "com.sec.android.app.samsungapps.KnoxAppsMainActivity"

    invoke-direct {v2, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4730
    .local v2, "componentKnoxApps":Landroid/content/ComponentName;
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v3, v9, v11, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->setComponentEnabledSetting(Landroid/content/ComponentName;III)Z

    move-result v6

    .line 4736
    .local v6, "result1":Z
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SamsungApps COMPONENT_ENABLED_STATE_DISABLED : 0="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4738
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v8

    invoke-virtual {v8, v2, v11, v11, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->setComponentEnabledSetting(Landroid/content/ComponentName;III)Z

    move-result v6

    .line 4743
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KnoxApps COMPONENT_ENABLED_STATE_ENABLED : 0="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private setTimaCompromisedState(I)V
    .locals 1
    .param p1, "personaId"    # I

    .prologue
    .line 4973
    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->setPersonaState(II)V

    .line 4974
    return-void
.end method

.method private startResetPersona(I)I
    .locals 6
    .param p1, "personaId"    # I

    .prologue
    .line 4289
    const-string v4, "PersonaManagerService"

    const-string v5, " startResetPersona is called...."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4291
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 4292
    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_0

    .line 4293
    add-int/lit8 v2, v2, -0x1

    .line 4295
    :try_start_0
    const-string v4, "PersonaManagerService"

    const-string v5, " sending reset persona event to system observers "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4296
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ISystemPersonaObserver;

    invoke-interface {v4, p1}, Landroid/content/pm/ISystemPersonaObserver;->onResetPersona(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4297
    :catch_0
    move-exception v4

    goto :goto_0

    .line 4302
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4304
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v0

    .line 4305
    .local v0, "actSer":Lcom/android/server/accounts/AccountManagerService;
    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountManagerService;->onUserReset(I)V

    .line 4307
    const/4 v3, 0x0

    .line 4309
    .local v3, "res":I
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    new-instance v5, Lcom/android/server/pm/PersonaManagerService$7;

    invoke-direct {v5, p0, p1}, Lcom/android/server/pm/PersonaManagerService$7;-><init>(Lcom/android/server/pm/PersonaManagerService;I)V

    invoke-interface {v4, p1, v5}, Landroid/app/IActivityManager;->stopUser(ILandroid/app/IStopUserCallback;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    move v4, v3

    .line 4351
    :goto_1
    return v4

    .line 4347
    :catch_1
    move-exception v1

    .line 4348
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private unInstallThirdPartyApks(I)V
    .locals 4
    .param p1, "personaHandle"    # I

    .prologue
    .line 3448
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unInstallThirdPartyApks : is called for"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3500
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getUninstallablePackagesForRemovePersona(I)Ljava/util/Set;

    move-result-object v0

    .line 3503
    .local v0, "packagesToBeUnInstall":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3504
    new-instance v1, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;-><init>(Lcom/android/server/pm/PersonaManagerService;ILjava/util/Set;I)V

    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->start()V

    .line 3509
    :goto_0
    return-void

    .line 3506
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->finishRemoveUser(I)V

    goto :goto_0
.end method

.method private unInstallThirdPartyApksOnReset(ILjava/util/Set;)V
    .locals 8
    .param p1, "personaHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "excludePkgList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v7, 0x2

    .line 3512
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getUninstallablePackagesForRemovePersona(I)Ljava/util/Set;

    move-result-object v4

    .line 3513
    .local v4, "packagesToBeUnInstall":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3514
    .local v0, "finalpackagesToBeUnInstall":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v4, :cond_0

    .line 3515
    const-string v5, "PersonaManagerService"

    const-string/jumbo v6, "unInstallThirdPartyApks : packagesToBeUninstall is NULL"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3536
    :goto_0
    return-void

    .line 3519
    :cond_0
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3521
    .local v3, "name":Ljava/lang/String;
    if-nez p2, :cond_2

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3522
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3526
    .end local v3    # "name":Ljava/lang/String;
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 3527
    const-string v5, "PersonaManagerService"

    const-string v6, " uninstalling pkgs from finalpackagesToBeUnInstall"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3528
    new-instance v5, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;

    invoke-direct {v5, p0, p1, v0, v7}, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;-><init>(Lcom/android/server/pm/PersonaManagerService;ILjava/util/Set;I)V

    invoke-virtual {v5}, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->start()V

    goto :goto_0

    .line 3530
    :cond_4
    const-string v5, "PersonaManagerService"

    const-string v6, "finalpackagesToBeUnInstall is having size zero "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3531
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v5, v7}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 3532
    .local v2, "msg":Landroid/os/Message;
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 3533
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v5, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private updateUserIdsLocked()V
    .locals 6

    .prologue
    .line 3719
    const/4 v4, 0x0

    .line 3720
    .local v4, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 3721
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PersonaInfo;

    iget-boolean v5, v5, Landroid/content/pm/PersonaInfo;->partial:Z

    if-nez v5, :cond_0

    .line 3722
    add-int/lit8 v4, v4, 0x1

    .line 3720
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3725
    :cond_1
    new-array v3, v4, [I

    .line 3726
    .local v3, "newUsers":[I
    const/4 v1, 0x0

    .line 3727
    .local v1, "n":I
    const/4 v0, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 3728
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PersonaInfo;

    iget-boolean v5, v5, Landroid/content/pm/PersonaInfo;->partial:Z

    if-nez v5, :cond_2

    .line 3729
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "n":I
    .local v2, "n":I
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    aput v5, v3, v1

    move v1, v2

    .line 3727
    .end local v2    # "n":I
    .restart local v1    # "n":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3732
    :cond_3
    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaIds:[I

    .line 3733
    return-void
.end method

.method private upgradeIfNecessary()V
    .locals 0

    .prologue
    .line 999
    return-void
.end method

.method private writeBitmapLocked(Landroid/content/pm/PersonaInfo;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "info"    # Landroid/content/pm/PersonaInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 756
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    iget v5, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 757
    .local v0, "dir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v4, "photo.png"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 758
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 759
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 760
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f9

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-static {v4, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 764
    :cond_0
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v3, "os":Ljava/io/FileOutputStream;
    invoke-virtual {p2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 765
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 775
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "os":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 772
    :catch_0
    move-exception v1

    .line 773
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v4, "PersonaManagerService"

    const-string v5, "Error setting photo for user "

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 769
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private writeUserListLocked(I)V
    .locals 12
    .param p1, "userId"    # I

    .prologue
    .line 1148
    const/4 v2, 0x0

    .line 1149
    .local v2, "fos":Ljava/io/FileOutputStream;
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1199
    :goto_0
    return-void

    .line 1153
    :cond_0
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1155
    .local v4, "mPersonaIdsForUser":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v9, "PersonaManagerService"

    const-string/jumbo v10, "writeUserListLocked AtomicFile PERSONALIST"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    new-instance v5, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "personalist.xml"

    invoke-direct {v5, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    .local v5, "personaListFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1158
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File does not exists, creating it "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1161
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error creating file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1169
    :cond_1
    :goto_1
    new-instance v8, Landroid/util/AtomicFile;

    invoke-direct {v8, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1171
    .local v8, "userListFile":Landroid/util/AtomicFile;
    :try_start_1
    invoke-virtual {v8}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 1172
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1175
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1176
    .local v6, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v9, "utf-8"

    invoke-interface {v6, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1177
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1178
    const-string v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v10, 0x1

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1180
    const/4 v9, 0x0

    const-string/jumbo v10, "users"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1181
    const/4 v9, 0x0

    const-string v10, "nextSerialNumber"

    iget v11, p0, Lcom/android/server/pm/PersonaManagerService;->mNextSerialNumber:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1182
    const/4 v9, 0x0

    const-string/jumbo v10, "version"

    iget v11, p0, Lcom/android/server/pm/PersonaManagerService;->mUserVersion:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1184
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 1185
    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PersonaInfo;

    .line 1186
    .local v7, "user":Landroid/content/pm/PersonaInfo;
    const/4 v9, 0x0

    const-string/jumbo v10, "user"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1187
    const/4 v9, 0x0

    const-string v10, "id"

    iget v11, v7, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1188
    const/4 v9, 0x0

    const-string/jumbo v10, "user"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1184
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1163
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "i":I
    .end local v6    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v7    # "user":Landroid/content/pm/PersonaInfo;
    .end local v8    # "userListFile":Landroid/util/AtomicFile;
    :catch_0
    move-exception v1

    .line 1165
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1166
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error creating file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1191
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "i":I
    .restart local v6    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v8    # "userListFile":Landroid/util/AtomicFile;
    :cond_2
    const/4 v9, 0x0

    :try_start_2
    const-string/jumbo v10, "users"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1193
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1194
    invoke-virtual {v8, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1195
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "i":I
    .end local v6    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_1
    move-exception v1

    .line 1196
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v8, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1197
    const-string v9, "PersonaManagerService"

    const-string/jumbo v10, "writeUserListLocked() Error writing user list"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private writeUserLocked(Landroid/content/pm/PersonaInfo;)V
    .locals 13
    .param p1, "personaInfo"    # Landroid/content/pm/PersonaInfo;

    .prologue
    .line 1020
    const-string v9, "PersonaManagerService"

    const-string/jumbo v10, "writeUserLocked called"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const/4 v1, 0x0

    .line 1023
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v8, Landroid/util/AtomicFile;

    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".xml"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1026
    .local v8, "userFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v8}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1027
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1030
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v7, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v7}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1031
    .local v7, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v9, "utf-8"

    invoke-interface {v7, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1032
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1033
    const-string v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v10, 0x1

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1035
    const/4 v9, 0x0

    const-string/jumbo v10, "user"

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1036
    const/4 v9, 0x0

    const-string v10, "id"

    iget v11, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1037
    const/4 v9, 0x0

    const-string v10, "serialNumber"

    iget v11, p1, Landroid/content/pm/PersonaInfo;->serialNumber:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1038
    const/4 v9, 0x0

    const-string v10, "flags"

    iget v11, p1, Landroid/content/pm/PersonaInfo;->flags:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1039
    const/4 v9, 0x0

    const-string v10, "created"

    iget-wide v11, p1, Landroid/content/pm/PersonaInfo;->creationTime:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1040
    const/4 v9, 0x0

    const-string v10, "lastLoggedIn"

    iget-wide v11, p1, Landroid/content/pm/PersonaInfo;->lastLoggedInTime:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1042
    const/4 v9, 0x0

    const-string v10, "lastLoggedOut"

    iget-wide v11, p1, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1045
    const/4 v9, 0x0

    const-string v10, "personatype"

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1046
    iget-object v9, p1, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 1047
    const/4 v9, 0x0

    const-string v10, "icon"

    iget-object v11, p1, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1049
    :cond_0
    iget-boolean v9, p1, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v9, :cond_1

    .line 1050
    const/4 v9, 0x0

    const-string v10, "partial"

    const-string/jumbo v11, "true"

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1053
    :cond_1
    iget-boolean v9, p1, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-eqz v9, :cond_2

    .line 1054
    const/4 v9, 0x0

    const-string v10, "removePersona"

    const-string/jumbo v11, "true"

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1057
    :cond_2
    iget-boolean v9, p1, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    if-eqz v9, :cond_3

    .line 1058
    const/4 v9, 0x0

    const-string v10, "isUserManaged"

    const-string/jumbo v11, "true"

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1061
    :cond_3
    iget-boolean v9, p1, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    if-eqz v9, :cond_4

    .line 1062
    const/4 v9, 0x0

    const-string v10, "resetPassword"

    const-string/jumbo v11, "true"

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1064
    :cond_4
    const/4 v9, 0x0

    const-string v10, "oldState"

    iget v11, p1, Landroid/content/pm/PersonaInfo;->oldState:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1065
    const/4 v9, 0x0

    const-string v10, "personastate"

    iget v11, p1, Landroid/content/pm/PersonaInfo;->state:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1066
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "writeUserLocked state is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/content/pm/PersonaInfo;->state:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    const/4 v10, 0x0

    const-string/jumbo v11, "superlocked"

    iget-boolean v9, p1, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    if-eqz v9, :cond_5

    const-string/jumbo v9, "true"

    :goto_0
    invoke-interface {v7, v10, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1068
    const/4 v10, 0x0

    const-string v11, "fsMounted"

    iget-boolean v9, p1, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    if-eqz v9, :cond_6

    const-string/jumbo v9, "true"

    :goto_1
    invoke-interface {v7, v10, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1069
    const/4 v9, 0x0

    const-string v10, "personahandlername"

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getHandlerServiceName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1070
    const/4 v9, 0x0

    const-string v10, "personahandlerpackage"

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getHandlerPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1071
    const/4 v9, 0x0

    const-string/jumbo v10, "setupapklocation"

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getSetupWizardApkLocation()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1072
    const/4 v9, 0x0

    const-string v10, "handlerapklocation"

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getHandlerApkLocation()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1073
    const/4 v9, 0x0

    const-string v10, "adminpackagename"

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getAdminPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1074
    const/4 v9, 0x0

    const-string v10, "adminuid"

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getAdminUid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1075
    const/4 v9, 0x0

    const-string v10, "creatorUid"

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getCreatorUid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1076
    const/4 v9, 0x0

    const-string v10, "encryptedId"

    iget-object v11, p1, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1077
    const/4 v9, 0x0

    const-string v10, "samsungAccount"

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getsamsungAccount()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1078
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getInstalledPkgList()Ljava/util/List;

    move-result-object v6

    .line 1079
    .local v6, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    .line 1080
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1081
    .local v4, "packages":Ljava/lang/StringBuilder;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1082
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    const-string v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1098
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "packages":Ljava/lang/StringBuilder;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v3

    .line 1099
    .local v3, "ioe":Ljava/lang/Exception;
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error writing user info "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1101
    invoke-virtual {v8, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1103
    .end local v3    # "ioe":Ljava/lang/Exception;
    :goto_3
    return-void

    .line 1067
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v7    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_5
    :try_start_1
    const-string v9, "false"

    goto/16 :goto_0

    .line 1068
    :cond_6
    const-string v9, "false"

    goto/16 :goto_1

    .line 1085
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "packages":Ljava/lang/StringBuilder;
    .restart local v6    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "writeUser: Installed pkg list: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    const/4 v9, 0x0

    const-string v10, "installedPkgList"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1089
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "packages":Ljava/lang/StringBuilder;
    :cond_8
    const/4 v9, 0x0

    const-string v10, "name"

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1091
    iget-object v9, p1, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    if-nez v9, :cond_9

    const-string v9, "default"

    :goto_4
    invoke-interface {v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1092
    const/4 v9, 0x0

    const-string v10, "name"

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1094
    const/4 v9, 0x0

    const-string/jumbo v10, "user"

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1096
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1097
    invoke-virtual {v8, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    goto :goto_3

    .line 1091
    :cond_9
    iget-object v9, p1, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method private writeUsersWithPersona()V
    .locals 10

    .prologue
    .line 1108
    const/4 v3, 0x0

    .line 1110
    .local v3, "fos":Ljava/io/FileOutputStream;
    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "writeUsersWithPersona() mUserListFile "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v0, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1113
    .local v0, "atomicUserListFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 1114
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1117
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1118
    .local v6, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v7, "utf-8"

    invoke-interface {v6, v1, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1119
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1120
    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1122
    const/4 v7, 0x0

    const-string/jumbo v8, "userswithpersona"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1126
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_0

    .line 1127
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1128
    .local v5, "id":Ljava/lang/Integer;
    const/4 v7, 0x0

    const-string/jumbo v8, "user"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1129
    const/4 v7, 0x0

    const-string v8, "id"

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1130
    const/4 v7, 0x0

    const-string/jumbo v8, "user"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1126
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1133
    .end local v5    # "id":Ljava/lang/Integer;
    :cond_0
    const/4 v7, 0x0

    const-string/jumbo v8, "userswithpersona"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1135
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1136
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1141
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "i":I
    .end local v6    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_1
    return-void

    .line 1137
    :catch_0
    move-exception v2

    .line 1138
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1139
    const-string v7, "PersonaManagerService"

    const-string/jumbo v8, "writeUsersWithPersona() Error writing user list"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public addAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "personaId"    # I

    .prologue
    .line 4786
    invoke-direct {p0, p3}, Lcom/android/server/pm/PersonaManagerService;->getSharedPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4787
    .local v1, "personaSP":Landroid/content/SharedPreferences;
    const/4 v3, 0x0

    invoke-interface {v1, p1, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 4789
    .local v0, "imes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 4790
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adding IME "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to existing set"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4791
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4797
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 4798
    .local v2, "prefEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 4799
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4800
    return-void

    .line 4793
    .end local v2    # "prefEditor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "creating new set for IME "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4794
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "imes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .restart local v0    # "imes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 4159
    const-string v1, "addLockOnImage"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4160
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaPolicyManagerService()Lcom/android/server/pm/PersonaPolicyManagerService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4162
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaPolicyManagerService()Lcom/android/server/pm/PersonaPolicyManagerService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4167
    :goto_0
    return-object v1

    .line 4163
    :catch_0
    move-exception v0

    .line 4164
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling Exception - PersonaPolicyManager addLockOnImage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4167
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addPackageToInstallWhiteList(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 5074
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPackageToInstallWhiteList add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5075
    const-string v0, "installerWhitelist"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->addAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5076
    return-void
.end method

.method public adminLockPersona(ILjava/lang/String;)Z
    .locals 7
    .param p1, "personaId"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 4591
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adminLockPersona : persona "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4593
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v1

    .line 4594
    .local v1, "info":Landroid/content/pm/PersonaInfo;
    if-nez v1, :cond_0

    .line 4595
    const-string v4, "PersonaManagerService"

    const-string v5, "Persona Id don\'t exist."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4612
    .end local v1    # "info":Landroid/content/pm/PersonaInfo;
    :goto_0
    return v3

    .line 4599
    .restart local v1    # "info":Landroid/content/pm/PersonaInfo;
    :cond_0
    iget-boolean v4, v1, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    if-eqz v4, :cond_1

    .line 4600
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adminLockPersona current state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/content/pm/PersonaInfo;->state:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4608
    .end local v1    # "info":Landroid/content/pm/PersonaInfo;
    :catch_0
    move-exception v0

    .line 4609
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to execute adminLockPersona. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4603
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "info":Landroid/content/pm/PersonaInfo;
    :cond_1
    const/16 v4, 0x8

    :try_start_1
    invoke-virtual {p0, p1, v4}, Lcom/android/server/pm/PersonaManagerService;->setPersonaState(II)V

    .line 4605
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 4606
    .local v2, "msg":Landroid/os/Message;
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 4607
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4612
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public adminUnLockPersona(I)Z
    .locals 9
    .param p1, "personaId"    # I

    .prologue
    const/4 v5, 0x0

    .line 4618
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adminUnLockPersona : persona "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4620
    const/4 v4, 0x0

    .line 4622
    .local v4, "retVal":Z
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v2

    .line 4623
    .local v2, "info":Landroid/content/pm/PersonaInfo;
    if-nez v2, :cond_0

    .line 4624
    const-string v6, "PersonaManagerService"

    const-string v7, "PersonaId don\'t exist"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4660
    .end local v2    # "info":Landroid/content/pm/PersonaInfo;
    :goto_0
    return v5

    .line 4627
    .restart local v2    # "info":Landroid/content/pm/PersonaInfo;
    :cond_0
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adminUnLockPersona state - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/content/pm/PersonaInfo;->state:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4628
    iget v5, v2, Landroid/content/pm/PersonaInfo;->state:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_2

    .line 4629
    const/4 v4, 0x1

    .line 4630
    invoke-virtual {v2}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4631
    const-string v5, "PersonaManagerService"

    const-string v6, "mounting file system: admin --> unlock persona called."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4632
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;

    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/content/pm/PersonaInfo;->isSecureStorageEnabled()Z

    move-result v7

    invoke-virtual {v5, p1, v6, v7}, Lcom/sec/knox/container/util/KnoxFileHandler;->mount(ILjava/lang/String;Z)Z

    move-result v4

    .line 4633
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adminUnLockPersona mount status - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4636
    :cond_1
    if-eqz v4, :cond_4

    .line 4637
    iget-boolean v5, v2, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    if-eqz v5, :cond_3

    .line 4638
    const-string v5, "PersonaManagerService"

    const-string v6, "Changing state to Reset"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4639
    const/4 v5, 0x5

    invoke-virtual {p0, p1, v5}, Lcom/android/server/pm/PersonaManagerService;->setPersonaState(II)V

    .line 4645
    :goto_1
    const/4 v5, 0x1

    new-array v3, v5, [I

    const/4 v5, 0x0

    aput p1, v3, v5

    .line 4648
    .local v3, "personaIds":[I
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4650
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->softStartPersonas([I)Z

    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v2    # "info":Landroid/content/pm/PersonaInfo;
    .end local v3    # "personaIds":[I
    :cond_2
    :goto_2
    move v5, v4

    .line 4660
    goto :goto_0

    .line 4641
    .restart local v2    # "info":Landroid/content/pm/PersonaInfo;
    :cond_3
    const/4 v5, 0x2

    invoke-virtual {p0, p1, v5}, Lcom/android/server/pm/PersonaManagerService;->setPersonaState(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4656
    .end local v2    # "info":Landroid/content/pm/PersonaInfo;
    :catch_0
    move-exception v1

    .line 4657
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 4658
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to execute adminUnLockPersona. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4652
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "info":Landroid/content/pm/PersonaInfo;
    :cond_4
    :try_start_1
    const-string v5, "PersonaManagerService"

    const-string v6, "mounting file system failed...."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public createPersona(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)I
    .locals 37
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "personaType"    # Ljava/lang/String;
    .param p6, "admin"    # Ljava/lang/String;
    .param p7, "handlerApkUri"    # Landroid/net/Uri;
    .param p8, "setupWizardApkUri"    # Landroid/net/Uri;

    .prologue
    .line 1781
    const-string v6, "createPersona"

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1783
    const/4 v15, -0x1

    .local v15, "createResult":I
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 1786
    invoke-direct/range {v4 .. v10}, Lcom/android/server/pm/PersonaManagerService;->checkCreatePersonaParameters(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v15

    .line 1787
    if-gez v15, :cond_0

    move/from16 v20, v15

    .line 2082
    :goto_0
    return v20

    .line 1791
    :cond_0
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " createPersona parameters are  "

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v32, "\n admin "

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v32, "\n handlerApkUri "

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v32, "\n setupWizardApkUri "

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 1798
    .local v10, "creatorUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1800
    .local v18, "ident":J
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " Uid of creator is "

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 1807
    .local v9, "creatorUserId":I
    if-eqz v9, :cond_1

    .line 1808
    const-string v6, "PersonaManagerService"

    const-string v7, "\n Only Admin User can create Persona.\n "

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    const/16 v20, -0x1

    goto :goto_0

    .line 1813
    :cond_1
    const-string v13, ""

    .line 1814
    .local v13, "adminPackageName":Ljava/lang/String;
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "creating persona with NAME:"

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaLock:Ljava/lang/Object;

    move-object/from16 v32, v0

    monitor-enter v32
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1819
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mInstallLock:Ljava/lang/Object;

    move-object/from16 v33, v0

    monitor-enter v33
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1820
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    move-object/from16 v34, v0

    monitor-enter v34
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1822
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->isPersonaLimitReachedLocked()Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v20, -0x3f4

    monitor-exit v34
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v33
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v32
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2078
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1823
    :cond_2
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getNextAvailableIdLocked()I

    move-result v5

    .line 1824
    .local v5, "personaId":I
    const/4 v8, 0x0

    .line 1825
    .local v8, "personaflags":I
    const-wide/16 v6, 0x2

    and-long v6, v6, p3

    const-wide/16 v35, 0x2

    cmp-long v6, v6, v35

    if-nez v6, :cond_3

    .line 1826
    or-int/lit8 v8, v8, 0x20

    .line 1827
    :cond_3
    const-wide/16 v6, 0x4

    and-long v6, v6, p3

    const-wide/16 v35, 0x4

    cmp-long v6, v6, v35

    if-nez v6, :cond_4

    .line 1828
    or-int/lit8 v8, v8, 0x40

    .line 1832
    :cond_4
    new-instance v4, Landroid/content/pm/PersonaInfo;

    const/4 v7, 0x0

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PersonaInfo;-><init>(ILjava/lang/String;Ljava/lang/String;III)V

    .line 1833
    .local v4, "personaInfo":Landroid/content/pm/PersonaInfo;
    new-instance v30, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mBaseUserPath:Ljava/io/File;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v30

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1834
    .local v30, "userPath":Ljava/io/File;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/pm/PersonaManagerService;->mNextSerialNumber:I

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/server/pm/PersonaManagerService;->mNextSerialNumber:I

    iput v6, v4, Landroid/content/pm/PersonaInfo;->serialNumber:I

    .line 1835
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mIdGenerator:Lcom/android/server/pm/PersonaIdentificationGenerator;

    invoke-virtual {v6}, Lcom/android/server/pm/PersonaIdentificationGenerator;->getId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 1836
    const-wide/16 v6, 0x80

    and-long v6, v6, p3

    const-wide/16 v35, 0x80

    cmp-long v6, v6, v35

    if-nez v6, :cond_8

    .line 1837
    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 1841
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v23

    .line 1842
    .local v23, "now":J
    const-wide v6, 0xdc46c32800L

    cmp-long v6, v23, v6

    if-lez v6, :cond_9

    .end local v23    # "now":J
    :goto_2
    move-wide/from16 v0, v23

    iput-wide v0, v4, Landroid/content/pm/PersonaInfo;->creationTime:J

    .line 1843
    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/content/pm/PersonaInfo;->partial:Z

    .line 1844
    invoke-virtual/range {p8 .. p8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/PersonaInfo;->setSetupWizardApkLocation(Ljava/lang/String;)V

    .line 1846
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/PersonaInfo;->setHandlerApkLocation(Ljava/lang/String;)V

    .line 1847
    const-wide/16 v6, 0x40

    and-long v6, v6, p3

    const-wide/16 v35, 0x40

    cmp-long v6, v6, v35

    if-eqz v6, :cond_5

    .line 1849
    const-string v6, "PersonaManagerService"

    const-string v7, " creating persona FLAG_ADMIN_TYPE_NONE is not set "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->getAdminPackageName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1851
    if-eqz v13, :cond_5

    .line 1852
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "creating persona adminPackageName is "

    move-object/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    invoke-virtual {v4, v13}, Landroid/content/pm/PersonaInfo;->setAdminPackageName(Ljava/lang/String;)V

    .line 1856
    :cond_5
    iget v6, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v6}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 1857
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "personaType: "

    move-object/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "persona Handler APK: "

    move-object/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/content/pm/PersonaInfo;->getHandlerApkLocation()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "persona Setup Wizard: "

    move-object/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/content/pm/PersonaInfo;->getSetupWizardApkLocation()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    if-eqz p5, :cond_a

    .line 1861
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Landroid/content/pm/PersonaInfo;->setType(Ljava/lang/String;)V

    .line 1865
    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v6, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1866
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v35

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1867
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->printLastTimeToBackground()V

    .line 1868
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1869
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "found previous persona(s) for user "

    move-object/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1871
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1883
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1884
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1886
    :cond_7
    const-string v6, "PersonaManagerService"

    const-string v7, "Writing to xml"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->writeUsersWithPersona()V

    .line 1888
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/pm/PersonaManagerService;->writeUserListLocked(I)V

    .line 1889
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 1890
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->mkdir()Z

    .line 1892
    invoke-virtual {v4}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v6

    if-eqz v6, :cond_d

    .line 1895
    :try_start_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;

    invoke-virtual {v4}, Landroid/content/pm/PersonaInfo;->isSecureStorageEnabled()Z

    move-result v7

    move-object/from16 v0, p2

    invoke-virtual {v6, v5, v0, v7}, Lcom/sec/knox/container/util/KnoxFileHandler;->createPartition(ILjava/lang/String;Z)Z

    move-result v29

    .line 1896
    .local v29, "status":Z
    if-eqz v29, :cond_c

    .line 1897
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;

    const/4 v7, 0x0

    invoke-virtual {v4}, Landroid/content/pm/PersonaInfo;->isSecureStorageEnabled()Z

    move-result v35

    move/from16 v0, v35

    invoke-virtual {v6, v5, v7, v0}, Lcom/sec/knox/container/util/KnoxFileHandler;->mount(ILjava/lang/String;Z)Z

    move-result v22

    .line 1898
    .local v22, "mountStatus":Z
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "CreatePersona : mountStatus "

    move-object/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1899
    if-nez v22, :cond_d

    .line 1900
    const/16 v20, -0x3f3

    :try_start_8
    monitor-exit v34
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    monitor-exit v33
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    monitor-exit v32
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 2078
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1839
    .end local v22    # "mountStatus":Z
    .end local v29    # "status":Z
    :cond_8
    const/4 v6, 0x0

    :try_start_b
    iput-boolean v6, v4, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    goto/16 :goto_1

    .line 1918
    .end local v4    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .end local v5    # "personaId":I
    .end local v8    # "personaflags":I
    .end local v30    # "userPath":Ljava/io/File;
    :catchall_0
    move-exception v6

    monitor-exit v34
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw v6

    .line 1919
    :catchall_1
    move-exception v6

    monitor-exit v33
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v6

    .line 2076
    :catchall_2
    move-exception v6

    monitor-exit v32
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 2078
    :catchall_3
    move-exception v6

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 1842
    .restart local v4    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .restart local v5    # "personaId":I
    .restart local v8    # "personaflags":I
    .restart local v23    # "now":J
    .restart local v30    # "userPath":Ljava/io/File;
    :cond_9
    const-wide/16 v23, 0x0

    goto/16 :goto_2

    .line 1863
    .end local v23    # "now":J
    :cond_a
    :try_start_f
    const-string v6, "default"

    invoke-virtual {v4, v6}, Landroid/content/pm/PersonaInfo;->setType(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1877
    :cond_b
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "creating new persona list for user "

    move-object/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1879
    .local v25, "personaIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v5}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1880
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v25

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_4

    .line 1903
    .end local v25    # "personaIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v29    # "status":Z
    :cond_c
    :try_start_10
    const-string v6, "PersonaManagerService"

    const-string v7, "Creation failed due to createPartition error response"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1904
    const/16 v20, -0x3f3

    :try_start_11
    monitor-exit v34
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :try_start_12
    monitor-exit v33
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :try_start_13
    monitor-exit v32
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 2078
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1907
    .end local v29    # "status":Z
    :catch_0
    move-exception v16

    .line 1908
    .local v16, "e":Ljava/lang/Exception;
    :try_start_14
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Failed to mount file system. "

    move-object/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_d
    sget-object v6, Lcom/android/server/pm/PersonaManagerService;->APPROVED_INSTALLERS:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1914
    .local v21, "installer":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Lcom/android/server/pm/PersonaManagerService;->addPackageToInstallWhiteList(Ljava/lang/String;I)V

    goto :goto_5

    .line 1916
    .end local v21    # "installer":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->packageList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->installDefaultApplications(ILjava/util/List;)Z

    .line 1917
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->widgetAppList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->installApplications(ILjava/util/List;)Z

    .line 1918
    monitor-exit v34
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 1919
    :try_start_15
    monitor-exit v33
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 1920
    :try_start_16
    invoke-virtual {v4}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1921
    const-string v6, "persona_file_system"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;

    const/16 v33, 0x0

    move-object/from16 v0, v33

    invoke-static {v5, v6, v7, v0}, Lcom/android/server/pm/HandlerCacheManager;->registerHandler(ILjava/lang/String;Ljava/lang/Object;Landroid/content/pm/IPersonaObserver;)V

    .line 1926
    :cond_f
    if-eqz v4, :cond_18

    .line 1928
    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/content/pm/PersonaInfo;->partial:Z

    .line 1929
    const/4 v6, 0x4

    iput v6, v4, Landroid/content/pm/PersonaInfo;->state:I

    .line 1930
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 1931
    :try_start_17
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    iget v0, v4, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v33, v0

    move/from16 v0, v33

    invoke-virtual {v6, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1932
    const-string v6, "PersonaManagerService"

    const-string/jumbo v33, "writeUserLocked called "

    move-object/from16 v0, v33

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 1934
    const-string v6, "PersonaManagerService"

    const-string/jumbo v33, "updateUserIdsLocked called "

    move-object/from16 v0, v33

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->updateUserIdsLocked()V

    .line 1936
    monitor-exit v7
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 1939
    const/16 v20, -0x1

    .line 1942
    .local v20, "installationResult":I
    :try_start_18
    iget v6, v4, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p6

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->installAdminApk(IJLjava/lang/String;)I

    move-result v20

    .line 1944
    if-gez v20, :cond_10

    .line 1946
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PersonaManagerService;->cleanPartialPersona(Landroid/content/pm/PersonaInfo;)V

    .line 1947
    const-string v6, "PersonaManagerService"

    const-string v7, "Error Create Persona Installing Admin Apk"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    monitor-exit v32
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 2078
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1936
    .end local v20    # "installationResult":I
    :catchall_4
    move-exception v6

    :try_start_19
    monitor-exit v7
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    :try_start_1a
    throw v6

    .line 1951
    .restart local v20    # "installationResult":I
    :cond_10
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "--- Installing Handler Apk --"

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    const/16 v20, -0x1

    .line 1954
    iget v6, v4, Landroid/content/pm/PersonaInfo;->id:I

    const/16 v7, 0x67

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v6, v7, v1}, Lcom/android/server/pm/PersonaManagerService;->installPackageUriForPersona(IILandroid/net/Uri;)I

    move-result v20

    .line 1956
    if-gez v20, :cond_11

    .line 1958
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PersonaManagerService;->cleanPartialPersona(Landroid/content/pm/PersonaInfo;)V

    .line 1959
    const-string v6, "PersonaManagerService"

    const-string v7, "Error Create Persona Installing Handler Apk"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    monitor-exit v32
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 2078
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1965
    :cond_11
    :try_start_1b
    move-object/from16 v0, p8

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 1967
    const/16 v20, -0x1

    .line 1968
    iget v6, v4, Landroid/content/pm/PersonaInfo;->id:I

    const/16 v7, 0x68

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-direct {v0, v6, v7, v1}, Lcom/android/server/pm/PersonaManagerService;->installPackageUriForPersona(IILandroid/net/Uri;)I

    move-result v20

    .line 1970
    if-gez v20, :cond_12

    .line 1971
    const-string v6, "PersonaManagerService"

    const-string v7, "Error Create Persona Installing SetupWizard Apk"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PersonaManagerService;->cleanPartialPersona(Landroid/content/pm/PersonaInfo;)V

    .line 1973
    monitor-exit v32
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    .line 2078
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1977
    :cond_12
    :try_start_1c
    iget-boolean v6, v4, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    if-nez v6, :cond_13

    .line 1984
    :cond_13
    const-string v6, "PersonaManagerService"

    const-string v7, "install application knox switcher"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    new-instance v11, Ljava/io/File;

    const-string v6, "/system/container/KnoxSwitcher.apk"

    invoke-direct {v11, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1986
    .local v11, "KnoxSwitcherApk":Ljava/io/File;
    iget v6, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->installApkUriForPersona(ILandroid/net/Uri;)I

    .line 1989
    const-string v6, "PersonaManagerService"

    const-string v7, "install application shortcutsms"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    new-instance v28, Ljava/io/File;

    const-string v6, "/system/container/ShortcutSms.apk"

    move-object/from16 v0, v28

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1991
    .local v28, "shortcutsmsApk":Ljava/io/File;
    iget v6, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static/range {v28 .. v28}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->installApkUriForPersona(ILandroid/net/Uri;)I

    .line 1993
    const-string v6, "PersonaManagerService"

    const-string v7, "install verifier"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    new-instance v31, Ljava/io/File;

    const-string v6, "/system/container/KnoxPackageVerifier.apk"

    move-object/from16 v0, v31

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1995
    .local v31, "verifier":Ljava/io/File;
    iget v6, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static/range {v31 .. v31}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->installApkUriForPersona(ILandroid/net/Uri;)I

    .line 1997
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PersonaManagerService;->registerHandlerForPersona(Landroid/content/pm/PersonaInfo;)V

    .line 1999
    if-eqz v4, :cond_14

    .line 2000
    new-instance v12, Landroid/content/Intent;

    const-string v6, "android.intent.action.USER_ADDED"

    invoke-direct {v12, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2001
    .local v12, "addedIntent":Landroid/content/Intent;
    const-string v6, "android.intent.extra.user_handle"

    iget v7, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v12, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2002
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v33, "android.permission.MANAGE_USERS"

    move-object/from16 v0, v33

    invoke-virtual {v6, v12, v7, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2005
    .end local v12    # "addedIntent":Landroid/content/Intent;
    :cond_14
    const-string v6, "PersonaManagerService"

    const-string v7, "activateAdmin called "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    const/16 v27, -0x1

    .line 2007
    .local v27, "result":I
    const-wide/16 v6, 0x40

    and-long v6, v6, p3

    const-wide/16 v33, 0x40

    cmp-long v6, v6, v33

    if-eqz v6, :cond_17

    .line 2008
    const-string v6, "PersonaManagerService"

    const-string v7, "calling activate Admin as FLAG_ADMIN_TYPE_NONE is not set "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p6

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->activateAdmin(Landroid/content/pm/PersonaInfo;JLjava/lang/String;)I

    move-result v27

    .line 2011
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "activateAdmin returns "

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    if-gez v27, :cond_15

    .line 2014
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 2015
    const/4 v6, 0x1

    :try_start_1d
    iput-boolean v6, v4, Landroid/content/pm/PersonaInfo;->partial:Z

    .line 2016
    const/4 v6, 0x4

    iput v6, v4, Landroid/content/pm/PersonaInfo;->state:I

    .line 2017
    const-string v6, "PersonaManagerService"

    const-string/jumbo v33, "writeUserLocked called "

    move-object/from16 v0, v33

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 2019
    const-string v6, "PersonaManagerService"

    const-string/jumbo v33, "updateUserIdsLocked called "

    move-object/from16 v0, v33

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->updateUserIdsLocked()V

    .line 2021
    const-string v6, "PersonaManagerService"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "activateAdmin fails "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    const-string v6, "PersonaManagerService"

    const-string v33, "Error Create Persona activating Admin fails"

    move-object/from16 v0, v33

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    const/16 v20, -0x3f1

    monitor-exit v7
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    .end local v20    # "installationResult":I
    :try_start_1e
    monitor-exit v32
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    .line 2078
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 2024
    :catchall_5
    move-exception v6

    :try_start_1f
    monitor-exit v7
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    :try_start_20
    throw v6

    .line 2027
    .restart local v20    # "installationResult":I
    :cond_15
    const/4 v14, -0x1

    .line 2028
    .local v14, "adminUid":I
    iget v6, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4}, Landroid/content/pm/PersonaInfo;->getAdminPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v6, v1, v2, v7}, Lcom/android/server/pm/PersonaManagerService;->getAdminUid(IJLjava/lang/String;)I

    move-result v14

    .line 2030
    invoke-virtual {v4, v14}, Landroid/content/pm/PersonaInfo;->setAdminUid(I)V

    .line 2032
    const-wide/16 v6, 0x8

    and-long v6, v6, p3

    const-wide/16 v33, 0x8

    cmp-long v6, v6, v33

    if-nez v6, :cond_19

    .line 2036
    if-gez v14, :cond_16

    .line 2038
    const-string v6, "PersonaManagerService"

    const-string v7, "Admin Uid not proper"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    const/16 v20, -0x3f1

    monitor-exit v32
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    .line 2078
    .end local v20    # "installationResult":I
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 2043
    .restart local v20    # "installationResult":I
    :cond_16
    :try_start_21
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, " calling  setCreatorUid "

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    invoke-virtual {v4, v14}, Landroid/content/pm/PersonaInfo;->setCreatorUid(I)V

    .line 2046
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, " after setCreatorUid "

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    .end local v14    # "adminUid":I
    :cond_17
    :goto_6
    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/content/pm/PersonaInfo;->partial:Z

    .line 2059
    const/4 v6, 0x1

    iput v6, v4, Landroid/content/pm/PersonaInfo;->state:I

    .line 2060
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    .line 2061
    :try_start_22
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    iget v0, v4, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v33, v0

    move/from16 v0, v33

    invoke-virtual {v6, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2062
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 2063
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->updateUserIdsLocked()V

    .line 2064
    monitor-exit v7
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_6

    .line 2068
    :try_start_23
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaStateManagerService:Lcom/android/server/pm/PersonaStateManagerService;

    new-instance v7, Landroid/content/pm/PersonaEvent;

    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-direct {v7, v0}, Landroid/content/pm/PersonaEvent;-><init>(I)V

    invoke-virtual {v6, v7}, Lcom/android/server/pm/PersonaStateManagerService;->postEvent(Landroid/content/pm/PersonaEvent;)I
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_1
    .catchall {:try_start_23 .. :try_end_23} :catchall_2

    .line 2076
    .end local v11    # "KnoxSwitcherApk":Ljava/io/File;
    .end local v20    # "installationResult":I
    .end local v27    # "result":I
    .end local v28    # "shortcutsmsApk":Ljava/io/File;
    .end local v31    # "verifier":Ljava/io/File;
    :cond_18
    :goto_7
    :try_start_24
    monitor-exit v32
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_2

    .line 2078
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2080
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " returning from createPersona writeUserLocked "

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    move-object/from16 v32, v0

    iget v0, v4, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    iget v0, v4, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v20, v0

    goto/16 :goto_0

    .line 2048
    .restart local v11    # "KnoxSwitcherApk":Ljava/io/File;
    .restart local v14    # "adminUid":I
    .restart local v20    # "installationResult":I
    .restart local v27    # "result":I
    .restart local v28    # "shortcutsmsApk":Ljava/io/File;
    .restart local v31    # "verifier":Ljava/io/File;
    :cond_19
    :try_start_25
    const-string v6, "PersonaManagerService"

    const-string v7, " Not transferring ownership as FLAG_CREATOR_SELF_DESTROY is not set"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_2

    goto :goto_6

    .line 2064
    .end local v14    # "adminUid":I
    :catchall_6
    move-exception v6

    :try_start_26
    monitor-exit v7
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_6

    :try_start_27
    throw v6

    .line 2069
    :catch_1
    move-exception v26

    .line 2070
    .local v26, "re":Landroid/os/RemoteException;
    const-string v6, "PersonaManagerService"

    const-string v7, "Unable to postEvent"

    move-object/from16 v0, v26

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_2

    goto :goto_7
.end method

.method public disablePersonaKeyGuard(I)Z
    .locals 11
    .param p1, "personaId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 5198
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v2

    .line 5200
    .local v2, "pInfo":Landroid/content/pm/PersonaInfo;
    if-nez v2, :cond_1

    .line 5231
    :cond_0
    :goto_0
    return v6

    .line 5204
    :cond_1
    iget-boolean v8, v2, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    if-ne v8, v7, :cond_2

    .line 5205
    const-string v6, "PersonaManagerService"

    const-string v8, "disablePersonaKeyGuard superLocked."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 5206
    goto :goto_0

    .line 5208
    :cond_2
    const/4 v3, 0x0

    .line 5209
    .local v3, "personaStateManagerService":Landroid/content/pm/IPersonaStateHandler;
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;

    const-string v8, "persona_state"

    invoke-static {p1, v8}, Lcom/android/server/pm/HandlerCacheManager;->getHandlerForPersona(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 5210
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_3

    .line 5211
    invoke-static {v0}, Landroid/content/pm/IPersonaStateHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaStateHandler;

    move-result-object v3

    .line 5214
    :cond_3
    if-eqz v3, :cond_4

    .line 5215
    :try_start_0
    new-instance v8, Landroid/content/pm/PersonaEvent;

    const/16 v9, 0xe

    invoke-direct {v8, v9}, Landroid/content/pm/PersonaEvent;-><init>(I)V

    invoke-interface {v3, v8}, Landroid/content/pm/IPersonaStateHandler;->postEvent(Landroid/content/pm/PersonaEvent;)I

    move-result v5

    .line 5216
    .local v5, "state":I
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disablePersonaKeyGuard() state:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5217
    const/4 v8, -0x1

    if-eq v8, v5, :cond_0

    .line 5218
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 5219
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 5220
    const/4 v8, 0x1

    iput v8, v1, Landroid/os/Message;->arg2:I

    .line 5221
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v8, v1}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5222
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9}, Lcom/android/server/pm/HandlerCacheManager;->onKeyGuardStateChanged(IZ)V

    move v6, v7

    .line 5223
    goto :goto_0

    .line 5226
    .end local v1    # "msg":Landroid/os/Message;
    .end local v5    # "state":I
    :cond_4
    const-string v7, "PersonaManagerService"

    const-string v8, "disablePersonaKeyGuard() personaStateManagerService is null!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5228
    :catch_0
    move-exception v4

    .line 5229
    .local v4, "re":Landroid/os/RemoteException;
    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public enablePersonaKeyGuard(I)Z
    .locals 10
    .param p1, "personaId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 5237
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v1

    .line 5239
    .local v1, "pInfo":Landroid/content/pm/PersonaInfo;
    if-nez v1, :cond_1

    .line 5268
    :cond_0
    :goto_0
    return v5

    .line 5243
    :cond_1
    iget-boolean v7, v1, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    if-ne v7, v6, :cond_2

    .line 5244
    const-string v5, "PersonaManagerService"

    const-string v7, "enablePersonaKeyGuard superLocked."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5245
    iget v5, v1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->setResetPasswordState(IZ)V

    move v5, v6

    .line 5246
    goto :goto_0

    .line 5249
    :cond_2
    const/4 v2, 0x0

    .line 5250
    .local v2, "personaStateManagerService":Landroid/content/pm/IPersonaStateHandler;
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;

    const-string v7, "persona_state"

    invoke-static {p1, v7}, Lcom/android/server/pm/HandlerCacheManager;->getHandlerForPersona(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 5251
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_3

    .line 5252
    invoke-static {v0}, Landroid/content/pm/IPersonaStateHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaStateHandler;

    move-result-object v2

    .line 5255
    :cond_3
    if-eqz v2, :cond_4

    .line 5256
    :try_start_0
    new-instance v7, Landroid/content/pm/PersonaEvent;

    const/16 v8, 0xf

    invoke-direct {v7, v8}, Landroid/content/pm/PersonaEvent;-><init>(I)V

    invoke-interface {v2, v7}, Landroid/content/pm/IPersonaStateHandler;->postEvent(Landroid/content/pm/PersonaEvent;)I

    move-result v4

    .line 5257
    .local v4, "state":I
    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enablePersonaKeyGuard() state:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5258
    const/4 v7, -0x1

    if-eq v7, v4, :cond_0

    .line 5259
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;

    const/4 v8, 0x1

    invoke-virtual {v7, p1, v8}, Lcom/android/server/pm/HandlerCacheManager;->onKeyGuardStateChanged(IZ)V

    move v5, v6

    .line 5260
    goto :goto_0

    .line 5263
    .end local v4    # "state":I
    :cond_4
    const-string v6, "PersonaManagerService"

    const-string v7, "enablePersonaKeyGuard() personaStateManagerService is null!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5265
    :catch_0
    move-exception v3

    .line 5266
    .local v3, "re":Landroid/os/RemoteException;
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public exists(I)Z
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    .line 643
    const-string v0, "exists"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 644
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 645
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaIds:[I

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaIds:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    monitor-exit v1

    .line 648
    :goto_0
    return v0

    .line 647
    :cond_0
    monitor-exit v1

    .line 648
    const/4 v0, 0x0

    goto :goto_0

    .line 647
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method finishRemoveUser(I)V
    .locals 24
    .param p1, "userHandle"    # I

    .prologue
    .line 3241
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finishRemoveUser is called "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3245
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 3248
    .local v17, "ident":J
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v19

    .line 3250
    .local v19, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3251
    const-string v4, "PersonaManagerService"

    const-string/jumbo v6, "unmounting and removing partitions for persona."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3253
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/sec/knox/container/util/KnoxFileHandler;->unmount(I)Z

    .line 3254
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;

    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/PersonaInfo;->isSecureStorageEnabled()Z

    move-result v6

    move/from16 v0, p1

    invoke-virtual {v4, v0, v6}, Lcom/sec/knox/container/util/KnoxFileHandler;->removePartition(IZ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3262
    :goto_0
    :try_start_2
    new-instance v15, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v15, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 3263
    .local v15, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    move/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v21

    .line 3264
    .local v21, "ownerUid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v23

    .line 3265
    .local v23, "pkgNames":[Ljava/lang/String;
    if-eqz v23, :cond_1

    .line 3266
    move-object/from16 v13, v23

    .local v13, "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    aget-object v22, v13, v16

    .line 3267
    .local v22, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p1

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->sendIntentForRemoveContainer(Ljava/lang/String;II)V

    .line 3266
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 3255
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v15    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v16    # "i$":I
    .end local v20    # "len$":I
    .end local v21    # "ownerUid":I
    .end local v22    # "pkgName":Ljava/lang/String;
    .end local v23    # "pkgNames":[Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 3256
    .local v14, "e":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to unmount file system. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3305
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v19    # "info":Landroid/content/pm/PersonaInfo;
    :catchall_0
    move-exception v4

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3259
    .restart local v19    # "info":Landroid/content/pm/PersonaInfo;
    :cond_0
    :try_start_3
    const-string v4, "PersonaManagerService"

    const-string v6, "Not a secure file system..."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3270
    .restart local v15    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v21    # "ownerUid":I
    .restart local v23    # "pkgNames":[Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->sendIntentForRemoveContainer(Ljava/lang/String;II)V

    .line 3273
    :cond_2
    new-instance v5, Landroid/content/Intent;

    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3274
    .local v5, "addedIntent":Landroid/content/Intent;
    const-string v4, "android.intent.extra.user_handle"

    move/from16 v0, p1

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3275
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v7, "android.permission.MANAGE_USERS"

    new-instance v8, Lcom/android/server/pm/PersonaManagerService$5;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v8, v0, v1}, Lcom/android/server/pm/PersonaManagerService$5;-><init>(Lcom/android/server/pm/PersonaManagerService;I)V

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3305
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3307
    return-void
.end method

.method public getAdminUidForPersona(I)I
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    .line 2090
    const-string v1, "getAdminUidForPersona"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2091
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 2093
    .local v0, "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    .line 2095
    invoke-virtual {v0}, Landroid/content/pm/PersonaInfo;->getAdminUid()I

    move-result v1

    .line 2099
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getAppListForPersona(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4818
    invoke-direct {p0, p2}, Lcom/android/server/pm/PersonaManagerService;->getSharedPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4819
    .local v1, "personaSP":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 4821
    .local v0, "imes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 4822
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4824
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/android/server/pm/PersonaManagerService;->APPROVED_INSTALLERS:Ljava/util/List;

    goto :goto_0
.end method

.method public getCurrentPersonaForUser(I)I
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 3924
    const-string v0, "getCurrentPersonaForUser"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3925
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentPersonaForUser() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3926
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserLastPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3927
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserLastPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3928
    .end local p1    # "userId":I
    :cond_0
    return p1
.end method

.method public getDisabledHomeLaunchers(IZ)Ljava/util/List;
    .locals 8
    .param p1, "personaId"    # I
    .param p2, "clearList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5329
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDisabledHomeLaunchers for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; clearList = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5330
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5331
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DisabledHomeLaunchers"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 5333
    .local v4, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 5334
    .local v3, "pairs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDisabledHomeLaunchers current pairs = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5335
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5336
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5338
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    if-eqz p2, :cond_1

    .line 5339
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5341
    :cond_1
    return-object v2
.end method

.method public getHandlerComponentName(I)Landroid/content/ComponentName;
    .locals 6
    .param p1, "personaId"    # I

    .prologue
    const/4 v0, 0x0

    .line 1466
    const-string v4, "getHandlerComponentName"

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1468
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PersonaInfo;

    .line 1469
    .local v3, "pi":Landroid/content/pm/PersonaInfo;
    if-nez v3, :cond_1

    .line 1492
    :cond_0
    :goto_0
    return-object v0

    .line 1472
    :cond_1
    invoke-virtual {v3}, Landroid/content/pm/PersonaInfo;->getHandlerServiceName()Ljava/lang/String;

    move-result-object v1

    .line 1473
    .local v1, "handlerProxyServiceName":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/pm/PersonaInfo;->getHandlerPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1475
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 1476
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/server/pm/PersonaManagerService;->registerHandlerForPersona(Landroid/content/pm/PersonaInfo;)V

    .line 1478
    invoke-virtual {v3}, Landroid/content/pm/PersonaInfo;->getHandlerServiceName()Ljava/lang/String;

    move-result-object v1

    .line 1479
    invoke-virtual {v3}, Landroid/content/pm/PersonaInfo;->getHandlerPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1481
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1485
    :cond_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1488
    const/4 v0, 0x0

    .line 1489
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 1490
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "cn":Landroid/content/ComponentName;
    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "cn":Landroid/content/ComponentName;
    goto :goto_0
.end method

.method public getNormalizedState(I)I
    .locals 6
    .param p1, "personaId"    # I

    .prologue
    .line 3999
    const-string v4, "getNormalizedState"

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4000
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaState(I)I

    move-result v1

    .line 4001
    .local v1, "personaState":I
    const/4 v0, -0x1

    .line 4003
    .local v0, "normalizedState":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 4005
    const-string v4, "persona_state_manager"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Landroid/content/pm/IPersonaStateHandler;

    .line 4008
    .local v2, "personaStateManagerService":Landroid/content/pm/IPersonaStateHandler;
    if-eqz v2, :cond_1

    .line 4009
    :try_start_0
    invoke-interface {v2, v1}, Landroid/content/pm/IPersonaStateHandler;->mapToNormalizedState(I)I

    move-result v0

    .line 4020
    .end local v2    # "personaStateManagerService":Landroid/content/pm/IPersonaStateHandler;
    :cond_0
    :goto_0
    return v0

    .line 4011
    .restart local v2    # "personaStateManagerService":Landroid/content/pm/IPersonaStateHandler;
    :cond_1
    const-string v4, "PersonaManagerService"

    const-string v5, "getNormalizedState() personaStateManagerService is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4012
    move v0, v1

    goto :goto_0

    .line 4014
    :catch_0
    move-exception v3

    .line 4015
    .local v3, "re":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPackagesFromInstallWhiteList(I)Ljava/util/List;
    .locals 3
    .param p1, "personaId"    # I
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
    .line 5096
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPackagesFromInstallWhiteList for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5097
    const-string v0, "installerWhitelist"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PersonaManagerService;->getAppListForPersona(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParentId(I)I
    .locals 4
    .param p1, "parentId"    # I

    .prologue
    .line 3940
    const-string v1, "getParentId"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3941
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParentId() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3942
    const-string v1, "read users"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkManagePersonasPermission(Ljava/lang/String;)V

    .line 3946
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3947
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 3948
    .local v0, "myInfo":Landroid/content/pm/PersonaInfo;
    invoke-virtual {v0}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result p1

    .line 3951
    .end local v0    # "myInfo":Landroid/content/pm/PersonaInfo;
    .end local p1    # "parentId":I
    :cond_0
    return p1
.end method

.method public getParentUserForCurrentPersona()I
    .locals 2

    .prologue
    .line 515
    const-string v1, "getParentUserForCurrentPersona"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 516
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 517
    .local v0, "currentPersona":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v0

    .line 520
    .end local v0    # "currentPersona":I
    :cond_0
    return v0
.end method

.method public getParentUserForPersona(I)I
    .locals 1
    .param p1, "personaId"    # I

    .prologue
    .line 524
    const-string v0, "getParentUserForPersona"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 526
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result p1

    .line 529
    .end local p1    # "personaId":I
    :cond_0
    return p1
.end method

.method public getPersonaBackgroundTime(I)J
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    .line 3838
    const-string v0, "getPersonaBackgroundTime"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3840
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getPersonaIcon(I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "personaId"    # I

    .prologue
    const/4 v1, 0x0

    .line 3907
    const-string v2, "getPersonaIcon"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3908
    const-string v2, "read users"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkManagePersonasPermission(Ljava/lang/String;)V

    .line 3909
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3910
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaInfo;

    .line 3911
    .local v0, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Landroid/content/pm/PersonaInfo;->partial:Z

    if-nez v3, :cond_0

    iget-boolean v3, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-eqz v3, :cond_1

    .line 3912
    :cond_0
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPersonaIcon: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3913
    monitor-exit v2

    .line 3918
    :goto_0
    return-object v1

    .line 3915
    :cond_1
    iget-object v3, v0, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 3916
    monitor-exit v2

    goto :goto_0

    .line 3919
    .end local v0    # "info":Landroid/content/pm/PersonaInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3918
    .restart local v0    # "info":Landroid/content/pm/PersonaInfo;
    :cond_2
    :try_start_1
    iget-object v1, v0, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPersonaIdentification(I)Ljava/lang/String;
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 4407
    const-string v1, "getPersonaIdentification"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4408
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 4409
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    .line 4410
    iget-object v1, v0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 4414
    :goto_0
    return-object v1

    .line 4413
    :cond_0
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get persona identification for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4414
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPersonaIds()[I
    .locals 2

    .prologue
    .line 784
    const-string v0, "getPersonaIds"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 785
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 786
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaIds:[I

    monitor-exit v1

    return-object v0

    .line 787
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getPersonaIdsLPr()[I
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaIds:[I

    return-object v0
.end method

.method public getPersonaInfo(I)Landroid/content/pm/PersonaInfo;
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    .line 566
    const-string v0, "getPersonaInfo"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 567
    const-string v0, "query user"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkManagePersonasPermission(Ljava/lang/String;)V

    .line 568
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 569
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfoLocked(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPersonaSamsungAccount(I)Ljava/lang/String;
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 621
    const-string v1, "getPersonaSamsungAccount"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 622
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaInfo;

    .line 623
    .local v0, "pi":Landroid/content/pm/PersonaInfo;
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getPersonaSamsungAccount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {v0}, Landroid/content/pm/PersonaInfo;->getsamsungAccount()Ljava/lang/String;

    move-result-object v1

    .line 627
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getPersonaState(I)I
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 4026
    const-string v1, "getPersonaState"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4027
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 4028
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v0, :cond_0

    .line 4029
    const-string v1, "PersonaManagerService"

    const-string v2, " getPersonaState personaInfo is null "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4030
    const/4 v1, -0x1

    .line 4033
    :goto_0
    return v1

    .line 4032
    :cond_0
    const-string v1, "PersonaManagerService"

    const-string v2, " getPersonaState personaInfo is not null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4033
    iget v1, v0, Landroid/content/pm/PersonaInfo;->state:I

    goto :goto_0
.end method

.method public getPersonaType(I)Ljava/lang/String;
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    .line 599
    const-string v1, "getPersonaType"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 601
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfoLocked(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 602
    .local v0, "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {v0}, Landroid/content/pm/PersonaInfo;->getType()Ljava/lang/String;

    move-result-object v1

    .line 606
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "default"

    goto :goto_0
.end method

.method public getPersonas(Z)Ljava/util/List;
    .locals 6
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 470
    const-string v3, "getPersonas"

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 471
    const-string v3, "query users"

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->checkManagePersonasPermission(Ljava/lang/String;)V

    .line 472
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 473
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->readUserList()V

    .line 474
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v1, "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 476
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    .line 477
    .local v2, "ui":Landroid/content/pm/PersonaInfo;
    iget-boolean v3, v2, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v3, :cond_1

    .line 475
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 480
    :cond_1
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    iget v5, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 482
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 486
    .end local v0    # "i":I
    .end local v1    # "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    .end local v2    # "ui":Landroid/content/pm/PersonaInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 485
    .restart local v0    # "i":I
    .restart local v1    # "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public getPersonasForCreator(IZ)Ljava/util/List;
    .locals 7
    .param p1, "creatorUid"    # I
    .param p2, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3867
    const-string v3, "getPersonasForCreator"

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3870
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3871
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3872
    .local v1, "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 3873
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    .line 3874
    .local v2, "ui":Landroid/content/pm/PersonaInfo;
    iget-boolean v3, v2, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v3, :cond_0

    .line 3872
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3877
    :cond_0
    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    iget v5, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-virtual {v2}, Landroid/content/pm/PersonaInfo;->getCreatorUid()I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 3878
    const-string v3, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding persona with id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3879
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3885
    .end local v0    # "i":I
    .end local v1    # "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    .end local v2    # "ui":Landroid/content/pm/PersonaInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3881
    .restart local v0    # "i":I
    .restart local v1    # "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    .restart local v2    # "ui":Landroid/content/pm/PersonaInfo;
    :cond_2
    :try_start_1
    const-string v3, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Excluding persona with id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3884
    .end local v2    # "ui":Landroid/content/pm/PersonaInfo;
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public getPersonasForUser(IZ)Ljava/util/List;
    .locals 9
    .param p1, "userId"    # I
    .param p2, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 533
    const-string v5, "getPersonasForUser"

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 534
    const-string v5, "query user"

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->checkManagePersonasPermission(Ljava/lang/String;)V

    .line 535
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v6

    .line 537
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->readUsersWithPersonaLocked()V

    .line 538
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 539
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/pm/PersonaManagerService;->readUserListLocked(I)V

    .line 538
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 541
    :cond_0
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 542
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 543
    .local v2, "personaIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v5, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found personas "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 545
    .local v4, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 546
    const-string v5, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Getting personaInfo for ID  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PersonaInfo;

    .line 548
    .local v3, "ui":Landroid/content/pm/PersonaInfo;
    iget-boolean v5, v3, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v5, :cond_2

    .line 549
    const-string v5, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Persona is partially created "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 552
    :cond_2
    if-eqz p2, :cond_3

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    iget v7, v3, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 553
    :cond_3
    const-string v5, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding persona in result"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 559
    .end local v0    # "i":I
    .end local v1    # "k":I
    .end local v2    # "personaIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "ui":Landroid/content/pm/PersonaInfo;
    .end local v4    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 557
    .restart local v0    # "i":I
    .restart local v1    # "k":I
    .restart local v2    # "personaIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    :cond_4
    :try_start_1
    monitor-exit v6

    .line 561
    .end local v0    # "i":I
    .end local v2    # "personaIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    :goto_3
    return-object v4

    .line 559
    :cond_5
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 560
    const-string v5, "PersonaManagerService"

    const-string v6, "returning null in  getPersonasForUser"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/4 v4, 0x0

    goto :goto_3
.end method

.method public getPhoneCaller()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3963
    const-string v2, "getPhoneCaller"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3964
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 3965
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3966
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->setPhoneCaller(I)V

    .line 3970
    :goto_0
    return v1

    .line 3969
    :cond_0
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneCaller as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PersonaManagerService;->PhoneCaller:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3970
    iget v1, p0, Lcom/android/server/pm/PersonaManagerService;->PhoneCaller:I

    goto :goto_0
.end method

.method public getScreenOffTime(I)J
    .locals 10
    .param p1, "personaId"    # I

    .prologue
    const-wide/16 v8, 0x0

    .line 3805
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getTimeToLock(I)J

    move-result-wide v0

    .line 3807
    .local v0, "timeout":J
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getScreenOffTimeoutLocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " personaid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3809
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked(I)Z

    move-result v4

    if-eqz v4, :cond_1

    cmp-long v4, v0, v8

    if-lez v4, :cond_1

    .line 3810
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked(I)J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 3817
    :cond_0
    :goto_0
    const-wide/16 v4, 0x1388

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 3818
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getScreenOffTimeoutLocked final: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v0

    .line 3819
    .end local v0    # "timeout":J
    .local v2, "timeout":J
    :goto_1
    return-wide v2

    .line 3811
    .end local v2    # "timeout":J
    .restart local v0    # "timeout":J
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3812
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked(I)J

    move-result-wide v0

    goto :goto_0

    .line 3813
    :cond_2
    cmp-long v4, v0, v8

    if-gtz v4, :cond_0

    move-wide v2, v0

    .line 3814
    .end local v0    # "timeout":J
    .restart local v2    # "timeout":J
    goto :goto_1
.end method

.method public getSetupWizardPath(I)Ljava/lang/String;
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    .line 1497
    const-string v1, "getSetupWizardPath"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1498
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 1499
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    .line 1500
    invoke-virtual {v0}, Landroid/content/pm/PersonaInfo;->getSetupWizardApkLocation()Ljava/lang/String;

    move-result-object v1

    .line 1502
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUserManagedPersonas(Z)Ljava/util/List;
    .locals 8
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 490
    const-string v4, "getUserManagedPersonas"

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 491
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 493
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->readUsersWithPersonaLocked()V

    .line 494
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 495
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/pm/PersonaManagerService;->readUserListLocked(I)V

    .line 494
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 497
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v2, "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 499
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PersonaInfo;

    .line 500
    .local v3, "ui":Landroid/content/pm/PersonaInfo;
    iget-boolean v4, v3, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v4, :cond_2

    .line 501
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Persona is partially created "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 504
    :cond_2
    if-eqz p1, :cond_3

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    iget v6, v3, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_3
    iget-boolean v4, v3, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    if-eqz v4, :cond_1

    .line 505
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding persona in result"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 510
    .end local v0    # "i":I
    .end local v1    # "k":I
    .end local v2    # "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    .end local v3    # "ui":Landroid/content/pm/PersonaInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 509
    .restart local v0    # "i":I
    .restart local v1    # "k":I
    .restart local v2    # "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PersonaInfo;>;"
    :cond_4
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public handleHomeShow()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3162
    const-string v2, "handleHomeShow"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3163
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 3164
    .local v0, "currentUser":I
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mShortcutModes:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3165
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->switchPersona(I)Z

    .line 3168
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method handleWakeLockChange(ZIII)V
    .locals 4
    .param p1, "type"    # Z
    .param p2, "flag"    # I
    .param p3, "uid"    # I
    .param p4, "userid"    # I

    .prologue
    .line 2708
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaInfo;

    .line 2710
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    const v1, 0xffff

    and-int/2addr v1, p2

    sparse-switch v1, :sswitch_data_0

    .line 2735
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 2717
    :sswitch_1
    if-eqz v0, :cond_0

    .line 2718
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 2719
    iget v1, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRefCount:I

    .line 2720
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RefCount in acquire : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRefCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " userid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " flag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    iget v1, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRefCount:I

    if-lez v1, :cond_0

    .line 2722
    invoke-direct {p0, p4}, Lcom/android/server/pm/PersonaManagerService;->killTimer(I)V

    goto :goto_0

    .line 2725
    :cond_1
    iget v1, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRefCount:I

    .line 2726
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RefCount in release : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRefCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " userid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " flag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    iget v1, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockRefCount:I

    if-nez v1, :cond_0

    .line 2728
    invoke-virtual {p0, p4}, Lcom/android/server/pm/PersonaManagerService;->refreshTimer(I)V

    goto/16 :goto_0

    .line 2710
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
        0xa -> :sswitch_1
        0x1a -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public installApplications(ILjava/util/List;)Z
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1622
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "installApplications"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1623
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1624
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1625
    :try_start_1
    const-string v1, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " in PMS, calling PkgMgr default apps  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mBaseUserPath:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1627
    .local v0, "userPath":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1, v0, p2}, Lcom/android/server/pm/PackageManagerService;->installApplicationsForPersonaLILPw(ILjava/io/File;Ljava/util/List;)V

    .line 1638
    const/4 v1, 0x1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v1

    .line 1639
    .end local v0    # "userPath":Ljava/io/File;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 1640
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public isFingerprintUsedinPersonas(I)Z
    .locals 8
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x1

    .line 4769
    const-string v4, "isFingerprintUsedinPersonas"

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4770
    invoke-virtual {p0, p1, v5}, Lcom/android/server/pm/PersonaManagerService;->getPersonasForUser(IZ)Ljava/util/List;

    move-result-object v3

    .line 4771
    .local v3, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v3, :cond_1

    .line 4772
    const-string v4, "device_policy"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService;

    .line 4773
    .local v0, "dpm":Lcom/android/server/DevicePolicyManagerService;
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 4774
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PersonaInfo;

    iget v2, v4, Landroid/content/pm/PersonaInfo;->id:I

    .line 4775
    .local v2, "personaId":I
    const v4, 0x11000

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v6

    if-ne v4, v6, :cond_0

    .line 4776
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PersonaId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " use fingerprint as lock type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 4781
    .end local v0    # "dpm":Lcom/android/server/DevicePolicyManagerService;
    .end local v1    # "k":I
    .end local v2    # "personaId":I
    :goto_1
    return v4

    .line 4773
    .restart local v0    # "dpm":Lcom/android/server/DevicePolicyManagerService;
    .restart local v1    # "k":I
    .restart local v2    # "personaId":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4781
    .end local v0    # "dpm":Lcom/android/server/DevicePolicyManagerService;
    .end local v1    # "k":I
    .end local v2    # "personaId":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method isFromApprovedInstaller(I)Z
    .locals 9
    .param p1, "uid"    # I

    .prologue
    const/4 v5, 0x1

    .line 4446
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 4447
    .local v4, "userId":I
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4449
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PersonaManagerService;->getPackagesFromInstallWhiteList(I)Ljava/util/List;

    move-result-object v1

    .line 4450
    .local v1, "approvedInstallers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 4451
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4453
    .local v3, "installer":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v3, v4}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 4455
    .local v0, "allowedPackageUid":I
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "install package for uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " installer uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " installer package name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4458
    const/4 v6, -0x1

    if-eq v0, v6, :cond_0

    if-ne p1, v0, :cond_0

    .line 4459
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "allowing app installation from installer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4469
    .end local v0    # "allowedPackageUid":I
    .end local v1    # "approvedInstallers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "installer":Ljava/lang/String;
    :cond_1
    :goto_0
    return v5

    .line 4465
    .restart local v1    # "approvedInstallers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const-string v5, "PersonaManagerService"

    const-string v6, "rejecting app installation"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4466
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public isInitialized(I)Z
    .locals 6
    .param p1, "personaId"    # I

    .prologue
    const/4 v1, 0x0

    .line 713
    const-string v2, "isInitialized"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 714
    const-string v2, "isInitialized"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkManagePersonasPermission(Ljava/lang/String;)V

    .line 715
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 716
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaInfo;

    .line 717
    .local v0, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v3, :cond_1

    .line 718
    :cond_0
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInitialized: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    monitor-exit v2

    .line 724
    :goto_0
    return v1

    .line 721
    :cond_1
    iget v3, v0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_2

    .line 722
    monitor-exit v2

    goto :goto_0

    .line 725
    .end local v0    # "info":Landroid/content/pm/PersonaInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 724
    .restart local v0    # "info":Landroid/content/pm/PersonaInfo;
    :cond_2
    const/4 v1, 0x1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isPackageInInstallWhiteList(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 5090
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPackageInInstallWhiteList check "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5091
    const-string v0, "installerWhitelist"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->isAppInList(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isSessionExpired(I)Z
    .locals 5
    .param p1, "personaId"    # I

    .prologue
    const/4 v1, 0x0

    .line 4577
    const-string v2, "isSessionExpired"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4578
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSessionExpired() id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4580
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 4581
    .local v0, "currentId":I
    if-ne p1, v0, :cond_0

    .line 4585
    :goto_0
    return v1

    .line 4583
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    or-int/lit16 v3, p1, 0x1388

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 4585
    .local v1, "sessionExpired":Z
    :cond_1
    goto :goto_0
.end method

.method public isSetupWizardInstalled(I)Z
    .locals 8
    .param p1, "personaId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1697
    const-string v5, "isSetupWizardInstalled"

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1698
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1700
    .local v1, "ident":J
    const-string v5, "PersonaManagerService"

    const-string v6, " calling getSetupWizardPath   "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getSetupWizardPath(I)Ljava/lang/String;

    move-result-object v0

    .line 1702
    .local v0, "apkLocation":Ljava/lang/String;
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " got apkLocation  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 1705
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 1706
    .local v3, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    .line 1707
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PackageManagerService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1708
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1709
    const/4 v4, 0x1

    .line 1716
    .end local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v4

    .line 1715
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public lockPersona(I)V
    .locals 10
    .param p1, "personaId"    # I

    .prologue
    .line 4527
    const-string v5, "lockPersona"

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4529
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4573
    :cond_0
    :goto_0
    return-void

    .line 4532
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    if-ne p1, v5, :cond_3

    .line 4534
    const-string v5, "persona_state_manager"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Landroid/content/pm/IPersonaStateHandler;

    .line 4536
    .local v2, "personaStateManagerService":Landroid/content/pm/IPersonaStateHandler;
    if-eqz v2, :cond_2

    .line 4537
    :try_start_0
    new-instance v5, Landroid/content/pm/PersonaEvent;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/content/pm/PersonaEvent;-><init>(I)V

    invoke-interface {v2, v5}, Landroid/content/pm/IPersonaStateHandler;->postEvent(Landroid/content/pm/PersonaEvent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4541
    :catch_0
    move-exception v4

    .line 4542
    .local v4, "re":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 4539
    .end local v4    # "re":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    const-string v5, "PersonaManagerService"

    const-string v6, "lockPersona() personaStateManagerService is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4547
    .end local v2    # "personaStateManagerService":Landroid/content/pm/IPersonaStateHandler;
    :cond_3
    const/4 v2, 0x0

    .line 4548
    .restart local v2    # "personaStateManagerService":Landroid/content/pm/IPersonaStateHandler;
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;

    const-string v5, "persona_state"

    invoke-static {p1, v5}, Lcom/android/server/pm/HandlerCacheManager;->getHandlerForPersona(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 4549
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_4

    .line 4550
    invoke-static {v0}, Landroid/content/pm/IPersonaStateHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaStateHandler;

    move-result-object v2

    .line 4554
    :cond_4
    if-eqz v2, :cond_5

    .line 4555
    :try_start_2
    new-instance v5, Landroid/content/pm/PersonaEvent;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/content/pm/PersonaEvent;-><init>(I)V

    invoke-interface {v2, v5}, Landroid/content/pm/IPersonaStateHandler;->postEvent(Landroid/content/pm/PersonaEvent;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 4564
    :goto_1
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    or-int/lit16 v6, p1, 0x1388

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4565
    .local v1, "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    or-int/lit16 v6, p1, 0x1388

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->removeMessages(I)V

    .line 4566
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v5, v1}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    .line 4567
    .local v3, "queuedUp":Z
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lockPersona() queued a message to notify session expires right away? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4569
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4570
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Long;

    const-wide/16 v8, 0x0

    invoke-direct {v7, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4557
    .end local v1    # "message":Landroid/os/Message;
    .end local v3    # "queuedUp":Z
    :cond_5
    :try_start_3
    const-string v5, "PersonaManagerService"

    const-string v6, "lockPersona() personaStateManagerService is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 4559
    :catch_1
    move-exception v4

    .line 4560
    .restart local v4    # "re":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public makeInitialized(I)V
    .locals 5
    .param p1, "personaId"    # I

    .prologue
    .line 695
    const-string v1, "makeInitialized"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 697
    const-string v1, "PersonaManagerService"

    const-string v2, "makeInitialized() NOT CHECKING PERMISSION!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 699
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaInfo;

    .line 700
    .local v0, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v1, :cond_1

    .line 701
    :cond_0
    const-string v1, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeInitialized: unknown user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    monitor-exit v2

    .line 709
    :goto_0
    return-void

    .line 704
    :cond_1
    iget v1, v0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_2

    .line 705
    iget v1, v0, Landroid/content/pm/PersonaInfo;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/content/pm/PersonaInfo;->flags:I

    .line 706
    invoke-direct {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 708
    :cond_2
    monitor-exit v2

    goto :goto_0

    .end local v0    # "info":Landroid/content/pm/PersonaInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public markForRemoval(ILandroid/content/ComponentName;)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "removalActivity"    # Landroid/content/ComponentName;

    .prologue
    .line 4419
    const-string v1, "markForRemoval"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4420
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "markForRemoval() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4421
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "markForRemoval() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4424
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4425
    .local v0, "removalIntent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4426
    const-string v1, "isLockRequired"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4427
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->switchPersonaAndLaunch(ILandroid/content/Intent;)Z

    .line 4430
    return-void
.end method

.method public needVerificationForPackage(ILjava/lang/String;)Z
    .locals 8
    .param p1, "personaId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1524
    const-string v5, "needVerificationForPackage"

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1525
    const-string v5, "PersonaManagerService"

    const-string v6, "needVerificationForPackage  "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move v3, v4

    .line 1616
    :cond_1
    :goto_0
    return v3

    .line 1534
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getAdminPackageName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1535
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needVerificationForPackage for Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1539
    :cond_3
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "needVerificationForPackage "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    const/4 v2, 0x0

    .line 1545
    .local v2, "setupWizardApkLocation":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1546
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    const-string v5, "PersonaManagerService"

    const-string v6, "needVerificationForPackage getting setupWizardApkLocation"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getSetupWizardPath(I)Ljava/lang/String;

    move-result-object v2

    .line 1548
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "needVerificationForPackage setupWizardApkLocation is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    if-nez v2, :cond_5

    .line 1551
    const-string v5, "PersonaManagerService"

    const-string v6, "needVerificationForPackage setupWizardApkLocation == null "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 1571
    .local v0, "handlerApkLocation":Ljava/lang/String;
    const-string v5, "PersonaManagerService"

    const-string v6, "needVerificationForPackage getting handlerApkLocation"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getHandlerApkLocation(I)Ljava/lang/String;

    move-result-object v0

    .line 1573
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "needVerificationForPackage handlerApkLocation is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    if-nez v0, :cond_8

    .line 1576
    const-string v3, "PersonaManagerService"

    const-string v5, "needVerificationForPackage handlerApkLocation == null "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1577
    goto/16 :goto_0

    .line 1554
    .end local v0    # "handlerApkLocation":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1555
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "needVerificationForPackage setupWizardApkLocation mContext.getPackageManager()  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    if-eqz v1, :cond_4

    .line 1557
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    .line 1558
    :cond_6
    const-string v5, "PersonaManagerService"

    const-string v6, "needVerificationForPackage setupWizardApkLocation pkgInfo.packageName == null  "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1560
    :cond_7
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1561
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needVerificationForPackage setupWizardApkLocation return false for   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1579
    .restart local v0    # "handlerApkLocation":Ljava/lang/String;
    :cond_8
    const/4 v1, 0x0

    .line 1580
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1581
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "needVerificationForPackage handlerApkLocation mContext.getPackageManager()  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    if-eqz v1, :cond_c

    .line 1583
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_a

    .line 1584
    :cond_9
    const-string v3, "PersonaManagerService"

    const-string v5, "needVerificationForPackage handlerApkLocation pkgInfo.packageName == null  "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1585
    goto/16 :goto_0

    .line 1586
    :cond_a
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1587
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needVerificationForPackage handlerApkLocation return false for   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1590
    :cond_b
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "needVerificationForPackage handlerApkLocation return true for   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    :cond_c
    const-string v5, "com.sec.knox.containeragent2"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1596
    const-string v4, "PersonaManagerService"

    const-string v5, "containeragent2 return false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1600
    :cond_d
    const-string v5, "com.sec.knox.switcher"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1601
    const-string v4, "PersonaManagerService"

    const-string v5, "b2bswitcher demo return false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1605
    :cond_e
    const-string v5, "com.sec.knox.packageverifier"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1606
    const-string v4, "PersonaManagerService"

    const-string/jumbo v5, "verifier return false"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1611
    :cond_f
    const-string v5, "com.sec.knox.shortcutsms"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1615
    const-string v3, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needVerificationForPackage return true for  at the end "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1616
    goto/16 :goto_0
.end method

.method public onWakeLockChange(ZIIILjava/lang/String;)V
    .locals 5
    .param p1, "isAcquired"    # Z
    .param p2, "flags"    # I
    .param p3, "ownerUid"    # I
    .param p4, "ownerPid"    # I
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 5293
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5294
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5295
    const-string v2, "flag"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5296
    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5297
    const-string v2, "pid"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5298
    const-string v2, "package"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5299
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v4, v4, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 5300
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5301
    return-void
.end method

.method public preSystemReady()V
    .locals 1

    .prologue
    .line 2484
    const-string v0, "preSystemReady"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2497
    return-void
.end method

.method public refreshTimer(I)V
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 5151
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaState(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 5152
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5153
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 5154
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5156
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public registerHandler(Ljava/lang/String;Landroid/os/IBinder;Landroid/content/pm/IPersonaObserver;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mHandler"    # Landroid/os/IBinder;
    .param p3, "observer"    # Landroid/content/pm/IPersonaObserver;

    .prologue
    .line 3029
    const-string v1, "registerHandler"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3031
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PMS:: registerHandler for :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3034
    .local v0, "personaId":I
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 3035
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/HandlerCacheManager;->registerHandler(ILjava/lang/String;Ljava/lang/Object;Landroid/content/pm/IPersonaObserver;)V

    .line 3037
    :cond_0
    return-void
.end method

.method public registerObserver(Ljava/lang/String;Landroid/content/pm/IPersonaObserver;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPersonaObserver;

    .prologue
    .line 3041
    const-string v1, "registerObserver"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3044
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3046
    .local v0, "personaId":I
    invoke-static {v0, p1, p2}, Lcom/android/server/pm/HandlerCacheManager;->registerObserver(ILjava/lang/String;Landroid/content/pm/IPersonaObserver;)V

    .line 3048
    return-void
.end method

.method public registerOutsideObserver(ILjava/lang/String;Landroid/content/pm/IPersonaObserver;)V
    .locals 1
    .param p1, "personaId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "observer"    # Landroid/content/pm/IPersonaObserver;

    .prologue
    .line 3052
    const-string v0, "registerOutsideObserver"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3054
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/HandlerCacheManager;->registerObserver(ILjava/lang/String;Landroid/content/pm/IPersonaObserver;)V

    .line 3055
    return-void
.end method

.method public registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    .locals 1
    .param p1, "mSystemPersonaObserver"    # Landroid/content/pm/ISystemPersonaObserver;

    .prologue
    .line 575
    const-string v0, "registerSystemPersonaObserver"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 576
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    .line 579
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerUser(Landroid/content/pm/IPersonaCallback;)Z
    .locals 3
    .param p1, "client"    # Landroid/content/pm/IPersonaCallback;

    .prologue
    .line 459
    const-string v0, "registerUser"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 460
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " SAMBU PersonaManagerService.registerUser  "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mClients:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 462
    const/4 v0, 0x0

    .line 465
    :goto_0
    return v0

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " SAMBU size of mClients :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 465
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "personaId"    # I

    .prologue
    .line 4804
    invoke-direct {p0, p3}, Lcom/android/server/pm/PersonaManagerService;->getSharedPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4805
    .local v1, "personaSP":Landroid/content/SharedPreferences;
    const/4 v3, 0x0

    invoke-interface {v1, p1, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 4807
    .local v0, "imes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 4808
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removing IME "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4809
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4810
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 4811
    .local v2, "prefEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 4812
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4814
    .end local v2    # "prefEditor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public removePackageFromInstallWhiteList(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 5080
    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->APPROVED_INSTALLERS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5081
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be removed as installer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5086
    :goto_0
    return-void

    .line 5084
    :cond_0
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removePackageFromInstallWhiteList remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5085
    const-string v0, "installerWhitelist"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->removeAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public removePersona(I)I
    .locals 13
    .param p1, "personaHandle"    # I

    .prologue
    .line 3075
    const-string v8, "removePersona"

    invoke-static {v8}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3080
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3081
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3082
    .local v3, "ident":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3084
    .local v1, "currentUser":Ljava/lang/Integer;
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3085
    :try_start_0
    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3087
    :try_start_1
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PersonaInfo;

    .line 3088
    .local v6, "persona":Landroid/content/pm/PersonaInfo;
    if-eqz p1, :cond_0

    if-nez v6, :cond_1

    .line 3089
    :cond_0
    const/16 v8, -0x4b2

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3156
    :goto_0
    return v8

    .line 3092
    :cond_1
    :try_start_3
    const-string v8, "PersonaManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " callingUid - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3093
    const/16 v8, 0x3e8

    if-eq v0, v8, :cond_2

    .line 3094
    invoke-virtual {v6}, Landroid/content/pm/PersonaInfo;->getCreatorUid()I

    move-result v8

    if-eq v0, v8, :cond_2

    .line 3096
    const-string v8, "PersonaManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " Only creator fo persona can remove it. Calling uid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not equal to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Landroid/content/pm/PersonaInfo;->getCreatorUid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3099
    const/16 v8, -0x4b3

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v9

    goto :goto_0

    .line 3120
    .end local v6    # "persona":Landroid/content/pm/PersonaInfo;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v8

    .line 3103
    .restart local v6    # "persona":Landroid/content/pm/PersonaInfo;
    :cond_2
    :try_start_5
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    const/4 v11, 0x1

    invoke-virtual {v8, p1, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3109
    const/4 v8, 0x1

    iput-boolean v8, v6, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 3110
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v11, 0xc

    invoke-virtual {v8, v11}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 3111
    .local v5, "msg":Landroid/os/Message;
    iput p1, v5, Landroid/os/Message;->arg1:I

    .line 3112
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const-wide/16 v11, 0x3e8

    invoke-virtual {v8, v5, v11, v12}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3113
    invoke-direct {p0, v6}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 3116
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->cleanUpSharedPreferences(I)V

    .line 3117
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->deleteTimaKeyStoreKeys(I)V

    .line 3118
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3120
    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3122
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 3123
    .local v2, "i":I
    :goto_1
    if-lez v2, :cond_3

    .line 3124
    add-int/lit8 v2, v2, -0x1

    .line 3126
    :try_start_7
    const-string v8, "PersonaManagerService"

    const-string v9, " sending remove persona event to system observers "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ISystemPersonaObserver;

    invoke-interface {v8, p1}, Landroid/content/pm/ISystemPersonaObserver;->onRemovePersona(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    .line 3128
    :catch_0
    move-exception v8

    goto :goto_1

    .line 3118
    .end local v2    # "i":I
    .end local v5    # "msg":Landroid/os/Message;
    .end local v6    # "persona":Landroid/content/pm/PersonaInfo;
    :catchall_1
    move-exception v8

    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 3133
    .restart local v2    # "i":I
    .restart local v5    # "msg":Landroid/os/Message;
    .restart local v6    # "persona":Landroid/content/pm/PersonaInfo;
    :cond_3
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3137
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, p1, :cond_4

    .line 3138
    const-string v8, "PersonaManagerService"

    const-string v9, " Calling handler : MSG_START_REMOVE_PERSONA_AFTER_SWITCH"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3139
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 3140
    iput p1, v5, Landroid/os/Message;->arg1:I

    .line 3141
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v8, v5}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3142
    const/4 v8, 0x3

    invoke-virtual {p0, p1, v8}, Lcom/android/server/pm/PersonaManagerService;->setPersonaState(II)V

    .line 3143
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 3148
    :cond_4
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Stopping user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3150
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->startRemovingPersona(I)I

    move-result v7

    .line 3152
    .local v7, "res":I
    if-nez v7, :cond_5

    .line 3153
    const/4 v8, 0x3

    invoke-virtual {p0, p1, v8}, Lcom/android/server/pm/PersonaManagerService;->setPersonaState(II)V

    .line 3154
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 3156
    :cond_5
    const/16 v8, -0x4b1

    goto/16 :goto_0
.end method

.method public resetPassword(Ljava/lang/String;)Z
    .locals 10
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 4877
    const-string v7, "PersonaManagerService"

    const-string v8, "resetPassword"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4879
    const/4 v4, 0x0

    .line 4880
    .local v4, "status":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4881
    .local v2, "personaId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 4882
    .local v5, "token":J
    invoke-direct {p0, v2}, Lcom/android/server/pm/PersonaManagerService;->getPasswordFromTima(I)Ljava/lang/String;

    move-result-object v1

    .line 4883
    .local v1, "oldPassword":Ljava/lang/String;
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4885
    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resetPassword : password -"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and personaid -"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4887
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 4888
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 4889
    .local v0, "lockPattermUtil":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v3

    .line 4890
    .local v3, "quality":I
    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resetPassword : quality -"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4892
    const/high16 v7, 0x20000

    if-lt v3, v7, :cond_2

    const/high16 v7, 0x60000

    if-gt v3, v7, :cond_2

    .line 4894
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4895
    invoke-virtual {v0, p1, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 4896
    const/4 v4, 0x1

    .line 4915
    .end local v0    # "lockPattermUtil":Lcom/android/internal/widget/LockPatternUtils;
    .end local v3    # "quality":I
    :cond_0
    :goto_0
    return v4

    .line 4898
    .restart local v0    # "lockPattermUtil":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v3    # "quality":I
    :cond_1
    const-string v7, "PersonaManagerService"

    const-string v8, "resetPassword : checkPassword is not successful"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4901
    :cond_2
    const/high16 v7, 0x10000

    if-ne v3, v7, :cond_0

    .line 4903
    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4904
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 4905
    const/4 v4, 0x1

    goto :goto_0

    .line 4907
    :cond_3
    const-string v7, "PersonaManagerService"

    const-string v8, "resetPassword : checkPattern is not successful"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4912
    .end local v0    # "lockPattermUtil":Lcom/android/internal/widget/LockPatternUtils;
    .end local v3    # "quality":I
    :cond_4
    const-string v7, "PersonaManagerService"

    const-string v8, "resetPassword : old password cannot be null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetPersona(I)I
    .locals 13
    .param p1, "perId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 4197
    const-string v9, "resetPersona"

    invoke-static {v9}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4201
    move v6, p1

    .line 4202
    .local v6, "personaId":I
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resetPersona :personaId-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4204
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4205
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4206
    .local v2, "ident":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 4207
    .local v1, "currentUser":Ljava/lang/Integer;
    const-string v9, "PersonaManagerService"

    const-string v10, "getting handler for persona"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4210
    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v10

    .line 4211
    :try_start_0
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PersonaInfo;

    .line 4212
    .local v5, "persona":Landroid/content/pm/PersonaInfo;
    if-eqz v6, :cond_0

    if-nez v5, :cond_1

    .line 4213
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4214
    const-string v9, "PersonaManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "resetPersona : not valid persona : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4215
    monitor-exit v10

    .line 4283
    :goto_0
    return v8

    .line 4220
    :cond_1
    const/16 v9, 0x3e8

    if-eq v0, v9, :cond_2

    .line 4221
    invoke-virtual {v5}, Landroid/content/pm/PersonaInfo;->getCreatorUid()I

    move-result v9

    if-eq v0, v9, :cond_2

    .line 4223
    const-string v9, "PersonaManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " Only creator fo persona can reset it. Calling uid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not equal to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Landroid/content/pm/PersonaInfo;->getCreatorUid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4226
    monitor-exit v10

    goto :goto_0

    .line 4267
    .end local v5    # "persona":Landroid/content/pm/PersonaInfo;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 4254
    .restart local v5    # "persona":Landroid/content/pm/PersonaInfo;
    :cond_2
    :try_start_1
    invoke-virtual {p0, v6}, Lcom/android/server/pm/PersonaManagerService;->getPersonaState(I)I

    move-result v7

    .line 4259
    .local v7, "personaState":I
    const/16 v9, 0x63

    invoke-virtual {p0, v6, v9}, Lcom/android/server/pm/PersonaManagerService;->setPersonaState(II)V

    .line 4267
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4271
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v6, :cond_3

    .line 4272
    const-string v9, "PersonaManagerService"

    const-string v10, " Calling handler : MSG_START_RESET_PERSONA_AFTER_SWITCH"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4273
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 4274
    .local v4, "msg":Landroid/os/Message;
    iput v6, v4, Landroid/os/Message;->arg1:I

    .line 4275
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v9, v4}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4277
    const/4 v8, 0x0

    goto :goto_0

    .line 4281
    .end local v4    # "msg":Landroid/os/Message;
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/server/pm/PersonaManagerService;->startResetPersona(I)I

    move-result v8

    .line 4282
    .local v8, "result":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public rollBackToPersona(I)V
    .locals 8
    .param p1, "parentId"    # I

    .prologue
    .line 4494
    const-string v5, "rollBackToPersona"

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4495
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rollBackToPersona() for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4497
    move v4, p1

    .line 4499
    .local v4, "personaId":I
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUserLastPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4500
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUserLastPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 4501
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUserLastPersonaMap:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4502
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rollBackToPersona() after removing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4503
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUserLastPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4504
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rollBackToPersona() after removing still exists "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4509
    :goto_0
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rollBackToPersona() to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4511
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4512
    .local v2, "ident":J
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4514
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v0, v4, v5, v6}, Landroid/app/ActivityManager;->switchPersonaConditional(IZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4519
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4523
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v2    # "ident":J
    :cond_0
    return-void

    .line 4506
    :cond_1
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rollBackToPersona() after removing good job"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4515
    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    .restart local v2    # "ident":J
    :catch_0
    move-exception v1

    .line 4516
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while switching to persona "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4517
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public rollUpToParent(I)V
    .locals 8
    .param p1, "personaId"    # I

    .prologue
    .line 4473
    const-string v5, "rollUpToParent"

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4474
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rollUpToParent() for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4476
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getParentId(I)I

    move-result v4

    .line 4477
    .local v4, "parentId":I
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mUserLastPersonaMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4479
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rollUpToParent() to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4481
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4482
    .local v2, "ident":J
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4484
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v0, v4, v5, v6}, Landroid/app/ActivityManager;->switchPersonaConditional(IZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4489
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4490
    return-void

    .line 4485
    :catch_0
    move-exception v1

    .line 4486
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while switching to persona "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4487
    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public savePasswordInTima(ILjava/lang/String;)Z
    .locals 12
    .param p1, "personaId"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 4830
    const/4 v3, 0x0

    .line 4831
    .local v3, "resullt":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 4833
    .local v7, "token":J
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v1

    .line 4834
    .local v1, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/PersonaInfo;->isSecureStorageEnabled()Z

    move-result v9

    if-nez v9, :cond_0

    .line 4835
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "savePasswordInTima->  SecureStorage is not enabled  for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4836
    const/4 v9, 0x0

    .line 4869
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4872
    .end local v1    # "info":Landroid/content/pm/PersonaInfo;
    :goto_0
    return v9

    .line 4838
    .restart local v1    # "info":Landroid/content/pm/PersonaInfo;
    :cond_0
    :try_start_1
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "savePasswordInTima->  personaId :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4839
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 4841
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->changeEncryptFsKey(ILjava/lang/String;)Z

    .line 4843
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getTimaState()I

    move-result v6

    .line 4844
    .local v6, "timaStatus":I
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Tima device status "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4845
    if-nez v6, :cond_1

    .line 4846
    sget-object v9, Lcom/android/server/pm/PersonaManagerService;->TIMA_KEYSTORE_NAME:Ljava/lang/String;

    invoke-static {v9}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 4847
    .local v2, "ks":Ljava/security/KeyStore;
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 4848
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const-string v10, ""

    invoke-direct {v4, v9, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 4849
    .local v4, "secretKey":Ljavax/crypto/SecretKey;
    new-instance v5, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v5, v4}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 4851
    .local v5, "secretKeyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/android/server/pm/PersonaManagerService;->PERSONA_PWD:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v10

    invoke-virtual {v2, v9, v5, v10}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4852
    const/4 v3, 0x1

    .line 4869
    .end local v2    # "ks":Ljava/security/KeyStore;
    .end local v4    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v5    # "secretKeyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    .end local v6    # "timaStatus":I
    :goto_1
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "info":Landroid/content/pm/PersonaInfo;
    :goto_2
    move v9, v3

    .line 4872
    goto :goto_0

    .line 4854
    .restart local v1    # "info":Landroid/content/pm/PersonaInfo;
    .restart local v6    # "timaStatus":I
    :cond_1
    :try_start_2
    invoke-direct {p0, p1, v6}, Lcom/android/server/pm/PersonaManagerService;->checkTimaError(II)V
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 4860
    .end local v1    # "info":Landroid/content/pm/PersonaInfo;
    .end local v6    # "timaStatus":I
    :catch_0
    move-exception v0

    .line 4861
    .local v0, "e":Ljava/security/KeyStoreException;
    :try_start_3
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4869
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 4857
    .end local v0    # "e":Ljava/security/KeyStoreException;
    .restart local v1    # "info":Landroid/content/pm/PersonaInfo;
    :cond_2
    :try_start_4
    const-string v9, "PersonaManagerService"

    const-string v10, "password cannot be null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 4862
    .end local v1    # "info":Landroid/content/pm/PersonaInfo;
    :catch_1
    move-exception v0

    .line 4863
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_5
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4869
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 4864
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v0

    .line 4865
    .local v0, "e":Ljava/security/cert/CertificateException;
    :try_start_6
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4869
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 4866
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_3
    move-exception v0

    .line 4867
    .local v0, "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4869
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
.end method

.method public setCurrentPersonaForUser(II)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "personaId"    # I

    .prologue
    .line 3933
    const-string v0, "setCurrentPersonaForUser"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3934
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentPersonaForUser() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3935
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserLastPersonaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3936
    return-void
.end method

.method public setFsMountState(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "mountState"    # Z

    .prologue
    .line 4127
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFsMountState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4128
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4129
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 4130
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v0, :cond_0

    .line 4131
    const-string v1, "PersonaManagerService"

    const-string v3, "setFsMountState personaInfo is null "

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4132
    monitor-exit v2

    .line 4138
    :goto_0
    return-void

    .line 4135
    :cond_0
    iput-boolean p2, v0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 4136
    invoke-direct {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 4137
    monitor-exit v2

    goto :goto_0

    .end local v0    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMaximumScreenOffTimeoutFromDeviceAdmin(JI)V
    .locals 6
    .param p1, "timeInMs"    # J
    .param p3, "personaId"    # I

    .prologue
    .line 5106
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMaximumScreenOffTimeoutFromDeviceAdmin called but may not be entered: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " persona:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5107
    const/16 v2, 0x1388

    .line 5108
    .local v2, "timeMs":I
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, p1, v3

    if-lez v3, :cond_2

    .line 5109
    const v2, 0x7fffffff

    .line 5114
    :goto_0
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v1

    .line 5115
    .local v1, "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v1, :cond_1

    .line 5116
    const-string v3, "PersonaManagerService"

    const-string v4, "Pinfo is not null. Going to refresh timer."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5117
    const/16 v3, 0x1388

    if-gt v2, v3, :cond_0

    .line 5118
    const/16 v2, 0x1388

    .line 5120
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mAdminLockSettings:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5122
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PersonaManagerService;->refreshTimer(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5128
    .end local v1    # "pInfo":Landroid/content/pm/PersonaInfo;
    :cond_1
    :goto_1
    return-void

    .line 5111
    :cond_2
    long-to-int v2, p1

    goto :goto_0

    .line 5124
    :catch_0
    move-exception v0

    .line 5125
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setPersonaIcon(ILandroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 3891
    const-string v1, "setPersonaIcon"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3892
    const-string/jumbo v1, "update users"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkManagePersonasPermission(Ljava/lang/String;)V

    .line 3893
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3894
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaInfo;

    .line 3895
    .local v0, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/content/pm/PersonaInfo;->partial:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-eqz v1, :cond_1

    .line 3896
    :cond_0
    const-string v1, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPersonaIcon: unknown user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3897
    monitor-exit v2

    .line 3903
    :goto_0
    return-void

    .line 3899
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/PersonaManagerService;->writeBitmapLocked(Landroid/content/pm/PersonaInfo;Landroid/graphics/Bitmap;)V

    .line 3900
    invoke-direct {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 3901
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3902
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->sendPersonaInfoChangedBroadcast(I)V

    goto :goto_0

    .line 3901
    .end local v0    # "info":Landroid/content/pm/PersonaInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setPersonaName(ILjava/lang/String;)V
    .locals 6
    .param p1, "personaId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 3975
    const-string v2, "setPersonaName"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3976
    const-string v2, "PersonaManagerService"

    const-string v3, "setPersonaName()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3977
    const-string v2, "rename users"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkManagePersonasPermission(Ljava/lang/String;)V

    .line 3978
    const/4 v0, 0x0

    .line 3979
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3980
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PersonaInfo;

    .line 3981
    .local v1, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v2, :cond_2

    .line 3982
    :cond_0
    const-string v2, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPersonaName() unknown persona #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3984
    monitor-exit v3

    .line 3995
    :cond_1
    :goto_0
    return-void

    .line 3986
    :cond_2
    if-eqz p2, :cond_3

    iget-object v2, v1, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3987
    iput-object p2, v1, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    .line 3988
    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 3989
    const/4 v0, 0x1

    .line 3991
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3992
    if-eqz v0, :cond_1

    .line 3993
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->sendPersonaInfoChangedBroadcast(I)V

    goto :goto_0

    .line 3991
    .end local v1    # "info":Landroid/content/pm/PersonaInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setPersonaSamsungAccount(ILjava/lang/String;)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "samsungAccount"    # Ljava/lang/String;

    .prologue
    .line 631
    const-string v1, "setPersonaSamsungAccount"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 632
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 633
    .local v0, "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    .line 634
    invoke-virtual {v0, p2}, Landroid/content/pm/PersonaInfo;->setsamsungAccount(Ljava/lang/String;)V

    .line 635
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 636
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 637
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 638
    monitor-exit v2

    .line 640
    :cond_0
    return-void

    .line 638
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPersonaState(II)V
    .locals 9
    .param p1, "personaId"    # I
    .param p2, "newState"    # I

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 4050
    const-string v3, "setPersonaState"

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4051
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPersonaState: new state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4052
    const/4 v2, -0x1

    .line 4053
    .local v2, "state":I
    const/4 v3, 0x2

    if-eq p2, v3, :cond_0

    if-ne p2, v8, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4054
    invoke-virtual {p0, p1, v7}, Lcom/android/server/pm/PersonaManagerService;->setPersonaState(II)V

    .line 4106
    :goto_0
    return-void

    .line 4057
    :cond_1
    const/4 v1, 0x0

    .line 4058
    .local v1, "personaInfo":Landroid/content/pm/PersonaInfo;
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4059
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v1

    .line 4060
    if-nez v1, :cond_2

    .line 4061
    const-string v3, "PersonaManagerService"

    const-string v5, "setPersonaState personaInfo is null "

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4062
    monitor-exit v4

    goto :goto_0

    .line 4083
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4064
    :cond_2
    :try_start_1
    iget v2, v1, Landroid/content/pm/PersonaInfo;->state:I

    .line 4065
    if-ne v2, p2, :cond_3

    .line 4066
    const-string v3, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPersonaState: current and new state are same.. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4067
    monitor-exit v4

    goto :goto_0

    .line 4069
    :cond_3
    iput v2, v1, Landroid/content/pm/PersonaInfo;->oldState:I

    .line 4070
    iput p2, v1, Landroid/content/pm/PersonaInfo;->state:I

    .line 4071
    if-ne p2, v8, :cond_4

    .line 4072
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 4074
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/server/pm/PersonaManagerService;->isSuperLockState(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4075
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    .line 4076
    if-ne v2, v8, :cond_5

    .line 4077
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 4082
    :cond_5
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 4083
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4085
    if-ne v2, v6, :cond_8

    if-nez p2, :cond_8

    .line 4086
    const-string v3, "PersonaManagerService"

    const-string v4, "setPersonaState : first time switch"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4087
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "user_setup_complete"

    invoke-static {v3, v4, v6, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4088
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 4089
    .local v0, "i":I
    :goto_2
    if-lez v0, :cond_7

    .line 4090
    add-int/lit8 v0, v0, -0x1

    .line 4092
    :try_start_2
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ISystemPersonaObserver;

    invoke-interface {v3, p1}, Landroid/content/pm/ISystemPersonaObserver;->onPersonaActive(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 4093
    :catch_0
    move-exception v3

    goto :goto_2

    .line 4080
    .end local v0    # "i":I
    :cond_6
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, v1, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 4098
    .restart local v0    # "i":I
    :cond_7
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4101
    .end local v0    # "i":I
    :cond_8
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;

    if-eqz v3, :cond_9

    .line 4102
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;

    invoke-virtual {v3, p1, p2, v2}, Lcom/android/server/pm/HandlerCacheManager;->onStateChange(III)V

    goto/16 :goto_0

    .line 4104
    :cond_9
    const-string v3, "PersonaManagerService"

    const-string v4, "setPersonaState mHandlerCacheManager is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setPersonaType(ILjava/lang/String;)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 610
    const-string v1, "setPersonaType"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 611
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 612
    .local v0, "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {v0, p2}, Landroid/content/pm/PersonaInfo;->setType(Ljava/lang/String;)V

    .line 614
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 615
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 616
    monitor-exit v2

    .line 618
    :cond_0
    return-void

    .line 616
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPhoneCaller(I)V
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 3956
    const-string v0, "setPhoneCaller"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3957
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPhoneCaller as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3958
    iput p1, p0, Lcom/android/server/pm/PersonaManagerService;->PhoneCaller:I

    .line 3959
    return-void
.end method

.method public setResetPasswordState(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 4142
    const-string/jumbo v1, "update users"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkManagePersonasPermission(Ljava/lang/String;)V

    .line 4143
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setResetPasswordState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4144
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4145
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 4146
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v0, :cond_0

    .line 4147
    const-string v1, "PersonaManagerService"

    const-string/jumbo v3, "setResetPasswordState personaInfo is null "

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4148
    monitor-exit v2

    .line 4154
    :goto_0
    return-void

    .line 4151
    :cond_0
    iput-boolean p2, v0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 4152
    invoke-direct {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 4153
    monitor-exit v2

    goto :goto_0

    .end local v0    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setShortcutMode(IZ)V
    .locals 1
    .param p1, "personaId"    # I
    .param p2, "isShortcutMode"    # Z

    .prologue
    .line 3173
    const-string/jumbo v0, "setShortcutMode"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3174
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mShortcutModes:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3175
    return-void
.end method

.method public setSuperLock(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "setLock"    # Z

    .prologue
    .line 4110
    const-string/jumbo v1, "setSuperLock"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4111
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSuperLock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4112
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4113
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 4114
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v0, :cond_0

    .line 4115
    const-string v1, "PersonaManagerService"

    const-string/jumbo v3, "setSuperLock personaInfo is null "

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4116
    monitor-exit v2

    .line 4122
    :goto_0
    return-void

    .line 4119
    :cond_0
    iput-boolean p2, v0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    .line 4120
    invoke-direct {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 4121
    monitor-exit v2

    goto :goto_0

    .end local v0    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public settingSyncAllowed(I)Z
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    .line 5360
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 5362
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    iget v1, v0, Landroid/content/pm/PersonaInfo;->state:I

    packed-switch v1, :pswitch_data_0

    .line 5370
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 5367
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 5362
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startRemovingPersona(I)I
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    .line 3184
    const-string/jumbo v0, "startRemovingPersona"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3185
    const-string v0, "PersonaManagerService"

    const-string/jumbo v1, "startRemovingPersona is called.."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3186
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->stopAndRemovePersona(IZ)I

    move-result v0

    return v0
.end method

.method public stopAndRemovePersona(IZ)I
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "removePersona"    # Z

    .prologue
    .line 3190
    const-string/jumbo v2, "stopAndRemovePersona"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3191
    const-string v2, "PersonaManagerService"

    const-string/jumbo v3, "stopAndRemovePersona is called.."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3192
    const/4 v1, -0x1

    .line 3194
    .local v1, "res":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/PersonaManagerService$4;

    invoke-direct {v3, p0, p2}, Lcom/android/server/pm/PersonaManagerService$4;-><init>(Lcom/android/server/pm/PersonaManagerService;Z)V

    invoke-interface {v2, p1, v3}, Landroid/app/IActivityManager;->stopUser(ILandroid/app/IStopUserCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3236
    :goto_0
    return v1

    .line 3233
    :catch_0
    move-exception v0

    .line 3234
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in removePersona "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopPersona(I)I
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    .line 3178
    const-string/jumbo v0, "stopPersona"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3179
    const-string v0, "PersonaManagerService"

    const-string/jumbo v1, "stopPersona is called.."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3180
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->stopAndRemovePersona(IZ)I

    move-result v0

    return v0
.end method

.method public switchPersona(I)Z
    .locals 9
    .param p1, "personaId"    # I

    .prologue
    const/4 v5, 0x0

    .line 2979
    const-string/jumbo v6, "switchPersona"

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2980
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "switching to persona "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v4

    .line 2983
    .local v4, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v4, :cond_0

    .line 2984
    iget-boolean v6, v4, Landroid/content/pm/PersonaInfo;->removePersona:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 2985
    const-string v6, "PersonaManagerService"

    const-string v7, "Switch not allowed because removePersona flag is true"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2999
    :goto_0
    return v5

    .line 2990
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2991
    .local v2, "ident":J
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2993
    .local v0, "activityManager":Landroid/app/ActivityManager;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->switchPersona(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 2994
    :catch_0
    move-exception v1

    .line 2995
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while switching to persona "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public switchPersonaAndLaunch(ILandroid/content/Intent;)Z
    .locals 9
    .param p1, "personaId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 3004
    const-string/jumbo v6, "switchPersonaAndLaunch"

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3005
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "switching to persona "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " intent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v4

    .line 3008
    .local v4, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v4, :cond_0

    .line 3009
    iget-boolean v6, v4, Landroid/content/pm/PersonaInfo;->removePersona:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 3010
    const-string v6, "PersonaManagerService"

    const-string v7, "Switch not allowed because either partial flag or remove flag is true"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3024
    :goto_0
    return v5

    .line 3015
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3016
    .local v2, "ident":J
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3018
    .local v0, "activityManager":Landroid/app/ActivityManager;
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityManager;->switchPersonaAndLaunch(ILandroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 3019
    :catch_0
    move-exception v1

    .line 3020
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while switching to persona "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and launch "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3021
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3023
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public systemReady()V
    .locals 6

    .prologue
    .line 2501
    const-string/jumbo v2, "systemReady"

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2503
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaPolicyManagerService()Lcom/android/server/pm/PersonaPolicyManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->registerReceivers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2507
    :goto_0
    new-instance v2, Lcom/android/server/pm/PersonaManagerService$SettingsObserver;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4}, Lcom/android/server/pm/PersonaManagerService$SettingsObserver;-><init>(Landroid/os/Handler;I)V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mSettingsObserver:Lcom/android/server/pm/PersonaManagerService$SettingsObserver;

    .line 2508
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mSettingsObserver:Lcom/android/server/pm/PersonaManagerService$SettingsObserver;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PersonaManagerService$SettingsObserver;->observe(Landroid/content/Context;)V

    .line 2509
    const-string v2, "ro.config.knox"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2511
    .local v1, "version":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/pm/PersonaManagerService$BootReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/pm/PersonaManagerService$BootReceiver;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2513
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2514
    const-string/jumbo v2, "v30"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2515
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/PersonaManagerService$1;

    invoke-direct {v3, p0}, Lcom/android/server/pm/PersonaManagerService$1;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2532
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/PersonaManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/pm/PersonaManagerService$2;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2564
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/PersonaManagerService$3;

    invoke-direct {v3, p0}, Lcom/android/server/pm/PersonaManagerService$3;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2592
    return-void

    .line 2504
    .end local v1    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2505
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public unInstallSystemApplications(ILjava/util/List;)I
    .locals 11
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1672
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v6, "unInstallSystemApplications"

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1673
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1674
    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1675
    const/4 v4, -0x1

    .line 1676
    .local v4, "result":I
    :try_start_1
    const-string v6, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " in PMS, calling PkgMgr uninstall system apps  :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mBaseUserPath:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1678
    .local v5, "userPath":Ljava/io/File;
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, p1, v5, p2}, Lcom/android/server/pm/PackageManagerService;->unInstallSystemApplicationsForPersonaLILPw(ILjava/io/File;Ljava/util/List;)I

    move-result v4

    .line 1680
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .line 1682
    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1683
    .local v2, "pkg":Ljava/lang/String;
    const-string v6, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " removing files for package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1686
    .local v3, "pkgDir":Ljava/io/File;
    invoke-direct {p0, v0, p1, v3}, Lcom/android/server/pm/PersonaManagerService;->removeFilesForSysApp(Lcom/sec/knox/container/util/EnterprisePartitionManager;ILjava/io/File;)V

    goto :goto_0

    .line 1690
    .end local v0    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "pkgDir":Ljava/io/File;
    .end local v5    # "userPath":Ljava/io/File;
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6

    .line 1691
    .end local v4    # "result":I
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 1689
    .restart local v0    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "result":I
    .restart local v5    # "userPath":Ljava/io/File;
    :cond_0
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return v4
.end method

.method public unmarkForRemoval(I)V
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 4434
    const-string/jumbo v0, "unmarkForRemoval"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4435
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unmarkForRemoval() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4436
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->setPersonaState(II)V

    .line 4437
    return-void
.end method

.method public unregisterObserver(Ljava/lang/String;Landroid/content/pm/IPersonaObserver;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPersonaObserver;

    .prologue
    .line 3059
    const-string/jumbo v1, "unregisterObserver"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3062
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3064
    .local v0, "personaId":I
    invoke-static {v0, p1, p2}, Lcom/android/server/pm/HandlerCacheManager;->unregisterObserver(ILjava/lang/String;Landroid/content/pm/IPersonaObserver;)V

    .line 3066
    return-void
.end method

.method public userActivity(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 5160
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5161
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 5162
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5163
    return-void
.end method

.method public userBackground(I)V
    .locals 13
    .param p1, "userId"    # I

    .prologue
    .line 3764
    const-string/jumbo v8, "userBackground"

    invoke-static {v8}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3765
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3766
    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaInfo;

    .line 3767
    .local v0, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    iget-boolean v8, v0, Landroid/content/pm/PersonaInfo;->partial:Z

    if-nez v8, :cond_0

    iget-boolean v8, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-eqz v8, :cond_1

    .line 3768
    :cond_0
    const-string v8, "SwitchPersona"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "personaBackground: unknown user #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3769
    monitor-exit v9

    .line 3800
    :goto_0
    return-void

    .line 3771
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3772
    .local v3, "now":J
    const-string v8, "SwitchPersona"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "userBackground() now "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3774
    iput-wide v3, v0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 3775
    invoke-direct {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 3777
    const-string v8, "SwitchPersona"

    const-string/jumbo v10, "userBackground() changing value in lastTimeToBackground"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3778
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3779
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3780
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->printLastTimeToBackground()V

    .line 3782
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v5

    .line 3784
    .local v5, "personaInfo":Landroid/content/pm/PersonaInfo;
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v6

    .line 3785
    .local v6, "sessionLength":J
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    or-int/lit16 v10, p1, 0x1388

    invoke-virtual {v8, v10}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3786
    .local v1, "message":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    or-int/lit16 v10, p1, 0x1388

    invoke-virtual {v8, v10}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->removeMessages(I)V

    .line 3787
    const-wide/16 v10, 0x0

    cmp-long v8, v6, v10

    if-gtz v8, :cond_2

    .line 3789
    const-wide v6, 0x7fffffffffffffffL

    .line 3790
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v8, v1, v6, v7}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3795
    :goto_1
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v10, 0xc

    invoke-virtual {v8, v10}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 3796
    .local v2, "msg":Landroid/os/Message;
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 3797
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v2, v10, v11}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3799
    monitor-exit v9

    goto/16 :goto_0

    .end local v0    # "info":Landroid/content/pm/PersonaInfo;
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "now":J
    .end local v5    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .end local v6    # "sessionLength":J
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 3793
    .restart local v0    # "info":Landroid/content/pm/PersonaInfo;
    .restart local v1    # "message":Landroid/os/Message;
    .restart local v3    # "now":J
    .restart local v5    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .restart local v6    # "sessionLength":J
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v8, v1, v6, v7}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public userForeground(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 3741
    const-string/jumbo v3, "userForeground"

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3742
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3743
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaInfo;

    .line 3744
    .local v0, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Landroid/content/pm/PersonaInfo;->partial:Z

    if-nez v3, :cond_0

    iget-boolean v3, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-eqz v3, :cond_1

    .line 3745
    :cond_0
    const-string v3, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "userForeground: unknown user #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3746
    monitor-exit v4

    .line 3756
    :goto_0
    return-void

    .line 3748
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 3749
    .local v1, "now":J
    const-wide v5, 0xdc46c32800L

    cmp-long v3, v1, v5

    if-lez v3, :cond_2

    .line 3750
    iput-wide v1, v0, Landroid/content/pm/PersonaInfo;->lastLoggedInTime:J

    .line 3751
    invoke-direct {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V

    .line 3753
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3754
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User foreground during switch:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3755
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->refreshTimer(I)V

    goto :goto_0

    .line 3753
    .end local v0    # "info":Landroid/content/pm/PersonaInfo;
    .end local v1    # "now":J
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
