.class public Lcom/android/server/enterprise/email/EmailPolicy;
.super Landroid/app/enterprise/IEmailPolicy$Stub;
.source "EmailPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "EmailPolicyService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/app/enterprise/IEmailPolicy$Stub;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 76
    iput-object p1, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    .line 77
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 78
    return-void
.end method

.method private enforceEmailPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultValueState(Ljava/lang/String;)Z
    .locals 2
    .param p1, "policy"    # Ljava/lang/String;

    .prologue
    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, "ret":Z
    const-string v1, "EmailAllowForward"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    const/4 v0, 0x1

    .line 298
    :cond_0
    :goto_0
    return v0

    .line 291
    :cond_1
    const-string v1, "EmailAllowHTML"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 292
    const/4 v0, 0x1

    goto :goto_0

    .line 293
    :cond_2
    const-string v1, "EmailAllowNotificationChange"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 294
    const/4 v0, 0x1

    goto :goto_0

    .line 295
    :cond_3
    const-string v1, "EmailAllowSettingChange"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getPolicyState(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 12
    .param p1, "containerId"    # I
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "policy"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 239
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 240
    :cond_0
    const-string v9, "EmailPolicyService"

    const-string v10, "getPolicyState: Invalid entry"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const/4 v8, 0x0

    .line 284
    :cond_1
    :goto_0
    return v8

    .line 243
    :cond_2
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/email/EmailPolicy;->getDefaultValueState(Ljava/lang/String;)Z

    move-result v8

    .line 244
    .local v8, "ret":Z
    const-string v0, "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

    .line 246
    .local v0, "EMAIL_REGEX":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 247
    const-string v9, "EmailPolicyService"

    const-string v10, "getPolicyState: Invalid entry by regex"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/4 v8, 0x0

    goto :goto_0

    .line 251
    :cond_3
    const/4 v9, 0x1

    new-array v1, v9, [Ljava/lang/String;

    .line 252
    .local v1, "columns":[Ljava/lang/String;
    const/4 v9, 0x0

    aput-object p3, v1, v9

    .line 254
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 255
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v9, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 256
    const-string v9, "EmailAddress"

    invoke-virtual {v3, v9, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string/jumbo v9, "userID"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 258
    const/4 v7, 0x0

    .line 261
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "EmailSettingsTable"

    invoke-virtual {v9, v10, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 269
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 272
    const-string v9, "EmailPolicyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPolicyState: results = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/email/EmailPolicy;->getDefaultValueState(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    const/4 v6, 0x1

    .line 277
    .local v6, "restricterState":Z
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 278
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 279
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 280
    .local v2, "cv":Landroid/content/ContentValues;
    invoke-virtual {v2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v6, :cond_6

    const-string v9, "1"

    :goto_2
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v8, v6

    .line 281
    goto/16 :goto_0

    .line 263
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .end local v6    # "restricterState":Z
    :catch_0
    move-exception v4

    .line 265
    .local v4, "ex":Ljava/lang/Exception;
    const-string v9, "EmailPolicyService"

    const-string v10, "Exception while getValuesList from EDMStorageProvider"

    invoke-static {v9, v10, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 275
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 280
    .restart local v2    # "cv":Landroid/content/ContentValues;
    .restart local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .restart local v6    # "restricterState":Z
    :cond_6
    const-string v9, "0"

    goto :goto_2

    .line 284
    .end local v2    # "cv":Landroid/content/ContentValues;
    :cond_7
    if-nez v6, :cond_8

    const/4 v9, 0x1

    :goto_3
    move v8, v9

    goto/16 :goto_0

    :cond_8
    const/4 v9, 0x0

    goto :goto_3
.end method

.method private putPolicyState(IILjava/lang/String;ZLjava/lang/String;)Z
    .locals 7
    .param p1, "admin"    # I
    .param p2, "containerId"    # I
    .param p3, "emailAddress"    # Ljava/lang/String;
    .param p4, "state"    # Z
    .param p5, "policy"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 209
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 210
    :cond_0
    const-string v4, "EmailPolicyService"

    const-string v5, "putPolicyState: Invalid entry"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :goto_0
    return v3

    .line 214
    :cond_1
    const-string v0, "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

    .line 216
    .local v0, "EMAIL_REGEX":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 217
    const-string v4, "EmailPolicyService"

    const-string v5, "putPolicyState: Invalid entry"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 222
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 223
    const-string v4, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 224
    const-string v4, "EmailAddress"

    invoke-virtual {v1, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    if-eqz p4, :cond_3

    const-string v4, "1"

    :goto_1
    invoke-virtual {v1, p5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 228
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 229
    const-string v4, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    const-string v4, "EmailAddress"

    invoke-virtual {v2, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v4, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "EmailSettingsTable"

    invoke-virtual {v4, v5, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    .line 233
    .local v3, "ret":Z
    const-string v4, "EmailPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "putPolicyState: ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    .end local v2    # "cvWhere":Landroid/content/ContentValues;
    .end local v3    # "ret":Z
    :cond_3
    const-string v4, "0"

    goto :goto_1
.end method


# virtual methods
.method public allowAccountAddition(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allowed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 82
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 83
    const/4 v3, 0x0

    .line 85
    .local v3, "result":Z
    const/4 v6, 0x1

    :try_start_0
    new-array v2, v6, [B

    .line 86
    .local v2, "refObj":[B
    const/4 v6, 0x0

    if-eqz p2, :cond_0

    :goto_0
    int-to-byte v4, v4

    aput-byte v4, v2, v6

    .line 87
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 88
    .local v0, "cvValues":Landroid/content/ContentValues;
    const-string v4, "policyName"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v4, "accountObject"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 90
    iget-object v4, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v7, "ADMIN_REF"

    invoke-virtual {v4, v5, v6, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    .line 91
    const-string v4, "EmailPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allowAccountAddition: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v0    # "cvValues":Landroid/content/ContentValues;
    .end local v2    # "refObj":[B
    :goto_1
    return v3

    .restart local v2    # "refObj":[B
    :cond_0
    move v4, v5

    .line 86
    goto :goto_0

    .line 92
    .end local v2    # "refObj":[B
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "EmailPolicyService"

    const-string v5, "Exception in allowAccountAddition"

    invoke-static {v4, v5, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public allowEmailSettingsChange(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z
    .param p3, "accId"    # J

    .prologue
    const/4 v0, 0x0

    .line 373
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 374
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 375
    .local v2, "containerId":I
    iget-object v3, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v3, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v6

    .line 376
    .local v6, "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 378
    iget-boolean v3, v6, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v3, :cond_1

    .line 381
    :try_start_0
    const-string v3, "eas_account_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IExchangeAccountPolicy;

    move-result-object v8

    .line 382
    .local v8, "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    if-eqz v8, :cond_0

    invoke-interface {v8, p1, p3, p4, p2}, Landroid/app/enterprise/IExchangeAccountPolicy;->allowEmailSettingsChange(Landroid/app/enterprise/ContextInfo;JZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 393
    .end local v8    # "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    :cond_0
    :goto_0
    return v0

    .line 383
    :catch_0
    move-exception v7

    .line 384
    .local v7, "e":Landroid/os/RemoteException;
    const-string v3, "EmailPolicyService"

    const-string v4, "Failed talking with exchange account policy"

    invoke-static {v3, v4, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 389
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_1
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 390
    .local v1, "adminUid":I
    iget-object v3, v6, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const-string v5, "EmailAllowSettingChange"

    move-object v0, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/EmailPolicy;->putPolicyState(IILjava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public allowPopImapEmail(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allowed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 135
    const/4 v3, 0x0

    .line 137
    .local v3, "result":Z
    const/4 v6, 0x1

    :try_start_0
    new-array v2, v6, [B

    .line 138
    .local v2, "refObj":[B
    const/4 v6, 0x0

    if-eqz p2, :cond_0

    :goto_0
    int-to-byte v4, v4

    aput-byte v4, v2, v6

    .line 139
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 140
    .local v0, "cvValues":Landroid/content/ContentValues;
    const-string v4, "policyName"

    const-string v5, "allowPopImapEmail"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v4, "accountObject"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 142
    iget-object v4, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v7, "ADMIN_REF"

    invoke-virtual {v4, v5, v6, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 148
    .end local v0    # "cvValues":Landroid/content/ContentValues;
    .end local v2    # "refObj":[B
    :goto_1
    return v3

    .restart local v2    # "refObj":[B
    :cond_0
    move v4, v5

    .line 138
    goto :goto_0

    .line 144
    .end local v2    # "refObj":[B
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "EmailPolicyService"

    const-string v5, "Exception in allowPopImapEmail"

    invoke-static {v4, v5, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getAllowEmailForwarding(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 190
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v1, "EmailAllowForward"

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/android/server/enterprise/email/EmailPolicy;->getPolicyState(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getAllowHTMLEmail(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 202
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v1, "EmailAllowHTML"

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/android/server/enterprise/email/EmailPolicy;->getPolicyState(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isAccountAdditionAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 101
    const/4 v5, 0x1

    .line 102
    .local v5, "result":Z
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 103
    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 106
    .local v7, "userID":I
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 107
    .local v2, "cvValues":Landroid/content/ContentValues;
    invoke-static {v1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "#SelectClause#"

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v8, "policyName"

    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v8, "EmailPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isAccountAdditionAllowed: user id :  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v8, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "ADMIN_REF"

    const-string v10, "accountObject"

    invoke-virtual {v8, v9, v10, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlobList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    .line 113
    .local v6, "resultList":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-eqz v6, :cond_0

    .line 114
    const-string v8, "EmailPolicyService"

    const-string v9, "isAccountAdditionAllowed:  resultList not null"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 116
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_1

    .line 117
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 118
    .local v0, "b":[B
    const/4 v8, 0x0

    aget-byte v8, v0, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v8, :cond_2

    .line 119
    const/4 v5, 0x0

    .line 128
    .end local v0    # "b":[B
    .end local v2    # "cvValues":Landroid/content/ContentValues;
    .end local v4    # "i":I
    .end local v6    # "resultList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_1
    :goto_1
    const-string v8, "EmailPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isAccountAdditionAllowed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return v5

    .line 116
    .restart local v0    # "b":[B
    .restart local v2    # "cvValues":Landroid/content/ContentValues;
    .restart local v4    # "i":I
    .restart local v6    # "resultList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "b":[B
    .end local v2    # "cvValues":Landroid/content/ContentValues;
    .end local v4    # "i":I
    .end local v6    # "resultList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :catch_0
    move-exception v3

    .line 126
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "EmailPolicyService"

    const-string v9, "Exception in isAccountAdditionAllowed"

    invoke-static {v8, v9, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public isEmailNotificationsEnabled(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 348
    const/4 v4, 0x1

    .line 349
    .local v4, "ret":Z
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 350
    .local v1, "containerId":I
    iget-object v6, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {p1, p2, p3, v6, v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .line 351
    .local v0, "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 353
    iget-boolean v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v6, :cond_2

    .line 356
    :try_start_0
    const-string v6, "eas_account_policy"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IExchangeAccountPolicy;

    move-result-object v3

    .line 357
    .local v3, "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    if-eqz v3, :cond_1

    invoke-interface {v3, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->isEmailNotificationsEnabled(Landroid/app/enterprise/ContextInfo;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 369
    .end local v3    # "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    :cond_0
    :goto_0
    const-string v6, "EmailPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isEmailNotificationsEnabled() results = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    return v4

    .line 357
    .restart local v3    # "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 358
    .end local v3    # "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    :catch_0
    move-exception v2

    .line 359
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "EmailPolicyService"

    const-string v7, "Failed talking with exchange account policy"

    invoke-static {v6, v7, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 360
    const/4 v4, 0x1

    .line 361
    goto :goto_0

    .line 365
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 366
    .local v5, "userID":I
    iget-object v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const-string v7, "EmailAllowNotificationChange"

    invoke-direct {p0, v1, v6, v7, v5}, Lcom/android/server/enterprise/email/EmailPolicy;->getPolicyState(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    goto :goto_0
.end method

.method public isEmailSettingsChangeAllowed(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 396
    const/4 v4, 0x1

    .line 397
    .local v4, "ret":Z
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 398
    .local v1, "containerId":I
    iget-object v6, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {p1, p2, p3, v6, v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .line 399
    .local v0, "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 401
    iget-boolean v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v6, :cond_2

    .line 404
    :try_start_0
    const-string v6, "eas_account_policy"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IExchangeAccountPolicy;

    move-result-object v3

    .line 405
    .local v3, "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    if-eqz v3, :cond_1

    invoke-interface {v3, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->isEmailSettingsChangeAllowed(Landroid/app/enterprise/ContextInfo;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 417
    .end local v3    # "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    :cond_0
    :goto_0
    const-string v6, "EmailPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isEmailSettingsChangeAllowed() results = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    return v4

    .line 405
    .restart local v3    # "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 406
    .end local v3    # "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    :catch_0
    move-exception v2

    .line 407
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "EmailPolicyService"

    const-string v7, "Failed talking with exchange account policy"

    invoke-static {v6, v7, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 408
    const/4 v4, 0x1

    .line 409
    goto :goto_0

    .line 413
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 414
    .local v5, "userID":I
    iget-object v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const-string v7, "EmailAllowSettingChange"

    invoke-direct {p0, v1, v6, v7, v5}, Lcom/android/server/enterprise/email/EmailPolicy;->getPolicyState(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    goto :goto_0
.end method

.method public isPopImapEmailAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v5, 0x1

    .line 154
    .local v5, "result":Z
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 155
    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 158
    .local v7, "userID":I
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 159
    .local v2, "cvValues":Landroid/content/ContentValues;
    invoke-static {v1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "#SelectClause#"

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v8, "policyName"

    const-string v9, "allowPopImapEmail"

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v8, "EmailPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isAccountAdditionAllowed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v8, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "ADMIN_REF"

    const-string v10, "accountObject"

    invoke-virtual {v8, v9, v10, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlobList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    .line 165
    .local v6, "resultList":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 166
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_0

    .line 167
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 168
    .local v0, "b":[B
    const/4 v8, 0x0

    aget-byte v8, v0, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v8, :cond_1

    .line 169
    const/4 v5, 0x0

    .line 178
    .end local v0    # "b":[B
    .end local v2    # "cvValues":Landroid/content/ContentValues;
    .end local v4    # "i":I
    .end local v6    # "resultList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_0
    :goto_1
    const-string v8, "EmailPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isPopImapEmailAllowed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return v5

    .line 166
    .restart local v0    # "b":[B
    .restart local v2    # "cvValues":Landroid/content/ContentValues;
    .restart local v4    # "i":I
    .restart local v6    # "resultList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 174
    .end local v0    # "b":[B
    .end local v2    # "cvValues":Landroid/content/ContentValues;
    .end local v4    # "i":I
    .end local v6    # "resultList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :catch_0
    move-exception v3

    .line 175
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "EmailPolicyService"

    const-string v9, "Exception in isPopImapEmailAllowed"

    invoke-static {v8, v9, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 311
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 323
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 317
    return-void
.end method

.method public setAllowEmailForwarding(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "allow"    # Z

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 185
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v5, "EmailAllowForward"

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/EmailPolicy;->putPolicyState(IILjava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAllowHTMLEmail(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "allow"    # Z

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 197
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v5, "EmailAllowHTML"

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/EmailPolicy;->putPolicyState(IILjava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setEmailNotificationsState(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z
    .param p3, "accId"    # J

    .prologue
    const/4 v0, 0x0

    .line 325
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 326
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 327
    .local v2, "containerId":I
    iget-object v3, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v3, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v6

    .line 328
    .local v6, "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 330
    iget-boolean v3, v6, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v3, :cond_1

    .line 333
    :try_start_0
    const-string v3, "eas_account_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IExchangeAccountPolicy;

    move-result-object v8

    .line 334
    .local v8, "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    if-eqz v8, :cond_0

    invoke-interface {v8, p1, p3, p4, p2}, Landroid/app/enterprise/IExchangeAccountPolicy;->setEmailNotificationsState(Landroid/app/enterprise/ContextInfo;JZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 345
    .end local v8    # "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    :cond_0
    :goto_0
    return v0

    .line 335
    :catch_0
    move-exception v7

    .line 336
    .local v7, "e":Landroid/os/RemoteException;
    const-string v3, "EmailPolicyService"

    const-string v4, "Failed talking with exchange account policy"

    invoke-static {v3, v4, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 341
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_1
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 342
    .local v1, "adminUid":I
    iget-object v3, v6, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const-string v5, "EmailAllowNotificationChange"

    move-object v0, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/EmailPolicy;->putPolicyState(IILjava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 305
    return-void
.end method
