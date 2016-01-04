.class public Landroid/os/PersonaFileManager;
.super Ljava/lang/Object;
.source "PersonaFileManager.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/content/pm/IPersonaFileHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "PersonaFileManager"

    sput-object v0, Landroid/os/PersonaFileManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPersonaFileHandler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/pm/IPersonaFileHandler;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Landroid/os/PersonaFileManager;->mService:Landroid/content/pm/IPersonaFileHandler;

    .line 34
    iput-object p1, p0, Landroid/os/PersonaFileManager;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method public changeEncryptionKey(ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "oldKey"    # Ljava/lang/String;
    .param p3, "newKey"    # Ljava/lang/String;
    .param p4, "isSecureStorageEnabled"    # Z

    .prologue
    .line 79
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaFileManager;->mService:Landroid/content/pm/IPersonaFileHandler;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/pm/IPersonaFileHandler;->changeEncryptionKey(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 82
    :goto_0
    return v1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaFileManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call service with exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createPartition(ILjava/lang/String;Z)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "isSecureStorageEnabled"    # Z

    .prologue
    .line 39
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaFileManager;->mService:Landroid/content/pm/IPersonaFileHandler;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPersonaFileHandler;->createPartition(ILjava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 42
    :goto_0
    return v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaFileManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call service with exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEncrypted(I)Z
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 89
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaFileManager;->mService:Landroid/content/pm/IPersonaFileHandler;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaFileHandler;->isEncrypted(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 92
    :goto_0
    return v1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaFileManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call service with exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mount(ILjava/lang/String;Z)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "isSecureStorageEnabled"    # Z

    .prologue
    .line 59
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaFileManager;->mService:Landroid/content/pm/IPersonaFileHandler;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPersonaFileHandler;->createPartition(ILjava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 62
    :goto_0
    return v1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaFileManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call service with exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removePartition(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "isSecureStorageEnabled"    # Z

    .prologue
    .line 49
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaFileManager;->mService:Landroid/content/pm/IPersonaFileHandler;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaFileHandler;->removePartition(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 52
    :goto_0
    return v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaFileManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call service with exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unmount(I)Z
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaFileManager;->mService:Landroid/content/pm/IPersonaFileHandler;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaFileHandler;->unmount(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 72
    :goto_0
    return v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaFileManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call service with exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    const/4 v1, 0x0

    goto :goto_0
.end method
