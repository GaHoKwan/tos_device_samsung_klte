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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "tactileassist"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ITactileAssistService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ITactileAssistService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    return-void
.end method


# virtual methods
.method public getActuators()[I
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    invoke-interface {v1}, Landroid/os/ITactileAssistService;->getActuators()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "TactileAssist"

    const-string/jumbo v2, "service unable to get Actuators"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDensity(II)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    invoke-interface {v1, p1, p2}, Landroid/os/ITactileAssistService;->setDensity(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "TactileAssist"

    const-string/jumbo v2, "service unable to set TactileAssist density"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEnable(Z)Z
    .locals 4

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

    iget-object v1, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    invoke-interface {v1, p1}, Landroid/os/ITactileAssistService;->setEnable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "TactileAssist"

    const-string/jumbo v2, "service unable to enable TactileAssist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInternalEnable(Z)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    invoke-interface {v1, p1}, Landroid/os/ITactileAssistService;->setInternalEnable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "TactileAssist"

    const-string/jumbo v2, "service unable to internal enable TactileAssist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLevel(I)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    invoke-interface {v1, p1}, Landroid/os/ITactileAssistService;->setLevel(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "TactileAssist"

    const-string/jumbo v2, "service unable to set TactileAssist Level"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSharpness(II)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    invoke-interface {v1, p1, p2}, Landroid/os/ITactileAssistService;->setSharpness(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "TactileAssist"

    const-string/jumbo v2, "service unable to set TactileAssist sharpness"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setStrength(II)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    invoke-interface {v1, p1, p2}, Landroid/os/ITactileAssistService;->setStrength(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "TactileAssist"

    const-string/jumbo v2, "service unable to set TactileAssist strength"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public storeAppList()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    invoke-interface {v1}, Landroid/os/ITactileAssistService;->storeAppList()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "TactileAssist"

    const-string/jumbo v2, "service unable to store app list"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method
