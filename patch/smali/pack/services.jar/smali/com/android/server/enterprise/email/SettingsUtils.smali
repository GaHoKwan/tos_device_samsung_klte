.class Lcom/android/server/enterprise/email/SettingsUtils;
.super Ljava/lang/Object;
.source "SettingsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/email/SettingsUtils$PasswordIntentFieldName;
    }
.end annotation


# static fields
.field private static final ACCOUNTCB_CONTENT_URI:Landroid/net/Uri;

.field private static ACCOUNTS_DB:Ljava/lang/String; = null

.field private static final ACCOUNTS_DBNAME:Ljava/lang/String; = "accounts.db"

.field private static final ACCOUNT_CONTENT_URI:Landroid/net/Uri;

.field static final ACTION_EAS_INTENT:Ljava/lang/String; = "com.android.email.EXCHANGE_INTENT"

.field static final ACTION_EMAIL_ACCOUNT_DELETED:Ljava/lang/String; = "com.android.email.ACCOUNT_DELETED"

.field static final ACTION_EMAIL_CREATE_ACCOUNT_FROM_MDM:Ljava/lang/String; = "android.intent.action.sec.CREATE_ACCOUNT_FROM_MDM"

.field static final ACTION_EMAIL_DELETE_ACCOUNT_FROM_MDM:Ljava/lang/String; = "android.intent.action.sec.DELETE_ACCOUNT_FROM_MDM"

.field static final ACTION_EMAIL_DELETE_NOT_VALIDATED_ACCOUNT_FROM_MDM:Ljava/lang/String; = "android.intent.action.sec.DELETE_NOT_VALIDATED_ACCOUNT_FROM_MDM"

.field static final ACTION_EMAIL_DEVICEID_RESULT:Ljava/lang/String; = "android.intent.action.enterprise.GET_DEVICEID"

.field static final ACTION_EMAIL_ENABLE_MSG_COMPOSE:Ljava/lang/String; = "com.android.email.ENABLE_MESSAGECOMPOSE"

.field static final ACTION_EMAIL_GET_ACCOUNT_PASSWORDS_TO_MDM:Ljava/lang/String; = "android.intent.action.sec.GET_ACCOUNT_PASSWORDS_TO_MDM"

.field static final ACTION_EMAIL_GET_DEVICEID:Ljava/lang/String; = "com.android.email.GET_DEVICEID"

.field static final ACTION_EMAIL_INSTALL_CERT:Ljava/lang/String; = "com.android.email.INSTALL_CERTIFICATE"

.field static final ACTION_EMAIL_MDM_ACCOUNT_PASSWORDS_RESULT:Ljava/lang/String; = "android.intent.action.sec.MDM_ACCOUNT_PASSWORDS_RESULT"

.field static final ACTION_EMAIL_RENAME_CERTIFICATE:Ljava/lang/String; = "com.android.email.RENAME_CERTIFICATE"

.field static final ACTION_EMAIL_SIGNATURE_UPDATED:Ljava/lang/String; = "com.android.email.SIGNATURE_UPDATED"

.field static final ACTION_EMAIL_UPDATE_ACCOUNT_FROM_MDM:Ljava/lang/String; = "android.intent.action.sec.UPDATE_ACCOUNT_FROM_MDM"

.field static final ACTION_EMAIL_UPDATE_ACCOUNT_PASSWORDS_FROM_MDM:Ljava/lang/String; = "android.intent.action.sec.UPDATE_ACCOUNT_PASSWORDS_FROM_MDM"

.field private static final DELETE_RESULT:Ljava/lang/String; = "android.intent.action.sec.MDM_ACCOUNT_DELETE_RESULT"

.field public static final EAS_PKG_NAME:Ljava/lang/String; = "com.android.exchange"

.field public static final EMAIL_PKG_NAME:Ljava/lang/String; = "com.android.email"

.field static final EMAIL_PROVIDER_PERMISSION:Ljava/lang/String; = "com.android.email.permission.ACCESS_PROVIDER"

.field private static final HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

.field private static INPUT_MDM_VALUE_TRUNCATIONSIZE:I = 0x0

.field static final MDM_EMAIL_PERMISSION:Ljava/lang/String; = "android.permission.sec.MDM_EMAIL"

.field private static final POLICIES_CONTENT_URI:Landroid/net/Uri;

.field private static final SETUP_RESULT:Ljava/lang/String; = "android.intent.action.sec.MDM_ACCOUNT_SETUP_RESULT"

.field private static final SYSTEM_DIR:Ljava/lang/String; = "/data/system/users/"

.field private static final TAG:Ljava/lang/String; = "SettingsUtils"

.field private static adminPkg:Ljava/lang/String;

.field private static currentUserID:I

.field private static emails:Landroid/content/Context;

.field private static mServerPassword:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static preCallingUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 102
    const-string v0, "content://com.android.email.provider/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    .line 104
    const-string v0, "content://com.android.email.provider/hostauth"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    .line 106
    const-string v0, "content://com.android.email.provider/policies"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->POLICIES_CONTENT_URI:Landroid/net/Uri;

    .line 110
    const-string v0, "content://com.android.email.provider/accountcb"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNTCB_CONTENT_URI:Landroid/net/Uri;

    .line 115
    sput-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNTS_DB:Ljava/lang/String;

    .line 116
    sput-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 117
    sput v2, Lcom/android/server/enterprise/email/SettingsUtils;->currentUserID:I

    .line 118
    sput-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    .line 119
    sput v2, Lcom/android/server/enterprise/email/SettingsUtils;->preCallingUid:I

    .line 120
    const/16 v0, 0x14

    sput v0, Lcom/android/server/enterprise/email/SettingsUtils;->INPUT_MDM_VALUE_TRUNCATIONSIZE:I

    .line 1481
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPassword:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized addorUpdateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)J
    .locals 24
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "accInfo"    # Lcom/android/server/enterprise/email/AccountMetaData;
    .param p2, "isInsertOP"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 278
    const-class v22, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v22

    const-wide/16 v12, -0x1

    .line 279
    .local v12, "accountId":J
    :try_start_0
    const-string v9, "SettingsUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addorUpdateAccount : Processing account "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz p2, :cond_6

    const-string v4, "creation"

    :goto_0
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " request for EmailId: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " (AccountType is : "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v4, :cond_7

    const-string v4, "Eas"

    :goto_1
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " )"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-wide/16 v16, -0x1

    .line 284
    .local v16, "accountsRowId":J
    const-wide/16 v5, -0x1

    .line 285
    .local v5, "inComingRowId":J
    const-wide/16 v7, -0x1

    .line 286
    .local v7, "outGoingRowId":J
    move-object/from16 v0, p0

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v21

    .line 287
    .local v21, "userID":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 288
    .local v3, "containerId":I
    sput v21, Lcom/android/server/enterprise/email/SettingsUtils;->currentUserID:I

    .line 289
    const-string v9, "SettingsUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ">>>>>>>>>>>>>>>>>\t\tupdateAccount for  "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v4, :cond_8

    const-string v4, "Eas"

    :goto_2
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "     : user id : "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    if-eqz v21, :cond_9

    .line 292
    :try_start_1
    move-object/from16 v0, p0

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    new-instance v10, Landroid/os/UserHandle;

    move/from16 v0, v21

    invoke-direct {v10, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v9, v10}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v4

    sput-object v4, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 293
    const-string v4, "SettingsUtils"

    const-string v9, "addorUpdateAccount : USER space"

    invoke-static {v4, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    :goto_3
    :try_start_2
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    invoke-static {v9, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    sget-object v23, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move/from16 v0, p2

    move-object/from16 v1, v23

    invoke-static {v4, v9, v10, v0, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->insertAccountsTableRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v16

    .line 306
    const-wide/16 v9, -0x1

    cmp-long v4, v9, v16

    if-nez v4, :cond_0

    .line 307
    const-string v4, "SettingsUtils"

    const-string v9, "accountsRowId : -1 .. "

    invoke-static {v4, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_0
    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v19

    .line 311
    .local v19, "hostUri":Landroid/net/Uri;
    const-wide/16 v9, -0x1

    cmp-long v4, v9, v16

    if-eqz v4, :cond_2

    .line 313
    const/4 v4, 0x1

    sget-object v9, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2, v4, v9}, Lcom/android/server/enterprise/email/SettingsUtils;->insertHostAuthTableRow(Landroid/net/Uri;Lcom/android/server/enterprise/email/AccountMetaData;ZZLandroid/content/Context;)J

    move-result-wide v5

    .line 315
    const-wide/16 v9, -0x1

    cmp-long v4, v9, v5

    if-eqz v4, :cond_1

    .line 316
    const/4 v4, 0x0

    sget-object v9, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2, v4, v9}, Lcom/android/server/enterprise/email/SettingsUtils;->insertHostAuthTableRow(Landroid/net/Uri;Lcom/android/server/enterprise/email/AccountMetaData;ZZLandroid/content/Context;)J

    move-result-wide v7

    .line 319
    :cond_1
    const-wide/16 v9, -0x1

    cmp-long v4, v9, v5

    if-eqz v4, :cond_2

    const-wide/16 v9, -0x1

    cmp-long v4, v9, v7

    if-eqz v4, :cond_2

    .line 320
    sget-object v10, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object/from16 v4, p1

    move/from16 v9, p2

    invoke-static/range {v3 .. v10}, Lcom/android/server/enterprise/email/SettingsUtils;->insertAccountTableRow(ILcom/android/server/enterprise/email/AccountMetaData;JJZLandroid/content/Context;)J

    move-result-wide v12

    .line 324
    :cond_2
    const-wide/16 v9, -0x1

    cmp-long v4, v9, v12

    if-nez v4, :cond_b

    .line 325
    const-string v9, "SettingsUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addorUpdateAccount : Account "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz p2, :cond_a

    const-string v4, "creation"

    :goto_4
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " was unsuccessful for EmailId: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    if-eqz p2, :cond_5

    .line 331
    const-string v4, "SettingsUtils"

    const-string v9, "addorUpdateAccount : Starting redundant data cleanup... if any...!!!"

    invoke-static {v4, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-wide/16 v9, -0x1

    cmp-long v4, v9, v16

    if-eqz v4, :cond_3

    .line 333
    sget-object v4, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteAccountsTableRow(JLandroid/content/Context;)Z

    .line 336
    :cond_3
    const-wide/16 v9, -0x1

    cmp-long v4, v9, v5

    if-eqz v4, :cond_4

    .line 337
    sget-object v4, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-static {v0, v5, v6, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteHostAuthTableRow(Landroid/net/Uri;JLandroid/content/Context;)Z

    .line 340
    :cond_4
    const-wide/16 v9, -0x1

    cmp-long v4, v9, v7

    if-eqz v4, :cond_5

    .line 341
    sget-object v4, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-static {v0, v7, v8, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteHostAuthTableRow(Landroid/net/Uri;JLandroid/content/Context;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :goto_5
    move-wide v14, v12

    .line 368
    .end local v12    # "accountId":J
    .end local v19    # "hostUri":Landroid/net/Uri;
    .local v14, "accountId":J
    :goto_6
    monitor-exit v22

    return-wide v14

    .line 279
    .end local v3    # "containerId":I
    .end local v5    # "inComingRowId":J
    .end local v7    # "outGoingRowId":J
    .end local v14    # "accountId":J
    .end local v16    # "accountsRowId":J
    .end local v21    # "userID":I
    .restart local v12    # "accountId":J
    :cond_6
    :try_start_3
    const-string/jumbo v4, "updation"

    goto/16 :goto_0

    :cond_7
    const-string v4, "Non-Eas"

    goto/16 :goto_1

    .line 289
    .restart local v3    # "containerId":I
    .restart local v5    # "inComingRowId":J
    .restart local v7    # "outGoingRowId":J
    .restart local v16    # "accountsRowId":J
    .restart local v21    # "userID":I
    :cond_8
    const-string v4, "Non-Eas"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 296
    :cond_9
    :try_start_4
    sput-object p3, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 298
    :catch_0
    move-exception v18

    .line 299
    .local v18, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v14, v12

    .line 300
    .end local v12    # "accountId":J
    .restart local v14    # "accountId":J
    goto :goto_6

    .line 325
    .end local v14    # "accountId":J
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v12    # "accountId":J
    .restart local v19    # "hostUri":Landroid/net/Uri;
    :cond_a
    const-string/jumbo v4, "updation"

    goto :goto_4

    .line 345
    :cond_b
    if-eqz p2, :cond_c

    .line 346
    new-instance v20, Landroid/content/Intent;

    const-string v4, "com.android.email.ENABLE_MESSAGECOMPOSE"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    .local v20, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/os/UserHandle;

    move/from16 v0, v21

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string v9, "android.permission.sec.MDM_EMAIL"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 350
    new-instance v11, Landroid/accounts/Account;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    invoke-static {v9, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v4, v9}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .local v11, "account":Landroid/accounts/Account;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ".provider"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x1

    move/from16 v0, v21

    invoke-static {v11, v4, v9, v0}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 358
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    if-eqz v4, :cond_c

    .line 359
    sget-object v4, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->setAsDefaultAccount(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Z

    .line 362
    .end local v11    # "account":Landroid/accounts/Account;
    .end local v20    # "intent":Landroid/content/Intent;
    :cond_c
    const-string v9, "SettingsUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addorUpdateAccount : Account "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz p2, :cond_d

    const-string v4, "created"

    :goto_7
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " successfully for EmailId: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " ( "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz p2, :cond_e

    const-string v4, "Generated"

    :goto_8
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "  AccountId : "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " )"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    .line 278
    .end local v3    # "containerId":I
    .end local v5    # "inComingRowId":J
    .end local v7    # "outGoingRowId":J
    .end local v16    # "accountsRowId":J
    .end local v19    # "hostUri":Landroid/net/Uri;
    .end local v21    # "userID":I
    :catchall_0
    move-exception v4

    monitor-exit v22

    throw v4

    .line 362
    .restart local v3    # "containerId":I
    .restart local v5    # "inComingRowId":J
    .restart local v7    # "outGoingRowId":J
    .restart local v16    # "accountsRowId":J
    .restart local v19    # "hostUri":Landroid/net/Uri;
    .restart local v21    # "userID":I
    :cond_d
    :try_start_6
    const-string/jumbo v4, "updated"

    goto :goto_7

    :cond_e
    const-string v4, "Updated"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_8
.end method

.method public static createIDforAccount()J
    .locals 6

    .prologue
    .line 1511
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1512
    .local v0, "accId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x1

    sub-long v4, v0, v4

    mul-long v0, v2, v4

    .line 1513
    :cond_0
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>  createIDforAccount   <<<<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    return-wide v0
.end method

.method static declared-synchronized deleteAccount(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Z
    .locals 20
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 750
    const-class v19, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v19

    const/16 v17, 0x0

    .line 751
    .local v17, "rowCount":I
    const-wide/16 v4, 0x1

    cmp-long v4, v4, p1

    if-lez v4, :cond_0

    .line 752
    :try_start_0
    const-string v4, "SettingsUtils"

    const-string v5, "deleteAccount : accountId is invalid"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    const/4 v4, 0x0

    .line 820
    :goto_0
    monitor-exit v19

    return v4

    .line 755
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    .line 756
    .local v18, "userID":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 757
    .local v14, "containerId":I
    sput v18, Lcom/android/server/enterprise/email/SettingsUtils;->currentUserID:I

    .line 758
    const/4 v13, 0x0

    .line 759
    .local v13, "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    const/16 v16, 0x0

    .line 760
    .local v16, "found":Z
    invoke-static {v14}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 761
    .local v1, "hostUri":Landroid/net/Uri;
    invoke-static {v14}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 762
    .local v2, "acctUri":Landroid/net/Uri;
    invoke-static {v14}, Lcom/android/server/enterprise/email/SettingsUtils;->getPoliciesContentUri(I)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 764
    .local v3, "policiesUri":Landroid/net/Uri;
    if-eqz v18, :cond_3

    .line 765
    :try_start_2
    move-object/from16 v0, p0

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Landroid/os/UserHandle;

    move/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v4

    sput-object v4, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 766
    const-string v4, "SettingsUtils"

    const-string v5, "deleteAccount : USER space"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 776
    :goto_1
    :try_start_3
    sget-object v6, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    const/4 v7, 0x0

    move-wide/from16 v4, p1

    move-object/from16 v8, p0

    invoke-static/range {v1 .. v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZLandroid/app/enterprise/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v13

    .line 777
    if-eqz v13, :cond_2

    .line 782
    :cond_1
    :try_start_4
    iget-object v4, v13, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    iget-boolean v5, v13, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    invoke-static {v5, v14}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-static {v4, v5, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountsDBRowId(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v4

    sget-object v6, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-static {v4, v5, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteAccountsTableRow(JLandroid/content/Context;)Z

    .line 786
    iget-wide v4, v13, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    sget-object v6, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-static {v1, v4, v5, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteHostAuthTableRow(Landroid/net/Uri;JLandroid/content/Context;)Z

    .line 788
    iget-wide v4, v13, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    sget-object v6, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-static {v1, v4, v5, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteHostAuthTableRow(Landroid/net/Uri;JLandroid/content/Context;)Z

    .line 791
    iget v4, v13, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    int-to-long v4, v4

    sget-object v6, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-static {v14, v4, v5, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteAccountTableRow(IJLandroid/content/Context;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v16

    .line 796
    :goto_2
    add-int/lit8 v17, v17, 0x1

    .line 798
    if-eqz v16, :cond_6

    .line 799
    :try_start_5
    iget-boolean v4, v13, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v4, :cond_4

    .line 800
    iget-object v6, v13, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    iget-object v7, v13, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    iget-object v8, v13, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iget-object v9, v13, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    const/4 v10, 0x1

    sget-object v11, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object v4, v1

    move-object v5, v2

    move-object/from16 v12, p0

    invoke-static/range {v4 .. v12}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Landroid/app/enterprise/ContextInfo;)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide p1

    .line 808
    :goto_3
    const-wide/16 v4, -0x1

    cmp-long v4, v4, p1

    if-nez v4, :cond_5

    .line 820
    :cond_2
    :goto_4
    if-lez v17, :cond_7

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 769
    :cond_3
    :try_start_6
    sput-object p3, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 771
    :catch_0
    move-exception v15

    .line 772
    .local v15, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 773
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 793
    .end local v15    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v15

    .line 794
    .restart local v15    # "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 817
    .end local v15    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v15

    .line 818
    .restart local v15    # "e":Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    .line 750
    .end local v1    # "hostUri":Landroid/net/Uri;
    .end local v2    # "acctUri":Landroid/net/Uri;
    .end local v3    # "policiesUri":Landroid/net/Uri;
    .end local v13    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .end local v14    # "containerId":I
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v16    # "found":Z
    .end local v18    # "userID":I
    :catchall_0
    move-exception v4

    monitor-exit v19

    throw v4

    .line 804
    .restart local v1    # "hostUri":Landroid/net/Uri;
    .restart local v2    # "acctUri":Landroid/net/Uri;
    .restart local v3    # "policiesUri":Landroid/net/Uri;
    .restart local v13    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v14    # "containerId":I
    .restart local v16    # "found":Z
    .restart local v18    # "userID":I
    :cond_4
    const/4 v6, 0x0

    :try_start_a
    iget-object v7, v13, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    iget-object v8, v13, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iget-object v9, v13, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    const/4 v10, 0x0

    sget-object v11, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object v4, v1

    move-object v5, v2

    move-object/from16 v12, p0

    invoke-static/range {v4 .. v12}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Landroid/app/enterprise/ContextInfo;)J

    move-result-wide p1

    goto :goto_3

    .line 810
    :cond_5
    sget-object v6, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    const/4 v7, 0x0

    move-wide/from16 v4, p1

    move-object/from16 v8, p0

    invoke-static/range {v1 .. v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZLandroid/app/enterprise/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v13

    .line 811
    if-eqz v13, :cond_2

    .line 815
    :cond_6
    if-nez v16, :cond_1

    goto :goto_4

    .line 820
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method static deleteAccountTableRow(IJLandroid/content/Context;)Z
    .locals 7
    .param p0, "containerId"    # I
    .param p1, "rowId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 852
    const/4 v1, -0x1

    .line 853
    .local v1, "rowCount":I
    const-wide/16 v4, 0x1

    cmp-long v4, v4, p1

    if-lez v4, :cond_1

    .line 854
    const-string v4, "SettingsUtils"

    const-string v5, "deleteAccountTableRow : rowId is invalid"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    :cond_0
    :goto_0
    return v3

    .line 858
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 859
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 860
    const-string v4, "SettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteAccountTableRow : deleted rowCount from Account : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_1
    if-lez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 861
    :catch_0
    move-exception v0

    .line 862
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static deleteAccountsTableRow(JLandroid/content/Context;)Z
    .locals 9
    .param p0, "rowId"    # J
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    .line 468
    const/4 v0, 0x0

    .line 469
    .local v0, "accountsDB":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v6, 0x1

    cmp-long v6, v6, p0

    if-lez v6, :cond_1

    .line 470
    const-string v4, "SettingsUtils"

    const-string v5, "deleteAccountsTableRow : rowId is invalid"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :cond_0
    :goto_0
    return v3

    .line 475
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->makeDBpath()V

    .line 476
    sget-object v6, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNTS_DB:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 479
    const-string v6, "accounts"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 480
    .local v2, "rowCount":I
    if-lez v2, :cond_4

    .line 481
    :goto_1
    const-string v6, "SettingsUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteAccountsTableRow - deleted row Id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    if-eqz v0, :cond_2

    .line 488
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 490
    :cond_2
    cmp-long v6, p0, v4

    if-eqz v6, :cond_3

    .line 492
    sget v6, Lcom/android/server/enterprise/email/SettingsUtils;->currentUserID:I

    .end local v2    # "rowCount":I
    :goto_2
    invoke-static {v6}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->updateAccountManagerCache(I)V

    .line 495
    :cond_3
    cmp-long v4, v4, p0

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .restart local v2    # "rowCount":I
    :cond_4
    move-wide p0, v4

    .line 480
    goto :goto_1

    .line 483
    .end local v2    # "rowCount":I
    :catch_0
    move-exception v1

    .line 484
    .local v1, "e":Ljava/lang/Exception;
    const-wide/16 p0, -0x1

    .line 485
    :try_start_1
    const-string v6, "SettingsUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 487
    if-eqz v0, :cond_5

    .line 488
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 490
    :cond_5
    cmp-long v6, p0, v4

    if-eqz v6, :cond_3

    .line 492
    sget v6, Lcom/android/server/enterprise/email/SettingsUtils;->currentUserID:I

    goto :goto_2

    .line 487
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_6

    .line 488
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 490
    :cond_6
    cmp-long v4, p0, v4

    if-eqz v4, :cond_7

    .line 492
    sget v4, Lcom/android/server/enterprise/email/SettingsUtils;->currentUserID:I

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->updateAccountManagerCache(I)V

    .line 487
    :cond_7
    throw v3
.end method

.method private static deleteHostAuthTableRow(Landroid/net/Uri;JLandroid/content/Context;)Z
    .locals 7
    .param p0, "hostUri"    # Landroid/net/Uri;
    .param p1, "rowId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 830
    const/4 v1, -0x1

    .line 831
    .local v1, "rowCount":I
    const-wide/16 v4, 0x1

    cmp-long v4, v4, p1

    if-lez v4, :cond_1

    .line 832
    const-string v4, "SettingsUtils"

    const-string v5, "deleteHostAuthTableRow : rowId is invalid"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    :cond_0
    :goto_0
    return v3

    .line 836
    :cond_1
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 837
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 838
    const-string v4, "SettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteHostAuthTableRow : deleted rowCount from HostAuth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_1
    if-lez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 839
    :catch_0
    move-exception v0

    .line 840
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZLandroid/app/enterprise/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;
    .locals 32
    .param p0, "hostUri"    # Landroid/net/Uri;
    .param p1, "acctUri"    # Landroid/net/Uri;
    .param p2, "policiesUri"    # Landroid/net/Uri;
    .param p3, "accountId"    # J
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "passwordRequired"    # Z
    .param p7, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1003
    const/16 v18, 0x0

    .line 1004
    .local v18, "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    const/16 v19, 0x0

    .line 1005
    .local v19, "c":Landroid/database/Cursor;
    const/16 v20, 0x0

    .line 1007
    .local v20, "c2":Landroid/database/Cursor;
    const-wide/16 v5, 0x0

    cmp-long v5, p3, v5

    if-gtz v5, :cond_0

    .line 1008
    const-string v5, "SettingsUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getEASAccounts fail : invalid account Id"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v11, v18

    .line 1137
    .end local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :goto_0
    return-object v18

    .line 1012
    .restart local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :cond_0
    invoke-static/range {p7 .. p7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v31

    .line 1013
    .local v31, "userID":I
    move-object/from16 v0, p7

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v21, v0

    .line 1014
    .local v21, "containerId":I
    const-string v5, "SettingsUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getEASAccounts() :    "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    const/16 v5, 0x17

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v7, v5

    const/4 v5, 0x1

    const-string v6, "displayName"

    aput-object v6, v7, v5

    const/4 v5, 0x2

    const-string v6, "emailAddress"

    aput-object v6, v7, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "syncLookback"

    aput-object v6, v7, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "syncInterval"

    aput-object v6, v7, v5

    const/4 v5, 0x5

    const-string v6, "peakDays"

    aput-object v6, v7, v5

    const/4 v5, 0x6

    const-string v6, "peakStartMinute"

    aput-object v6, v7, v5

    const/4 v5, 0x7

    const-string v6, "peakEndMinute"

    aput-object v6, v7, v5

    const/16 v5, 0x8

    const-string v6, "peakSchedule"

    aput-object v6, v7, v5

    const/16 v5, 0x9

    const-string v6, "offPeakSchedule"

    aput-object v6, v7, v5

    const/16 v5, 0xa

    const-string v6, "roamingSchedule"

    aput-object v6, v7, v5

    const/16 v5, 0xb

    const-string v6, "hostAuthKeyRecv"

    aput-object v6, v7, v5

    const/16 v5, 0xc

    const-string v6, "hostAuthKeySend"

    aput-object v6, v7, v5

    const/16 v5, 0xd

    const-string v6, "flags"

    aput-object v6, v7, v5

    const/16 v5, 0xe

    const-string v6, "isDefault"

    aput-object v6, v7, v5

    const/16 v5, 0xf

    const-string v6, "compatibilityUuid"

    aput-object v6, v7, v5

    const/16 v5, 0x10

    const-string v6, "senderName"

    aput-object v6, v7, v5

    const/16 v5, 0x11

    const-string v6, "ringtoneUri"

    aput-object v6, v7, v5

    const/16 v5, 0x12

    const-string v6, "protocolVersion"

    aput-object v6, v7, v5

    const/16 v5, 0x13

    const-string/jumbo v6, "signature"

    aput-object v6, v7, v5

    const/16 v5, 0x14

    const-string v6, "calendarSyncLookback"

    aput-object v6, v7, v5

    const/16 v5, 0x15

    const-string v6, "emailsize"

    aput-object v6, v7, v5

    const/16 v5, 0x16

    const-string v6, "roamingemailsize"

    aput-object v6, v7, v5

    .line 1028
    .local v7, "ID_PROJECTION":[Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v29

    .line 1030
    .local v29, "token":J
    if-eqz v31, :cond_4

    .line 1031
    :try_start_0
    move-object/from16 v0, p7

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v8, Landroid/os/UserHandle;

    move/from16 v0, v31

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v6, v8}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5

    sput-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 1032
    const-string v5, "SettingsUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAccountDetails : USER space   "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p7

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    :goto_1
    :try_start_1
    sget-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 1046
    const-string v5, "SettingsUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAccount row count : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_13

    .line 1048
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1049
    new-instance v11, Lcom/android/server/enterprise/email/AccountMetaData;

    invoke-direct {v11}, Lcom/android/server/enterprise/email/AccountMetaData;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1050
    .end local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .local v11, "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :try_start_2
    const-string v5, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    .line 1051
    const-string v5, "displayName"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    .line 1052
    const-string v5, "emailAddress"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 1053
    const-string/jumbo v5, "syncLookback"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    .line 1054
    const-string/jumbo v5, "syncInterval"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    .line 1055
    const-string v5, "peakDays"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    .line 1056
    const-string v5, "peakStartMinute"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    .line 1057
    const-string v5, "peakEndMinute"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    .line 1058
    const-string v5, "peakSchedule"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    .line 1059
    const-string v5, "offPeakSchedule"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    .line 1061
    const-string v5, "roamingSchedule"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    .line 1063
    const-string v5, "hostAuthKeyRecv"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    .line 1065
    const-string v5, "hostAuthKeySend"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    .line 1067
    const-string v5, "flags"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    .line 1068
    const/4 v5, 0x2

    iget v6, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    and-int/lit8 v6, v6, 0x2

    if-ne v5, v6, :cond_5

    const/4 v5, 0x1

    :goto_2
    iput-boolean v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    .line 1069
    const/16 v5, 0x40

    iget v6, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    and-int/lit8 v6, v6, 0x40

    if-ne v5, v6, :cond_6

    const/4 v5, 0x1

    :goto_3
    iput-boolean v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    .line 1070
    const-string v5, "isDefault"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    const/4 v5, 0x1

    :goto_4
    iput-boolean v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    .line 1071
    const-string v5, "compatibilityUuid"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    .line 1073
    const-string v5, "senderName"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    .line 1074
    const-string v5, "ringtoneUri"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    .line 1075
    const-string v5, "protocolVersion"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    .line 1077
    const-string/jumbo v5, "signature"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    .line 1078
    const-string v5, "calendarSyncLookback"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncCalendarAge:I

    .line 1079
    const-string v5, "emailsize"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    .line 1080
    const-string v5, "roamingemailsize"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    .line 1083
    iget-wide v9, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    const/4 v12, 0x1

    sget-object v13, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object/from16 v8, p0

    invoke-static/range {v8 .. v13}, Lcom/android/server/enterprise/email/SettingsUtils;->loadHostAuth(Landroid/net/Uri;JLcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)Z

    move-result v27

    .line 1084
    .local v27, "ret1":Z
    iget-wide v9, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    const/4 v12, 0x0

    sget-object v13, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object/from16 v8, p0

    invoke-static/range {v8 .. v13}, Lcom/android/server/enterprise/email/SettingsUtils;->loadHostAuth(Landroid/net/Uri;JLcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)Z

    move-result v28

    .line 1086
    .local v28, "ret2":Z
    if-eqz v27, :cond_1

    if-nez v28, :cond_8

    .line 1087
    :cond_1
    const/4 v11, 0x0

    .line 1088
    const-string v5, "SettingsUtils"

    const-string v6, "getAccountIds : null "

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1130
    if-eqz v19, :cond_2

    .line 1131
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1132
    :cond_2
    if-eqz v20, :cond_3

    .line 1133
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object/from16 v18, v11

    .line 1089
    .end local v11    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    goto/16 :goto_0

    .line 1035
    .end local v27    # "ret1":Z
    .end local v28    # "ret2":Z
    :cond_4
    :try_start_3
    sput-object p5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 1038
    :catch_0
    move-exception v22

    .line 1039
    .local v22, "e":Ljava/lang/Exception;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v11, v18

    .line 1040
    .end local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v11    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    goto/16 :goto_0

    .line 1068
    .end local v22    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 1069
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 1070
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 1092
    .restart local v27    # "ret1":Z
    .restart local v28    # "ret2":Z
    :cond_8
    if-eqz p6, :cond_9

    .line 1093
    :try_start_4
    move/from16 v0, v21

    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    move/from16 v4, v31

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getPassword(IJLandroid/content/Context;I)[Ljava/lang/String;

    move-result-object v25

    .line 1094
    .local v25, "pwds":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v25, v5

    iput-object v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 1095
    const/4 v5, 0x1

    aget-object v5, v25, v5

    iput-object v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 1098
    .end local v25    # "pwds":[Ljava/lang/String;
    :cond_9
    const/4 v5, 0x0

    iput-boolean v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    .line 1099
    iget-object v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    const-string v6, "eas"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1100
    iget-object v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasDomainAndUserFromLogin(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 1101
    .local v26, "ret":[Ljava/lang/String;
    const/4 v5, 0x1

    iput-boolean v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    .line 1102
    const/4 v5, 0x0

    aget-object v5, v26, v5

    iput-object v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    .line 1103
    const/4 v5, 0x1

    aget-object v5, v26, v5

    iput-object v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 1104
    const/4 v5, 0x1

    aget-object v5, v26, v5

    iput-object v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 1105
    iget v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    iput v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    .line 1109
    .end local v26    # "ret":[Ljava/lang/String;
    :cond_a
    const/4 v5, 0x1

    iput-boolean v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mAllowHTMLEmail:Z

    .line 1110
    const/4 v5, 0x5

    new-array v14, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v14, v5

    const/4 v5, 0x1

    const-string v6, "name"

    aput-object v6, v14, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "type"

    aput-object v6, v14, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "value"

    aput-object v6, v14, v5

    const/4 v5, 0x4

    const-string v6, "account_id"

    aput-object v6, v14, v5

    .line 1112
    .local v14, "POLICIES_PROJECTION":[Ljava/lang/String;
    sget-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "account_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v13, p2

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1113
    if-eqz v20, :cond_d

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_d

    .line 1114
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1116
    :cond_b
    const-string/jumbo v5, "value"

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1117
    .local v24, "policyvalue":Ljava/lang/String;
    const-string v5, "name"

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1118
    .local v23, "policyname":Ljava/lang/String;
    if-eqz v23, :cond_c

    if-eqz v24, :cond_c

    .line 1119
    const-string v5, "AllowHTMLEmail"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1120
    const-string/jumbo v5, "true"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mAllowHTMLEmail:Z

    .line 1123
    :cond_c
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v5

    if-nez v5, :cond_b

    .line 1130
    .end local v14    # "POLICIES_PROJECTION":[Ljava/lang/String;
    .end local v23    # "policyname":Ljava/lang/String;
    .end local v24    # "policyvalue":Ljava/lang/String;
    .end local v27    # "ret1":Z
    .end local v28    # "ret2":Z
    :cond_d
    :goto_5
    if-eqz v19, :cond_e

    .line 1131
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1132
    :cond_e
    if-eqz v20, :cond_f

    .line 1133
    :goto_6
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1136
    :cond_f
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v18, v11

    .line 1137
    .end local v11    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    goto/16 :goto_0

    .line 1127
    :catch_1
    move-exception v22

    move-object/from16 v11, v18

    .line 1128
    .end local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v11    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v22    # "e":Ljava/lang/Exception;
    :goto_7
    :try_start_5
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1130
    if-eqz v19, :cond_10

    .line 1131
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1132
    :cond_10
    if-eqz v20, :cond_f

    goto :goto_6

    .line 1130
    .end local v11    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .end local v22    # "e":Ljava/lang/Exception;
    .restart local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :catchall_0
    move-exception v5

    move-object/from16 v11, v18

    .end local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v11    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :goto_8
    if-eqz v19, :cond_11

    .line 1131
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1132
    :cond_11
    if-eqz v20, :cond_12

    .line 1133
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1130
    :cond_12
    throw v5

    :catchall_1
    move-exception v5

    goto :goto_8

    .line 1127
    :catch_2
    move-exception v22

    goto :goto_7

    .end local v11    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :cond_13
    move-object/from16 v11, v18

    .end local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v11    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    goto :goto_5
.end method

.method private static getAccountCBContentUri(I)Landroid/net/Uri;
    .locals 2
    .param p0, "containerId"    # I

    .prologue
    .line 1385
    if-nez p0, :cond_0

    .line 1386
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNTCB_CONTENT_URI:Landroid/net/Uri;

    .line 1389
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".provider/accountcb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private static getAccountContentUri(I)Landroid/net/Uri;
    .locals 2
    .param p0, "containerId"    # I

    .prologue
    .line 1359
    if-gtz p0, :cond_0

    .line 1360
    const-string v0, "SettingsUtils"

    const-string v1, "getAccountContentUri"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    .line 1364
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".provider/account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method static declared-synchronized getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;
    .locals 10
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 984
    const-class v9, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v9

    :try_start_0
    iget v8, p0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 985
    .local v8, "containerId":I
    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 986
    .local v0, "hostUri":Landroid/net/Uri;
    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 987
    .local v1, "acctUri":Landroid/net/Uri;
    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getPoliciesContentUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 988
    .local v2, "policiesUri":Landroid/net/Uri;
    const/4 v6, 0x0

    move-wide v3, p1

    move-object v5, p3

    move-object v7, p0

    invoke-static/range {v0 .. v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZLandroid/app/enterprise/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    monitor-exit v9

    return-object v3

    .line 984
    .end local v0    # "hostUri":Landroid/net/Uri;
    .end local v1    # "acctUri":Landroid/net/Uri;
    .end local v2    # "policiesUri":Landroid/net/Uri;
    .end local v8    # "containerId":I
    :catchall_0
    move-exception v3

    monitor-exit v9

    throw v3
.end method

.method static declared-synchronized getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;
    .locals 10
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "passwordRequired"    # Z

    .prologue
    .line 993
    const-class v9, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v9

    :try_start_0
    iget v8, p0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 994
    .local v8, "containerId":I
    const-string v3, "SettingsUtils"

    const-string v4, "getAccountDetails() :  with P"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 996
    .local v0, "hostUri":Landroid/net/Uri;
    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 997
    .local v1, "acctUri":Landroid/net/Uri;
    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getPoliciesContentUri(I)Landroid/net/Uri;

    move-result-object v2

    .local v2, "policiesUri":Landroid/net/Uri;
    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move-object v7, p0

    .line 998
    invoke-static/range {v0 .. v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZLandroid/app/enterprise/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    monitor-exit v9

    return-object v3

    .line 993
    .end local v0    # "hostUri":Landroid/net/Uri;
    .end local v1    # "acctUri":Landroid/net/Uri;
    .end local v2    # "policiesUri":Landroid/net/Uri;
    .end local v8    # "containerId":I
    :catchall_0
    move-exception v3

    monitor-exit v9

    throw v3
.end method

.method static declared-synchronized getAccountId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J
    .locals 11
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "easDomain"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "serverAddress"    # Ljava/lang/String;
    .param p4, "protocol"    # Ljava/lang/String;
    .param p5, "isEas"    # Z
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 877
    const-class v10, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v10

    :try_start_0
    iget v9, p0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 878
    .local v9, "containerId":I
    invoke-static {v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 879
    .local v0, "hostUri":Landroid/net/Uri;
    invoke-static {v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 881
    .local v1, "acctUri":Landroid/net/Uri;
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccountId : USER space    UserHandle.myUserId() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, p0

    .line 882
    invoke-static/range {v0 .. v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Landroid/app/enterprise/ContextInfo;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v10

    return-wide v2

    .line 877
    .end local v0    # "hostUri":Landroid/net/Uri;
    .end local v1    # "acctUri":Landroid/net/Uri;
    .end local v9    # "containerId":I
    :catchall_0
    move-exception v2

    monitor-exit v10

    throw v2
.end method

.method private static getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Landroid/app/enterprise/ContextInfo;)J
    .locals 19
    .param p0, "hostUri"    # Landroid/net/Uri;
    .param p1, "acctUri"    # Landroid/net/Uri;
    .param p2, "easDomain"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "serverAddress"    # Ljava/lang/String;
    .param p5, "protocol"    # Ljava/lang/String;
    .param p6, "isEas"    # Z
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 888
    const-wide/16 v7, -0x1

    .line 889
    .local v7, "accountId":J
    const/4 v11, 0x0

    .line 891
    .local v11, "c":Landroid/database/Cursor;
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 892
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 893
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 894
    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 896
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 897
    :cond_0
    const-string v1, "SettingsUtils"

    const-string v2, "getAccountId : Error :: Invalid input parameters."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v9, v7

    .line 973
    .end local v7    # "accountId":J
    .local v9, "accountId":J
    :goto_0
    return-wide v9

    .line 900
    .end local v9    # "accountId":J
    .restart local v7    # "accountId":J
    :cond_1
    if-eqz p6, :cond_2

    if-eqz p2, :cond_2

    .line 901
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 903
    :cond_2
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    .line 907
    .local v3, "ID_PROJECTION":[Ljava/lang/String;
    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p5, v5, v1

    const/4 v1, 0x1

    aput-object p4, v5, v1

    const/4 v1, 0x2

    aput-object p3, v5, v1

    .line 911
    .local v5, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p8

    iget v12, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 912
    .local v12, "callingUID":I
    invoke-static/range {p8 .. p8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v18

    .line 913
    .local v18, "userID":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 914
    .local v16, "token":J
    const-wide/16 v14, -0x1

    .line 916
    .local v14, "hostAuthId":J
    if-eqz v18, :cond_7

    .line 917
    :try_start_0
    invoke-static {v12}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v4, Landroid/os/UserHandle;

    move/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p7

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 918
    const-string v1, "SettingsUtils"

    const-string v2, "getAccountIdInternal : USER space"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 929
    :goto_1
    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "protocol=? AND address=? AND login=? "

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 934
    const-string v1, "SettingsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccountId for HOST_AUTH row count : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 936
    const-string v1, "_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v14, v1

    .line 937
    const-string v1, "SettingsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getAccountIdInternal : hostAuthId "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 942
    :cond_3
    if-eqz v11, :cond_4

    .line 943
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 945
    :cond_4
    const/4 v11, 0x0

    .line 947
    const-wide/16 v1, -0x1

    cmp-long v1, v1, v14

    if-eqz v1, :cond_6

    .line 948
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    .end local v3    # "ID_PROJECTION":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    .line 951
    .restart local v3    # "ID_PROJECTION":[Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    .end local v5    # "selectionArgs":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 955
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    :try_start_2
    sget-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "hostAuthKeyRecv=? OR hostAuthKeySend=? "

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 960
    const-string v1, "SettingsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccountId for ACCOUNT row count : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 962
    const-string v1, "_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v7, v1

    .line 963
    const-string v1, "SettingsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getAccountIdInternal : ACCOUNT "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 968
    :cond_5
    if-eqz v11, :cond_6

    .line 969
    :goto_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 972
    :cond_6
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-wide v9, v7

    .line 973
    .end local v7    # "accountId":J
    .restart local v9    # "accountId":J
    goto/16 :goto_0

    .line 922
    .end local v9    # "accountId":J
    .restart local v7    # "accountId":J
    :cond_7
    :try_start_3
    sput-object p7, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 924
    :catch_0
    move-exception v13

    .line 925
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v9, v7

    .line 926
    .end local v7    # "accountId":J
    .restart local v9    # "accountId":J
    goto/16 :goto_0

    .line 939
    .end local v9    # "accountId":J
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v7    # "accountId":J
    :catch_1
    move-exception v13

    .line 940
    .restart local v13    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 942
    if-eqz v11, :cond_4

    goto/16 :goto_2

    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_8

    .line 943
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 942
    :cond_8
    throw v1

    .line 965
    :catch_2
    move-exception v13

    .line 966
    .restart local v13    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 968
    if-eqz v11, :cond_6

    goto :goto_3

    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    if-eqz v11, :cond_9

    .line 969
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 968
    :cond_9
    throw v1
.end method

.method static declared-synchronized getAccountIds(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)[J
    .locals 19
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1141
    const-class v18, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v18

    const/4 v13, 0x0

    .line 1142
    .local v13, "ret":[J
    const/4 v7, 0x0

    .line 1143
    .local v7, "c":Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_0
    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    .line 1147
    .local v3, "ID_PROJECTION":[Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v17

    .line 1148
    .local v17, "userID":I
    move-object/from16 v0, p0

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1149
    .local v8, "containerId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v15

    .line 1152
    .local v15, "token":J
    if-eqz v17, :cond_0

    .line 1153
    :try_start_1
    move-object/from16 v0, p0

    iget v1, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v4, Landroid/os/UserHandle;

    move/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 1154
    const-string v1, "SettingsUtils"

    const-string v2, "getAccountIds : USER space"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1165
    :goto_0
    :try_start_2
    sget-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1167
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1168
    .local v9, "count":I
    const-string v1, "SettingsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Accounts row count : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    if-lez v9, :cond_3

    .line 1170
    const/4 v11, 0x0

    .line 1171
    .local v11, "i":I
    new-array v13, v9, [J

    move v12, v11

    .line 1172
    .end local v11    # "i":I
    .local v12, "i":I
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1173
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "i":I
    .restart local v11    # "i":I
    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    aput-wide v1, v13, v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v12, v11

    .end local v11    # "i":I
    .restart local v12    # "i":I
    goto :goto_1

    .line 1157
    .end local v9    # "count":I
    .end local v12    # "i":I
    :cond_0
    :try_start_3
    sput-object p1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 1160
    :catch_0
    move-exception v10

    .line 1161
    .local v10, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v14, v13

    .line 1184
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v13    # "ret":[J
    .local v14, "ret":[J
    :goto_2
    monitor-exit v18

    return-object v14

    .line 1176
    .end local v14    # "ret":[J
    .restart local v13    # "ret":[J
    :catch_1
    move-exception v10

    .line 1177
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1179
    if-eqz v7, :cond_1

    .line 1180
    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1183
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v14, v13

    .line 1184
    .end local v13    # "ret":[J
    .restart local v14    # "ret":[J
    goto :goto_2

    .line 1179
    .end local v14    # "ret":[J
    .restart local v13    # "ret":[J
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_2

    .line 1180
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1179
    :cond_2
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1141
    .end local v3    # "ID_PROJECTION":[Ljava/lang/String;
    .end local v8    # "containerId":I
    .end local v15    # "token":J
    .end local v17    # "userID":I
    :catchall_1
    move-exception v1

    monitor-exit v18

    throw v1

    .line 1179
    .restart local v3    # "ID_PROJECTION":[Ljava/lang/String;
    .restart local v8    # "containerId":I
    .restart local v9    # "count":I
    .restart local v15    # "token":J
    .restart local v17    # "userID":I
    :cond_3
    if-eqz v7, :cond_1

    .line 1180
    :try_start_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3
.end method

.method private static getAccountType(ZI)Ljava/lang/String;
    .locals 1
    .param p0, "isEAS"    # Z
    .param p1, "containerId"    # I

    .prologue
    .line 1355
    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getAccountsDBRowId(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J
    .locals 11
    .param p0, "emailId"    # Ljava/lang/String;
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 499
    const/4 v0, 0x0

    .line 500
    .local v0, "accountsDB":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    .line 501
    .local v3, "cr":Landroid/database/Cursor;
    const-wide/16 v5, -0x1

    .line 502
    .local v5, "rowId":J
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 503
    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 505
    if-eqz p0, :cond_b

    .line 508
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->makeDBpath()V

    .line 509
    sget-object v7, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNTS_DB:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 511
    const-wide/16 v1, -0x1

    .line 513
    .local v1, "accountsDBRowId":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT rowid FROM accounts WHERE name = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p1, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\' AND type = \'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 517
    const-string v8, "SettingsUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAccountsDBRowId - got row count : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " for emailAddress : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p1, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " AND account type : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_1

    .line 521
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 522
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 523
    if-eqz v3, :cond_0

    .line 524
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 525
    :cond_0
    const/4 v3, 0x0

    .line 527
    :cond_1
    const-wide/16 v7, -0x1

    cmp-long v7, v7, v1

    if-eqz v7, :cond_6

    .line 528
    move-wide v5, v1

    .line 529
    const-string v7, "SettingsUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAccountsDBRowId - Found row Id : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    :goto_2
    if-eqz v3, :cond_2

    .line 541
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 542
    :cond_2
    if-eqz v0, :cond_3

    .line 543
    .end local v1    # "accountsDBRowId":J
    :goto_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 549
    :cond_3
    :goto_4
    return-wide v5

    .line 513
    .restart local v1    # "accountsDBRowId":J
    :cond_4
    :try_start_1
    const-string v7, ""

    goto/16 :goto_0

    .line 517
    :cond_5
    const-string v7, ""

    goto :goto_1

    .line 531
    :cond_6
    const-string v8, "SettingsUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAccountsDBRowId - entry doesn\'t exist for name: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p1, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " AND account type : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_5
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 536
    .end local v1    # "accountsDBRowId":J
    :catch_0
    move-exception v4

    .line 537
    .local v4, "e":Ljava/lang/Exception;
    const-wide/16 v5, -0x1

    .line 538
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 540
    if-eqz v3, :cond_7

    .line 541
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 542
    :cond_7
    if-eqz v0, :cond_3

    goto :goto_3

    .line 531
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "accountsDBRowId":J
    :cond_8
    :try_start_3
    const-string v7, ""
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 540
    .end local v1    # "accountsDBRowId":J
    :catchall_0
    move-exception v7

    if-eqz v3, :cond_9

    .line 541
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 542
    :cond_9
    if-eqz v0, :cond_a

    .line 543
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 540
    :cond_a
    throw v7

    .line 547
    :cond_b
    const-string v7, "SettingsUtils"

    const-string v8, "getAccountsDBRowId : Error :: Invalid input parameters."

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method static declared-synchronized getCBAAlias(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Ljava/lang/String;
    .locals 15
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 1272
    const-class v14, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v14

    const/4 v8, 0x0

    .line 1273
    .local v8, "alias":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1275
    .local v10, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v13

    .line 1276
    .local v13, "userID":I
    iget v11, p0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1277
    .local v11, "containerId":I
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "cbaCertificateAlias"

    aput-object v3, v4, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1282
    .local v4, "ID_PROJECTION":[Ljava/lang/String;
    if-eqz v13, :cond_2

    .line 1283
    :try_start_1
    iget v2, p0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v13}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 1284
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCBAAlias : USER space"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1295
    :goto_0
    :try_start_2
    sget-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1297
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAccount row count : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1299
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1300
    const-string v2, "cbaCertificateAlias"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v8

    .line 1305
    :cond_0
    if-eqz v10, :cond_1

    .line 1306
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :goto_1
    move-object v9, v8

    .line 1308
    .end local v8    # "alias":Ljava/lang/String;
    .local v9, "alias":Ljava/lang/String;
    :goto_2
    monitor-exit v14

    return-object v9

    .line 1287
    .end local v9    # "alias":Ljava/lang/String;
    .restart local v8    # "alias":Ljava/lang/String;
    :cond_2
    :try_start_4
    sput-object p3, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1290
    :catch_0
    move-exception v12

    .line 1291
    .local v12, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v9, v8

    .line 1292
    .end local v8    # "alias":Ljava/lang/String;
    .restart local v9    # "alias":Ljava/lang/String;
    goto :goto_2

    .line 1302
    .end local v9    # "alias":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v8    # "alias":Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 1303
    .restart local v12    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1305
    if-eqz v10, :cond_1

    .line 1306
    :try_start_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 1272
    .end local v4    # "ID_PROJECTION":[Ljava/lang/String;
    .end local v11    # "containerId":I
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "userID":I
    :catchall_0
    move-exception v2

    monitor-exit v14

    throw v2

    .line 1305
    .restart local v4    # "ID_PROJECTION":[Ljava/lang/String;
    .restart local v11    # "containerId":I
    .restart local v13    # "userID":I
    :catchall_1
    move-exception v2

    if-eqz v10, :cond_3

    .line 1306
    :try_start_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1305
    :cond_3
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public static getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "containerId"    # I
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1312
    if-gtz p0, :cond_0

    .line 1319
    .end local p1    # "action":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 1316
    .restart local p1    # "action":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1317
    .local v0, "containerizedAction":Ljava/lang/String;
    const-string v1, "SettingsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <<<<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    .line 1319
    goto :goto_0
.end method

.method public static getContainerizedString(ILjava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "containerId"    # I
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1346
    if-gez p0, :cond_0

    .line 1350
    .end local p1    # "str":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "str":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static getEasDomainAndUserFromLogin(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "login"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1248
    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v4

    aput-object v2, v0, v3

    .line 1251
    .local v0, "easDomainAndUser":[Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1252
    if-eqz p0, :cond_0

    .line 1253
    const-string v2, "\\"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1254
    const-string v2, "\\"

    invoke-static {v2}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1255
    .local v1, "sp":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 1256
    array-length v2, v1

    if-ne v5, v2, :cond_1

    .line 1257
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 1258
    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 1267
    .end local v1    # "sp":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 1259
    .restart local v1    # "sp":[Ljava/lang/String;
    :cond_1
    array-length v2, v1

    if-ne v3, v2, :cond_0

    .line 1260
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    goto :goto_0

    .line 1264
    .end local v1    # "sp":[Ljava/lang/String;
    :cond_2
    aput-object p0, v0, v3

    goto :goto_0
.end method

.method public static getEasPackageName(I)Ljava/lang/String;
    .locals 1
    .param p0, "containerId"    # I

    .prologue
    .line 1331
    if-gtz p0, :cond_0

    .line 1332
    const-string v0, "com.android.exchange"

    .line 1335
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.android.exchange"

    invoke-static {p0, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getEmailPackageName(I)Ljava/lang/String;
    .locals 1
    .param p0, "containerId"    # I

    .prologue
    .line 1323
    if-gtz p0, :cond_0

    .line 1324
    const-string v0, "com.android.email"

    .line 1327
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.android.email"

    invoke-static {p0, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getHostAuthContentUri(I)Landroid/net/Uri;
    .locals 2
    .param p0, "containerId"    # I

    .prologue
    .line 1368
    if-nez p0, :cond_0

    .line 1369
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    .line 1372
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".provider/hostauth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private static getHostAuthFlags(IZZZLandroid/content/Context;)I
    .locals 4
    .param p0, "existingFlag"    # I
    .param p1, "useSSL"    # Z
    .param p2, "useTLS"    # Z
    .param p3, "acceptAllCertificates"    # Z
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 392
    move v0, p0

    .line 395
    .local v0, "flag":I
    if-ne v3, p1, :cond_3

    .line 396
    or-int/lit8 v0, v0, 0x1

    .line 401
    :cond_0
    :goto_0
    if-ne v3, p2, :cond_4

    .line 402
    or-int/lit8 v0, v0, 0x2

    .line 407
    :cond_1
    :goto_1
    if-ne v3, p3, :cond_5

    .line 408
    or-int/lit8 v0, v0, 0x8

    .line 412
    :cond_2
    :goto_2
    return v0

    .line 397
    :cond_3
    and-int/lit8 v1, v0, 0x1

    if-ne v3, v1, :cond_0

    .line 398
    xor-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    :cond_4
    const/4 v1, 0x2

    and-int/lit8 v2, v0, 0x2

    if-ne v1, v2, :cond_1

    .line 404
    xor-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 409
    :cond_5
    const/16 v1, 0x8

    and-int/lit8 v2, v0, 0x8

    if-ne v1, v2, :cond_2

    .line 410
    xor-int/lit8 v0, v0, 0x8

    goto :goto_2
.end method

.method public static getPackageName(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "containerId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1339
    invoke-static {p0, p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1341
    .local v0, "pkgName":Ljava/lang/String;
    const-string v1, "SettingsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <<<<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    return-object v0
.end method

.method static getPackageNameForUid(I)Ljava/lang/String;
    .locals 3
    .param p0, "uid"    # I

    .prologue
    .line 233
    sget v0, Lcom/android/server/enterprise/email/SettingsUtils;->preCallingUid:I

    if-ne p0, v0, :cond_0

    .line 234
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPackageNameForUid :   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    .line 237
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.android.email"

    goto :goto_0
.end method

.method static getPassword(IJLandroid/content/Context;I)[Ljava/lang/String;
    .locals 9
    .param p0, "containerId"    # I
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "userID"    # I

    .prologue
    const/4 v4, 0x0

    .line 1405
    new-instance v6, Landroid/os/ConditionVariable;

    invoke-direct {v6}, Landroid/os/ConditionVariable;-><init>()V

    .line 1406
    .local v6, "condition":Landroid/os/ConditionVariable;
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.sec.MDM_ACCOUNT_PASSWORDS_RESULT"

    invoke-static {p0, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1407
    .local v3, "filter":Landroid/content/IntentFilter;
    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/String;

    .line 1409
    .local v8, "ret":[Ljava/lang/String;
    new-instance v1, Lcom/android/server/enterprise/email/SettingsUtils$1;

    invoke-direct {v1, v8, v6}, Lcom/android/server/enterprise/email/SettingsUtils$1;-><init>([Ljava/lang/String;Landroid/os/ConditionVariable;)V

    .line 1434
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p4}, Landroid/os/UserHandle;-><init>(I)V

    move-object v0, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1435
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.sec.GET_ACCOUNT_PASSWORDS_TO_MDM"

    invoke-static {p0, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1436
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "account_id"

    invoke-virtual {v7, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1437
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v2, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {p3, v7, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1440
    const-wide/16 v4, 0x2710

    invoke-virtual {v6, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1441
    const-string v0, "SettingsUtils"

    const-string v2, "password obtained"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    :goto_0
    invoke-virtual {p3, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1447
    return-object v8

    .line 1443
    :cond_0
    const-string v0, "SettingsUtils"

    const-string/jumbo v2, "timeout while obtaining password"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getPoliciesContentUri(I)Landroid/net/Uri;
    .locals 2
    .param p0, "containerId"    # I

    .prologue
    .line 1376
    if-gtz p0, :cond_0

    .line 1377
    const-string v0, "SettingsUtils"

    const-string v1, "getPoliciesContentUri"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->POLICIES_CONTENT_URI:Landroid/net/Uri;

    .line 1381
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".provider/policies"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "caller"    # Ljava/lang/String;

    .prologue
    .line 1499
    const/4 v2, 0x0

    .line 1501
    .local v2, "password":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPassword:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 1502
    sget-object v3, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPassword:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1507
    :goto_0
    return-object v2

    .line 1503
    :catch_0
    move-exception v1

    .line 1504
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SettingsUtils"

    const-string v4, "getSecurityPassword() failed"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSyncEmailIndexbyMaxTruncationSize(Ljava/lang/String;I)I
    .locals 6
    .param p0, "mProtocolVersion"    # Ljava/lang/String;
    .param p1, "mEmailBodyTruncationSize"    # I

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x7

    const/4 v2, 0x4

    const/4 v0, 0x2

    const/4 v3, 0x5

    .line 1518
    if-eqz p0, :cond_7

    const-string v5, "2.5"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1520
    if-gt p1, v0, :cond_1

    .line 1550
    :cond_0
    :goto_0
    return v0

    .line 1522
    :cond_1
    if-gt p1, v3, :cond_2

    move v0, v1

    .line 1523
    goto :goto_0

    .line 1524
    :cond_2
    const/16 v0, 0xa

    if-gt p1, v0, :cond_3

    move v0, v2

    .line 1525
    goto :goto_0

    .line 1526
    :cond_3
    const/16 v0, 0x14

    if-gt p1, v0, :cond_4

    move v0, v3

    .line 1527
    goto :goto_0

    .line 1528
    :cond_4
    const/16 v0, 0x32

    if-gt p1, v0, :cond_5

    .line 1529
    const/4 v0, 0x6

    goto :goto_0

    .line 1530
    :cond_5
    const/16 v0, 0x64

    if-gt p1, v0, :cond_6

    move v0, v4

    .line 1531
    goto :goto_0

    .line 1533
    :cond_6
    const/16 v0, 0x8

    goto :goto_0

    .line 1535
    :cond_7
    if-gt p1, v2, :cond_8

    .line 1536
    const/4 v0, 0x0

    goto :goto_0

    .line 1537
    :cond_8
    if-gt p1, v3, :cond_9

    .line 1538
    const/4 v0, 0x1

    goto :goto_0

    .line 1539
    :cond_9
    if-le p1, v4, :cond_0

    .line 1541
    const/16 v0, 0xa

    if-gt p1, v0, :cond_a

    move v0, v1

    .line 1542
    goto :goto_0

    .line 1543
    :cond_a
    const/16 v0, 0x14

    if-gt p1, v0, :cond_b

    move v0, v2

    .line 1544
    goto :goto_0

    .line 1545
    :cond_b
    const/16 v0, 0x32

    if-gt p1, v0, :cond_c

    move v0, v3

    .line 1546
    goto :goto_0

    .line 1547
    :cond_c
    const/16 v0, 0x64

    if-gt p1, v0, :cond_d

    .line 1548
    const/4 v0, 0x6

    goto :goto_0

    :cond_d
    move v0, v4

    .line 1550
    goto :goto_0
.end method

.method public static getTruncationSizebySyncEmailIndex(Ljava/lang/String;I)I
    .locals 6
    .param p0, "mProtocolVersion"    # Ljava/lang/String;
    .param p1, "index"    # I

    .prologue
    const/16 v4, 0x32

    const/16 v3, 0x14

    const/16 v2, 0xa

    const/4 v1, 0x5

    const/4 v0, 0x1

    .line 1555
    if-eqz p0, :cond_0

    const-string v5, "2.5"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1557
    packed-switch p1, :pswitch_data_0

    .line 1576
    const v0, 0x7fffffff

    .line 1599
    :goto_0
    :pswitch_0
    return v0

    .line 1564
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 1566
    goto :goto_0

    :pswitch_3
    move v0, v2

    .line 1568
    goto :goto_0

    :pswitch_4
    move v0, v3

    .line 1570
    goto :goto_0

    :pswitch_5
    move v0, v4

    .line 1572
    goto :goto_0

    .line 1574
    :pswitch_6
    const/16 v0, 0x64

    goto :goto_0

    .line 1580
    :cond_0
    packed-switch p1, :pswitch_data_1

    .line 1599
    const v0, 0x7fffffff

    goto :goto_0

    .line 1585
    :pswitch_7
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_8
    move v0, v1

    .line 1587
    goto :goto_0

    .line 1589
    :pswitch_9
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_a
    move v0, v2

    .line 1591
    goto :goto_0

    :pswitch_b
    move v0, v3

    .line 1593
    goto :goto_0

    :pswitch_c
    move v0, v4

    .line 1595
    goto :goto_0

    .line 1597
    :pswitch_d
    const/16 v0, 0x64

    goto :goto_0

    .line 1557
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1580
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 225
    if-nez p0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-object v1

    .line 225
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move-object v1, p0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static insertAccountTableRow(ILcom/android/server/enterprise/email/AccountMetaData;JJZLandroid/content/Context;)J
    .locals 16
    .param p0, "containerId"    # I
    .param p1, "accInfo"    # Lcom/android/server/enterprise/email/AccountMetaData;
    .param p2, "hostAuthKeyRecv"    # J
    .param p4, "hostAuthKeySend"    # J
    .param p6, "isInsertOP"    # Z
    .param p7, "context"    # Landroid/content/Context;

    .prologue
    .line 554
    const-wide/16 v8, -0x1

    .line 556
    .local v8, "rowId":J
    const/4 v3, 0x0

    .line 557
    .local v3, "compatibilityUuid":Ljava/lang/String;
    if-eqz p6, :cond_3

    const/4 v10, 0x0

    .line 558
    .local v10, "settingsFlags":I
    :goto_0
    const/4 v6, 0x0

    .line 560
    .local v6, "ringtoneUri":Ljava/lang/String;
    if-eqz p6, :cond_4

    .line 562
    const-string v6, "content://settings/system/notification_sound"

    .line 563
    const/4 v10, 0x1

    .line 564
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 571
    :goto_1
    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    if-ne v13, v14, :cond_5

    .line 572
    or-int/lit8 v10, v10, 0x2

    .line 576
    :cond_0
    :goto_2
    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    if-ne v13, v14, :cond_6

    .line 577
    or-int/lit8 v10, v10, 0x40

    .line 582
    :cond_1
    :goto_3
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 584
    .local v11, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    if-eqz v13, :cond_7

    .line 585
    const-string v13, "displayName"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :goto_4
    const-string v13, "emailAddress"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string/jumbo v13, "syncLookback"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 596
    const-string/jumbo v13, "syncInterval"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string v13, "peakDays"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 598
    const-string v13, "peakStartMinute"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 599
    const-string v13, "peakEndMinute"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 600
    const-string v13, "peakSchedule"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 601
    const-string v13, "offPeakSchedule"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 602
    const-string v13, "roamingSchedule"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 604
    const-string v13, "hostAuthKeyRecv"

    move-wide/from16 v0, p2

    long-to-int v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 605
    const-string v13, "hostAuthKeySend"

    move-wide/from16 v0, p4

    long-to-int v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 606
    const-string v13, "flags"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 607
    const-string v14, "isDefault"

    if-eqz p6, :cond_8

    const/4 v13, 0x0

    :goto_5
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 608
    const-string v13, "compatibilityUuid"

    invoke-virtual {v11, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    if-eqz v13, :cond_a

    .line 610
    const-string v13, "senderName"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :goto_6
    const-string v13, "ringtoneUri"

    invoke-virtual {v11, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    if-eqz v13, :cond_2

    .line 616
    const-string v13, "protocolVersion"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :cond_2
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    if-eqz v13, :cond_b

    .line 619
    const-string/jumbo v13, "signature"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v13, "isSignatureEdited"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 624
    :goto_7
    const-string v13, "calendarSyncLookback"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncCalendarAge:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 625
    const-string v13, "emailsize"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 626
    const-string v13, "roamingemailsize"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 629
    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 631
    .local v2, "acctUri":Landroid/net/Uri;
    if-eqz p6, :cond_c

    .line 632
    :try_start_0
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-virtual {v13, v2, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 635
    .local v5, "newRowUri":Landroid/net/Uri;
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v8

    .line 638
    :try_start_1
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 639
    .end local v11    # "values":Landroid/content/ContentValues;
    .local v12, "values":Landroid/content/ContentValues;
    :try_start_2
    const-string v13, "accountKey"

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const-string/jumbo v13, "sevenAccountKey"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 641
    const-string/jumbo v13, "timeLimit"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 642
    const-string/jumbo v13, "sizeLimit"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 643
    const-string/jumbo v13, "typeMsg"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 644
    const-string v13, "peakTime"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 645
    const-string v13, "offPeakTime"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 646
    const-string v13, "days"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string v13, "peakStartTime"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const-string v13, "peakEndTime"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string/jumbo v13, "whileRoaming"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 650
    const-string v13, "attachmentEnabled"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 651
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountCBContentUri(I)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v11, v12

    .line 661
    .end local v5    # "newRowUri":Landroid/net/Uri;
    .end local v12    # "values":Landroid/content/ContentValues;
    .restart local v11    # "values":Landroid/content/ContentValues;
    :goto_8
    :try_start_3
    const-string v13, "SettingsUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "insertAccountTableRow row Id : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 667
    :goto_9
    return-wide v8

    .line 557
    .end local v2    # "acctUri":Landroid/net/Uri;
    .end local v6    # "ringtoneUri":Ljava/lang/String;
    .end local v10    # "settingsFlags":I
    .end local v11    # "values":Landroid/content/ContentValues;
    :cond_3
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    goto/16 :goto_0

    .line 567
    .restart local v6    # "ringtoneUri":Ljava/lang/String;
    .restart local v10    # "settingsFlags":I
    :cond_4
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    .line 568
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    .line 569
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    goto/16 :goto_1

    .line 573
    :cond_5
    const/4 v13, 0x2

    and-int/lit8 v14, v10, 0x2

    if-ne v13, v14, :cond_0

    .line 574
    xor-int/lit8 v10, v10, 0x2

    goto/16 :goto_2

    .line 578
    :cond_6
    const/16 v13, 0x40

    and-int/lit8 v14, v10, 0x40

    if-ne v13, v14, :cond_1

    .line 579
    xor-int/lit8 v10, v10, 0x40

    goto/16 :goto_3

    .line 587
    .restart local v11    # "values":Landroid/content/ContentValues;
    :cond_7
    const-string v13, "displayName"

    const-string v14, " "

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 607
    :cond_8
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    if-eqz v13, :cond_9

    const/4 v13, 0x1

    goto/16 :goto_5

    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 612
    :cond_a
    const-string v13, "senderName"

    const-string v14, " "

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 622
    :cond_b
    const-string/jumbo v13, "signature"

    const-string v14, " "

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 653
    .restart local v2    # "acctUri":Landroid/net/Uri;
    .restart local v5    # "newRowUri":Landroid/net/Uri;
    :catch_0
    move-exception v4

    .line 654
    .local v4, "e":Ljava/lang/Exception;
    :goto_a
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_8

    .line 662
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "newRowUri":Landroid/net/Uri;
    :catch_1
    move-exception v4

    .line 663
    .restart local v4    # "e":Ljava/lang/Exception;
    const-wide/16 v8, -0x1

    .line 664
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 657
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_c
    :try_start_5
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_id = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v2, v11, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 659
    .local v7, "rowCount":I
    if-lez v7, :cond_d

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_b
    int-to-long v8, v13

    goto/16 :goto_8

    :cond_d
    const/4 v13, -0x1

    goto :goto_b

    .line 653
    .end local v7    # "rowCount":I
    .end local v11    # "values":Landroid/content/ContentValues;
    .restart local v5    # "newRowUri":Landroid/net/Uri;
    .restart local v12    # "values":Landroid/content/ContentValues;
    :catch_2
    move-exception v4

    move-object v11, v12

    .end local v12    # "values":Landroid/content/ContentValues;
    .restart local v11    # "values":Landroid/content/ContentValues;
    goto :goto_a
.end method

.method private static insertAccountsTableRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J
    .locals 11
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "isInsertOP"    # Z
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, "accountsDB":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v5, -0x1

    .line 428
    .local v5, "rowId":J
    :try_start_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 429
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "name"

    invoke-virtual {v7, v8, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string/jumbo v8, "type"

    invoke-virtual {v7, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    if-eqz p2, :cond_0

    .line 432
    const-string v8, "password"

    invoke-virtual {v7, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->makeDBpath()V

    .line 436
    sget-object v8, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNTS_DB:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 438
    if-eqz p3, :cond_4

    .line 439
    const-string v8, "accounts"

    const-string v9, "doesn\'t exist at all"

    invoke-virtual {v0, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 440
    const-string v8, "SettingsUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "insertAccountsTableRow  isInsertOP:   "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_1
    :goto_0
    const-string v8, "SettingsUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "insertAccountsTableRow row Id : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    if-eqz v0, :cond_2

    .line 456
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 458
    :cond_2
    const-wide/16 v8, -0x1

    cmp-long v8, v5, v8

    if-eqz v8, :cond_3

    .line 460
    sget v8, Lcom/android/server/enterprise/email/SettingsUtils;->currentUserID:I

    .end local v7    # "values":Landroid/content/ContentValues;
    :goto_1
    invoke-static {v8}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->updateAccountManagerCache(I)V

    .line 464
    :cond_3
    return-wide v5

    .line 443
    .restart local v7    # "values":Landroid/content/ContentValues;
    :cond_4
    :try_start_1
    invoke-static {p0, p1, p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountsDBRowId(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v1

    .line 444
    .local v1, "accountsDBRowId":J
    const-wide/16 v8, -0x1

    cmp-long v8, v8, v1

    if-eqz v8, :cond_1

    .line 445
    const-string v8, "accounts"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v7, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 447
    .local v4, "rowCount":I
    if-lez v4, :cond_5

    move-wide v5, v1

    :goto_2
    goto :goto_0

    :cond_5
    const-wide/16 v5, -0x1

    goto :goto_2

    .line 451
    .end local v1    # "accountsDBRowId":J
    .end local v4    # "rowCount":I
    .end local v7    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    .line 452
    .local v3, "e":Ljava/lang/Exception;
    const-wide/16 v5, -0x1

    .line 453
    :try_start_2
    const-string v8, "SettingsUtils"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 455
    if-eqz v0, :cond_6

    .line 456
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 458
    :cond_6
    const-wide/16 v8, -0x1

    cmp-long v8, v5, v8

    if-eqz v8, :cond_3

    .line 460
    sget v8, Lcom/android/server/enterprise/email/SettingsUtils;->currentUserID:I

    goto :goto_1

    .line 455
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    if-eqz v0, :cond_7

    .line 456
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 458
    :cond_7
    const-wide/16 v9, -0x1

    cmp-long v9, v5, v9

    if-eqz v9, :cond_8

    .line 460
    sget v9, Lcom/android/server/enterprise/email/SettingsUtils;->currentUserID:I

    invoke-static {v9}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->updateAccountManagerCache(I)V

    .line 455
    :cond_8
    throw v8
.end method

.method private static insertHostAuthTableRow(Landroid/net/Uri;Lcom/android/server/enterprise/email/AccountMetaData;ZZLandroid/content/Context;)J
    .locals 15
    .param p0, "hostUri"    # Landroid/net/Uri;
    .param p1, "accInfo"    # Lcom/android/server/enterprise/email/AccountMetaData;
    .param p2, "isInsertOP"    # Z
    .param p3, "isHostAuthRecv"    # Z
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 672
    const-wide/16 v8, -0x1

    .line 673
    .local v8, "rowId":J
    const/4 v4, 0x0

    .line 674
    .local v4, "flags":I
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 677
    .local v10, "values":Landroid/content/ContentValues;
    if-eqz p3, :cond_5

    .line 678
    if-eqz p2, :cond_4

    const/4 v11, 0x4

    :goto_0
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    move-object/from16 v0, p4

    invoke-static {v11, v12, v13, v14, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthFlags(IZZZLandroid/content/Context;)I

    move-result v4

    .line 687
    :goto_1
    const-string v12, "protocol"

    if-eqz p3, :cond_7

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    :goto_2
    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string v12, "address"

    if-eqz p3, :cond_8

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    :goto_3
    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const-string v12, "port"

    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    :goto_4
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 693
    const-string v11, "flags"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 695
    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v11, :cond_c

    .line 696
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    if-eqz v11, :cond_b

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\\"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 701
    .local v5, "login":Ljava/lang/String;
    :goto_5
    const-string v11, "login"

    invoke-virtual {v10, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    if-eqz p3, :cond_0

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    if-eqz v11, :cond_0

    .line 703
    const-string v11, "password"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    :cond_0
    if-nez p3, :cond_1

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    if-eqz v11, :cond_1

    .line 706
    const-string v11, "password"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    :cond_1
    if-eqz p3, :cond_2

    .line 709
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    if-eqz v11, :cond_e

    .line 710
    const-string v11, "domain"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :cond_2
    :goto_6
    if-nez p3, :cond_3

    .line 716
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    if-eqz v11, :cond_f

    .line 717
    const-string v11, "domain"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    :cond_3
    :goto_7
    if-eqz p2, :cond_10

    .line 725
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, p0, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 726
    .local v6, "newRowUri":Landroid/net/Uri;
    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 734
    .end local v6    # "newRowUri":Landroid/net/Uri;
    :goto_8
    const-string v11, "SettingsUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insertHostAuthTableRow row Id : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    :goto_9
    return-wide v8

    .line 678
    .end local v5    # "login":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    goto/16 :goto_0

    .line 682
    :cond_5
    if-eqz p2, :cond_6

    const/4 v11, 0x4

    :goto_a
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseTLS:Z

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    move-object/from16 v0, p4

    invoke-static {v11, v12, v13, v14, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthFlags(IZZZLandroid/content/Context;)I

    move-result v4

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    goto :goto_a

    .line 687
    :cond_7
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    goto/16 :goto_2

    .line 689
    :cond_8
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    goto/16 :goto_3

    .line 691
    :cond_9
    if-eqz p3, :cond_a

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    goto/16 :goto_4

    :cond_a
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    goto/16 :goto_4

    .line 696
    :cond_b
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    goto/16 :goto_5

    .line 699
    :cond_c
    if-eqz p3, :cond_d

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .restart local v5    # "login":Ljava/lang/String;
    :goto_b
    goto/16 :goto_5

    .end local v5    # "login":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    goto :goto_b

    .line 712
    .restart local v5    # "login":Ljava/lang/String;
    :cond_e
    const-string v11, "domain"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 719
    :cond_f
    const-string v11, "domain"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 728
    :cond_10
    if-eqz p3, :cond_11

    :try_start_1
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    .line 730
    .local v2, "existingHostAuthRowId":J
    :goto_c
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, p0, v10, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 732
    .local v7, "rowCount":I
    if-lez v7, :cond_12

    move-wide v8, v2

    :goto_d
    goto/16 :goto_8

    .line 728
    .end local v2    # "existingHostAuthRowId":J
    .end local v7    # "rowCount":I
    :cond_11
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_c

    .line 732
    .restart local v2    # "existingHostAuthRowId":J
    .restart local v7    # "rowCount":I
    :cond_12
    const-wide/16 v8, -0x1

    goto :goto_d

    .line 735
    .end local v2    # "existingHostAuthRowId":J
    .end local v7    # "rowCount":I
    :catch_0
    move-exception v1

    .line 736
    .local v1, "e":Ljava/lang/Exception;
    const-wide/16 v8, -0x1

    .line 737
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9
.end method

.method private static isExistingAccount(Landroid/net/Uri;JLandroid/content/Context;)Z
    .locals 10
    .param p0, "acctUri"    # Landroid/net/Uri;
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 123
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    .line 127
    .local v2, "ID_PROJECTION":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 129
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 131
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccount row count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_3

    .line 138
    if-eqz v6, :cond_0

    .line 139
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v8

    .line 141
    :goto_0
    return v0

    .line 135
    :catch_0
    move-exception v7

    .line 136
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    if-eqz v6, :cond_1

    .line 139
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v9

    .line 141
    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 139
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_2
    throw v0

    :cond_3
    if-eqz v6, :cond_1

    goto :goto_1
.end method

.method static isValidEmailAddress(Ljava/lang/String;)Z
    .locals 9
    .param p0, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 372
    const/4 v3, 0x0

    .line 373
    .local v3, "isValid":Z
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 374
    if-eqz p0, :cond_0

    .line 376
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 377
    .local v6, "len":I
    const/16 v7, 0x40

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 378
    .local v1, "firstAt":I
    const/16 v7, 0x40

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 379
    .local v4, "lastAt":I
    const/16 v7, 0x2e

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 380
    .local v2, "firstDot":I
    const/16 v7, 0x2e

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 381
    .local v5, "lastDot":I
    if-lez v1, :cond_1

    if-ne v1, v4, :cond_1

    add-int/lit8 v7, v4, 0x1

    if-ge v7, v2, :cond_1

    if-gt v2, v5, :cond_1

    add-int/lit8 v7, v6, -0x1

    if-ge v5, v7, :cond_1

    const/4 v3, 0x1

    .line 387
    .end local v1    # "firstAt":I
    .end local v2    # "firstDot":I
    .end local v4    # "lastAt":I
    .end local v5    # "lastDot":I
    .end local v6    # "len":I
    :cond_0
    :goto_0
    return v3

    .line 381
    .restart local v1    # "firstAt":I
    .restart local v2    # "firstDot":I
    .restart local v4    # "lastAt":I
    .restart local v5    # "lastDot":I
    .restart local v6    # "len":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 383
    .end local v1    # "firstAt":I
    .end local v2    # "firstDot":I
    .end local v4    # "lastAt":I
    .end local v5    # "lastDot":I
    .end local v6    # "len":I
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static loadHostAuth(Landroid/net/Uri;JLcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)Z
    .locals 9
    .param p0, "hostUri"    # Landroid/net/Uri;
    .param p1, "id"    # J
    .param p3, "acc"    # Lcom/android/server/enterprise/email/AccountMetaData;
    .param p4, "isReceive"    # Z
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 1189
    const/4 v8, 0x0

    .line 1190
    .local v8, "ret":Z
    const/4 v6, 0x0

    .line 1192
    .local v6, "c":Landroid/database/Cursor;
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "protocol"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "address"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "port"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "flags"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "login"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "password"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "domain"

    aput-object v1, v2, v0

    .line 1198
    .local v2, "ID_PROJECTION":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1200
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadHostAuth row count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1202
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1203
    if-eqz p4, :cond_5

    .line 1204
    const-string v0, "protocol"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    .line 1205
    const-string v0, "address"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    .line 1207
    const-string v0, "port"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    .line 1208
    const-string v0, "flags"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    .line 1209
    const/4 v0, 0x1

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    .line 1210
    const/4 v0, 0x2

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    and-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    .line 1211
    const/16 v0, 0x8

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    and-int/lit8 v1, v1, 0x8

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    .line 1212
    const-string v0, "login"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 1214
    const-string v0, "password"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 1217
    const-string v0, "domain"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1236
    :goto_3
    const/4 v8, 0x1

    .line 1241
    :cond_0
    if-eqz v6, :cond_1

    .line 1242
    :goto_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1244
    :cond_1
    return v8

    .line 1209
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1210
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1211
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 1220
    :cond_5
    :try_start_1
    const-string v0, "protocol"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    .line 1221
    const-string v0, "address"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    .line 1223
    const-string v0, "port"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    .line 1224
    const-string v0, "flags"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    .line 1225
    const/4 v0, 0x1

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    .line 1226
    const/4 v0, 0x2

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    and-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseTLS:Z

    .line 1227
    const/16 v0, 0x8

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    and-int/lit8 v1, v1, 0x8

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    .line 1228
    const-string v0, "login"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 1230
    const-string v0, "password"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 1233
    const-string v0, "domain"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1238
    :catch_0
    move-exception v7

    .line 1239
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1241
    if-eqz v6, :cond_1

    goto/16 :goto_4

    .line 1225
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    .line 1226
    :cond_7
    const/4 v0, 0x0

    goto :goto_6

    .line 1227
    :cond_8
    const/4 v0, 0x0

    goto :goto_7

    .line 1241
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_9

    .line 1242
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1241
    :cond_9
    throw v0
.end method

.method private static makeDBpath()V
    .locals 3

    .prologue
    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/enterprise/email/SettingsUtils;->currentUserID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "accounts.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNTS_DB:Ljava/lang/String;

    .line 418
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDBpath   ACCOUNTS_DB  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNTS_DB:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  user id   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/enterprise/email/SettingsUtils;->currentUserID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-void
.end method

.method static declared-synchronized sendAccountsChangedBroadcast(ILandroid/content/Context;I)V
    .locals 10
    .param p0, "containerId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callingUid"    # I

    .prologue
    .line 194
    const-class v6, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v6

    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 196
    .local v4, "userID":I
    :try_start_1
    const-string v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    .line 197
    .local v2, "LOGIN_ACCOUNTS_CHANGED_ACTION":Ljava/lang/String;
    const/high16 v1, 0x10000000

    .line 198
    .local v1, "FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT":I
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, "ACCOUNTS_CHANGED_INTENT":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 200
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    if-eqz v4, :cond_0

    .line 203
    :try_start_2
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v5, v7, v8}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5

    sput-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 204
    const-string v5, "SettingsUtils"

    const-string v7, "sendAccountsChangedBroadcast : USER space"

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    :goto_0
    :try_start_3
    sget-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v5, v7, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 216
    sget-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v5, v7, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 220
    .end local v0    # "ACCOUNTS_CHANGED_INTENT":Landroid/content/Intent;
    .end local v1    # "FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT":I
    .end local v2    # "LOGIN_ACCOUNTS_CHANGED_ACTION":Ljava/lang/String;
    :goto_1
    :try_start_4
    const-string v5, "SettingsUtils"

    const-string v7, "sendAccountsChangedBroadcast()"

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 221
    :goto_2
    monitor-exit v6

    return-void

    .line 207
    .restart local v0    # "ACCOUNTS_CHANGED_INTENT":Landroid/content/Intent;
    .restart local v1    # "FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT":I
    .restart local v2    # "LOGIN_ACCOUNTS_CHANGED_ACTION":Ljava/lang/String;
    :cond_0
    :try_start_5
    sput-object p1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v3

    .line 211
    .local v3, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 217
    .end local v0    # "ACCOUNTS_CHANGED_INTENT":Landroid/content/Intent;
    .end local v1    # "FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT":I
    .end local v2    # "LOGIN_ACCOUNTS_CHANGED_ACTION":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 218
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 194
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "userID":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method static declared-synchronized setAsDefaultAccount(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Z
    .locals 17
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    const-class v14, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v14

    const/4 v6, 0x0

    .line 146
    .local v6, "success":Z
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v10

    .line 147
    .local v10, "userID":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 148
    .local v3, "containerId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 150
    .local v8, "token":J
    if-eqz v10, :cond_0

    .line 151
    :try_start_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v13}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v15, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v13

    sput-object v13, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 152
    const-string v13, "SettingsUtils"

    const-string v15, "setAsDefaultAccount : USER space"

    invoke-static {v13, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    :goto_0
    const-wide/16 v15, 0x1

    cmp-long v13, v15, p1

    if-lez v13, :cond_1

    .line 162
    :try_start_2
    const-string v13, "SettingsUtils"

    const-string v15, "setAsDefaultAccount : accountId is invalid"

    invoke-static {v13, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v7, v6

    .line 190
    .end local v6    # "success":Z
    .local v7, "success":I
    :goto_1
    monitor-exit v14

    return v7

    .line 155
    .end local v7    # "success":I
    .restart local v6    # "success":Z
    :cond_0
    :try_start_3
    sput-object p3, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v5

    .line 158
    .local v5, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    move v7, v6

    .line 159
    .restart local v7    # "success":I
    goto :goto_1

    .line 166
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "success":I
    :cond_1
    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 167
    .local v2, "acctUri":Landroid/net/Uri;
    sget-object v13, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1, v13}, Lcom/android/server/enterprise/email/SettingsUtils;->isExistingAccount(Landroid/net/Uri;JLandroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 168
    const-string v13, "SettingsUtils"

    const-string v15, "setAsDefaultAccount : No Such Account"

    invoke-static {v13, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v6

    .line 169
    .restart local v7    # "success":I
    goto :goto_1

    .line 172
    .end local v7    # "success":I
    :cond_2
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 173
    .local v11, "values":Landroid/content/ContentValues;
    const-string v13, "isDefault"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 176
    :try_start_5
    sget-object v13, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v2, v11, v15, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 177
    .local v4, "count":I
    const-string v13, "SettingsUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setAsDefaultAccount : row count for resetting the default column : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 180
    .end local v11    # "values":Landroid/content/ContentValues;
    .local v12, "values":Landroid/content/ContentValues;
    :try_start_6
    const-string v13, "isDefault"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    sget-object v13, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "_id = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p1

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v2, v12, v15, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 183
    const-string v13, "SettingsUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setAsDefaultAccount : row count for setting the default column : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 184
    if-lez v4, :cond_3

    const/4 v6, 0x1

    :goto_2
    move-object v11, v12

    .line 189
    .end local v4    # "count":I
    .end local v12    # "values":Landroid/content/ContentValues;
    .restart local v11    # "values":Landroid/content/ContentValues;
    :goto_3
    :try_start_7
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v7, v6

    .line 190
    .restart local v7    # "success":I
    goto/16 :goto_1

    .line 184
    .end local v7    # "success":I
    .end local v11    # "values":Landroid/content/ContentValues;
    .restart local v4    # "count":I
    .restart local v12    # "values":Landroid/content/ContentValues;
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 185
    .end local v4    # "count":I
    .end local v12    # "values":Landroid/content/ContentValues;
    .restart local v11    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v5

    .line 186
    .restart local v5    # "e":Ljava/lang/Exception;
    :goto_4
    const/4 v6, 0x0

    .line 187
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 145
    .end local v2    # "acctUri":Landroid/net/Uri;
    .end local v3    # "containerId":I
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v8    # "token":J
    .end local v10    # "userID":I
    .end local v11    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    .line 185
    .restart local v2    # "acctUri":Landroid/net/Uri;
    .restart local v3    # "containerId":I
    .restart local v4    # "count":I
    .restart local v8    # "token":J
    .restart local v10    # "userID":I
    .restart local v12    # "values":Landroid/content/ContentValues;
    :catch_2
    move-exception v5

    move-object v11, v12

    .end local v12    # "values":Landroid/content/ContentValues;
    .restart local v11    # "values":Landroid/content/ContentValues;
    goto :goto_4
.end method

.method static setPackageNameForUid(ILjava/lang/String;)V
    .locals 3
    .param p0, "uid"    # I
    .param p1, "adminPkgName"    # Ljava/lang/String;

    .prologue
    .line 242
    sput p0, Lcom/android/server/enterprise/email/SettingsUtils;->preCallingUid:I

    .line 243
    sput-object p1, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    .line 244
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPackageNameForUid :   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method static setPassword(IJLjava/lang/String;Landroid/content/Context;ZZI)V
    .locals 6
    .param p0, "containerId"    # I
    .param p1, "accountId"    # J
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "isIncomingPassword"    # Z
    .param p6, "isEasAccount"    # Z
    .param p7, "userID"    # I

    .prologue
    .line 1451
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.sec.UPDATE_ACCOUNT_PASSWORDS_FROM_MDM"

    invoke-static {p0, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1452
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "account_id"

    invoke-virtual {v3, v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1459
    const-string v2, ""

    .line 1460
    .local v2, "caller":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v0

    .line 1461
    .local v0, "accID":J
    if-eqz p6, :cond_1

    .line 1463
    if-eqz p5, :cond_0

    .line 1464
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "E#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1474
    :goto_0
    if-eqz p5, :cond_3

    .line 1475
    const-string/jumbo v4, "user_passwd_id"

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1478
    :goto_1
    invoke-static {v2, p3}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1479
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p7}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {p4, v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1480
    return-void

    .line 1466
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "C#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1469
    :cond_1
    if-eqz p5, :cond_2

    .line 1470
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "I#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1472
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "O#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1477
    :cond_3
    const-string v4, "outgoing_user_passwd_id"

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_1
.end method

.method public static setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "caller"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1484
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1485
    :cond_0
    const-string v2, "SettingsUtils"

    const-string v3, "setOutGoingServerPassword() failed : invalid parameter"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    :goto_0
    return v1

    .line 1489
    :cond_1
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPassword:Ljava/util/Map;

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1494
    const-string v1, "SettingsUtils"

    const-string/jumbo v2, "setSecurityPassword() success"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    const/4 v1, 0x1

    goto :goto_0

    .line 1490
    :catch_0
    move-exception v0

    .line 1491
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SettingsUtils"

    const-string v3, "setOutGoingServerPassword() failed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
