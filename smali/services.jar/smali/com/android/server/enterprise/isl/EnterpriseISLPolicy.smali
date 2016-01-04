.class public Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
.super Lcom/sec/enterprise/knox/IEnterpriseISLPolicy$Stub;
.source "EnterpriseISLPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;,
        Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;,
        Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$TimaISLCallback;,
        Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;,
        Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ISAConnection;,
        Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DIGEST_TYPE:Ljava/lang/String; = "SHA-256"

.field private static final ENTERPRISE_MDM_ID:Ljava/lang/String; = "mAdminID"

.field private static final ISL_BIND_ACTION:Ljava/lang/String; = "com.samsung.android.ISA_BIND_ACTION"

.field private static final ISL_VERSION:Ljava/lang/String; = "2.0"

.field private static final PARTITION_TO_SCAN:Ljava/lang/String; = "/system"

.field private static TAG:Ljava/lang/String; = null

.field public static final WATCH_EVENTS:I = 0xfc6

.field public static isStopped:Z

.field private static mAdminIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mCallBackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static mFilesCount:I

.field private static mISAInterfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;",
            ">;"
        }
    .end annotation
.end field

.field private static mISAList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mMultiMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mProgress:I

.field private static mSubscriberMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;",
            ">;"
        }
    .end annotation
.end field

.field private static final syncObj:Ljava/lang/Object;


# instance fields
.field private final TIMA_SERVICE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

.field private mSystemBinObserver:Landroid/os/FileObserver;

.field private mSystemFmwrkObserver:Landroid/os/FileObserver;

.field private mSystemXbinObserver:Landroid/os/FileObserver;

.field private final mTimaService:Landroid/service/tima/ITimaService;

.field private receiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 101
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    .line 105
    const-string v0, "EnterpriseISLPolicy Service"

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAList:Ljava/util/List;

    .line 122
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubscriberMap:Ljava/util/Map;

    .line 125
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterfaceMap:Ljava/util/Map;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    .line 131
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mCallBackMap:Ljava/util/Map;

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->syncObj:Ljava/lang/Object;

    .line 142
    sput v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I

    .line 144
    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mProgress:I

    .line 155
    sput-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->isStopped:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 160
    invoke-direct {p0}, Lcom/sec/enterprise/knox/IEnterpriseISLPolicy$Stub;-><init>()V

    .line 103
    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    .line 112
    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 114
    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    .line 146
    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemBinObserver:Landroid/os/FileObserver;

    .line 147
    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemXbinObserver:Landroid/os/FileObserver;

    .line 148
    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemFmwrkObserver:Landroid/os/FileObserver;

    .line 150
    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->receiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;

    .line 151
    const-string/jumbo v0, "tima"

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TIMA_SERVICE:Ljava/lang/String;

    .line 161
    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v1, "EnterpriseISLPolicy Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    .line 163
    new-instance v0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    .line 164
    const-string/jumbo v0, "tima"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mTimaService:Landroid/service/tima/ITimaService;

    .line 165
    invoke-virtual {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->registerEnterpriseISLpolicyReciever()V

    .line 166
    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v1, "EnterpriseISLPolicy Constructor ===== registerEnterpriseISLpolicyReciever() called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_1
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 98
    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
    .param p1, "x1"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500()I
    .locals 1

    .prologue
    .line 98
    sget v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mProgress:I

    return v0
.end method

.method static synthetic access$1502(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 98
    sput p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mProgress:I

    return p0
.end method

.method static synthetic access$1600()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->syncObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminISAMAPFromDB()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getPackageListfromDB(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->sendBroadcastToMDM(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getSubscriberInstance(I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/Map;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterfaceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/Map;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/Map;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mCallBackMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/Map;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubscriberMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/List;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 98
    sget v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I

    return v0
.end method

.method static synthetic access$902(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 98
    sput p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I

    return p0
.end method

.method static synthetic access$904()I
    .locals 1

    .prologue
    .line 98
    sget v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I

    return v0
.end method

.method private enforceEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)I
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 243
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 244
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "2.0"

    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "android.permission.sec.MDM_ENTERPRISE_ISL"

    invoke-virtual {v1, p1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v1

    iget v1, v1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 249
    :goto_0
    return v1

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "android.permission.sec.MDM_ENTERPRISE_ISL"

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 249
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    goto :goto_0
.end method

.method private enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_ENTERPRISE_ISL"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private final getAdminISAMAPFromDB()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 818
    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "ISL getAdminISAMAPFromDB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "adminUid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "isaPackageName"

    aput-object v2, v0, v1

    .line 820
    .local v0, "sReturnColumns":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    const-string v2, "EnterpriseIslFpTable"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->getAdminISAMapFromDB(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    .locals 5
    .param p1, "callMe"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;

    .prologue
    .line 286
    const/4 v2, -0x1

    .line 287
    .local v2, "retVal":I
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "in getAdminId"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mCallBackMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 289
    .local v0, "i":I
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mCallBackMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 290
    move v2, v0

    goto :goto_0

    .line 293
    .end local v0    # "i":I
    :cond_2
    return v2
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method static native getFileAttributes(Ljava/lang/String;)I
.end method

.method private getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    .locals 3
    .param p1, "adminUID"    # I

    .prologue
    .line 278
    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v1, "in getISAInterface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 280
    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getISAInterface - ISAInterface not registered for the Admin--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_1
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    return-object v0
.end method

.method private getPackageListfromDB(ILjava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "uid"    # I
    .param p2, "pIsaName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 824
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ISL getPackageListfromDB"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_0
    new-array v0, v7, [Ljava/lang/String;

    const-string v3, "adminUid"

    aput-object v3, v0, v5

    const-string v3, "isaPackageName"

    aput-object v3, v0, v6

    .line 826
    .local v0, "sColumns":[Ljava/lang/String;
    new-array v2, v7, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p2, v2, v6

    .line 827
    .local v2, "sValues":[Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/String;

    const-string v3, "packageName"

    aput-object v3, v1, v5

    .line 828
    .local v1, "sReturnColumns":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    const-string v4, "EnterpriseIslFpTable"

    invoke-virtual {v3, v4, v1, v0, v2}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->getPackageListfromDB(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private getSubscriberInstance(I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    .locals 3
    .param p1, "adminUID"    # I

    .prologue
    .line 269
    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v1, "in getSubscriberInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubscriberMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 271
    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSubscriberInstance - Subscriber not registered for the Admin--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_1
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubscriberMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    return-object v0
.end method

.method private sendBroadcastToMDM(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 176
    const/4 v8, -0x1

    .line 177
    .local v8, "mdmUserId":I
    const/4 v7, -0x1

    .line 178
    .local v7, "mdmUid":I
    const/4 v6, 0x0

    .line 179
    .local v6, "mdmPkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 180
    .local v10, "pm":Landroid/content/pm/PackageManager;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminISAMAPFromDB()Ljava/util/Map;

    move-result-object v5

    .line 181
    .local v5, "mAdminISAMapFromDB":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v13, "android.intent.extra.user_handle"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 182
    .local v12, "userHandle":I
    const-string v13, "android.intent.extra.UID"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 183
    .local v11, "uID":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v9

    .line 184
    .local v9, "pkg":Ljava/lang/String;
    sget-object v13, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    .line 185
    sget-object v13, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 186
    .local v4, "key":I
    move v7, v4

    .line 187
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 188
    const/4 v13, -0x1

    if-le v8, v13, :cond_0

    .line 190
    invoke-virtual {v10, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v6, v13, v14

    .line 191
    sget-boolean v13, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v13, :cond_1

    sget-object v13, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " sendBroadcastToMDM-- MDM USER ID="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " UID="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " PackageName="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .end local v4    # "key":I
    :cond_1
    :goto_0
    if-eqz v6, :cond_6

    .line 211
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    if-eq v12, v8, :cond_7

    .line 219
    const-string v13, "isMdmUser"

    const/4 v14, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 220
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 221
    .local v2, "id":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 222
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 228
    sget-boolean v13, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v13, :cond_2

    .line 229
    sget-object v13, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v14, " sendBroadcastToMDM ----- "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    sget-object v13, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "UserHandle : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " / UID : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "pkg : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    sget-object v13, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Admin User Id: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":J
    :cond_2
    :goto_1
    return-void

    .line 195
    :cond_3
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5

    .line 196
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 197
    .restart local v4    # "key":I
    move v7, v4

    .line 198
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 199
    const/4 v13, -0x1

    if-le v8, v13, :cond_4

    .line 201
    invoke-virtual {v10, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v6, v13, v14

    .line 202
    sget-boolean v13, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v13, :cond_1

    sget-object v13, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " sendBroadcastToMDM-- MDM USER ID="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " UID="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " PackageName="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 207
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":I
    :cond_5
    sget-boolean v13, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v13, :cond_2

    sget-object v13, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v14, "No MDM is activated in the Device !!!!!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 214
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    sget-boolean v13, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v13, :cond_2

    sget-object v13, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v14, "No MDM is activated in the Device !!!!!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 225
    :cond_7
    sget-boolean v13, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v13, :cond_2

    sget-object v13, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v14, " sendBroadcastToMDM ----- No need to transfer Intent to MDM  !!!!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public clearBaseline(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 704
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "in clearBaseline"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    iget v0, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 706
    .local v0, "adminUid":I
    const/4 v2, 0x0

    .line 707
    .local v2, "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v2

    .line 708
    if-eqz v2, :cond_2

    .line 710
    :try_start_0
    invoke-interface {v2}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->clearBaseline()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 718
    :goto_0
    return v3

    .line 711
    :catch_0
    move-exception v1

    .line 712
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 715
    :cond_2
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "clearBaseline - ISA interface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public convertEventToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # I

    .prologue
    .line 524
    const/4 v0, 0x0

    .line 525
    .local v0, "ret":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 562
    :goto_0
    return-object v0

    .line 527
    :sswitch_0
    const-string v0, "Attribute modified"

    .line 528
    goto :goto_0

    .line 531
    :sswitch_1
    const-string v0, "File modified"

    .line 532
    goto :goto_0

    .line 535
    :sswitch_2
    const-string v0, "File or subdirectory moved from"

    .line 536
    goto :goto_0

    .line 539
    :sswitch_3
    const-string v0, "File or subdirectory moved to"

    .line 540
    goto :goto_0

    .line 543
    :sswitch_4
    const-string v0, "New file or subdirectory created"

    .line 544
    goto :goto_0

    .line 547
    :sswitch_5
    const-string v0, "File deleted"

    .line 548
    goto :goto_0

    .line 551
    :sswitch_6
    const-string v0, "Deleted Self"

    .line 552
    goto :goto_0

    .line 555
    :sswitch_7
    const-string v0, "Moved Self"

    .line 556
    goto :goto_0

    .line 525
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x40 -> :sswitch_2
        0x80 -> :sswitch_3
        0x100 -> :sswitch_4
        0x200 -> :sswitch_5
        0x400 -> :sswitch_6
        0x800 -> :sswitch_7
    .end sparse-switch
.end method

.method public establishBaselineScan(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "compareWithPreBaseline"    # Z

    .prologue
    .line 670
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "in establishBaselineScan"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    iget v0, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 672
    .local v0, "adminUid":I
    const/4 v2, 0x0

    .line 673
    .local v2, "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v2

    .line 674
    if-eqz v2, :cond_2

    .line 676
    :try_start_0
    invoke-interface {v2, p2}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->establishBaselineScan(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 683
    :goto_0
    return v3

    .line 677
    :catch_0
    move-exception v1

    .line 678
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 681
    :cond_2
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "establishBaselineScan - ISA interface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getISAList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_0

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v10, "in getISAList"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    iget-object v9, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 318
    .local v5, "pm":Landroid/content/pm/PackageManager;
    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 319
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v9

    iget v0, v9, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 321
    .local v0, "adminId":I
    new-instance v1, Landroid/content/Intent;

    const-string v9, "com.samsung.android.ISA_BIND_ACTION"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    .local v1, "bindInent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 324
    .local v3, "id":J
    const/4 v9, 0x0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-virtual {v5, v1, v9, v10}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v8

    .line 325
    .local v8, "servicesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 326
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 328
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 329
    .local v6, "resInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 330
    .local v7, "servcInfo":Landroid/content/pm/ServiceInfo;
    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAList:Ljava/util/List;

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_1

    .line 332
    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getISAList - Package  Name -- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getISAList - Service  Name -- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 337
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "resInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "servcInfo":Landroid/content/pm/ServiceInfo;
    :cond_2
    sget-boolean v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v9, :cond_3

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v10, "getISAList - No package found with ISL intent"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_3
    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAList:Ljava/util/List;

    return-object v9
.end method

.method public isISAReady(Landroid/app/enterprise/ContextInfo;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 445
    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "in isISAReady"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v1

    iget v0, v1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 447
    .local v0, "adminUid":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 448
    const/4 v1, 0x1

    .line 451
    :goto_0
    return v1

    .line 450
    :cond_1
    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISA Service could not be found for Admin_uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1546
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 1558
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1559
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1560
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterfaceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1561
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mCallBackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1562
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubscriberMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1564
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1552
    return-void
.end method

.method public performPreBaselineScan(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 652
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "in performPreBaselineScan"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    iget v0, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 654
    .local v0, "adminUid":I
    const/4 v2, 0x0

    .line 655
    .local v2, "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v2

    .line 656
    if-eqz v2, :cond_2

    .line 658
    :try_start_0
    invoke-interface {v2}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->performPreBaselineScan()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 666
    :goto_0
    return v3

    .line 659
    :catch_0
    move-exception v1

    .line 660
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 663
    :cond_2
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "performPreBaselineScan - ISA interface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public performScanNow(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 687
    .local p3, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "in performScanNow"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    iget v0, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 689
    .local v0, "adminUid":I
    const/4 v2, 0x0

    .line 690
    .local v2, "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v2

    .line 691
    if-eqz v2, :cond_2

    .line 693
    :try_start_0
    invoke-interface {v2, p2, p3}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->performScanNow(ILjava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 700
    :goto_0
    return v3

    .line 694
    :catch_0
    move-exception v1

    .line 695
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 698
    :cond_2
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "performScanNow - ISA interface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public putPackageToBaseline(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 722
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "in putPackageToBaseline"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    iget v0, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 724
    .local v0, "adminUid":I
    const/4 v2, 0x0

    .line 725
    .local v2, "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v2

    .line 726
    if-eqz v2, :cond_2

    .line 728
    :try_start_0
    invoke-interface {v2, p2}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->putPackageToBaseline(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 735
    :goto_0
    return v3

    .line 729
    :catch_0
    move-exception v1

    .line 730
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 733
    :cond_2
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "putPackageToBaseline - ISA interface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public registerEnterpriseISLpolicyReciever()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 298
    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v1, "registerEnterpriseISLpolicyReciever - Binding the receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    new-instance v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->receiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;

    .line 302
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 303
    .local v3, "systemFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->receiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 310
    return-void
.end method

.method public removePackageFromBaseline(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 739
    sget-boolean v14, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v14, :cond_0

    sget-object v14, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v15, "in removePackageFromBaseline"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v14

    iget v1, v14, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 741
    .local v1, "adminUid":I
    const/4 v7, 0x0

    .line 742
    .local v7, "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 743
    .local v2, "backupUID":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "user"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/UserManager;

    .line 744
    .local v12, "userManager":Landroid/os/UserManager;
    invoke-virtual {v12}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v13

    .line 745
    .local v13, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 748
    .local v8, "pInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    .line 749
    .local v11, "uf":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const/16 v15, 0x5040

    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v9

    .line 750
    .local v9, "packInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v9, :cond_1

    .line 752
    :try_start_0
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    .line 753
    .local v10, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v14, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v14, :cond_2

    iget-object v14, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v14, v14, 0x1

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    iget-object v14, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 754
    sget-boolean v14, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v14, :cond_3

    sget-object v14, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v15, "removePackageFromBaseline - Operation Successfull Package Installed at multiple places !!!!!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    :cond_3
    const/4 v14, 0x0

    .line 775
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "packInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v10    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v11    # "uf":Landroid/content/pm/UserInfo;
    :goto_1
    return v14

    .line 758
    .restart local v9    # "packInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "uf":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v4

    .line 759
    .local v4, "e":Ljava/lang/Exception;
    sget-object v14, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 764
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v9    # "packInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "uf":Landroid/content/pm/UserInfo;
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v7

    .line 765
    if-eqz v7, :cond_6

    .line 767
    :try_start_1
    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->removePackageFromBaseline(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v14

    goto :goto_1

    .line 768
    :catch_1
    move-exception v4

    .line 769
    .local v4, "e":Landroid/os/RemoteException;
    sget-object v14, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_5
    :goto_2
    const/4 v14, 0x0

    goto :goto_1

    .line 772
    :cond_6
    sget-boolean v14, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v14, :cond_5

    sget-object v14, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v15, "removePackageFromBaseline - ISA interface is null"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public requestBindISA(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 25
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 351
    const/16 v18, 0x0

    .line 352
    .local v18, "ret":Z
    const/4 v12, 0x1

    .line 354
    .local v12, "flag":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->receiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->registerEnterpriseISLpolicyReciever()V

    .line 358
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 360
    :cond_1
    sget-boolean v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v22, :cond_2

    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v23, "requestBindISA - packageName is null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_2
    const/16 v22, 0x0

    .line 438
    :goto_0
    return v22

    .line 364
    :cond_3
    sget-boolean v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v22, :cond_4

    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "in requestBindISA - packageName is -- "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 367
    .local v4, "adminId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminISAMAPFromDB()Ljava/util/Map;

    move-result-object v15

    .line 370
    .local v15, "mAdminISAMapFromDB":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v22

    if-lez v22, :cond_6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v15, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_6

    .line 372
    :cond_5
    const/16 v22, 0x0

    goto :goto_0

    .line 375
    :cond_6
    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_7

    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 376
    const/16 v22, 0x0

    goto :goto_0

    .line 379
    :cond_7
    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_9

    .line 380
    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 381
    .local v14, "key":I
    if-ne v4, v14, :cond_8

    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 382
    const/4 v12, 0x0

    .line 388
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "key":I
    :cond_9
    if-nez v12, :cond_a

    .line 389
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 391
    :cond_a
    new-instance v8, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ISAConnection;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ISAConnection;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)V

    .line 392
    .local v8, "cISAConnect":Landroid/content/ServiceConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 395
    .local v16, "pm":Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    const-string v22, "com.samsung.android.ISA_BIND_ACTION"

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    .local v7, "bindInent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 397
    .local v5, "backupUID":J
    const/16 v22, 0x0

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v7, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v20

    .line 398
    .local v20, "servicesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 400
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_10

    .line 401
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_b
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    .line 402
    .local v17, "resInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    .line 403
    .local v19, "servcInfo":Landroid/content/pm/ServiceInfo;
    sget-boolean v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v22, :cond_c

    .line 404
    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "requestBindISA - Package  Name -- "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "requestBindISA - Service  Name -- "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_c
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 409
    new-instance v11, Landroid/content/ComponentName;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v11, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .local v11, "compName":Landroid/content/ComponentName;
    if-eqz v11, :cond_f

    .line 414
    sget-boolean v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v22, :cond_d

    .line 415
    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Comp Name -- "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Comp Class -- "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_d
    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 421
    .local v3, "action":Landroid/content/Intent;
    invoke-virtual {v3, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 423
    new-instance v21, Landroid/os/UserHandle;

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    invoke-direct/range {v21 .. v22}, Landroid/os/UserHandle;-><init>(I)V

    .line 424
    .local v21, "uHandle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 425
    .local v9, "callID":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v3, v8, v1, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 426
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 427
    const/16 v18, 0x1

    .end local v3    # "action":Landroid/content/Intent;
    .end local v9    # "callID":J
    .end local v11    # "compName":Landroid/content/ComponentName;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v17    # "resInfo":Landroid/content/pm/ResolveInfo;
    .end local v19    # "servcInfo":Landroid/content/pm/ServiceInfo;
    .end local v21    # "uHandle":Landroid/os/UserHandle;
    :cond_e
    :goto_2
    move/from16 v22, v18

    .line 438
    goto/16 :goto_0

    .line 430
    .restart local v11    # "compName":Landroid/content/ComponentName;
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v17    # "resInfo":Landroid/content/pm/ResolveInfo;
    .restart local v19    # "servcInfo":Landroid/content/pm/ServiceInfo;
    :cond_f
    sget-boolean v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v22, :cond_b

    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v23, "requestBindISA - ComponentName is null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 435
    .end local v11    # "compName":Landroid/content/ComponentName;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v17    # "resInfo":Landroid/content/pm/ResolveInfo;
    .end local v19    # "servcInfo":Landroid/content/pm/ServiceInfo;
    :cond_10
    sget-boolean v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v22, :cond_e

    sget-object v22, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v23, "requestBindISA - No package found with ISL intent"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setISLCallBack(I)V
    .locals 5
    .param p1, "adminId"    # I

    .prologue
    .line 506
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "in setISLCallBack"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_0
    const/4 v2, 0x0

    .line 508
    .local v2, "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v2

    .line 509
    if-eqz v2, :cond_2

    .line 511
    :try_start_0
    new-instance v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)V

    .line 512
    .local v0, "callMe":Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;
    invoke-interface {v2, v0}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->setISLCallBack(Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback;)V

    .line 513
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mCallBackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mCallBackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    .end local v0    # "callMe":Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;
    :cond_1
    :goto_0
    return-void

    .line 515
    :catch_0
    move-exception v1

    .line 516
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 519
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "setISLCallBack - ISA interface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIntegrityResultSubscriber(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;)V
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "subscriber"    # Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    .prologue
    .line 796
    if-nez p2, :cond_1

    .line 797
    sget-boolean v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v3, "setIntegrityResultSubscriber - subscriber is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 800
    :cond_1
    sget-boolean v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v3, "in setIntegrityResultSubscriber"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v2

    iget v0, v2, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 803
    .local v0, "adminId":I
    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubscriberMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubscriberMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v2, :cond_0

    .line 809
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mTimaService:Landroid/service/tima/ITimaService;

    new-instance v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$TimaISLCallback;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$TimaISLCallback;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)V

    invoke-interface {v2, v3}, Landroid/service/tima/ITimaService;->setISLCallback(Landroid/service/tima/ITimaISLCallback;)V

    .line 810
    sget-boolean v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v3, "call back registered with TIMA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 811
    :catch_0
    move-exception v1

    .line 812
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startRuntimeWatch(Landroid/app/enterprise/ContextInfo;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/16 v3, 0xfc6

    .line 566
    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "in startRuntimeWatch"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v1

    iget v0, v1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 568
    .local v0, "adminUid":I
    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemBinObserver:Landroid/os/FileObserver;

    if-nez v1, :cond_1

    .line 571
    new-instance v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;

    const-string v2, "/system/bin/"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemBinObserver:Landroid/os/FileObserver;

    .line 573
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemBinObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 575
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemXbinObserver:Landroid/os/FileObserver;

    if-nez v1, :cond_2

    .line 576
    new-instance v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;

    const-string v2, "/system/xbin/"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemXbinObserver:Landroid/os/FileObserver;

    .line 578
    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemXbinObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 581
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemFmwrkObserver:Landroid/os/FileObserver;

    if-nez v1, :cond_3

    .line 582
    new-instance v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;

    const-string v2, "/system/framework/"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemFmwrkObserver:Landroid/os/FileObserver;

    .line 584
    :cond_3
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemFmwrkObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 586
    const/4 v1, 0x1

    return v1
.end method

.method public stopRuntimeWatch(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v6, 0x0

    .line 590
    const/4 v2, 0x0

    .line 591
    .local v2, "retValue":Z
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "in stopRuntimeWatch"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    iget v0, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 593
    .local v0, "admin_UID":I
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    .line 594
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 595
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_2

    .line 596
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 597
    const/4 v2, 0x1

    .line 619
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v2

    .line 594
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 602
    .end local v1    # "i":I
    :cond_3
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 603
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "List contains Admin Id ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    sget-object v4, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 605
    const/4 v2, 0x1

    .line 606
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemBinObserver:Landroid/os/FileObserver;

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    .line 607
    iput-object v6, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemBinObserver:Landroid/os/FileObserver;

    .line 608
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemXbinObserver:Landroid/os/FileObserver;

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    .line 609
    iput-object v6, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemXbinObserver:Landroid/os/FileObserver;

    .line 610
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemFmwrkObserver:Landroid/os/FileObserver;

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    .line 611
    iput-object v6, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemFmwrkObserver:Landroid/os/FileObserver;

    .line 612
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Stopping system bin watcher for the system"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Stopping system xbin watcher for the system"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Stopping system framework watcher for the system"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 1540
    return-void
.end method

.method public updatePlatformBaseline(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 778
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v4, "in updatePlatformBaseline"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    iget v0, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 780
    .local v0, "adminUid":I
    const/4 v2, 0x0

    .line 781
    .local v2, "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v2

    .line 782
    if-eqz v2, :cond_2

    .line 784
    :try_start_0
    invoke-interface {v2}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->updatePlatformBaseline()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 791
    :goto_0
    return v3

    .line 785
    :catch_0
    move-exception v1

    .line 786
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 789
    :cond_2
    sget-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updatePlatformBaseline - ISA interface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
