.class Landroid/media/MediaFocusControl$2;
.super Landroid/telephony/PhoneStateListener;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaFocusControl;


# direct methods
.method constructor <init>(Landroid/media/MediaFocusControl;)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Landroid/media/MediaFocusControl$2;->this$0:Landroid/media/MediaFocusControl;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 496
    if-ne p1, v0, :cond_1

    .line 498
    # getter for: Landroid/media/MediaFocusControl;->mRingingLock:Ljava/lang/Object;
    invoke-static {}, Landroid/media/MediaFocusControl;->access$2400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 499
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaFocusControl$2;->this$0:Landroid/media/MediaFocusControl;

    const/4 v2, 0x1

    # setter for: Landroid/media/MediaFocusControl;->mIsRinging_2:Z
    invoke-static {v0, v2}, Landroid/media/MediaFocusControl;->access$2602(Landroid/media/MediaFocusControl;Z)Z

    .line 500
    monitor-exit v1

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 500
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 501
    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_0

    .line 503
    :cond_2
    # getter for: Landroid/media/MediaFocusControl;->mRingingLock:Ljava/lang/Object;
    invoke-static {}, Landroid/media/MediaFocusControl;->access$2400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 504
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaFocusControl$2;->this$0:Landroid/media/MediaFocusControl;

    const/4 v2, 0x0

    # setter for: Landroid/media/MediaFocusControl;->mIsRinging_2:Z
    invoke-static {v0, v2}, Landroid/media/MediaFocusControl;->access$2602(Landroid/media/MediaFocusControl;Z)Z

    .line 505
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 511
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 512
    const-string v0, "MediaFocusControl"

    const-string v1, "##################################################"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const-string v0, "MediaFocusControl"

    const-string v1, "### RIL State is changed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const-string v0, "MediaFocusControl"

    const-string v1, "##################################################"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const-string v0, "ril_state_connected=2"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 517
    :cond_0
    return-void
.end method
