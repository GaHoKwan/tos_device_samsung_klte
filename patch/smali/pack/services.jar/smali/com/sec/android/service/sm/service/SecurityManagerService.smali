.class public Lcom/sec/android/service/sm/service/SecurityManagerService;
.super Landroid/app/Service;
.source "SecurityManagerService.java"


# static fields
.field private static mDPM:Landroid/app/admin/DevicePolicyManager;

.field private static mKM:Landroid/app/KeyguardManager;

.field private static mSecurityJob:Lcom/sec/android/service/sm/job/SecurityJob;


# instance fields
.field private final mBinder:Lcom/sec/android/service/sm/service/ISecurityManager$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 74
    new-instance v0, Lcom/sec/android/service/sm/service/SecurityManagerService$1;

    invoke-direct {v0, p0}, Lcom/sec/android/service/sm/service/SecurityManagerService$1;-><init>(Lcom/sec/android/service/sm/service/SecurityManagerService;)V

    iput-object v0, p0, Lcom/sec/android/service/sm/service/SecurityManagerService;->mBinder:Lcom/sec/android/service/sm/service/ISecurityManager$Stub;

    .line 22
    return-void
.end method

.method static synthetic access$0()Lcom/sec/android/service/sm/job/SecurityJob;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/sec/android/service/sm/service/SecurityManagerService;->mSecurityJob:Lcom/sec/android/service/sm/job/SecurityJob;

    return-object v0
.end method

.method private printVersion()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/service/sm/util/Log;->setLogState(Z)V

    .line 130
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/service/sm/util/Log;->i(Ljava/lang/String;)I

    .line 131
    return-void
.end method


# virtual methods
.method public getMaximumFailedPasswordsForWipe()I
    .locals 2

    .prologue
    .line 109
    sget-object v0, Lcom/sec/android/service/sm/service/SecurityManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPasswordHistoryLength()I
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/sec/android/service/sm/service/SecurityManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPasswordRecoverable()Z
    .locals 2

    .prologue
    .line 117
    sget-object v0, Lcom/sec/android/service/sm/service/SecurityManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordRecoverable(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public getSamsungEncryptionStatusForCC()I
    .locals 2

    .prologue
    .line 113
    sget-object v0, Lcom/sec/android/service/sm/service/SecurityManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatusForCC(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public isKeyguardSecure()Z
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/sec/android/service/sm/service/SecurityManagerService;->mKM:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    const-string v0, "onBind"

    invoke-static {v0}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    .line 51
    invoke-direct {p0}, Lcom/sec/android/service/sm/service/SecurityManagerService;->printVersion()V

    .line 53
    iget-object v0, p0, Lcom/sec/android/service/sm/service/SecurityManagerService;->mBinder:Lcom/sec/android/service/sm/service/ISecurityManager$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 27
    const-string v0, "onCreate"

    invoke-static {v0}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    .line 29
    new-instance v0, Lcom/sec/android/service/sm/job/SecurityJob;

    invoke-direct {v0}, Lcom/sec/android/service/sm/job/SecurityJob;-><init>()V

    sput-object v0, Lcom/sec/android/service/sm/service/SecurityManagerService;->mSecurityJob:Lcom/sec/android/service/sm/job/SecurityJob;

    .line 30
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    sput-object v0, Lcom/sec/android/service/sm/service/SecurityManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 31
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    sput-object v0, Lcom/sec/android/service/sm/service/SecurityManagerService;->mKM:Landroid/app/KeyguardManager;

    .line 32
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 70
    const-string v0, "onDestory"

    invoke-static {v0}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    .line 71
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 72
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 59
    const-string v0, "onRebind"

    invoke-static {v0}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 36
    const-string v1, "onStartCommand"

    invoke-static {v1}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    .line 38
    invoke-direct {p0}, Lcom/sec/android/service/sm/service/SecurityManagerService;->printVersion()V

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "res":I
    sget-object v1, Lcom/sec/android/service/sm/service/SecurityManagerService;->mSecurityJob:Lcom/sec/android/service/sm/job/SecurityJob;

    invoke-virtual {v1}, Lcom/sec/android/service/sm/job/SecurityJob;->initCCMode()I

    move-result v0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init CCMode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/service/sm/util/Log;->i(Ljava/lang/String;)I

    .line 44
    const/4 v1, 0x1

    return v1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    const-string v0, "onUnbind"

    invoke-static {v0}, Lcom/sec/android/service/sm/util/Log;->d(Ljava/lang/String;)I

    .line 65
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
