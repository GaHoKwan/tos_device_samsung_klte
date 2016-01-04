.class public Lcom/sec/smartcard/pinservice/SmartCardPinManager;
.super Ljava/lang/Object;
.source "SmartCardPinManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;
    }
.end annotation


# static fields
.field private static final BIND_PIN_SERVICE:Ljava/lang/String; = "com.sec.smartcard.pinservice.action.BIND_SMART_CARD_PIN_SERVICE"

.field public static final LOCKSCREEN_TYPE_OTHER:Ljava/lang/String; = "Other"

.field public static final LOCKSCREEN_TYPE_SMARTCARD:Ljava/lang/String; = "Smartcard"

.field private static final SAMSUNG_SC_PKG_PREFIX:Ljava/lang/String; = "com.sec.enterprise.mdm.sc."

.field private static final TAG:Ljava/lang/String; = "SmartCardPinManager"

.field public static final VERIFY_PIN_CARDASSOCIATEERROR:I = 0x8

.field public static final VERIFY_PIN_CARDDISCONNECT:I = 0x6

.field public static final VERIFY_PIN_CARDERROR:I = 0x5

.field public static final VERIFY_PIN_CARDEXPIRED:I = 0x3

.field public static final VERIFY_PIN_CARDLOCKED:I = 0x2

.field public static final VERIFY_PIN_CONNECTIONERROR:I = 0x4

.field public static final VERIFY_PIN_FAIL:I = 0x1

.field public static final VERIFY_PIN_SUCCESS:I = 0x0

.field public static final VERIFY_PIN_USERCANCEL:I = 0x7


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsCallbackCalled:Z

.field private mPin:[C

.field private mServiceConnectionProgress:Z

.field private mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

.field private pinServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentUser"    # Landroid/os/UserHandle;

    .prologue
    const/4 v2, 0x0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z

    .line 167
    new-instance v0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;

    invoke-direct {v0, p0}, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;-><init>(Lcom/sec/smartcard/pinservice/SmartCardPinManager;)V

    iput-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->pinServiceConnection:Landroid/content/ServiceConnection;

    .line 192
    const-string v0, "SmartCardPinManager"

    const-string v1, "SmartCardPinManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iput-object p1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    .line 194
    iput-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    .line 195
    invoke-direct {p0, p2}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->bindSmartCardPinService(Landroid/os/UserHandle;)V

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "smartCardPin"    # Landroid/os/IBinder;

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z

    .line 167
    new-instance v0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;

    invoke-direct {v0, p0}, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;-><init>(Lcom/sec/smartcard/pinservice/SmartCardPinManager;)V

    iput-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->pinServiceConnection:Landroid/content/ServiceConnection;

    .line 188
    invoke-static {p1}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    .line 189
    return-void
.end method

.method static synthetic access$002(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Lcom/sec/smartcard/pinservice/ISmartCardPinService;)Lcom/sec/smartcard/pinservice/ISmartCardPinService;
    .locals 0
    .param p0, "x0"    # Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    .param p1, "x1"    # Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    return-object p1
.end method

.method static synthetic access$102(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z

    return p1
.end method

.method static synthetic access$202(Lcom/sec/smartcard/pinservice/SmartCardPinManager;[C)[C
    .locals 0
    .param p0, "x0"    # Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    .param p1, "x1"    # [C

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mPin:[C

    return-object p1
.end method

.method static synthetic access$302(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mIsCallbackCalled:Z

    return p1
.end method

.method private bindSmartCardPinService(Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "currentUser"    # Landroid/os/UserHandle;

    .prologue
    const/4 v3, 0x1

    .line 573
    const-string v0, "SmartCardPinManager"

    const-string v1, "bindSmartCardPinService()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-nez v0, :cond_0

    .line 576
    const-string v0, "SmartCardPinManager"

    const-string/jumbo v1, "mSmartCardPin is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-boolean v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z

    if-eqz v0, :cond_1

    .line 578
    const-string v0, "SmartCardPinManager"

    const-string v1, "binding to service is progress. new request to bind is ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    const-string v0, "SmartCardPinManager"

    const-string v1, "binding to smartcard pin service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    if-eqz p1, :cond_2

    .line 584
    const-string v0, "SmartCardPinManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binding to smartcard pin service for a user handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.smartcard.pinservice.action.BIND_SMART_CARD_PIN_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->pinServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 591
    :goto_1
    iput-boolean v3, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z

    goto :goto_0

    .line 588
    :cond_2
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.smartcard.pinservice.action.BIND_SMART_CARD_PIN_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->pinServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_1
.end method

.method public static isSmartCardAuthenticationInstalled()Z
    .locals 1

    .prologue
    .line 498
    const/4 v0, 0x0

    .line 529
    .local v0, "ret":Z
    return v0
.end method

.method public static isSmartCardAuthenticationInstalled(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 533
    const/4 v3, 0x0

    .line 534
    .local v3, "ret":Z
    if-nez p0, :cond_0

    .line 535
    const-string v5, "SmartCardPinManager"

    const-string v6, "context is null returning"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 552
    .end local v3    # "ret":Z
    .local v4, "ret":I
    :goto_0
    return v4

    .line 538
    .end local v4    # "ret":I
    .restart local v3    # "ret":Z
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 539
    .local v2, "pkgInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 545
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.smartcard.permission.SMARTCARD_ADAPTER"

    iget-object v7, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 547
    const-string v5, "SmartCardPinManager"

    const-string v6, "isSmartCardAuthenticationInstalled: True"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/4 v3, 0x1

    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :cond_2
    move v4, v3

    .line 552
    .restart local v4    # "ret":I
    goto :goto_0
.end method


# virtual methods
.method public getCardLoginAttemptRemain(Lcom/sec/smartcard/pinservice/ISmartCardInfoCallback;)V
    .locals 3
    .param p1, "cb"    # Lcom/sec/smartcard/pinservice/ISmartCardInfoCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 559
    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-eqz v1, :cond_0

    .line 561
    :try_start_0
    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    invoke-interface {v1, p1}, Lcom/sec/smartcard/pinservice/ISmartCardPinService;->getCardLoginAttemptRemain(Lcom/sec/smartcard/pinservice/ISmartCardInfoCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    return-void

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 564
    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 567
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "SmartCardPinManager"

    const-string/jumbo v2, "unable to connect to smartcard pin service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "unable to connect to smartcard pin service"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPin(Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;

    .prologue
    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    iget-object v2, p1, Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;->mICallback:Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback;

    invoke-interface {v1, v2}, Lcom/sec/smartcard/pinservice/ISmartCardPinService;->getPin(Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized getPinSync()[C
    .locals 2

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 296
    .local v0, "cv":Landroid/os/ConditionVariable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mPin:[C

    .line 297
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mIsCallbackCalled:Z

    .line 299
    new-instance v1, Lcom/sec/smartcard/pinservice/SmartCardPinManager$2;

    invoke-direct {v1, p0, v0}, Lcom/sec/smartcard/pinservice/SmartCardPinManager$2;-><init>(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Landroid/os/ConditionVariable;)V

    invoke-virtual {p0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->getPin(Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;)V

    .line 322
    iget-boolean v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mIsCallbackCalled:Z

    if-nez v1, :cond_0

    .line 323
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mPin:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 295
    .end local v0    # "cv":Landroid/os/ConditionVariable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isCardRegistered()Z
    .locals 4

    .prologue
    .line 437
    const/4 v1, 0x0

    .line 439
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-eqz v2, :cond_0

    .line 441
    :try_start_0
    iget-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    invoke-interface {v2}, Lcom/sec/smartcard/pinservice/ISmartCardPinService;->isCardRegistered()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 449
    :goto_0
    return v1

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 446
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "SmartCardPinManager"

    const-string/jumbo v3, "unable to connect to smartcard pin service"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isDeviceConnectedWithCard()Z
    .locals 4

    .prologue
    .line 468
    const/4 v1, 0x0

    .line 470
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-eqz v2, :cond_0

    .line 472
    :try_start_0
    iget-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    invoke-interface {v2}, Lcom/sec/smartcard/pinservice/ISmartCardPinService;->isDeviceConnectedWithCard()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 479
    :goto_0
    return v1

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 477
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "SmartCardPinManager"

    const-string/jumbo v3, "unable to connect to smartcard pin service"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSmartCardAuthenticationAvailable()Z
    .locals 4

    .prologue
    .line 484
    const/4 v1, 0x0

    .line 485
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-eqz v2, :cond_0

    .line 487
    :try_start_0
    iget-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    invoke-interface {v2}, Lcom/sec/smartcard/pinservice/ISmartCardPinService;->isSmartCardAuthenticationAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 494
    :goto_0
    return v1

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 492
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "SmartCardPinManager"

    const-string/jumbo v3, "unable to connect to smartcard pin service"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerCard([CLcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;)V
    .locals 3
    .param p1, "pin"    # [C
    .param p2, "cb"    # Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 382
    const-string v1, "SmartCardPinManager"

    const-string/jumbo v2, "registerCard"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-eqz v1, :cond_0

    .line 387
    :try_start_0
    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    invoke-interface {v1, p1, p2}, Lcom/sec/smartcard/pinservice/ISmartCardPinService;->registerCard([CLcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    return-void

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 390
    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 393
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "SmartCardPinManager"

    const-string/jumbo v2, "unable to connect to smartcard pin service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "unable to connect to smartcard pin service"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public showCardNotRegisteredDialog()V
    .locals 3

    .prologue
    .line 453
    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-eqz v1, :cond_0

    .line 455
    :try_start_0
    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    invoke-interface {v1}, Lcom/sec/smartcard/pinservice/ISmartCardPinService;->showCardNotRegisteredDialog()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :goto_0
    return-void

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 460
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "SmartCardPinManager"

    const-string/jumbo v2, "unable to connect to smartcard pin service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unRegisterCard([CLcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;)V
    .locals 3
    .param p1, "pin"    # [C
    .param p2, "cb"    # Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 421
    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-eqz v1, :cond_0

    .line 423
    :try_start_0
    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    invoke-interface {v1, p1, p2}, Lcom/sec/smartcard/pinservice/ISmartCardPinService;->unRegisterCard([CLcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    return-void

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 426
    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 429
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "SmartCardPinManager"

    const-string/jumbo v2, "unable to connect to smartcard pin service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "unable to connect to smartcard pin service"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public verifyCard([CLcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;)V
    .locals 3
    .param p1, "pin"    # [C
    .param p2, "cb"    # Lcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 400
    const-string v1, "SmartCardPinManager"

    const-string/jumbo v2, "verifyCard"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-eqz v1, :cond_0

    .line 405
    :try_start_0
    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    invoke-interface {v1, p1, p2}, Lcom/sec/smartcard/pinservice/ISmartCardPinService;->verifyCard([CLcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    return-void

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 408
    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 411
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "SmartCardPinManager"

    const-string/jumbo v2, "unable to connect to smartcard pin service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "unable to connect to smartcard pin service"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method
