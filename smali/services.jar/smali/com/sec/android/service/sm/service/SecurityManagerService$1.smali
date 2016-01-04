.class Lcom/sec/android/service/sm/service/SecurityManagerService$1;
.super Lcom/sec/android/service/sm/service/ISecurityManager$Stub;
.source "SecurityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/service/sm/service/SecurityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/service/sm/service/SecurityManagerService;


# direct methods
.method constructor <init>(Lcom/sec/android/service/sm/service/SecurityManagerService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/service/sm/service/SecurityManagerService$1;->this$0:Lcom/sec/android/service/sm/service/SecurityManagerService;

    .line 74
    invoke-direct {p0}, Lcom/sec/android/service/sm/service/ISecurityManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public enableMDFPPMode(Z)I
    .locals 1
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 78
    # getter for: Lcom/sec/android/service/sm/service/SecurityManagerService;->mSecurityJob:Lcom/sec/android/service/sm/job/SecurityJob;
    invoke-static {}, Lcom/sec/android/service/sm/service/SecurityManagerService;->access$0()Lcom/sec/android/service/sm/job/SecurityJob;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/service/sm/job/SecurityJob;->enableMDFPPMode(Z)I

    move-result v0

    return v0
.end method

.method public getCCModeStatus()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 93
    # getter for: Lcom/sec/android/service/sm/service/SecurityManagerService;->mSecurityJob:Lcom/sec/android/service/sm/job/SecurityJob;
    invoke-static {}, Lcom/sec/android/service/sm/service/SecurityManagerService;->access$0()Lcom/sec/android/service/sm/job/SecurityJob;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/service/sm/job/SecurityJob;->getCCModeStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initCCMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    # getter for: Lcom/sec/android/service/sm/service/SecurityManagerService;->mSecurityJob:Lcom/sec/android/service/sm/job/SecurityJob;
    invoke-static {}, Lcom/sec/android/service/sm/service/SecurityManagerService;->access$0()Lcom/sec/android/service/sm/job/SecurityJob;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/service/sm/job/SecurityJob;->initCCMode()I

    move-result v0

    return v0
.end method

.method public isCCMode()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    # getter for: Lcom/sec/android/service/sm/service/SecurityManagerService;->mSecurityJob:Lcom/sec/android/service/sm/job/SecurityJob;
    invoke-static {}, Lcom/sec/android/service/sm/service/SecurityManagerService;->access$0()Lcom/sec/android/service/sm/job/SecurityJob;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/service/sm/job/SecurityJob;->isCCMode()Z

    move-result v0

    return v0
.end method

.method public isFIPSMode()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 88
    # getter for: Lcom/sec/android/service/sm/service/SecurityManagerService;->mSecurityJob:Lcom/sec/android/service/sm/job/SecurityJob;
    invoke-static {}, Lcom/sec/android/service/sm/service/SecurityManagerService;->access$0()Lcom/sec/android/service/sm/job/SecurityJob;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/service/sm/job/SecurityJob;->isFIPSMode()Z

    move-result v0

    return v0
.end method

.method public verifyVPN()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 103
    # getter for: Lcom/sec/android/service/sm/service/SecurityManagerService;->mSecurityJob:Lcom/sec/android/service/sm/job/SecurityJob;
    invoke-static {}, Lcom/sec/android/service/sm/service/SecurityManagerService;->access$0()Lcom/sec/android/service/sm/job/SecurityJob;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/service/sm/job/SecurityJob;->verifyVPN()I

    move-result v0

    return v0
.end method
