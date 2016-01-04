.class Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;
.super Ljava/lang/Object;
.source "AbsAirViewOnOff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeviceInfo"
.end annotation


# instance fields
.field private mBrowserMainPageOn:Z

.field private mClearCoverOn:Z

.field private mContactDialerOn:Z

.field private mGripVolumeDownOn:Z

.field private mLandscape:Z

.field private mLockScreenOn:Z

.field private mMultiWindowOn:Z

.field private mPatternLockOn:Z

.field private mPenAttached:Z

.field private mPhoneDialerOn:Z

.field private mSIPOn:Z

.field private mStatusBarOn:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mClearCoverOn:Z

    .line 562
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mMultiWindowOn:Z

    .line 563
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mStatusBarOn:Z

    .line 564
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mLockScreenOn:Z

    .line 565
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mLandscape:Z

    .line 566
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mBrowserMainPageOn:Z

    .line 567
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mPenAttached:Z

    .line 568
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mContactDialerOn:Z

    .line 569
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mPhoneDialerOn:Z

    .line 570
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mPatternLockOn:Z

    .line 571
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mGripVolumeDownOn:Z

    .line 572
    return-void
.end method


# virtual methods
.method isBrowserMainPageVisible()Z
    .locals 1

    .prologue
    .line 627
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mBrowserMainPageOn:Z

    return v0
.end method

.method isClearCoverOn()Z
    .locals 1

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mClearCoverOn:Z

    return v0
.end method

.method isContactDialerVisible()Z
    .locals 1

    .prologue
    .line 643
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mContactDialerOn:Z

    return v0
.end method

.method isGripVolumeDown()Z
    .locals 1

    .prologue
    .line 667
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mGripVolumeDownOn:Z

    return v0
.end method

.method isLandscapeMode()Z
    .locals 1

    .prologue
    .line 619
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mLandscape:Z

    return v0
.end method

.method isLockScreenVisible()Z
    .locals 1

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mLockScreenOn:Z

    return v0
.end method

.method isMultiWindow()Z
    .locals 1

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mMultiWindowOn:Z

    return v0
.end method

.method isPatternLockVisible()Z
    .locals 1

    .prologue
    .line 659
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mPatternLockOn:Z

    return v0
.end method

.method isPenAttached()Z
    .locals 1

    .prologue
    .line 635
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mPenAttached:Z

    return v0
.end method

.method isPhoneContactDialerVisible()Z
    .locals 1

    .prologue
    .line 651
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mPhoneDialerOn:Z

    return v0
.end method

.method isSIPVisible()Z
    .locals 1

    .prologue
    .line 611
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mSIPOn:Z

    return v0
.end method

.method isStatusBarVisible()Z
    .locals 1

    .prologue
    .line 595
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mStatusBarOn:Z

    return v0
.end method

.method printDebug()V
    .locals 3

    .prologue
    .line 671
    const-string v1, "SSRMv2:TSP:AirViewOnOff"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceInfo:: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mClearCoverOn:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mMultiWindowOn:Z

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mStatusBarOn:Z

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mLockScreenOn:Z

    if-eqz v0, :cond_3

    const-string v0, "1"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mLandscape:Z

    if-eqz v0, :cond_4

    const-string v0, "1"

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mBrowserMainPageOn:Z

    if-eqz v0, :cond_5

    const-string v0, "1"

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mPenAttached:Z

    if-eqz v0, :cond_6

    const-string v0, "1"

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mContactDialerOn:Z

    if-eqz v0, :cond_7

    const-string v0, "1"

    :goto_7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mPhoneDialerOn:Z

    if-eqz v0, :cond_8

    const-string v0, "1"

    :goto_8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mPatternLockOn:Z

    if-eqz v0, :cond_9

    const-string v0, "1"

    :goto_9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mGripVolumeDownOn:Z

    if-eqz v0, :cond_a

    const-string v0, "1"

    :goto_a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    return-void

    .line 671
    :cond_0
    const-string v0, "0"

    goto :goto_0

    :cond_1
    const-string v0, "0"

    goto :goto_1

    :cond_2
    const-string v0, "0"

    goto :goto_2

    :cond_3
    const-string v0, "0"

    goto :goto_3

    :cond_4
    const-string v0, "0"

    goto :goto_4

    :cond_5
    const-string v0, "0"

    goto :goto_5

    :cond_6
    const-string v0, "0"

    goto :goto_6

    :cond_7
    const-string v0, "0"

    goto :goto_7

    :cond_8
    const-string v0, "0"

    goto :goto_8

    :cond_9
    const-string v0, "0"

    goto :goto_9

    :cond_a
    const-string v0, "0"

    goto :goto_a
.end method

.method setBrowserMainPage(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 623
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mBrowserMainPageOn:Z

    .line 624
    return-void
.end method

.method setClearCover(Z)V
    .locals 0
    .param p1, "covered"    # Z

    .prologue
    .line 575
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mClearCoverOn:Z

    .line 576
    return-void
.end method

.method setContactDialerVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 639
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mContactDialerOn:Z

    .line 640
    return-void
.end method

.method setGripVolumeDown(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 663
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mGripVolumeDownOn:Z

    .line 664
    return-void
.end method

.method setLandscape(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 615
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mLandscape:Z

    .line 616
    return-void
.end method

.method setLockScreen(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 599
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mLockScreenOn:Z

    .line 600
    return-void
.end method

.method setMultiWindow(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 583
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mMultiWindowOn:Z

    .line 584
    return-void
.end method

.method setPatternLockVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 655
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mPatternLockOn:Z

    .line 656
    return-void
.end method

.method setPenAttached(Z)V
    .locals 0
    .param p1, "attach"    # Z

    .prologue
    .line 631
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mPenAttached:Z

    .line 632
    return-void
.end method

.method setPhoneDialerVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 647
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mPhoneDialerOn:Z

    .line 648
    return-void
.end method

.method setSIP(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 607
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mSIPOn:Z

    .line 608
    return-void
.end method

.method setStatusBar(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 591
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->mStatusBarOn:Z

    .line 592
    return-void
.end method
