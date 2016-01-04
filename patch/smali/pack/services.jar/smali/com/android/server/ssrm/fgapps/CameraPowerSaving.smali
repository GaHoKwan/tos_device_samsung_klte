.class public Lcom/android/server/ssrm/fgapps/CameraPowerSaving;
.super Lcom/android/server/ssrm/fgapps/AbsGovernor;
.source "CameraPowerSaving.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# instance fields
.field final ID_BLACKBOX:I

.field final ID_VTCALL:I

.field final TAG:Ljava/lang/String;

.field mBlackboxList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mChatOnVtCall:Z

.field mPhoneVtCall:Z

.field mVideocallList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;-><init>()V

    .line 27
    const-string v0, "SSRMv2:CameraPowerSaving"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->TAG:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mBlackboxList:Ljava/util/Hashtable;

    .line 35
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mVideocallList:Ljava/util/Hashtable;

    .line 93
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mPhoneVtCall:Z

    .line 95
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mChatOnVtCall:Z

    .line 38
    const-string v0, "SSRMv2:CameraPowerSaving"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setTag(Ljava/lang/String;)V

    .line 40
    const-string/jumbo v0, "sys.cameramode.blackbox"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSystemPropertiesParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->ID_BLACKBOX:I

    .line 42
    const-string/jumbo v0, "sys.cameramode.vtcall"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSystemPropertiesParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->ID_VTCALL:I

    .line 45
    const-string v0, "com.locnall.KimGiSa"

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addBlackboxPackage(Ljava/lang/String;)V

    .line 46
    const-string v0, "com.mnsoft.lgunavi"

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addBlackboxPackage(Ljava/lang/String;)V

    .line 47
    const-string v0, "com.thinkware.inaviair"

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addBlackboxPackage(Ljava/lang/String;)V

    .line 48
    const-string v0, "kr.mappers.AtlanSmart"

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addBlackboxPackage(Ljava/lang/String;)V

    .line 49
    const-string v0, "kt.navi"

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addBlackboxPackage(Ljava/lang/String;)V

    .line 50
    const-string v0, "com.ONS.Mapple"

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addBlackboxPackage(Ljava/lang/String;)V

    .line 51
    const-string v0, "com.nhn.android.nmap"

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addBlackboxPackage(Ljava/lang/String;)V

    .line 52
    const-string v0, "kr.co.d2.kistirnd"

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addBlackboxPackage(Ljava/lang/String;)V

    .line 53
    const-string v0, "com.hovans.autoguard"

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addBlackboxPackage(Ljava/lang/String;)V

    .line 54
    const-string v0, "com.pokevian.optimus"

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addBlackboxPackage(Ljava/lang/String;)V

    .line 55
    const-string v0, "com.kt.ollehmap"

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addBlackboxPackage(Ljava/lang/String;)V

    .line 58
    const-string v0, "com.google.android.talk"

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addVideocallPackage(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method private addBlackboxPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mBlackboxList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method private addVideocallPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mVideocallList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method private isBlackboxPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mBlackboxList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isVideocallPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mVideocallList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onFgAppChanged()V
    .locals 0

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 114
    return-void
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 118
    return-void
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "statusName"    # Ljava/lang/String;
    .param p2, "statusValue"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string v0, "ChatOnV_vtCall"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mChatOnVtCall:Z

    .line 101
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const-string v0, "Phone_vtCall"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mPhoneVtCall:Z

    .line 106
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    goto :goto_0
.end method

.method updateParameterByScenario()V
    .locals 5

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "packageName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->isBlackboxPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "blackbox"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "BlackBox"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "l001mtm"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    const/4 v0, 0x1

    .line 83
    .local v0, "blackboxFg":Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->isVideocallPackage(Ljava/lang/String;)Z

    move-result v2

    .line 85
    .local v2, "vtcallFg":Z
    if-eqz v0, :cond_1

    .line 86
    iget v3, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->ID_BLACKBOX:I

    const-string v4, "1"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSystemProperties(ILjava/lang/String;)V

    .line 88
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mPhoneVtCall:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mChatOnVtCall:Z

    if-nez v3, :cond_2

    if-eqz v2, :cond_3

    .line 89
    :cond_2
    iget v3, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->ID_VTCALL:I

    const-string v4, "1"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSystemProperties(ILjava/lang/String;)V

    .line 91
    :cond_3
    return-void

    .line 81
    .end local v0    # "blackboxFg":Z
    .end local v2    # "vtcallFg":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
