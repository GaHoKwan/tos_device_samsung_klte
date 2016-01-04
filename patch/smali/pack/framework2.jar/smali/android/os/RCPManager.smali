.class public Landroid/os/RCPManager;
.super Ljava/lang/Object;
.source "RCPManager.java"


# static fields
.field public static final ERROR:I = -0x14d

.field private static final TAG:Ljava/lang/String; = "RCPManager"


# instance fields
.field mService:Landroid/os/IRCPManager;


# direct methods
.method public constructor <init>(Landroid/os/IRCPManager;)V
    .locals 0
    .param p1, "service"    # Landroid/os/IRCPManager;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    .line 131
    return-void
.end method


# virtual methods
.method public cancelCopyChunks(J)V
    .locals 1
    .param p1, "sessionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 349
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IRCPManager;->cancelCopyChunks(J)V

    .line 352
    :cond_0
    return-void
.end method

.method public checkSAccount(Ljava/lang/String;Landroid/content/ISAccountCallback;)V
    .locals 3
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/content/ISAccountCallback;

    .prologue
    .line 248
    :try_start_0
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IRCPManager;->checkSAccount(Ljava/lang/String;Landroid/content/ISAccountCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to checkSAccount."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public checkSAccountPassword(Ljava/lang/String;Landroid/content/ISAccountCallback;)V
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/content/ISAccountCallback;

    .prologue
    .line 257
    :try_start_0
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IRCPManager;->checkSAccountPassword(Ljava/lang/String;Landroid/content/ISAccountCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to checkSAccountPassword."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I
    .locals 11
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .param p5, "offset"    # J
    .param p7, "length"    # I
    .param p8, "sessionId"    # J
    .param p10, "deleteSrc"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    invoke-interface/range {v0 .. v10}, Landroid/os/IRCPManager;->copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I

    move-result v0

    .line 345
    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x14d

    goto :goto_0
.end method

.method public copyClipboardFile(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "destPath"    # Ljava/lang/String;
    .param p3, "permissions"    # I

    .prologue
    .line 213
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    .line 215
    :try_start_0
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IRCPManager;->copyClipboardFile(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 221
    :goto_0
    return v1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to save clipboard sandbox."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 221
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public copyFile(ILjava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IRCPManager;->copyFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 307
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public deleteClipboardFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 225
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    .line 227
    :try_start_0
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->deleteClipboardFile(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to deleteClipboardFile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteFile(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IRCPManager;->deleteFile(Ljava/lang/String;I)Z

    move-result v0

    .line 361
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public exchangeData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 374
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    .line 376
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, v0, p2, p3}, Landroid/os/IRCPManager;->exchangeData(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 379
    .end local v0    # "pkgName":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public executeCommandForPersona(Landroid/app/Command;)V
    .locals 3
    .param p1, "command"    # Landroid/app/Command;

    .prologue
    .line 202
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    .line 204
    :try_start_0
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->executeCommandForPersona(Landroid/app/Command;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to switch persona."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getCallerInfo(Ljava/lang/String;)Landroid/content/CustomCursor;
    .locals 3
    .param p1, "contactRefUriAsString"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    .line 291
    :try_start_0
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->getCallerInfo(Ljava/lang/String;)Landroid/content/CustomCursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 297
    :goto_0
    return-object v1

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to get getCallerInfo(). "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 297
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IRCPManager;->getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    .line 336
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFiles(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IRCPManager;->getFiles(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 329
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNotifications(Z)Ljava/util/List;
    .locals 3
    .param p1, "includeCallingUserNotifs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/app/KnoxNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    .line 136
    :try_start_0
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->getNotifications(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 142
    :goto_0
    return-object v1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to get all notifications getNotifications"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRCPInterface()Landroid/content/IRCPInterface;
    .locals 3

    .prologue
    .line 277
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    .line 279
    :try_start_0
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1}, Landroid/os/IRCPManager;->getRCPInterface()Landroid/content/IRCPInterface;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 285
    :goto_0
    return-object v1

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to get RCPInterface from getRCPInterface()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 285
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRCPProxy()Landroid/content/IRCPGlobalContactsDir;
    .locals 3

    .prologue
    .line 265
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    .line 267
    :try_start_0
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1}, Landroid/os/IRCPManager;->getRCPProxy()Landroid/content/IRCPGlobalContactsDir;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 273
    :goto_0
    return-object v1

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to get IRCPGlobalContactsDir from getRCPProxy()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 273
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUsersToSyncFrom(Ljava/lang/String;)[I
    .locals 3
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 168
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    .line 170
    :try_start_0
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->getUsersToSyncFrom(Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 176
    :goto_0
    return-object v1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to set up the sandbox."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 176
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleShortcut(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "packageLabel"    # Ljava/lang/String;
    .param p4, "shortcutIcon"    # Landroid/graphics/Bitmap;
    .param p5, "shortcutIntentUri"    # Ljava/lang/String;
    .param p6, "createOrRemove"    # Ljava/lang/String;

    .prologue
    .line 393
    const-string v0, "RCPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " in createShortcut() for packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " userId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_0

    .line 396
    :try_start_0
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/os/IRCPManager;->handleShortcut(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 398
    :catch_0
    move-exception v7

    .line 399
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "RCPManager"

    const-string v1, "RemoteException trying to get createShortcut(). "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isFileExist(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IRCPManager;->isFileExist(Ljava/lang/String;I)Z

    move-result v0

    .line 322
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveFile(ILjava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IRCPManager;->moveFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 315
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public notificationCleared(Landroid/app/KnoxNotification;)V
    .locals 3
    .param p1, "n"    # Landroid/app/KnoxNotification;

    .prologue
    .line 146
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    .line 148
    :try_start_0
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->notificationCleared(Landroid/app/KnoxNotification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to clear notification notificationCleared."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public queryAllProviders(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "resource"    # Ljava/lang/String;
    .param p3, "containerId"    # I
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/CustomCursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_0

    .line 53
    :try_start_0
    const-string v0, "RCPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "My Context is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/os/IRCPManager;->queryAllProviders(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    .line 56
    :catch_0
    move-exception v8

    .line 57
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "RCPManager"

    const-string v1, "RemoteException trying to query provider  queryAllProviders()"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;
    .locals 9
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "resource"    # Ljava/lang/String;
    .param p3, "containerId"    # I
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_0

    .line 37
    :try_start_0
    const-string v0, "RCPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "My Context is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/os/IRCPManager;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    .line 40
    :catch_0
    move-exception v8

    .line 41
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "RCPManager"

    const-string v1, "RemoteException trying to query provider  queryProvider"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshClipboard()V
    .locals 3

    .prologue
    .line 236
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    .line 238
    :try_start_0
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1}, Landroid/os/IRCPManager;->refreshClipboard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to refresh clipboard."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public registerCommandExe(Landroid/content/ICommandExeCallBack;)V
    .locals 4
    .param p1, "callback"    # Landroid/content/ICommandExeCallBack;

    .prologue
    .line 89
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    .line 91
    :try_start_0
    const-string v1, "RCPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "My Context is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    if-eqz p1, :cond_1

    .line 93
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->registerCommandExe(Landroid/content/ICommandExeCallBack;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const-string v1, "RCPManager"

    const-string/jumbo v2, "registerCommandExe callback object is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to register command executor callback registerSync"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public registerExchangeData(Landroid/content/Context;Landroid/os/IRunnableCallback;)Z
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "cb"    # Landroid/os/IRunnableCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 365
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    .line 367
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, v0, p2}, Landroid/os/IRCPManager;->registerExchangeData(Ljava/lang/String;Landroid/os/IRunnableCallback;)Z

    move-result v1

    .line 370
    .end local v0    # "pkgName":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerMonitorCb(Landroid/content/Context;Landroid/os/IRunnableCallback;)Z
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "cb"    # Landroid/os/IRunnableCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 383
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    .line 385
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, v0, p2}, Landroid/os/IRCPManager;->registerMonitorCb(Ljava/lang/String;Landroid/os/IRunnableCallback;)Z

    move-result v1

    .line 388
    .end local v0    # "pkgName":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public registerProvider(Ljava/lang/String;Landroid/content/IProviderCallBack;)V
    .locals 4
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "mProvider"    # Landroid/content/IProviderCallBack;

    .prologue
    .line 65
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    .line 67
    :try_start_0
    const-string v1, "RCPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "My Context is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IRCPManager;->registerProvider(Ljava/lang/String;Landroid/content/IProviderCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to register provider callback registerProvider"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public registerRCPGlobalContactsDir(Landroid/content/IRCPGlobalContactsDir;)V
    .locals 4
    .param p1, "globalContactsDir"    # Landroid/content/IRCPGlobalContactsDir;

    .prologue
    .line 106
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    .line 108
    :try_start_0
    const-string v1, "RCPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "My Context is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->registerRCPGlobalContactsDir(Landroid/content/IRCPGlobalContactsDir;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to register globalContactsDir"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public registerRCPInterface(Landroid/content/IRCPInterface;)V
    .locals 4
    .param p1, "rcpInterface"    # Landroid/content/IRCPInterface;

    .prologue
    .line 118
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    .line 120
    :try_start_0
    const-string v1, "RCPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerRCPInterface(): My Context is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->registerRCPInterface(Landroid/content/IRCPInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string/jumbo v2, "registerRCPInterface: RemoteException trying to register rcpInterface"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public registerSync(Landroid/content/ISyncCallBack;)V
    .locals 4
    .param p1, "callback"    # Landroid/content/ISyncCallBack;

    .prologue
    .line 77
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    .line 79
    :try_start_0
    const-string v1, "RCPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "My Context is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->registerSync(Landroid/content/ISyncCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to register sync callback registerSync"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public saveSharedSandbox(I)V
    .locals 3
    .param p1, "toUser"    # I

    .prologue
    .line 191
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    .line 193
    :try_start_0
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->saveSharedSandbox(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to save clipboard sandbox."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setupClipbardSandbox()V
    .locals 3

    .prologue
    .line 180
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    .line 182
    :try_start_0
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1}, Landroid/os/IRCPManager;->setupClipbardSandbox()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to set up the sandbox."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public switchPersona(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 157
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_0

    .line 159
    :try_start_0
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->switchPersona(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to switch persona."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
