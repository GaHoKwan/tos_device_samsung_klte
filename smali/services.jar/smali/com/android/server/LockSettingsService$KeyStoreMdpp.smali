.class public Lcom/android/server/LockSettingsService$KeyStoreMdpp;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyStoreMdpp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;
    }
.end annotation


# static fields
.field public static final KEY_NOT_FOUND:I = 0x7

.field public static final LOCKED:I = 0x2

.field private static final NO_ERROR:I = 0x1

.field public static final UNINITIALIZED:I = 0x3


# instance fields
.field private final mBinder:Landroid/security/IKeystoreService;


# direct methods
.method private constructor <init>(Landroid/security/IKeystoreService;)V
    .locals 0
    .param p1, "binder"    # Landroid/security/IKeystoreService;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mBinder:Landroid/security/IKeystoreService;

    .line 111
    return-void
.end method

.method public static getInstance()Lcom/android/server/LockSettingsService$KeyStoreMdpp;
    .locals 2

    .prologue
    .line 114
    const-string v1, "android.security.keystore"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/security/IKeystoreService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeystoreService;

    move-result-object v0

    .line 117
    .local v0, "keystore":Landroid/security/IKeystoreService;
    new-instance v1, Lcom/android/server/LockSettingsService$KeyStoreMdpp;

    invoke-direct {v1, v0}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;-><init>(Landroid/security/IKeystoreService;)V

    return-object v1
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 133
    const/4 v2, 0x0

    .line 135
    .local v2, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v4, p1, p2}, Landroid/security/IKeystoreService;->check_password(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    .line 141
    :goto_0
    return v2

    .line 135
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "MDPP"

    const-string v4, "Wrong KeyStore detected!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 138
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 139
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "MDPP"

    const-string v4, "KeyStore service is absent!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isEmpty(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 226
    const/4 v2, 0x0

    .line 228
    .local v2, "result":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1}, Landroid/security/IKeystoreService;->zero(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    .line 234
    :goto_0
    return v2

    .line 228
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v1

    .line 230
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "MDPP"

    const-string v4, "Wrong KeyStore detected!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 231
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 232
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "MDPP"

    const-string v4, "KeyStore service is absent!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isUnlocked(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->state(I)Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

    move-result-object v0

    sget-object v1, Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;->UNLOCKED:Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lock(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 157
    const/4 v2, 0x0

    .line 159
    .local v2, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v4, p1}, Landroid/security/IKeystoreService;->lock(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    .line 165
    :goto_0
    return v2

    .line 159
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "MDPP"

    const-string v4, "Wrong KeyStore detected!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 162
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 163
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "MDPP"

    const-string v4, "KeyStore service is absent!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public password(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 145
    const/4 v2, 0x0

    .line 147
    .local v2, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v4, p1, p2}, Landroid/security/IKeystoreService;->password(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    .line 153
    :goto_0
    return v2

    .line 147
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "MDPP"

    const-string v4, "Wrong KeyStore detected!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 150
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 151
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "MDPP"

    const-string v4, "KeyStore service is absent!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reset(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 202
    const/4 v2, 0x0

    .line 204
    .local v2, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v4, p1}, Landroid/security/IKeystoreService;->reset(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    .line 210
    :goto_0
    return v2

    .line 204
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "MDPP"

    const-string v4, "Wrong KeyStore detected!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 207
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 208
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "MDPP"

    const-string v4, "KeyStore service is absent!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resetHard(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 214
    const/4 v2, 0x0

    .line 216
    .local v2, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v4, p1}, Landroid/security/IKeystoreService;->reset_hard(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    .line 222
    :goto_0
    return v2

    .line 216
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "MDPP"

    const-string v4, "Wrong KeyStore detected!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 219
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 220
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "MDPP"

    const-string v4, "KeyStore service is absent!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMaxRetryCount(I)Z
    .locals 5
    .param p1, "count"    # I

    .prologue
    const/4 v3, 0x1

    .line 121
    const/4 v2, 0x0

    .line 123
    .local v2, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v4, p1}, Landroid/security/IKeystoreService;->set_max_retry_count(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    .line 129
    :goto_0
    return v2

    .line 123
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "MDPP"

    const-string v4, "Wrong KeyStore detected!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 126
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 127
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "MDPP"

    const-string v4, "KeyStore service is absent!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public state(I)Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 183
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v2, p1}, Landroid/security/IKeystoreService;->test(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 189
    .local v1, "ret":I
    packed-switch v1, :pswitch_data_0

    .line 193
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 184
    .end local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MDPP"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 190
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "ret":I
    :pswitch_0
    sget-object v2, Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;->UNLOCKED:Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

    .line 192
    :goto_0
    return-object v2

    .line 191
    :pswitch_1
    sget-object v2, Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;->LOCKED:Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

    goto :goto_0

    .line 192
    :pswitch_2
    sget-object v2, Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;->UNINITIALIZED:Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public unlock(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 169
    const/4 v2, 0x0

    .line 171
    .local v2, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v4, p1, p2}, Landroid/security/IKeystoreService;->unlock(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    .line 177
    :goto_0
    return v2

    .line 171
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "MDPP"

    const-string v4, "Wrong KeyStore detected!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 174
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 175
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "MDPP"

    const-string v4, "KeyStore service is absent!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
