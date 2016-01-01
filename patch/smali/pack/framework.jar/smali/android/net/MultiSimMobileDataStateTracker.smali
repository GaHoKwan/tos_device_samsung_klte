.class public Landroid/net/MultiSimMobileDataStateTracker;
.super Landroid/net/MobileDataStateTracker;
.source "MultiSimMobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/MultiSimMobileDataStateTracker$1;,
        Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;,
        Landroid/net/MultiSimMobileDataStateTracker$MultiSimMdstHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "MultiSimMobileDataStateTracker"

.field private static final VDBG:Z


# instance fields
.field private mDataConnectionTrackerAcs:[Lcom/android/internal/util/AsyncChannel;

.field mSelectedSimSlot:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "netType"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/net/MobileDataStateTracker;-><init>(ILjava/lang/String;)V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/MultiSimMobileDataStateTracker;->mSelectedSimSlot:I

    .line 88
    return-void
.end method

.method static synthetic access$000(Landroid/net/MultiSimMobileDataStateTracker;)[Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Landroid/net/MultiSimMobileDataStateTracker;

    .prologue
    .line 64
    iget-object v0, p0, Landroid/net/MultiSimMobileDataStateTracker;->mDataConnectionTrackerAcs:[Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method


# virtual methods
.method protected getPhoneService(Z)V
    .locals 0
    .param p1, "forceRefresh"    # Z

    .prologue
    .line 300
    invoke-super {p0, p1}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 332
    return-void
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    invoke-super {p0}, Landroid/net/MobileDataStateTracker;->getTcpBufferSizesPropName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDependencyMet(Z)V
    .locals 0
    .param p1, "met"    # Z

    .prologue
    .line 511
    invoke-super {p0, p1}, Landroid/net/MobileDataStateTracker;->setDependencyMet(Z)V

    .line 528
    return-void
.end method

.method public setEnableFailFastMobileData(I)V
    .locals 0
    .param p1, "enabled"    # I

    .prologue
    .line 493
    invoke-super {p0, p1}, Landroid/net/MobileDataStateTracker;->setEnableFailFastMobileData(I)V

    .line 503
    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 472
    invoke-super {p0, p1}, Landroid/net/MobileDataStateTracker;->setPolicyDataEnable(Z)V

    .line 484
    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 424
    invoke-super {p0, p1}, Landroid/net/MobileDataStateTracker;->setUserDataEnable(Z)V

    .line 442
    return-void
.end method

.method public setUserDataEnableEx(ZI)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "simSlot"    # I

    .prologue
    .line 447
    invoke-super {p0, p1}, Landroid/net/MobileDataStateTracker;->setUserDataEnable(Z)V

    .line 466
    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/os/Handler;

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Landroid/net/MobileDataStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    .line 112
    return-void
.end method

.method public supplyMessenger(Landroid/os/Messenger;I)V
    .locals 0
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "simSlot"    # I

    .prologue
    .line 336
    invoke-super {p0, p1}, Landroid/net/MobileDataStateTracker;->supplyMessenger(Landroid/os/Messenger;)V

    .line 342
    return-void
.end method
