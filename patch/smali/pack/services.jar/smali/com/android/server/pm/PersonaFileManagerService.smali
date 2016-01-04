.class public Lcom/android/server/pm/PersonaFileManagerService;
.super Landroid/content/pm/IPersonaFileHandler$Stub;
.source "PersonaFileManagerService.java"


# static fields
.field private static SEANDROID_SECURITY_VERIFICATION:Z = false

.field private static final TAG:Ljava/lang/String; = "PersonaFileSystemManagerService"

.field private static sContext:Landroid/content/Context;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/PersonaFileManagerService;->sContext:Landroid/content/Context;

    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/pm/PersonaFileManagerService;->SEANDROID_SECURITY_VERIFICATION:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/pm/IPersonaFileHandler$Stub;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/server/pm/PersonaFileManagerService;->mContext:Landroid/content/Context;

    .line 23
    sput-object p1, Lcom/android/server/pm/PersonaFileManagerService;->sContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 5
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v1, "PersonaFileManagerService"

    .line 30
    .local v1, "serviceName":Ljava/lang/String;
    sget-object v2, Lcom/android/server/pm/PersonaFileManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 31
    sget-boolean v2, Lcom/android/server/pm/PersonaFileManagerService;->SEANDROID_SECURITY_VERIFICATION:Z

    if-eqz v2, :cond_0

    .line 32
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    throw v0

    .line 37
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    const-string v2, "PersonaFileSystemManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Security Exception Occurred while pid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] with uid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] trying to access methodName ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] in ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private isEncryptionEnabled(I)Ljava/lang/Boolean;
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 48
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 49
    .local v1, "isEnabled":Ljava/lang/Boolean;
    const-string v3, "persona"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PersonaManagerService;

    .line 50
    .local v2, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    invoke-virtual {v2, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 52
    .local v0, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 56
    .end local v0    # "info":Landroid/content/pm/PersonaInfo;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public changeEncryptionKey(ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "oldKey"    # Ljava/lang/String;
    .param p3, "newKey"    # Ljava/lang/String;
    .param p4, "isSecureStorageEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 133
    const-string v3, "changeEncryptionKey"

    invoke-static {v3}, Lcom/android/server/pm/PersonaFileManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaFileManagerService;->isEncryptionEnabled(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 135
    const-string v3, "PersonaFileSystemManagerService"

    const-string v4, "changeEncryptionKey: encryption feature not enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    :goto_0
    return v2

    .line 138
    :cond_1
    const/4 v1, 0x0

    .line 139
    .local v1, "fileHandler":Landroid/content/pm/IPersonaFileHandler;
    const-string v3, "persona_file_system"

    invoke-static {v3}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 140
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 141
    invoke-static {v0}, Landroid/content/pm/IPersonaFileHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaFileHandler;

    move-result-object v1

    .line 142
    if-eqz v1, :cond_0

    .line 143
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/pm/IPersonaFileHandler;->changeEncryptionKey(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0
.end method

.method public createPartition(ILjava/lang/String;Z)Z
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "isSecureStorageEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 61
    const-string v3, "createPartition"

    invoke-static {v3}, Lcom/android/server/pm/PersonaFileManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaFileManagerService;->isEncryptionEnabled(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 63
    const-string v3, "PersonaFileSystemManagerService"

    const-string v4, "createPartition: encryption feature not enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    :goto_0
    return v2

    .line 66
    :cond_1
    const/4 v1, 0x0

    .line 67
    .local v1, "fileHandler":Landroid/content/pm/IPersonaFileHandler;
    const-string v3, "persona_file_system"

    invoke-static {v3}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 68
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 69
    invoke-static {v0}, Landroid/content/pm/IPersonaFileHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaFileHandler;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_0

    .line 71
    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPersonaFileHandler;->createPartition(ILjava/lang/String;Z)Z

    move-result v2

    goto :goto_0
.end method

.method public isEncrypted(I)Z
    .locals 5
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 151
    const-string v3, "isEncrypted"

    invoke-static {v3}, Lcom/android/server/pm/PersonaFileManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 152
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaFileManagerService;->isEncryptionEnabled(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 153
    const-string v3, "PersonaFileSystemManagerService"

    const-string v4, "isEncrypted: encryption feature not enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    :goto_0
    return v2

    .line 156
    :cond_1
    const/4 v1, 0x0

    .line 157
    .local v1, "fileHandler":Landroid/content/pm/IPersonaFileHandler;
    const-string v3, "persona_file_system"

    invoke-static {v3}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 158
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 159
    invoke-static {v0}, Landroid/content/pm/IPersonaFileHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaFileHandler;

    move-result-object v1

    .line 160
    if-eqz v1, :cond_0

    .line 161
    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaFileHandler;->isEncrypted(I)Z

    move-result v2

    goto :goto_0
.end method

.method public mount(ILjava/lang/String;Z)Z
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "isSecureStorageEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 97
    const-string v3, "mount"

    invoke-static {v3}, Lcom/android/server/pm/PersonaFileManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaFileManagerService;->isEncryptionEnabled(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 99
    const-string v3, "PersonaFileSystemManagerService"

    const-string v4, "mount: encryption feature not enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    :goto_0
    return v2

    .line 102
    :cond_1
    const/4 v1, 0x0

    .line 103
    .local v1, "fileHandler":Landroid/content/pm/IPersonaFileHandler;
    const-string v3, "persona_file_system"

    invoke-static {v3}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 104
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 105
    invoke-static {v0}, Landroid/content/pm/IPersonaFileHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaFileHandler;

    move-result-object v1

    .line 106
    if-eqz v1, :cond_0

    .line 107
    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPersonaFileHandler;->mount(ILjava/lang/String;Z)Z

    move-result v2

    goto :goto_0
.end method

.method public removePartition(IZ)Z
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "isSecureStorageEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 79
    const-string v3, "removePartition"

    invoke-static {v3}, Lcom/android/server/pm/PersonaFileManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaFileManagerService;->isEncryptionEnabled(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 81
    const-string v3, "PersonaFileSystemManagerService"

    const-string v4, "removePartition: encryption feature not enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    :goto_0
    return v2

    .line 84
    :cond_1
    const/4 v1, 0x0

    .line 85
    .local v1, "fileHandler":Landroid/content/pm/IPersonaFileHandler;
    const-string v3, "persona_file_system"

    invoke-static {v3}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 86
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 87
    invoke-static {v0}, Landroid/content/pm/IPersonaFileHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaFileHandler;

    move-result-object v1

    .line 88
    if-eqz v1, :cond_0

    .line 89
    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaFileHandler;->removePartition(IZ)Z

    move-result v2

    goto :goto_0
.end method

.method public unmount(I)Z
    .locals 5
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 115
    const-string/jumbo v3, "unmount"

    invoke-static {v3}, Lcom/android/server/pm/PersonaFileManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaFileManagerService;->isEncryptionEnabled(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 117
    const-string v3, "PersonaFileSystemManagerService"

    const-string/jumbo v4, "unmount: encryption feature not enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    :goto_0
    return v2

    .line 120
    :cond_1
    const/4 v1, 0x0

    .line 121
    .local v1, "fileHandler":Landroid/content/pm/IPersonaFileHandler;
    const-string v3, "persona_file_system"

    invoke-static {v3}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 122
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 123
    invoke-static {v0}, Landroid/content/pm/IPersonaFileHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaFileHandler;

    move-result-object v1

    .line 124
    if-eqz v1, :cond_0

    .line 125
    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaFileHandler;->unmount(I)Z

    move-result v2

    goto :goto_0
.end method
