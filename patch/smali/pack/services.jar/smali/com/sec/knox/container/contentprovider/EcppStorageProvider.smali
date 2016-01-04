.class public Lcom/sec/knox/container/contentprovider/EcppStorageProvider;
.super Ljava/lang/Object;
.source "EcppStorageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/knox/container/contentprovider/EcppStorageProvider$EcppDbErrorHandler;
    }
.end annotation


# static fields
.field static final PW_ENCODED_LENTH:I = 0x9

.field protected static final TAG:Ljava/lang/String; = "EcppStorageProvider"


# instance fields
.field protected mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v2, Lcom/sec/knox/container/contentprovider/EcppStorageProvider$EcppDbErrorHandler;

    invoke-direct {v2, p0}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider$EcppDbErrorHandler;-><init>(Lcom/sec/knox/container/contentprovider/EcppStorageProvider;)V

    invoke-static {p1, v2}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->getInstance(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    .line 74
    :try_start_0
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 75
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    .line 77
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->migrationPasswordUsingEncoding(I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 89
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string v2, "EcppStorageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to OPEN/CREATE the database. getWritableDatabase SQLiteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "EcppStorageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to OPEN/CREATE the database. enableWriteAheadLogging IllegalStateException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "EcppStorageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to OPEN/CREATE the database. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 223
    const-string v0, ""

    .line 225
    .local v0, "adminName":Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v1, v0

    .line 236
    .end local v0    # "adminName":Ljava/lang/String;
    .local v1, "adminName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 228
    .end local v1    # "adminName":Ljava/lang/String;
    .restart local v0    # "adminName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 229
    .local v4, "pkgName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "clsName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, "compomentName":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 233
    const-string v5, "\'"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v1, v0

    .line 236
    .end local v0    # "adminName":Ljava/lang/String;
    .restart local v1    # "adminName":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method PasswordInformationDecoding(I)I
    .locals 10
    .param p1, "_input"    # I

    .prologue
    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    .line 1105
    const-string v3, "EcppStorageProvider"

    const-string v4, "PasswordInformationDecoding() start"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    if-ge p1, v3, :cond_0

    .line 1125
    .end local p1    # "_input":I
    :goto_0
    return p1

    .line 1111
    .restart local p1    # "_input":I
    :cond_0
    const/4 v0, 0x0

    .line 1112
    .local v0, "nDecoded":I
    const/4 v1, 0x0

    .line 1113
    .local v1, "nPositionalnumber":I
    const/4 v2, 0x0

    .line 1116
    .local v2, "nStartPoint":I
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    div-int v2, p1, v3

    .line 1119
    const-wide/high16 v3, 0x401c000000000000L    # 7.0

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    div-int v3, p1, v3

    rem-int/lit8 v1, v3, 0xa

    .line 1121
    sub-int v3, v2, v1

    int-to-double v3, v3

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    div-int v3, p1, v3

    int-to-double v4, v1

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    rem-int v0, v3, v4

    .line 1124
    const-string v3, "EcppStorageProvider"

    const-string v4, "PasswordInformationDecoding() end"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v0

    .line 1125
    goto :goto_0
.end method

.method PasswordInformationEncoding(I)I
    .locals 11
    .param p1, "_input"    # I

    .prologue
    .line 1060
    const-string v5, "EcppStorageProvider"

    const-string v6, "PasswordInformationEncoding() start = "

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    const/4 v0, 0x0

    .line 1063
    .local v0, "nEncoded":I
    const/4 v4, 0x0

    .line 1064
    .local v4, "nTemp":I
    const/4 v1, 0x0

    .line 1065
    .local v1, "nPositionalnumber":I
    const/4 v3, 0x0

    .line 1066
    .local v3, "nStartPoint":I
    const/4 v2, 0x0

    .line 1069
    .local v2, "nRandVal":I
    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    const-wide/high16 v7, 0x4020000000000000L    # 8.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-int v5, v5

    if-lt p1, v5, :cond_0

    .line 1100
    .end local p1    # "_input":I
    :goto_0
    return p1

    .line 1074
    .restart local p1    # "_input":I
    :cond_0
    move v4, p1

    .line 1076
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 1077
    div-int/lit8 v4, v4, 0xa

    .line 1078
    if-nez v4, :cond_1

    .line 1081
    :goto_1
    if-lt v3, v1, :cond_2

    const/4 v5, 0x7

    if-le v3, v5, :cond_3

    .line 1082
    :cond_2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    mul-double/2addr v5, v7

    double-to-int v3, v5

    goto :goto_1

    .line 1086
    :cond_3
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    const-wide/high16 v9, 0x401c000000000000L    # 7.0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-int v7, v7

    int-to-double v7, v7

    mul-double/2addr v5, v7

    double-to-int v2, v5

    .line 1089
    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    sub-int v7, v3, v1

    int-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-int v5, v5

    rem-int v5, v2, v5

    add-int/2addr v5, v2

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    int-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v6, v6

    rem-int v6, v2, v6

    sub-int/2addr v5, v6

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    sub-int v8, v3, v1

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v6, v6

    mul-int/2addr v6, p1

    add-int v2, v5, v6

    .line 1094
    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    const-wide/high16 v7, 0x4020000000000000L    # 8.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-int v5, v5

    mul-int/2addr v5, v3

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const-wide/high16 v8, 0x401c000000000000L    # 7.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v6, v6

    mul-int/2addr v6, v1

    add-int/2addr v5, v6

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const-wide/high16 v8, 0x401c000000000000L    # 7.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v6, v6

    rem-int v6, v2, v6

    add-int v0, v5, v6

    .line 1098
    const-string v5, "EcppStorageProvider"

    const-string v6, "PasswordInformationEncoding() end"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v0

    .line 1100
    goto :goto_0
.end method

.method public checkOldPasswordHistory(I[B)Z
    .locals 8
    .param p1, "containerId"    # I
    .param p2, "newPasswordHash"    # [B

    .prologue
    const/4 v7, 0x0

    .line 878
    const/4 v1, 0x0

    .line 879
    .local v1, "result":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "containerID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 880
    .local v2, "whereClause":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v4, "PASSWORD_HISTORY"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "oldPasswordHashValue"

    aput-object v6, v5, v7

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 883
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 884
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 885
    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 886
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {p2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 887
    const/4 v1, 0x1

    .line 892
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 894
    :cond_2
    return v1
.end method

.method public getAllowBluetoothMode(ILandroid/content/ComponentName;)I
    .locals 9
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 739
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowBluetoothMode"

    const/4 v5, 0x0

    const-wide/16 v6, 0x2

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;ZJ)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 744
    :goto_0
    return v0

    .line 742
    :catch_0
    move-exception v8

    .line 743
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 744
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getAllowBrowser(ILandroid/content/ComponentName;)Z
    .locals 8
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x1

    .line 860
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowBrowser"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 864
    :goto_0
    return v0

    .line 862
    :catch_0
    move-exception v6

    .line 863
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v7

    .line 864
    goto :goto_0
.end method

.method public getAllowCamera(ILandroid/content/ComponentName;)Z
    .locals 8
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x1

    .line 840
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowCamera"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 844
    :goto_0
    return v0

    .line 842
    :catch_0
    move-exception v6

    .line 843
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v7

    .line 844
    goto :goto_0
.end method

.method public getAllowDesktopSync(ILandroid/content/ComponentName;)Z
    .locals 8
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x1

    .line 760
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowDesktopSync"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 764
    :goto_0
    return v0

    .line 762
    :catch_0
    move-exception v6

    .line 763
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v7

    .line 764
    goto :goto_0
.end method

.method public getAllowInternetSharing(ILandroid/content/ComponentName;)Z
    .locals 8
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x1

    .line 723
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowInternetSharing"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 728
    :goto_0
    return v0

    .line 726
    :catch_0
    move-exception v6

    .line 727
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v7

    .line 728
    goto :goto_0
.end method

.method public getAllowIrDA(ILandroid/content/ComponentName;)Z
    .locals 8
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x1

    .line 780
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowIrDA"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 784
    :goto_0
    return v0

    .line 782
    :catch_0
    move-exception v6

    .line 783
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v7

    .line 784
    goto :goto_0
.end method

.method public getAllowPOPIMAPEmail(ILandroid/content/ComponentName;)Z
    .locals 8
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x1

    .line 820
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowPOPIMAPEmail"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 824
    :goto_0
    return v0

    .line 822
    :catch_0
    move-exception v6

    .line 823
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v7

    .line 824
    goto :goto_0
.end method

.method public getAllowStorageCard(ILandroid/content/ComponentName;)Z
    .locals 8
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x1

    .line 800
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowStorageCard"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 804
    :goto_0
    return v0

    .line 802
    :catch_0
    move-exception v6

    .line 803
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v7

    .line 804
    goto :goto_0
.end method

.method public getAllowTextMessaging(ILandroid/content/ComponentName;)Z
    .locals 8
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x1

    .line 703
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowTextMessaging"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 707
    :goto_0
    return v0

    .line 705
    :catch_0
    move-exception v6

    .line 706
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v7

    .line 707
    goto :goto_0
.end method

.method public getAllowWifi(ILandroid/content/ComponentName;)Z
    .locals 8
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x1

    .line 683
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowWifi"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 687
    :goto_0
    return v0

    .line 685
    :catch_0
    move-exception v6

    .line 686
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v7

    .line 687
    goto :goto_0
.end method

.method protected getColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Ljava/lang/String;
    .locals 7
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columnToSelect"    # Ljava/lang/String;
    .param p3, "containerId"    # I
    .param p4, "admin"    # Landroid/content/ComponentName;

    .prologue
    const/4 v6, 0x0

    .line 201
    const-string v1, "0"

    .line 202
    .local v1, "result":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "passwordContainerID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "componentName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "whereClause":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v6

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v4, v2, v5}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 209
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 210
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 213
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 219
    :goto_0
    return-object v1

    .line 215
    :cond_1
    const-string v3, "EcppStorageProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The setting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not available on this policy set yet"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;)I
    .locals 8
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x0

    .line 559
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "maximumFailedPasswordsForDisable"

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 564
    :goto_0
    return v0

    .line 562
    :catch_0
    move-exception v6

    .line 563
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v7

    .line 564
    goto :goto_0
.end method

.method public getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I
    .locals 8
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x0

    .line 542
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "maximumFailedPasswordsForWipe"

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 547
    :goto_0
    return v0

    .line 545
    :catch_0
    move-exception v6

    .line 546
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v7

    .line 547
    goto :goto_0
.end method

.method public getMaximumTimeToLock(ILandroid/content/ComponentName;)J
    .locals 9
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const-wide/16 v7, 0x0

    .line 603
    if-nez p2, :cond_0

    .line 604
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "maximumTimeToLockPassword"

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J

    move-result-wide v0

    .line 617
    :goto_0
    return-wide v0

    .line 608
    :cond_0
    const-string v0, "PASSWORD_POLICY"

    const-string v1, "maximumTimeToLockPassword"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    goto :goto_0

    .line 612
    :catch_0
    move-exception v6

    .line 613
    .local v6, "ex":Ljava/lang/NumberFormatException;
    const-string v0, "EcppStorageProvider"

    const-string v1, "getMaximumTimeToLock: Policy not yet set"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v7

    .line 614
    goto :goto_0

    .line 615
    .end local v6    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v6

    .line 616
    .local v6, "ex":Ljava/lang/Exception;
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaximumTimeToLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v7

    .line 617
    goto :goto_0
.end method

.method public getPasswordEnabledContainerLockTimeout(ILandroid/content/ComponentName;)J
    .locals 9
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const-wide/16 v7, 0x0

    .line 628
    if-nez p2, :cond_0

    .line 629
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "maximumTimeToUnmount"

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J

    move-result-wide v0

    .line 642
    :goto_0
    return-wide v0

    .line 633
    :cond_0
    const-string v0, "PASSWORD_POLICY"

    const-string v1, "maximumTimeToUnmount"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    goto :goto_0

    .line 637
    :catch_0
    move-exception v6

    .line 638
    .local v6, "ex":Ljava/lang/NumberFormatException;
    const-string v0, "EcppStorageProvider"

    const-string v1, "getPasswordEnabledContainerLockTimeout: Policy not yet set"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v7

    .line 639
    goto :goto_0

    .line 640
    .end local v6    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v6

    .line 641
    .local v6, "ex":Ljava/lang/Exception;
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPasswordEnabledContainerLockTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v7

    .line 642
    goto :goto_0
.end method

.method public getPasswordExpirationDate(ILandroid/content/ComponentName;)J
    .locals 9
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 518
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordExpirationDate"

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J

    move-result-wide v7

    .line 523
    .local v7, "passwordExpirationDate":J
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPasswordExpirationDate: getting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    .end local v7    # "passwordExpirationDate":J
    :goto_0
    return-wide v7

    .line 525
    :catch_0
    move-exception v6

    .line 526
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "EcppStorageProvider"

    const-string v1, "getPasswordExpirationDate: something went wrong, returning 0"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 528
    const-wide/16 v7, 0x0

    goto :goto_0
.end method

.method public getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J
    .locals 9
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const-wide/16 v7, 0x0

    .line 653
    if-nez p2, :cond_0

    .line 654
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordExpirationTimeout"

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J

    move-result-wide v0

    .line 667
    :goto_0
    return-wide v0

    .line 658
    :cond_0
    const-string v0, "PASSWORD_POLICY"

    const-string v1, "passwordExpirationTimeout"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    goto :goto_0

    .line 662
    :catch_0
    move-exception v6

    .line 663
    .local v6, "ex":Ljava/lang/NumberFormatException;
    const-string v0, "EcppStorageProvider"

    const-string v1, "getPasswordExpirationTimeout: Policy not yet set"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v7

    .line 664
    goto :goto_0

    .line 665
    .end local v6    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v6

    .line 666
    .local v6, "ex":Ljava/lang/Exception;
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPasswordExpirationTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v7

    .line 667
    goto :goto_0
.end method

.method public getPasswordHistory(ILandroid/content/ComponentName;)I
    .locals 8
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x0

    .line 495
    if-nez p2, :cond_0

    .line 496
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordHistory"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J

    move-result-wide v0

    long-to-int v0, v0

    .line 507
    :goto_0
    return v0

    .line 499
    :cond_0
    const-string v0, "PASSWORD_POLICY"

    const-string v1, "passwordHistory"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 502
    :catch_0
    move-exception v6

    .line 503
    .local v6, "ex":Ljava/lang/NumberFormatException;
    const-string v0, "EcppStorageProvider"

    const-string v1, "getPasswordHistory: Policy not yet set"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 504
    goto :goto_0

    .line 505
    .end local v6    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v6

    .line 506
    .local v6, "ex":Ljava/lang/Exception;
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPasswordHistory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 507
    goto :goto_0
.end method

.method public getPasswordMinimumLength(ILandroid/content/ComponentName;)I
    .locals 7
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 332
    :try_start_0
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "container - getPasswordMinimumLength(): containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumLength"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 339
    :goto_0
    return v0

    .line 337
    :catch_0
    move-exception v6

    .line 338
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 339
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumLetters(ILandroid/content/ComponentName;)I
    .locals 7
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 352
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumLetters"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 357
    :goto_0
    return v0

    .line 355
    :catch_0
    move-exception v6

    .line 356
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 357
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumLowerCase(ILandroid/content/ComponentName;)I
    .locals 7
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 368
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumLowerCase"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 373
    :goto_0
    return v0

    .line 371
    :catch_0
    move-exception v6

    .line 372
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 373
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I
    .locals 7
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 384
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumNonLetter"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 389
    :goto_0
    return v0

    .line 387
    :catch_0
    move-exception v6

    .line 388
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 389
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I
    .locals 7
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 400
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumNumeric"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 405
    :goto_0
    return v0

    .line 403
    :catch_0
    move-exception v6

    .line 404
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 405
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I
    .locals 7
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 432
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumSymbols"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 437
    :goto_0
    return v0

    .line 435
    :catch_0
    move-exception v6

    .line 436
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 437
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumUpperCase(ILandroid/content/ComponentName;)I
    .locals 7
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 416
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumUpperCase"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 421
    :goto_0
    return v0

    .line 419
    :catch_0
    move-exception v6

    .line 420
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 421
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordQuality(ILandroid/content/ComponentName;)I
    .locals 8
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 458
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordQuality"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v7, v0

    .line 461
    .local v7, "quality":I
    if-gez v7, :cond_0

    .line 462
    const/4 v7, 0x0

    .line 468
    .end local v7    # "quality":I
    :cond_0
    :goto_0
    return v7

    .line 466
    :catch_0
    move-exception v6

    .line 467
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 468
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public getPasswordStateInfoFromDB(I)Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;
    .locals 8
    .param p1, "containerId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 944
    const/16 v4, 0xd

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "containerid"

    aput-object v4, v2, v5

    const-string v4, "quality"

    aput-object v4, v2, v6

    const/4 v4, 0x2

    const-string v7, "length"

    aput-object v7, v2, v4

    const/4 v4, 0x3

    const-string/jumbo v7, "uppercase"

    aput-object v7, v2, v4

    const/4 v4, 0x4

    const-string v7, "lowercase"

    aput-object v7, v2, v4

    const/4 v4, 0x5

    const-string v7, "letters"

    aput-object v7, v2, v4

    const/4 v4, 0x6

    const-string v7, "numeric"

    aput-object v7, v2, v4

    const/4 v4, 0x7

    const-string v7, "nonletters"

    aput-object v7, v2, v4

    const/16 v4, 0x8

    const-string/jumbo v7, "symbols"

    aput-object v7, v2, v4

    const/16 v4, 0x9

    const-string/jumbo v7, "simplepassword"

    aput-object v7, v2, v4

    const/16 v4, 0xa

    const-string v7, "charactersequencelength"

    aput-object v7, v2, v4

    const/16 v4, 0xb

    const-string v7, "digitsequencelength"

    aput-object v7, v2, v4

    const/16 v4, 0xc

    const-string v7, "MaximumCharacteroccurrences"

    aput-object v7, v2, v4

    .line 959
    .local v2, "project":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "containerid = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 960
    .local v3, "where":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v7, "ACTIVE_PASSWORD_STATE"

    invoke-virtual {v4, v7, v2, v3, v1}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 963
    .local v0, "cur":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1001
    :goto_0
    return-object v1

    .line 966
    :cond_0
    new-instance v1, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

    invoke-direct {v1}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;-><init>()V

    .line 967
    .local v1, "obj":Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;
    if-eqz v1, :cond_2

    .line 968
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 970
    :cond_1
    const-string v4, "containerid"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setContainerId(I)V

    .line 972
    const-string v4, "quality"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->PasswordInformationDecoding(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordQuality(I)V

    .line 974
    const-string v4, "length"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->PasswordInformationDecoding(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordLength(I)V

    .line 976
    const-string/jumbo v4, "uppercase"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->PasswordInformationDecoding(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordUppercase(I)V

    .line 978
    const-string v4, "lowercase"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->PasswordInformationDecoding(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordLowercase(I)V

    .line 980
    const-string v4, "letters"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->PasswordInformationDecoding(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordLetters(I)V

    .line 982
    const-string v4, "numeric"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->PasswordInformationDecoding(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordNumeric(I)V

    .line 984
    const-string v4, "nonletters"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->PasswordInformationDecoding(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordNonLetter(I)V

    .line 986
    const-string/jumbo v4, "symbols"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->PasswordInformationDecoding(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordSymbols(I)V

    .line 988
    const-string/jumbo v4, "simplepassword"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    :goto_1
    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordSimple(Z)V

    .line 991
    const-string v4, "charactersequencelength"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->PasswordInformationDecoding(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setCharSeqLength(I)V

    .line 993
    const-string v4, "digitsequencelength"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->PasswordInformationDecoding(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setDigitSeqLength(I)V

    .line 995
    const-string v4, "MaximumCharacteroccurrences"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->PasswordInformationDecoding(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setCharMaxOccurrencesCount(I)V

    .line 997
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1000
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_3
    move v4, v6

    .line 988
    goto :goto_1
.end method

.method public getSimplePasswordEnabled(ILandroid/content/ComponentName;)Z
    .locals 8
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x1

    .line 479
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowSimplePassword"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 483
    :goto_0
    return v0

    .line 481
    :catch_0
    move-exception v6

    .line 482
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v7

    .line 483
    goto :goto_0
.end method

.method protected getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    .locals 8
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columnToSelect"    # Ljava/lang/String;
    .param p3, "containerId"    # I
    .param p4, "admin"    # Landroid/content/ComponentName;
    .param p5, "getHigherValue"    # Z

    .prologue
    .line 136
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;ZJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;ZJ)J
    .locals 10
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columnToSelect"    # Ljava/lang/String;
    .param p3, "containerId"    # I
    .param p4, "admin"    # Landroid/content/ComponentName;
    .param p5, "getHigherValue"    # Z
    .param p6, "defaultValue"    # J

    .prologue
    .line 149
    const-string v7, "EcppStorageProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getStricterColumnValue(): tableName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " columnToSelect = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " containerId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " admin = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " getHigherValue = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-wide/16 v4, 0x0

    .line 153
    .local v4, "last":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "passwordContainerID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, "whereClause":Ljava/lang/String;
    invoke-direct {p0, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "adminName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 157
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND componentName=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 161
    :cond_0
    iget-object v7, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x0

    invoke-virtual {v7, p1, v8, v6, v9}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 164
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_5

    .line 165
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 166
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 169
    :cond_1
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 170
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 172
    .local v1, "current":J
    if-eqz p5, :cond_2

    .line 173
    cmp-long v7, v1, v4

    if-lez v7, :cond_1

    .line 174
    move-wide v4, v1

    goto :goto_0

    .line 177
    :cond_2
    const-wide/16 v7, 0x1

    cmp-long v7, v4, v7

    if-ltz v7, :cond_3

    cmp-long v7, v1, v4

    if-gez v7, :cond_1

    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-lez v7, :cond_1

    .line 178
    :cond_3
    move-wide v4, v1

    goto :goto_0

    .line 183
    .end local v1    # "current":J
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 190
    :goto_1
    const-string v7, "EcppStorageProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getStricterColumnValue(): tableName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " columnToSelect = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " RETURNING = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-wide v4

    .line 185
    :cond_5
    const-string v7, "EcppStorageProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The setting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not available on this policy set yet"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    move-wide/from16 v4, p6

    goto :goto_1
.end method

.method protected getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    .locals 10
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columnToSelect"    # Ljava/lang/String;
    .param p3, "containerId"    # I
    .param p4, "admin"    # Landroid/content/ComponentName;
    .param p5, "defaultValue"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 94
    const-string v6, "EcppStorageProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getStricterColumnValueForBoolean(): tableName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " columnToSelect = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " containerId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " admin = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    move v2, p5

    .line 98
    .local v2, "strictValue":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "passwordContainerID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "whereClause":Ljava/lang/String;
    invoke-direct {p0, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "adminName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 102
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND componentName=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 106
    :cond_0
    iget-object v6, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    new-array v7, v5, [Ljava/lang/String;

    aput-object p2, v7, v4

    const/4 v8, 0x0

    invoke-virtual {v6, p1, v7, v3, v8}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 109
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_4

    .line 110
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 111
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    move v2, v4

    .line 112
    :goto_0
    if-nez v2, :cond_1

    .line 116
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 122
    :goto_1
    const-string v4, "EcppStorageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getStricterColumnValueForBoolean(): tableName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " columnToSelect = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " RETURNING = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return v2

    :cond_3
    move v2, v5

    .line 111
    goto :goto_0

    .line 118
    :cond_4
    const-string v4, "EcppStorageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The setting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not available on this policy set yet"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public isPasswordVisisbilityEnabled(I)Z
    .locals 9
    .param p1, "containerId"    # I

    .prologue
    const/4 v8, 0x0

    .line 586
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordVisible"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v7, v0

    .line 589
    .local v7, "ret":I
    if-eqz v7, :cond_0

    const/4 v0, 0x1

    .line 592
    .end local v7    # "ret":I
    :goto_0
    return v0

    .restart local v7    # "ret":I
    :cond_0
    move v0, v8

    .line 589
    goto :goto_0

    .line 590
    .end local v7    # "ret":I
    :catch_0
    move-exception v6

    .line 591
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v8

    .line 592
    goto :goto_0
.end method

.method public migrationPasswordUsingEncoding(I)V
    .locals 22
    .param p1, "containerId"    # I

    .prologue
    .line 1005
    const-string v3, "EcppStorageProvider"

    const-string v4, "migrationPasswordUsingEncoding() start "

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    const/16 v3, 0xc

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/4 v3, 0x0

    const-string v4, "quality"

    aput-object v4, v18, v3

    const/4 v3, 0x1

    const-string v4, "length"

    aput-object v4, v18, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "uppercase"

    aput-object v4, v18, v3

    const/4 v3, 0x3

    const-string v4, "lowercase"

    aput-object v4, v18, v3

    const/4 v3, 0x4

    const-string v4, "letters"

    aput-object v4, v18, v3

    const/4 v3, 0x5

    const-string v4, "numeric"

    aput-object v4, v18, v3

    const/4 v3, 0x6

    const-string v4, "nonletters"

    aput-object v4, v18, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "symbols"

    aput-object v4, v18, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "simplepassword"

    aput-object v4, v18, v3

    const/16 v3, 0x9

    const-string v4, "charactersequencelength"

    aput-object v4, v18, v3

    const/16 v3, 0xa

    const-string v4, "digitsequencelength"

    aput-object v4, v18, v3

    const/16 v3, 0xb

    const-string v4, "MaximumCharacteroccurrences"

    aput-object v4, v18, v3

    .line 1021
    .local v18, "project":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "containerid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1022
    .local v19, "where":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v4, "ACTIVE_PASSWORD_STATE"

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1025
    .local v17, "cur":Landroid/database/Cursor;
    if-nez v17, :cond_0

    .line 1055
    :goto_0
    return-void

    .line 1029
    :cond_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1031
    :cond_1
    const-string v3, "quality"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1032
    .local v5, "quality":I
    const-string v3, "length"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1033
    .local v6, "length":I
    const-string/jumbo v3, "uppercase"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1034
    .local v7, "uppercase":I
    const-string v3, "lowercase"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1035
    .local v8, "lowercase":I
    const-string v3, "letters"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1036
    .local v9, "letters":I
    const-string v3, "numeric"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1037
    .local v10, "numbers":I
    const-string v3, "nonletters"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1038
    .local v11, "nonletter":I
    const-string/jumbo v3, "symbols"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1039
    .local v12, "symbols":I
    const-string/jumbo v3, "simplepassword"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_3

    const/4 v13, 0x0

    .line 1040
    .local v13, "passwordSimple":Z
    :goto_1
    const-string v3, "charactersequencelength"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1041
    .local v14, "charSeqLength":I
    const-string v3, "digitsequencelength"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1042
    .local v15, "digitSeqLength":I
    const-string v3, "MaximumCharacteroccurrences"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1045
    .local v16, "charMaxOccurrencesCount":I
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    const-wide/high16 v20, 0x4020000000000000L    # 8.0

    move-wide/from16 v0, v20

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    if-ge v5, v3, :cond_2

    .line 1046
    const-string v3, "EcppStorageProvider"

    const-string v4, "migrationPasswordUsingEncoding() - need encoding "

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, p0

    move/from16 v4, p1

    .line 1047
    invoke-virtual/range {v3 .. v16}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setActivePasswordState(IIIIIIIIIZIII)V

    .line 1051
    :cond_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1053
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1054
    const-string v3, "EcppStorageProvider"

    const-string v4, "migrationPasswordUsingEncoding() end "

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1039
    .end local v13    # "passwordSimple":Z
    .end local v14    # "charSeqLength":I
    .end local v15    # "digitSeqLength":I
    .end local v16    # "charMaxOccurrencesCount":I
    :cond_3
    const/4 v13, 0x1

    goto :goto_1
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 319
    :try_start_0
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v2, "PASSWORD_POLICY"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "componentName=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->delete(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 327
    :goto_0
    return v1

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EcppStorageProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: something failed trying to remove policies  and admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeContainer(I)Z
    .locals 11
    .param p1, "containerId"    # I

    .prologue
    .line 273
    const/4 v1, 0x1

    .line 274
    .local v1, "result1":Z
    const/4 v3, 0x1

    .line 275
    .local v3, "result2":Z
    const/4 v5, 0x1

    .line 277
    .local v5, "result3":Z
    iget-object v7, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v8, "PASSWORD_POLICY"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "passwordContainerID="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->dbExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 279
    .local v2, "result1dbExist":Z
    iget-object v7, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v8, "PASSWORD_HISTORY"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "containerID="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->dbExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 281
    .local v4, "result2dbExist":Z
    iget-object v7, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v8, "ACTIVE_PASSWORD_STATE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "containerid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->dbExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 284
    .local v6, "result3dbExist":Z
    if-eqz v2, :cond_0

    .line 286
    :try_start_0
    iget-object v7, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v8, "PASSWORD_POLICY"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "passwordContainerID="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->delete(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 293
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 295
    :try_start_1
    iget-object v7, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v8, "PASSWORD_HISTORY"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "containerID="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->delete(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 303
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 305
    :try_start_2
    iget-object v7, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v8, "ACTIVE_PASSWORD_STATE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "containerid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->delete(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v5

    .line 314
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    if-eqz v5, :cond_3

    const/4 v7, 0x1

    :goto_3
    return v7

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "EcppStorageProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: something failed trying to remove password policies for the container "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 297
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 298
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "EcppStorageProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: something failed trying to remove password history for the container "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 307
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 308
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "EcppStorageProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: something failed trying to remove active password state table for the container "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 314
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v7, 0x0

    goto :goto_3
.end method

.method public removeOldestPasswordIfRequired(II)V
    .locals 9
    .param p1, "containerId"    # I
    .param p2, "passwordPolicyHistoryLength"    # I

    .prologue
    const/4 v8, 0x0

    .line 898
    const/4 v0, 0x0

    .line 899
    .local v0, "currPaswordHistoryLength":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "containerID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 900
    .local v3, "whereClause":Ljava/lang/String;
    const-string v2, "_index ASC"

    .line 901
    .local v2, "orderBy":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v5, "PASSWORD_HISTORY"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "_index"

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6, v3, v2}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 904
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 905
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 906
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 907
    :cond_0
    add-int/lit8 v4, p2, -0x1

    if-lt v0, v4, :cond_1

    .line 908
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 910
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v5, "PASSWORD_HISTORY"

    invoke-virtual {v4, v5, v3}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->delete(Ljava/lang/String;Ljava/lang/String;)Z

    .line 911
    add-int/lit8 v0, v0, -0x1

    .line 912
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 915
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 917
    :cond_2
    return-void
.end method

.method public setActivePasswordState(IIIIIIIIIZIII)V
    .locals 5
    .param p1, "containerId"    # I
    .param p2, "quality"    # I
    .param p3, "length"    # I
    .param p4, "uppercase"    # I
    .param p5, "lowercase"    # I
    .param p6, "letters"    # I
    .param p7, "numbers"    # I
    .param p8, "nonletter"    # I
    .param p9, "symbols"    # I
    .param p10, "passwordSimple"    # Z
    .param p11, "charSeqLength"    # I
    .param p12, "digitSeqLength"    # I
    .param p13, "charMaxOccurrencesCount"    # I

    .prologue
    .line 922
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 923
    .local v1, "sContentValues":Landroid/content/ContentValues;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "containerid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 924
    .local v2, "where":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 925
    const-string v3, "containerid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 926
    const-string v3, "quality"

    invoke-virtual {p0, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->PasswordInformationEncoding(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 927
    const-string v3, "length"

    invoke-virtual {p0, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->PasswordInformationEncoding(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 928
    const-string/jumbo v3, "uppercase"

    invoke-virtual {p0, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->PasswordInformationEncoding(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 929
    const-string v3, "lowercase"

    invoke-virtual {p0, p5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->PasswordInformationEncoding(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 930
    const-string v3, "letters"

    invoke-virtual {p0, p6}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->PasswordInformationEncoding(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 931
    const-string v3, "numeric"

    invoke-virtual {p0, p7}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->PasswordInformationEncoding(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 932
    const-string v3, "nonletters"

    invoke-virtual {p0, p8}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->PasswordInformationEncoding(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 933
    const-string/jumbo v3, "symbols"

    invoke-virtual {p0, p9}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->PasswordInformationEncoding(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 934
    const-string/jumbo v4, "simplepassword"

    if-eqz p10, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 935
    const-string v3, "charactersequencelength"

    move/from16 v0, p11

    invoke-virtual {p0, v0}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->PasswordInformationEncoding(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 936
    const-string v3, "digitsequencelength"

    move/from16 v0, p12

    invoke-virtual {p0, v0}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->PasswordInformationEncoding(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 937
    const-string v3, "MaximumCharacteroccurrences"

    move/from16 v0, p13

    invoke-virtual {p0, v0}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->PasswordInformationEncoding(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 938
    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v4, "ACTIVE_PASSWORD_STATE"

    invoke-virtual {v3, v4, v1, v2}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->insertOrUpdate(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Z

    .line 941
    :cond_0
    return-void

    .line 934
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setAllowBluetoothMode(ILandroid/content/ComponentName;I)V
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # I

    .prologue
    .line 733
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowBluetoothMode"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 735
    return-void
.end method

.method public setAllowBrowser(ILandroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 849
    const/4 v4, 0x0

    .line 850
    .local v4, "val":I
    if-eqz p3, :cond_0

    .line 851
    const/4 v4, 0x1

    .line 854
    :cond_0
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowBrowser"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 856
    return-void
.end method

.method public setAllowCamera(ILandroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 829
    const/4 v4, 0x0

    .line 830
    .local v4, "val":I
    if-eqz p3, :cond_0

    .line 831
    const/4 v4, 0x1

    .line 834
    :cond_0
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowCamera"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 836
    return-void
.end method

.method public setAllowDesktopSync(ILandroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 749
    const/4 v4, 0x0

    .line 750
    .local v4, "val":I
    if-eqz p3, :cond_0

    .line 751
    const/4 v4, 0x1

    .line 754
    :cond_0
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowDesktopSync"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 756
    return-void
.end method

.method public setAllowInternetSharing(ILandroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 712
    const/4 v4, 0x0

    .line 713
    .local v4, "val":I
    if-eqz p3, :cond_0

    .line 714
    const/4 v4, 0x1

    .line 717
    :cond_0
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowInternetSharing"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 719
    return-void
.end method

.method public setAllowIrDA(ILandroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 769
    const/4 v4, 0x0

    .line 770
    .local v4, "val":I
    if-eqz p3, :cond_0

    .line 771
    const/4 v4, 0x1

    .line 774
    :cond_0
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowIrDA"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 776
    return-void
.end method

.method public setAllowPOPIMAPEmail(ILandroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 809
    const/4 v4, 0x0

    .line 810
    .local v4, "val":I
    if-eqz p3, :cond_0

    .line 811
    const/4 v4, 0x1

    .line 814
    :cond_0
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowPOPIMAPEmail"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 816
    return-void
.end method

.method public setAllowStorageCard(ILandroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 789
    const/4 v4, 0x0

    .line 790
    .local v4, "val":I
    if-eqz p3, :cond_0

    .line 791
    const/4 v4, 0x1

    .line 794
    :cond_0
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowStorageCard"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 796
    return-void
.end method

.method public setAllowTextMessaging(ILandroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 692
    const/4 v4, 0x0

    .line 693
    .local v4, "val":I
    if-eqz p3, :cond_0

    .line 694
    const/4 v4, 0x1

    .line 697
    :cond_0
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowTextMessaging"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 699
    return-void
.end method

.method public setAllowWifi(ILandroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 672
    const/4 v4, 0x0

    .line 673
    .local v4, "val":I
    if-eqz p3, :cond_0

    .line 674
    const/4 v4, 0x1

    .line 677
    :cond_0
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowWifi"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 679
    return-void
.end method

.method protected setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V
    .locals 7
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "columnName"    # Ljava/lang/String;
    .param p4, "columnValue"    # I
    .param p5, "containerId"    # I

    .prologue
    .line 241
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColumnValues(): table = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " columnName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " columnValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    int-to-long v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValuesAsLong(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;JI)V

    .line 245
    return-void
.end method

.method protected setColumnValuesAsLong(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;JI)V
    .locals 6
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "columnName"    # Ljava/lang/String;
    .param p4, "columnValue"    # J
    .param p6, "containerId"    # I

    .prologue
    .line 249
    const-string v3, "EcppStorageProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setColumnValuesAsLong(): table = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " admin = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " columnName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " columnValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " containerId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 253
    .local v1, "sContentValues":Landroid/content/ContentValues;
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, p3, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 255
    if-lez p6, :cond_1

    .line 256
    invoke-direct {p0, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "adminName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "passwordContainerID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "where":Ljava/lang/String;
    const-string v3, "passwordContainerID"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 263
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "componentName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 266
    const-string v3, "componentName"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_0
    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    invoke-virtual {v3, p1, v1, v2}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->insertOrUpdate(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Z

    .line 270
    .end local v0    # "adminName":Ljava/lang/String;
    .end local v2    # "where":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;I)V
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # I

    .prologue
    .line 569
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "maximumFailedPasswordsForDisable"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 572
    return-void
.end method

.method public setMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;I)V
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # I

    .prologue
    .line 552
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "maximumFailedPasswordsForWipe"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 555
    return-void
.end method

.method public setMaximumTimeToLock(ILandroid/content/ComponentName;J)V
    .locals 7
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # J

    .prologue
    .line 597
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "maximumTimeToLockPassword"

    move-object v0, p0

    move-object v2, p2

    move-wide v4, p3

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValuesAsLong(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;JI)V

    .line 599
    return-void
.end method

.method public setOldPasswordToHistory(I[B)V
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "newPasswordHash"    # [B

    .prologue
    const/4 v3, 0x0

    .line 869
    invoke-virtual {p0, p1, v3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordHistory(ILandroid/content/ComponentName;)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->removeOldestPasswordIfRequired(II)V

    .line 870
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 871
    .local v0, "sContentValues":Landroid/content/ContentValues;
    const-string v1, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 872
    const-string v1, "oldPasswordHashValue"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 874
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v2, "PASSWORD_HISTORY"

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->insertOrUpdate(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Z

    .line 875
    return-void
.end method

.method public setPasswordEnabledContainerLockTimeout(ILandroid/content/ComponentName;J)V
    .locals 7
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # J

    .prologue
    .line 622
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "maximumTimeToUnmount"

    move-object v0, p0

    move-object v2, p2

    move-wide v4, p3

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValuesAsLong(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;JI)V

    .line 624
    return-void
.end method

.method public setPasswordExpirationDate(ILandroid/content/ComponentName;J)V
    .locals 7
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "passwordExpirationDate"    # J

    .prologue
    .line 534
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordExpirationDate: setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordExpirationDate"

    move-object v0, p0

    move-object v2, p2

    move-wide v4, p3

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValuesAsLong(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;JI)V

    .line 538
    return-void
.end method

.method public setPasswordExpirationTimeout(ILandroid/content/ComponentName;J)V
    .locals 7
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # J

    .prologue
    .line 647
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordExpirationTimeout"

    move-object v0, p0

    move-object v2, p2

    move-wide v4, p3

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValuesAsLong(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;JI)V

    .line 649
    return-void
.end method

.method public setPasswordHistory(ILandroid/content/ComponentName;I)V
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "history"    # I

    .prologue
    .line 512
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordHistory"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 514
    return-void
.end method

.method public setPasswordMinimumLength(ILandroid/content/ComponentName;I)V
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 344
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "container - setPasswordMinimumLength(): containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumLength"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 348
    return-void
.end method

.method public setPasswordMinimumLetters(ILandroid/content/ComponentName;I)V
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 362
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumLetters"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 364
    return-void
.end method

.method public setPasswordMinimumLowerCase(ILandroid/content/ComponentName;I)V
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 378
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumLowerCase"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 380
    return-void
.end method

.method public setPasswordMinimumNonLetter(ILandroid/content/ComponentName;I)V
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 394
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumNonLetter"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 396
    return-void
.end method

.method public setPasswordMinimumNumeric(ILandroid/content/ComponentName;I)V
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 410
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumNumeric"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 412
    return-void
.end method

.method public setPasswordMinimumSymbols(ILandroid/content/ComponentName;I)V
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 442
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumSymbols"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 444
    return-void
.end method

.method public setPasswordMinimumUpperCase(ILandroid/content/ComponentName;I)V
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 426
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumUpperCase"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 428
    return-void
.end method

.method public setPasswordQuality(ILandroid/content/ComponentName;I)V
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "quality"    # I

    .prologue
    .line 473
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordQuality"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 475
    return-void
.end method

.method public setPasswordVisibilityEnabled(IZ)V
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "val"    # Z

    .prologue
    .line 575
    const/4 v4, 0x0

    .line 576
    .local v4, "value":I
    if-eqz p2, :cond_0

    .line 577
    const/4 v4, 0x1

    .line 580
    :cond_0
    const-string v1, "PASSWORD_POLICY"

    const/4 v2, 0x0

    const-string v3, "passwordVisible"

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 582
    return-void
.end method

.method public setSimplePasswordEnabled(ILandroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "enabled"    # Z

    .prologue
    .line 488
    if-eqz p3, :cond_0

    const/4 v4, 0x1

    .line 489
    .local v4, "value":I
    :goto_0
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowSimplePassword"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 491
    return-void

    .line 488
    .end local v4    # "value":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
