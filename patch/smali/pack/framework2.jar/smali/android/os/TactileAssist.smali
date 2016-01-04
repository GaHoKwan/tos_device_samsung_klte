.class public Landroid/os/TactileAssist;
.super Ljava/lang/Object;
.source "TactileAssist.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TactileAssist"


# instance fields
.field private final mService:Landroid/os/ITactileAssistService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string/jumbo v0, "tactileassist"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ITactileAssistService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ITactileAssistService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    .line 35
    return-void
.end method


# virtual methods
.method public getActuators()[I
    .locals 3

    .prologue
    .line 39
    :try_start_0
    iget-object v1, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    invoke-interface {v1}, Landroid/os/ITactileAssistService;->getActuators()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 43
    :goto_0
    return-object v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TactileAssist"

    const-string/jumbo v2, "service unable to get Actuators"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDensity(II)Z
    .locals 3
    .param p1, "actuator"    # I
    .param p2, "density"    # I

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    invoke-interface {v1, p1, p2}, Landroid/os/ITactileAssistService;->setDensity(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 91
    :goto_0
    return v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TactileAssist"

    const-string/jumbo v2, "service unable to set TactileAssist density"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEnable(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 48
    :try_start_0
    const-string v1, "TactileAssist"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Accessibility test : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v1, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    invoke-interface {v1, p1}, Landroid/os/ITactileAssistService;->setEnable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 53
    :goto_0
    return v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TactileAssist"

    const-string/jumbo v2, "service unable to enable TactileAssist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInternalEnable(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 58
    :try_start_0
    iget-object v1, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    invoke-interface {v1, p1}, Landroid/os/ITactileAssistService;->setInternalEnable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 62
    :goto_0
    return v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TactileAssist"

    const-string/jumbo v2, "service unable to internal enable TactileAssist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLevel(I)Z
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 67
    :try_start_0
    iget-object v1, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    invoke-interface {v1, p1}, Landroid/os/ITactileAssistService;->setLevel(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 71
    :goto_0
    return v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TactileAssist"

    const-string/jumbo v2, "service unable to set TactileAssist Level"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSharpness(II)Z
    .locals 3
    .param p1, "actuator"    # I
    .param p2, "sharpness"    # I

    .prologue
    .line 96
    :try_start_0
    iget-object v1, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    invoke-interface {v1, p1, p2}, Landroid/os/ITactileAssistService;->setSharpness(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 100
    :goto_0
    return v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TactileAssist"

    const-string/jumbo v2, "service unable to set TactileAssist sharpness"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setStrength(II)Z
    .locals 3
    .param p1, "actuator"    # I
    .param p2, "strength"    # I

    .prologue
    .line 77
    :try_start_0
    iget-object v1, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    invoke-interface {v1, p1, p2}, Landroid/os/ITactileAssistService;->setStrength(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 81
    :goto_0
    return v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TactileAssist"

    const-string/jumbo v2, "service unable to set TactileAssist strength"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public storeAppList()Z
    .locals 3

    .prologue
    .line 106
    :try_start_0
    iget-object v1, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    invoke-interface {v1}, Landroid/os/ITactileAssistService;->storeAppList()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 110
    :goto_0
    return v1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TactileAssist"

    const-string/jumbo v2, "service unable to store app list"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v1, 0x0

    goto :goto_0
.end method
