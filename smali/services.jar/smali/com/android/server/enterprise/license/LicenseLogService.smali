.class public Lcom/android/server/enterprise/license/LicenseLogService;
.super Landroid/os/Binder;
.source "LicenseLogService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;
    }
.end annotation


# static fields
.field private static final ACTION_LICENSE_LOG_DELETE_OLD_RECORDS:Ljava/lang/String; = "edm.intent.action.elm.cleanrecords"

.field private static final MSG_CLEAN_OLD_RECORDS:I = 0x1

.field private static final MSG_LOG_API:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LicenseLogService"

.field private static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private static mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 244
    new-instance v1, Lcom/android/server/enterprise/license/LicenseLogService$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/license/LicenseLogService$1;-><init>(Lcom/android/server/enterprise/license/LicenseLogService;)V

    iput-object v1, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    iput-object p1, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    .line 81
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 84
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v1, "edm.intent.action.elm.cleanrecords"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "LicenseLogService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 89
    iget-object v1, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 90
    new-instance v1, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    iget-object v2, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;-><init>(Lcom/android/server/enterprise/license/LicenseLogService;Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/enterprise/license/LicenseLogService;->mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    .line 91
    return-void
.end method

.method private _log(Ljava/lang/String;I)V
    .locals 11
    .param p1, "apiName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 119
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/license/LicenseLogService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    .line 121
    .local v5, "pkgName":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 157
    .end local v5    # "pkgName":Ljava/lang/String;
    :goto_0
    return-void

    .line 126
    .restart local v5    # "pkgName":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 127
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v9, 0xb

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 128
    const/16 v9, 0xc

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 129
    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 130
    const/16 v9, 0xe

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 131
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .line 133
    .local v7, "time":J
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 134
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v9, "pkgName"

    invoke-virtual {v3, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v9, "id"

    invoke-virtual {v3, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v9, "date"

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string/jumbo v1, "value"

    .line 139
    .local v1, "column":Ljava/lang/String;
    sget-object v9, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "LICENSE_LOG"

    invoke-virtual {v9, v10, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v6

    .line 142
    .local v6, "result":Landroid/content/ContentValues;
    if-eqz v6, :cond_1

    .line 145
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 146
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v9, "value"

    const-string/jumbo v10, "value"

    invoke-virtual {v6, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 148
    sget-object v9, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "LICENSE_LOG"

    invoke-virtual {v9, v10, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "column":Ljava/lang/String;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "result":Landroid/content/ContentValues;
    .end local v7    # "time":J
    :catch_0
    move-exception v4

    .line 155
    .local v4, "e":Ljava/lang/Exception;
    const-string v9, "LicenseLogService"

    const-string v10, "_log() failed"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "calendar":Ljava/util/Calendar;
    .restart local v1    # "column":Ljava/lang/String;
    .restart local v3    # "cvWhere":Landroid/content/ContentValues;
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v6    # "result":Landroid/content/ContentValues;
    .restart local v7    # "time":J
    :cond_1
    :try_start_1
    sget-object v9, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "LICENSE_LOG"

    invoke-virtual {v9, v10, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic access$000()Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/license/LicenseLogService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/license/LicenseLogService;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/server/enterprise/license/LicenseLogService;->handleLicenseLogCleanNotification()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/license/LicenseLogService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/license/LicenseLogService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/license/LicenseLogService;->_log(Ljava/lang/String;I)V

    return-void
.end method

.method public static deleteLog(Ljava/lang/String;)Z
    .locals 5
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 208
    new-array v0, v4, [Ljava/lang/String;

    const-string v2, "pkgName"

    aput-object v2, v0, v3

    .line 211
    .local v0, "sColumns":[Ljava/lang/String;
    new-array v1, v4, [Ljava/lang/String;

    aput-object p0, v1, v3

    .line 214
    .local v1, "sValues":[Ljava/lang/String;
    sget-object v2, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "LICENSE_LOG"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public static getLog(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 13
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 161
    :try_start_0
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 162
    .local v9, "ret":Landroid/os/Bundle;
    const/4 v11, 0x3

    new-array v0, v11, [Ljava/lang/String;

    .line 163
    .local v0, "columns":[Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "date"

    aput-object v12, v0, v11

    .line 164
    const/4 v11, 0x1

    const-string v12, "id"

    aput-object v12, v0, v11

    .line 165
    const/4 v11, 0x2

    const-string/jumbo v12, "value"

    aput-object v12, v0, v11

    .line 167
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 168
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string v11, "pkgName"

    invoke-virtual {v2, v11, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sget-object v11, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "LICENSE_LOG"

    invoke-virtual {v11, v12, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v8

    .line 173
    .local v8, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 174
    const/4 v7, 0x0

    .line 175
    .local v7, "keyVal":Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 176
    .local v5, "id":Ljava/lang/String;
    const/4 v10, 0x0

    .line 177
    .local v10, "val":I
    const/4 v3, 0x0

    .line 178
    .local v3, "date":Ljava/lang/String;
    const/4 v1, 0x0

    .line 179
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 181
    .local v6, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 182
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 183
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v11, "date"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 184
    const-string v11, "id"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 185
    const-string/jumbo v11, "value"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 187
    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    if-nez v11, :cond_2

    .line 189
    new-instance v7, Landroid/os/Bundle;

    .end local v7    # "keyVal":Landroid/os/Bundle;
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 190
    .restart local v7    # "keyVal":Landroid/os/Bundle;
    invoke-virtual {v7, v5, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    invoke-virtual {v9, v3, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvWhere":Landroid/content/ContentValues;
    .end local v3    # "date":Ljava/lang/String;
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "it":Ljava/util/Iterator;
    .end local v7    # "keyVal":Landroid/os/Bundle;
    .end local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v9    # "ret":Landroid/os/Bundle;
    .end local v10    # "val":I
    :catch_0
    move-exception v4

    .line 201
    .local v4, "e":Ljava/lang/Exception;
    const-string v11, "LicenseLogService"

    const-string v12, "getLog() failed"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v9, 0x0

    :cond_1
    return-object v9

    .line 194
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "cvWhere":Landroid/content/ContentValues;
    .restart local v3    # "date":Ljava/lang/String;
    .restart local v5    # "id":Ljava/lang/String;
    .restart local v6    # "it":Ljava/util/Iterator;
    .restart local v7    # "keyVal":Landroid/os/Bundle;
    .restart local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v9    # "ret":Landroid/os/Bundle;
    .restart local v10    # "val":I
    :cond_2
    :try_start_1
    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v11, v5, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 235
    sget-object v1, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "pkgName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 238
    iget-object v1, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    :cond_0
    return-object v0
.end method

.method private handleLicenseLogCleanNotification()V
    .locals 22

    .prologue
    .line 284
    const-string v17, "LicenseLogService"

    const-string v18, "handleLicenseLogCleanNotification()"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 287
    .local v5, "calendar":Ljava/util/Calendar;
    const/16 v17, 0xb

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 288
    const/16 v17, 0xc

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 289
    const/16 v17, 0xd

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 290
    const/16 v17, 0xe

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 291
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    .line 294
    .local v9, "now":J
    const-wide v7, 0x9a7ec800L

    .line 295
    .local v7, "howOld":J
    sub-long v13, v9, v7

    .line 298
    .local v13, "temp":J
    :try_start_0
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 299
    .local v12, "selectionValues":Landroid/content/ContentValues;
    const-string v17, "date<=?"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 301
    sget-object v17, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v18, "LICENSE_LOG"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 308
    .local v15, "token":J
    const-wide/32 v17, 0x5265c00

    add-long v2, v9, v17

    .line 309
    .local v2, "alarmTime":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "alarm"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    .line 310
    .local v4, "am":Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Landroid/content/Intent;

    const-string v20, "edm.intent.action.elm.cleanrecords"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v20, 0x48000000    # 131072.0f

    invoke-static/range {v17 .. v20}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 313
    .local v11, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v4, v11}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 314
    const-wide/16 v17, 0x0

    cmp-long v17, v2, v17

    if-eqz v17, :cond_0

    .line 315
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0, v2, v3, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 321
    .end local v4    # "am":Landroid/app/AlarmManager;
    .end local v11    # "pi":Landroid/app/PendingIntent;
    .end local v12    # "selectionValues":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 323
    return-void

    .line 302
    .end local v2    # "alarmTime":J
    .end local v15    # "token":J
    :catch_0
    move-exception v6

    .line 303
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v17, "LicenseLogService"

    const-string v18, "handleLicenseLogCleanNotification() failed"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 306
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 308
    .restart local v15    # "token":J
    const-wide/32 v17, 0x5265c00

    add-long v2, v9, v17

    .line 309
    .restart local v2    # "alarmTime":J
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "alarm"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    .line 310
    .restart local v4    # "am":Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Landroid/content/Intent;

    const-string v20, "edm.intent.action.elm.cleanrecords"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v20, 0x48000000    # 131072.0f

    invoke-static/range {v17 .. v20}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 313
    .restart local v11    # "pi":Landroid/app/PendingIntent;
    invoke-virtual {v4, v11}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 314
    const-wide/16 v17, 0x0

    cmp-long v17, v2, v17

    if-eqz v17, :cond_0

    .line 315
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0, v2, v3, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 318
    .end local v4    # "am":Landroid/app/AlarmManager;
    .end local v11    # "pi":Landroid/app/PendingIntent;
    :catch_1
    move-exception v6

    .line 319
    const-string v17, "LicenseLogService"

    const-string v18, "handleLicenseLogCleanNotification() failed"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 306
    .end local v2    # "alarmTime":J
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v15    # "token":J
    :catchall_0
    move-exception v17

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 308
    .restart local v15    # "token":J
    const-wide/32 v18, 0x5265c00

    add-long v2, v9, v18

    .line 309
    .restart local v2    # "alarmTime":J
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "alarm"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    .line 310
    .restart local v4    # "am":Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Landroid/content/Intent;

    const-string v21, "edm.intent.action.elm.cleanrecords"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v21, 0x48000000    # 131072.0f

    invoke-static/range {v18 .. v21}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 313
    .restart local v11    # "pi":Landroid/app/PendingIntent;
    invoke-virtual {v4, v11}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 314
    const-wide/16 v18, 0x0

    cmp-long v18, v2, v18

    if-eqz v18, :cond_1

    .line 315
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0, v2, v3, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 321
    .end local v4    # "am":Landroid/app/AlarmManager;
    .end local v11    # "pi":Landroid/app/PendingIntent;
    :cond_1
    :goto_1
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 306
    throw v17

    .line 318
    :catch_2
    move-exception v6

    .line 319
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v18, "LicenseLogService"

    const-string v19, "handleLicenseLogCleanNotification() failed"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 318
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v12    # "selectionValues":Landroid/content/ContentValues;
    :catch_3
    move-exception v6

    .line 319
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v17, "LicenseLogService"

    const-string v18, "handleLicenseLogCleanNotification() failed"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 6
    .param p0, "apiName"    # Ljava/lang/String;

    .prologue
    .line 94
    if-nez p0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 100
    .local v0, "appid":I
    const/16 v4, 0x2710

    if-lt v0, v4, :cond_0

    const/16 v4, 0x4e1f

    if-gt v0, v4, :cond_0

    .line 105
    sget-object v4, Lcom/android/server/enterprise/license/LicenseLogService;->mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 106
    .local v3, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 107
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v4, "apiName"

    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v4, "adminUid"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    invoke-virtual {v3, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 110
    sget-object v4, Lcom/android/server/enterprise/license/LicenseLogService;->mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    .end local v0    # "appid":I
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v2

    .line 112
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "LicenseLogService"

    const-string v5, "log() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 224
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 228
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 232
    return-void
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method
