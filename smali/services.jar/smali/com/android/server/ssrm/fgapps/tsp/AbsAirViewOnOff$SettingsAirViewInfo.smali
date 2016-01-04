.class Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;
.super Ljava/lang/Object;
.source "AbsAirViewOnOff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsAirViewInfo"
.end annotation


# instance fields
.field private mAirViewMasterOnOff:Z

.field private mAirViewMode:I

.field mAirViewObserver:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;

.field private mFingerOverViewOn:Z

.field private mMagnifierOn:Z

.field private mOneHandAnyScreen:Z

.field private mOneHandCalculator:Z

.field private mOneHandDialer:Z

.field private mOneHandPattern:Z

.field private mOneHandSamsungKeypad:Z

.field mResolver:Landroid/content/ContentResolver;

.field mcontext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 707
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->this$0:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 708
    iput-object p2, p1, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mContext:Landroid/content/Context;

    .line 709
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    .line 711
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->readAirViewSettings()V

    .line 712
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->registerObservers()V

    .line 713
    return-void
.end method


# virtual methods
.method deregisterObservers()V
    .locals 2

    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewObserver:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 809
    return-void
.end method

.method public getAirViewMode()I
    .locals 1

    .prologue
    .line 820
    iget v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewMode:I

    return v0
.end method

.method public isAirViewMasterOn()Z
    .locals 1

    .prologue
    .line 816
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewMasterOnOff:Z

    return v0
.end method

.method public isFingerHoverOn()Z
    .locals 1

    .prologue
    .line 812
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mFingerOverViewOn:Z

    return v0
.end method

.method public isMagnifierOn()Z
    .locals 1

    .prologue
    .line 824
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mMagnifierOn:Z

    return v0
.end method

.method public isOneHandAnyScreen()Z
    .locals 1

    .prologue
    .line 828
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandAnyScreen:Z

    return v0
.end method

.method public isOneHandCalculator()Z
    .locals 1

    .prologue
    .line 840
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandCalculator:Z

    return v0
.end method

.method public isOneHandDialer()Z
    .locals 1

    .prologue
    .line 832
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandDialer:Z

    return v0
.end method

.method public isOneHandPattern()Z
    .locals 1

    .prologue
    .line 844
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandPattern:Z

    return v0
.end method

.method public isOneHandSamsungKeypad()Z
    .locals 1

    .prologue
    .line 836
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandSamsungKeypad:Z

    return v0
.end method

.method printDebug()V
    .locals 3

    .prologue
    .line 848
    const-string v1, "SSRMv2:TSP:AirViewOnOff"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SettingsAirViewInfo:: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mFingerOverViewOn:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewMasterOnOff:Z

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mMagnifierOn:Z

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandAnyScreen:Z

    if-eqz v0, :cond_3

    const-string v0, "1"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandDialer:Z

    if-eqz v0, :cond_4

    const-string v0, "1"

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandSamsungKeypad:Z

    if-eqz v0, :cond_5

    const-string v0, "1"

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandCalculator:Z

    if-eqz v0, :cond_6

    const-string v0, "1"

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandPattern:Z

    if-eqz v0, :cond_7

    const-string v0, "1"

    :goto_7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    return-void

    .line 848
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
.end method

.method readAirViewSettings()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 716
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 718
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mFingerOverViewOn:Z

    .line 723
    :goto_0
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "air_view_master_onoff"

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 725
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewMasterOnOff:Z

    .line 730
    :goto_1
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "air_view_mode"

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewMode:I

    .line 733
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view_magnifier"

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 735
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mMagnifierOn:Z

    .line 740
    :goto_2
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "any_screen_enabled"

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 742
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandAnyScreen:Z

    .line 747
    :goto_3
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "onehand_dialer_enabled"

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 749
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandDialer:Z

    .line 754
    :goto_4
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "onehand_samsungkeypad_enabled"

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 756
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandSamsungKeypad:Z

    .line 761
    :goto_5
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "onehand_calculator_enabled"

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 763
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandCalculator:Z

    .line 768
    :goto_6
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "onehand_pattern_enabled"

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 770
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandPattern:Z

    .line 774
    :goto_7
    return-void

    .line 720
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mFingerOverViewOn:Z

    goto :goto_0

    .line 727
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewMasterOnOff:Z

    goto :goto_1

    .line 737
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mMagnifierOn:Z

    goto :goto_2

    .line 744
    :cond_3
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandAnyScreen:Z

    goto :goto_3

    .line 751
    :cond_4
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandDialer:Z

    goto :goto_4

    .line 758
    :cond_5
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandSamsungKeypad:Z

    goto :goto_5

    .line 765
    :cond_6
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandCalculator:Z

    goto :goto_6

    .line 772
    :cond_7
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mOneHandPattern:Z

    goto :goto_7
.end method

.method registerObservers()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 777
    new-instance v0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->this$0:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;-><init>(Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewObserver:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;

    .line 778
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewObserver:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 781
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "air_view_master_onoff"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewObserver:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 784
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "air_view_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewObserver:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 787
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view_magnifier"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewObserver:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 790
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "any_screen_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewObserver:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 793
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "onehand_dialer_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewObserver:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 796
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "onehand_samsungkeypad_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewObserver:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 799
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "onehand_calculator_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewObserver:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 802
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "onehand_pattern_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->mAirViewObserver:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 805
    return-void
.end method
