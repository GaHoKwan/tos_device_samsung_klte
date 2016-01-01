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

    const-string v0, "PersonaFileManager"

    sput-object v0, Landroid/os/PersonaFileManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPersonaFileHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/os/PersonaFileManager;->mService:Landroid/content/pm/IPersonaFileHandler;

    iput-object p1, p0, Landroid/os/PersonaFileManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public changeEncryptionKey(ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaFileManager;->mService:Landroid/content/pm/IPersonaFileHandler;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/pm/IPersonaFileHandler;->changeEncryptionKey(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaFileManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call service with exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createPartition(ILjava/lang/String;Z)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaFileManager;->mService:Landroid/content/pm/IPersonaFileHandler;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPersonaFileHandler;->createPartition(ILjava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaFileManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call service with exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEncrypted(I)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaFileManager;->mService:Landroid/content/pm/IPersonaFileHandler;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaFileHandler;->isEncrypted(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaFileManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call service with exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mount(ILjava/lang/String;Z)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaFileManager;->mService:Landroid/content/pm/IPersonaFileHandler;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPersonaFileHandler;->createPartition(ILjava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaFileManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call service with exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removePartition(IZ)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaFileManager;->mService:Landroid/content/pm/IPersonaFileHandler;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaFileHandler;->removePartition(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaFileManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call service with exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unmount(I)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaFileManager;->mService:Landroid/content/pm/IPersonaFileHandler;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaFileHandler;->unmount(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/PersonaFileManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call service with exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method
