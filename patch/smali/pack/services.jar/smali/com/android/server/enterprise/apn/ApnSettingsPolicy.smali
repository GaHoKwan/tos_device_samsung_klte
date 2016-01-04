.class public Lcom/android/server/enterprise/apn/ApnSettingsPolicy;
.super Landroid/app/enterprise/IApnSettingsPolicy$Stub;
.source "ApnSettingsPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;
    }
.end annotation


# static fields
.field public static AUTH_TYPE_CHAP:I = 0x0

.field public static AUTH_TYPE_NONE:I = 0x0

.field private static AUTH_TYPE_NOTSET:I = 0x0

.field public static AUTH_TYPE_PAP:I = 0x0

.field public static AUTH_TYPE_PAP_OR_CHAP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ApnSettingsPolicyService"


# instance fields
.field private dunRequired:Z

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_NOTSET:I

    .line 68
    const/4 v0, 0x0

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_NONE:I

    .line 70
    const/4 v0, 0x1

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_PAP:I

    .line 72
    const/4 v0, 0x2

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_CHAP:I

    .line 74
    const/4 v0, 0x3

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_PAP_OR_CHAP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/app/enterprise/IApnSettingsPolicy$Stub;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->dunRequired:Z

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 103
    iput-object p1, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 104
    return-void
.end method

.method private enforceApnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_APN"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndApnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_APN"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getApnListConditionStr()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 374
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 375
    .local v4, "telMan":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 377
    :cond_0
    const-string v5, "ApnSettingsPolicyService"

    const-string v6, "No SIM "

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const/4 v0, 0x0

    .line 397
    :cond_1
    :goto_0
    return-object v0

    .line 381
    :cond_2
    const-string v5, "gsm.sim.operator.numeric"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 384
    .local v3, "numeric":Ljava/lang/String;
    const/4 v0, 0x0

    .line 386
    .local v0, "APNLIST_SELECTION":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_1

    .line 388
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, "mcc":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "mnc":Ljava/lang/String;
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 392
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mcc = \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mnc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3
    .param p1, "ColumnName"    # Ljava/lang/String;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 549
    const-string v1, ""

    .line 551
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 552
    if-nez v1, :cond_0

    .line 553
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :cond_0
    :goto_0
    return-object v1

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private isValidApnId(J)Z
    .locals 11
    .param p1, "apId"    # J

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x2

    .line 336
    const/4 v8, 0x0

    .line 337
    .local v8, "isValid":Z
    const/4 v6, 0x0

    .line 339
    .local v6, "c":Landroid/database/Cursor;
    const-wide/16 v3, 0x0

    cmp-long v0, v3, p1

    if-gez v0, :cond_4

    .line 340
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v0, "numeric"

    aput-object v0, v2, v10

    const-string/jumbo v0, "type"

    aput-object v0, v2, v5

    .line 344
    .local v2, "ID_PROJECTION":[Ljava/lang/String;
    :try_start_0
    const-string v0, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 346
    .local v9, "numeric":Ljava/lang/String;
    sget-object v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 347
    .local v1, "url":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 348
    const-string v0, "ApnSettingsPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isValidApnId() row count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for apId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    .line 350
    if-eqz v8, :cond_1

    .line 351
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "dun"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "mms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    :cond_0
    const/4 v8, 0x0

    .line 363
    :cond_1
    if-eqz v6, :cond_2

    .line 364
    .end local v1    # "url":Landroid/net/Uri;
    .end local v9    # "numeric":Ljava/lang/String;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 368
    .end local v2    # "ID_PROJECTION":[Ljava/lang/String;
    :cond_2
    :goto_1
    return v8

    .line 360
    .restart local v2    # "ID_PROJECTION":[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 361
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    if-eqz v6, :cond_2

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 364
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 363
    :cond_3
    throw v0

    .line 367
    .end local v2    # "ID_PROJECTION":[Ljava/lang/String;
    :cond_4
    const-string v0, "ApnSettingsPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isValidApnId() : invalid apId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "isNewAp"    # Z
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 570
    if-eqz p1, :cond_2

    .line 571
    if-nez p4, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    :cond_0
    :goto_1
    const-string v0, "ApnSettingsPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColumnValue: key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    return-void

    .line 571
    :cond_1
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 574
    :cond_2
    if-eqz p4, :cond_0

    .line 575
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private validateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 581
    if-nez p1, :cond_0

    .end local p1    # "value":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addUpdateApn(Landroid/app/enterprise/ContextInfo;ZLandroid/app/enterprise/ApnSettings;)J
    .locals 36
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "isNewAp"    # Z
    .param p3, "apnSettings"    # Landroid/app/enterprise/ApnSettings;

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    const/16 v28, 0x1

    .line 172
    .local v28, "success":Z
    const-wide/16 v25, -0x1

    .line 173
    .local v25, "rowId":J
    const/4 v10, 0x0

    .local v10, "devMCC":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "devMNC":Ljava/lang/String;
    const/4 v12, 0x0

    .line 175
    .local v12, "devSimOperatorNumeric":Ljava/lang/String;
    if-nez p3, :cond_0

    move-wide/from16 v33, v25

    .line 332
    :goto_0
    monitor-exit p0

    return-wide v33

    .line 178
    :cond_0
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getId()J

    move-result-wide v5

    .line 179
    .local v5, "apId":J
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getUser()Ljava/lang/String;

    move-result-object v31

    .line 180
    .local v31, "user":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getServer()Ljava/lang/String;

    move-result-object v27

    .line 181
    .local v27, "server":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getPassword()Ljava/lang/String;

    move-result-object v21

    .line 182
    .local v21, "password":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getProxy()Ljava/lang/String;

    move-result-object v23

    .line 183
    .local v23, "proxy":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getPort()I

    move-result v22

    .line 184
    .local v22, "port":I
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getMmsProxy()Ljava/lang/String;

    move-result-object v17

    .line 185
    .local v17, "mmsProxy":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getMmsc()Ljava/lang/String;

    move-result-object v18

    .line 186
    .local v18, "mmsc":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getType()Ljava/lang/String;

    move-result-object v7

    .line 187
    .local v7, "apType":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getAuthType()I

    move-result v9

    .line 188
    .local v9, "authType":I
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getName()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 189
    .local v20, "name":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getApn()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 191
    .local v8, "apn":Ljava/lang/String;
    if-eqz v20, :cond_1

    if-nez v8, :cond_2

    .line 193
    :cond_1
    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "Invalid value"

    invoke-static/range {v33 .. v34}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-wide/16 v33, -0x1

    goto :goto_0

    .line 197
    :cond_2
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v33

    const/16 v34, 0x41

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_3

    .line 198
    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "APN name maximum length (65)"

    invoke-static/range {v33 .. v34}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-wide/16 v33, -0x1

    goto :goto_0

    .line 201
    :cond_3
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v33

    const/16 v34, 0x78

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_4

    .line 202
    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "APN excedes maximum length (120)"

    invoke-static/range {v33 .. v34}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-wide/16 v33, -0x1

    goto :goto_0

    .line 205
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getMcc()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 206
    .local v15, "mcc":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getMnc()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 207
    .local v19, "mnc":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/ApnSettings;->getMmsPort()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v16

    .line 212
    .local v16, "mmsPort":Ljava/lang/String;
    :try_start_2
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 213
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 214
    const/4 v14, -0x1

    .line 216
    .local v14, "iMmsPort":I
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_5

    const-string v33, "*"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_5

    .line 217
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 220
    :cond_5
    if-nez p2, :cond_6

    const-wide/16 v33, 0x1

    cmp-long v33, v33, v5

    if-gtz v33, :cond_7

    :cond_6
    if-eqz v15, :cond_7

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v33

    if-eqz v33, :cond_7

    if-eqz v19, :cond_7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v33

    if-eqz v33, :cond_7

    if-eqz v20, :cond_7

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v33

    if-eqz v33, :cond_7

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v33

    if-eqz v33, :cond_7

    const/16 v33, -0x1

    move/from16 v0, v33

    move/from16 v1, v22

    if-gt v0, v1, :cond_7

    const/16 v33, -0x1

    move/from16 v0, v33

    if-gt v0, v14, :cond_7

    const/16 v33, -0x2

    move/from16 v0, v33

    if-gt v0, v9, :cond_7

    const/16 v33, 0x3

    move/from16 v0, v33

    if-ge v0, v9, :cond_14

    .line 224
    :cond_7
    const/16 v28, 0x0

    .line 225
    if-nez p2, :cond_8

    const-wide/16 v33, 0x1

    cmp-long v33, v33, v5

    if-lez v33, :cond_8

    .line 226
    const-string v33, "ApnSettingsPolicyService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "addUpdateAp() : invalid ap Id "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_8
    if-eqz v20, :cond_9

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v33

    if-nez v33, :cond_a

    .line 228
    :cond_9
    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "addUpdateAp() : invalid ap name"

    invoke-static/range {v33 .. v34}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_a
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v33

    if-nez v33, :cond_c

    .line 230
    :cond_b
    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "addUpdateAp() : invalid ap apn"

    invoke-static/range {v33 .. v34}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_c
    if-eqz v15, :cond_d

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v33

    if-nez v33, :cond_e

    .line 232
    :cond_d
    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "addUpdateAp() : invalid ap mcc"

    invoke-static/range {v33 .. v34}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_e
    if-eqz v19, :cond_f

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v33

    if-nez v33, :cond_10

    .line 234
    :cond_f
    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "addUpdateAp() : invalid ap mnc"

    invoke-static/range {v33 .. v34}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_10
    const/16 v33, -0x1

    move/from16 v0, v33

    move/from16 v1, v22

    if-le v0, v1, :cond_11

    .line 236
    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "addUpdateAp() : invalid ap port"

    invoke-static/range {v33 .. v34}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_11
    const/16 v33, -0x1

    move/from16 v0, v33

    if-le v0, v14, :cond_12

    .line 238
    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "addUpdateAp() : invalid ap iMmsPort"

    invoke-static/range {v33 .. v34}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_12
    const/16 v33, -0x2

    move/from16 v0, v33

    if-gt v0, v9, :cond_13

    const/16 v33, 0x3

    move/from16 v0, v33

    if-ge v0, v9, :cond_14

    .line 240
    :cond_13
    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "addUpdateAp() : invalid ap authType"

    invoke-static/range {v33 .. v34}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    .end local v14    # "iMmsPort":I
    :cond_14
    :goto_1
    if-eqz v28, :cond_19

    .line 249
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const-string v34, "phone"

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/telephony/TelephonyManager;

    .line 251
    .local v29, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v12

    .line 253
    if-eqz v12, :cond_15

    const/16 v33, 0x4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_15

    .line 255
    const/16 v33, 0x0

    const/16 v34, 0x3

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 257
    const/16 v33, 0x3

    move/from16 v0, v33

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 262
    :cond_15
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 263
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 264
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 265
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 266
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 267
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 268
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 269
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 271
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 273
    .local v32, "values":Landroid/content/ContentValues;
    const-string v33, "name"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v34, "numeric"

    if-eqz v15, :cond_16

    if-nez v19, :cond_1a

    :cond_16
    const/16 v33, 0x0

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v32

    move-object/from16 v3, v34

    move-object/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v33, "mcc"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v33, "mnc"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v33, "apn"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string/jumbo v33, "user"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v33, "server"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v33, "password"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v33, "proxy"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v34, "port"

    if-ltz v22, :cond_1b

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v32

    move-object/from16 v3, v34

    move-object/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v33, "mmsproxy"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v33, "mmsport"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v33, "mmsc"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    if-eqz p2, :cond_1d

    .line 291
    const-string v33, "authtype"

    const/16 v34, -0x2

    move/from16 v0, v34

    if-ge v0, v9, :cond_1c

    const/16 v34, 0x4

    move/from16 v0, v34

    if-le v0, v9, :cond_1c

    .end local v9    # "authType":I
    :goto_4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    :cond_17
    :goto_5
    const-string/jumbo v33, "type"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    if-eqz v11, :cond_18

    if-eqz v10, :cond_18

    .line 299
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_18

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_18

    .line 300
    const-string v33, "current"

    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 304
    :cond_18
    invoke-virtual/range {v32 .. v32}, Landroid/content/ContentValues;->size()I

    move-result v33

    if-lez v33, :cond_21

    .line 305
    if-eqz p2, :cond_1f

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    sget-object v34, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v30

    .line 309
    .local v30, "url":Landroid/net/Uri;
    if-eqz v30, :cond_1e

    const/16 v28, 0x1

    .line 310
    :goto_6
    if-eqz v28, :cond_19

    .line 311
    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "addUpdateAp Created rowUri : "

    invoke-static/range {v33 .. v34}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-static/range {v30 .. v30}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v25

    .end local v29    # "tm":Landroid/telephony/TelephonyManager;
    .end local v30    # "url":Landroid/net/Uri;
    .end local v32    # "values":Landroid/content/ContentValues;
    :cond_19
    :goto_7
    move-wide/from16 v33, v25

    .line 332
    goto/16 :goto_0

    .line 242
    .restart local v9    # "authType":I
    :catch_0
    move-exception v13

    .line 243
    .local v13, "e":Ljava/lang/Exception;
    const/16 v28, 0x0

    .line 244
    :try_start_4
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 170
    .end local v5    # "apId":J
    .end local v7    # "apType":Ljava/lang/String;
    .end local v8    # "apn":Ljava/lang/String;
    .end local v9    # "authType":I
    .end local v10    # "devMCC":Ljava/lang/String;
    .end local v11    # "devMNC":Ljava/lang/String;
    .end local v12    # "devSimOperatorNumeric":Ljava/lang/String;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v15    # "mcc":Ljava/lang/String;
    .end local v16    # "mmsPort":Ljava/lang/String;
    .end local v17    # "mmsProxy":Ljava/lang/String;
    .end local v18    # "mmsc":Ljava/lang/String;
    .end local v19    # "mnc":Ljava/lang/String;
    .end local v20    # "name":Ljava/lang/String;
    .end local v21    # "password":Ljava/lang/String;
    .end local v22    # "port":I
    .end local v23    # "proxy":Ljava/lang/String;
    .end local v25    # "rowId":J
    .end local v27    # "server":Ljava/lang/String;
    .end local v28    # "success":Z
    .end local v31    # "user":Ljava/lang/String;
    :catchall_0
    move-exception v33

    monitor-exit p0

    throw v33

    .line 275
    .restart local v5    # "apId":J
    .restart local v7    # "apType":Ljava/lang/String;
    .restart local v8    # "apn":Ljava/lang/String;
    .restart local v9    # "authType":I
    .restart local v10    # "devMCC":Ljava/lang/String;
    .restart local v11    # "devMNC":Ljava/lang/String;
    .restart local v12    # "devSimOperatorNumeric":Ljava/lang/String;
    .restart local v15    # "mcc":Ljava/lang/String;
    .restart local v16    # "mmsPort":Ljava/lang/String;
    .restart local v17    # "mmsProxy":Ljava/lang/String;
    .restart local v18    # "mmsc":Ljava/lang/String;
    .restart local v19    # "mnc":Ljava/lang/String;
    .restart local v20    # "name":Ljava/lang/String;
    .restart local v21    # "password":Ljava/lang/String;
    .restart local v22    # "port":I
    .restart local v23    # "proxy":Ljava/lang/String;
    .restart local v25    # "rowId":J
    .restart local v27    # "server":Ljava/lang/String;
    .restart local v28    # "success":Z
    .restart local v29    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v31    # "user":Ljava/lang/String;
    .restart local v32    # "values":Landroid/content/ContentValues;
    :cond_1a
    :try_start_5
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_2

    .line 284
    :cond_1b
    const-string v33, ""

    goto/16 :goto_3

    .line 291
    :cond_1c
    sget v9, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_NOTSET:I

    goto/16 :goto_4

    .line 293
    :cond_1d
    if-nez p2, :cond_17

    const/16 v33, -0x2

    move/from16 v0, v33

    if-ge v0, v9, :cond_17

    const/16 v33, 0x4

    move/from16 v0, v33

    if-le v0, v9, :cond_17

    .line 294
    const-string v33, "authtype"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    .line 328
    .end local v9    # "authType":I
    .end local v29    # "tm":Landroid/telephony/TelephonyManager;
    .end local v32    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v13

    .line 329
    .restart local v13    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    .line 309
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v29    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v30    # "url":Landroid/net/Uri;
    .restart local v32    # "values":Landroid/content/ContentValues;
    :cond_1e
    const/16 v28, 0x0

    goto :goto_6

    .line 316
    .end local v30    # "url":Landroid/net/Uri;
    :cond_1f
    :try_start_7
    sget-object v33, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v33

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v30

    .line 317
    .restart local v30    # "url":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v24

    .line 319
    .local v24, "rowCount":I
    if-lez v24, :cond_20

    const/16 v28, 0x1

    .line 320
    :goto_8
    if-eqz v28, :cond_19

    .line 321
    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "addUpdateAp Updated rowUri : "

    invoke-static/range {v33 .. v34}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-static/range {v30 .. v30}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v25

    goto/16 :goto_7

    .line 319
    :cond_20
    const/16 v28, 0x0

    goto :goto_8

    .line 326
    .end local v24    # "rowCount":I
    .end local v30    # "url":Landroid/net/Uri;
    :cond_21
    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "addUpdateAp Error: Empty dataset."

    invoke-static/range {v33 .. v34}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_7
.end method

.method public declared-synchronized deleteApn(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "apId"    # J

    .prologue
    const/4 v3, 0x0

    .line 141
    monitor-enter p0

    const/4 v1, -0x1

    .line 143
    .local v1, "rowCount":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 145
    const-wide/16 v4, 0x1

    cmp-long v4, v4, p2

    if-lez v4, :cond_1

    .line 146
    const-string v4, "ApnSettingsPolicyService"

    const-string v5, "deleteAp : apId is invalid"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    .line 150
    :cond_1
    :try_start_1
    sget-object v4, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 151
    .local v2, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 152
    const-string v4, "ApnSettingsPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteAp : deleted rowCount from ApTable : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_1
    if-lez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getApnList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/ApnSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 401
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceApnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 402
    const/4 v11, 0x0

    .line 403
    .local v11, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 404
    .local v7, "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    const/16 v1, 0xf

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "mcc"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "mnc"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string v2, "apn"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "user"

    aput-object v2, v3, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v3, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v3, v1

    const/16 v1, 0x8

    const-string v2, "proxy"

    aput-object v2, v3, v1

    const/16 v1, 0x9

    const-string v2, "port"

    aput-object v2, v3, v1

    const/16 v1, 0xa

    const-string v2, "mmsproxy"

    aput-object v2, v3, v1

    const/16 v1, 0xb

    const-string v2, "mmsport"

    aput-object v2, v3, v1

    const/16 v1, 0xc

    const-string v2, "mmsc"

    aput-object v2, v3, v1

    const/16 v1, 0xd

    const-string v2, "authtype"

    aput-object v2, v3, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "type"

    aput-object v2, v3, v1

    .line 410
    .local v3, "columns":[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getApnListConditionStr()Ljava/lang/String;

    move-result-object v4

    .line 415
    .local v4, "APNLIST_SELECTION":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 417
    if-eqz v11, :cond_4

    .line 418
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    .end local v7    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    .local v8, "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 421
    :cond_0
    new-instance v9, Landroid/app/enterprise/ApnSettings;

    invoke-direct {v9}, Landroid/app/enterprise/ApnSettings;-><init>()V

    .line 422
    .local v9, "apnSettings":Landroid/app/enterprise/ApnSettings;
    const-string v1, "_id"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 423
    .local v13, "id":J
    invoke-virtual {v9, v13, v14}, Landroid/app/enterprise/ApnSettings;->setId(J)V

    .line 424
    const-string v1, "name"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setName(Ljava/lang/String;)V

    .line 425
    const-string v1, "mcc"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setMcc(Ljava/lang/String;)V

    .line 426
    const-string v1, "mnc"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setMnc(Ljava/lang/String;)V

    .line 427
    const-string v1, "apn"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setApn(Ljava/lang/String;)V

    .line 428
    const-string/jumbo v1, "user"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setUser(Ljava/lang/String;)V

    .line 429
    const-string v1, "server"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setServer(Ljava/lang/String;)V

    .line 430
    const-string v1, "password"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setPassword(Ljava/lang/String;)V

    .line 431
    const-string v1, "proxy"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setProxy(Ljava/lang/String;)V

    .line 432
    const-string v1, "port"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v17

    .line 433
    .local v17, "strPort":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 434
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 435
    .local v15, "port":I
    invoke-virtual {v9, v15}, Landroid/app/enterprise/ApnSettings;->setPort(I)V

    .line 437
    .end local v15    # "port":I
    :cond_1
    const-string v1, "mmsproxy"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setMmsProxy(Ljava/lang/String;)V

    .line 438
    const-string v1, "mmsport"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setMmsPort(Ljava/lang/String;)V

    .line 439
    const-string v1, "mmsc"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setMmsc(Ljava/lang/String;)V

    .line 440
    const-string v1, "authtype"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v16

    .line 441
    .local v16, "strAuthType":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 442
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 443
    .local v10, "authType":I
    invoke-virtual {v9, v10}, Landroid/app/enterprise/ApnSettings;->setAuthType(I)V

    .line 445
    .end local v10    # "authType":I
    :cond_2
    const-string/jumbo v1, "type"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setType(Ljava/lang/String;)V

    .line 447
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-nez v1, :cond_0

    .end local v9    # "apnSettings":Landroid/app/enterprise/ApnSettings;
    .end local v13    # "id":J
    .end local v16    # "strAuthType":Ljava/lang/String;
    .end local v17    # "strPort":Ljava/lang/String;
    :cond_3
    move-object v7, v8

    .line 455
    .end local v8    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    .restart local v7    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    :cond_4
    if-eqz v11, :cond_5

    .line 456
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 458
    :cond_5
    return-object v7

    .line 452
    :catch_0
    move-exception v12

    .line 453
    .local v12, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 455
    if-eqz v11, :cond_5

    goto :goto_0

    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :goto_2
    if-eqz v11, :cond_6

    .line 456
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 455
    :cond_6
    throw v1

    .end local v7    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    .restart local v8    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    :catchall_1
    move-exception v1

    move-object v7, v8

    .end local v8    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    .restart local v7    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    goto :goto_2

    .line 452
    .end local v7    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    .restart local v8    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    :catch_1
    move-exception v12

    move-object v7, v8

    .end local v8    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    .restart local v7    # "apnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    goto :goto_1
.end method

.method public getApnSettings(Landroid/app/enterprise/ContextInfo;J)Landroid/app/enterprise/ApnSettings;
    .locals 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "apId"    # J

    .prologue
    .line 462
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceApnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 463
    const/4 v15, -0x1

    .line 464
    .local v15, "rowCount":I
    const/4 v10, 0x0

    .line 469
    .local v10, "cursor":Landroid/database/Cursor;
    const-wide/16 v4, 0x1

    cmp-long v2, v4, p2

    if-lez v2, :cond_1

    .line 470
    const-string v2, "ApnSettingsPolicyService"

    const-string v4, "getApnSettings : apId is invalid"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const/4 v8, 0x0

    .line 511
    :cond_0
    :goto_0
    return-object v8

    .line 474
    :cond_1
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 475
    .local v3, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 476
    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 477
    new-instance v8, Landroid/app/enterprise/ApnSettings;

    invoke-direct {v8}, Landroid/app/enterprise/ApnSettings;-><init>()V

    .line 478
    .local v8, "apnSettings":Landroid/app/enterprise/ApnSettings;
    const-string v2, "_id"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 479
    .local v12, "id":J
    invoke-virtual {v8, v12, v13}, Landroid/app/enterprise/ApnSettings;->setId(J)V

    .line 480
    const-string v2, "name"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setName(Ljava/lang/String;)V

    .line 481
    const-string v2, "mcc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setMcc(Ljava/lang/String;)V

    .line 482
    const-string v2, "mnc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setMnc(Ljava/lang/String;)V

    .line 483
    const-string v2, "apn"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setApn(Ljava/lang/String;)V

    .line 484
    const-string/jumbo v2, "user"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setUser(Ljava/lang/String;)V

    .line 485
    const-string v2, "server"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setServer(Ljava/lang/String;)V

    .line 486
    const-string v2, "password"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setPassword(Ljava/lang/String;)V

    .line 487
    const-string v2, "proxy"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setProxy(Ljava/lang/String;)V

    .line 488
    const-string v2, "port"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v17

    .line 489
    .local v17, "strPort":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 490
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 491
    .local v14, "port":I
    invoke-virtual {v8, v14}, Landroid/app/enterprise/ApnSettings;->setPort(I)V

    .line 493
    .end local v14    # "port":I
    :cond_2
    const-string v2, "mmsproxy"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setMmsProxy(Ljava/lang/String;)V

    .line 494
    const-string v2, "mmsport"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setMmsPort(Ljava/lang/String;)V

    .line 495
    const-string v2, "mmsc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setMmsc(Ljava/lang/String;)V

    .line 496
    const-string v2, "authtype"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v16

    .line 497
    .local v16, "strAuthType":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 498
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 499
    .local v9, "authType":I
    invoke-virtual {v8, v9}, Landroid/app/enterprise/ApnSettings;->setAuthType(I)V

    .line 501
    .end local v9    # "authType":I
    :cond_3
    const-string/jumbo v2, "type"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setType(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    if-eqz v10, :cond_0

    .line 509
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 505
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v8    # "apnSettings":Landroid/app/enterprise/ApnSettings;
    .end local v12    # "id":J
    .end local v16    # "strAuthType":Ljava/lang/String;
    .end local v17    # "strPort":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 506
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    if-eqz v10, :cond_4

    .line 509
    .end local v11    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 511
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 508
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_5

    .line 509
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 508
    :cond_5
    throw v2

    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_6
    if-eqz v10, :cond_4

    goto :goto_1
.end method

.method public getPreferredApn(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ApnSettings;
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 516
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceApnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 517
    const/4 v6, 0x0

    .line 518
    .local v6, "apn":Landroid/app/enterprise/ApnSettings;
    const/4 v9, 0x0

    .line 520
    .local v9, "cursor":Landroid/database/Cursor;
    const-string v0, "ApnSettingsPolicyService"

    const-string v1, "getPreferredApn():"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "apn"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 527
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    const-string v0, "_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 529
    .local v7, "apnId":J
    const-string v0, "ApnSettingsPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredApn():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-lez v0, :cond_0

    .line 531
    invoke-virtual {p0, p1, v7, v8}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getApnSettings(Landroid/app/enterprise/ContextInfo;J)Landroid/app/enterprise/ApnSettings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 540
    .end local v7    # "apnId":J
    :cond_0
    if-eqz v9, :cond_1

    .line 541
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 545
    :cond_1
    return-object v6

    .line 536
    :catch_0
    move-exception v10

    .line 537
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ApnSettingsPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredApn Ex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 540
    if-eqz v9, :cond_1

    goto :goto_0

    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    .line 541
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 540
    :cond_2
    throw v0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 618
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 624
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 635
    return-void
.end method

.method public declared-synchronized setPreferredApn(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "apId"    # J

    .prologue
    const-wide/16 v5, 0x0

    .line 111
    monitor-enter p0

    const/4 v2, 0x0

    .line 113
    .local v2, "success":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    cmp-long v4, v5, p2

    if-eqz v4, :cond_1

    cmp-long v4, v5, p2

    if-lez v4, :cond_1

    .line 117
    :try_start_1
    const-string v4, "ApnSettingsPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPreferedAp() : invalid ap Id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    .end local p2    # "apId":J
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 119
    .restart local p2    # "apId":J
    :cond_1
    :try_start_2
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->isValidApnId(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 121
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "apn_id"

    cmp-long v5, v5, p2

    if-nez v5, :cond_2

    const-wide/16 p2, -0x1

    .end local p2    # "apId":J
    :cond_2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 122
    iget-object v4, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 124
    .local v1, "rowCount":I
    if-lez v1, :cond_3

    const/4 v2, 0x1

    .line 125
    :goto_1
    const-string v4, "ApnSettingsPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPreferedAp() row count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 128
    .end local v1    # "rowCount":I
    .end local v3    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 124
    .restart local v1    # "rowCount":I
    .restart local v3    # "values":Landroid/content/ContentValues;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 630
    return-void
.end method
