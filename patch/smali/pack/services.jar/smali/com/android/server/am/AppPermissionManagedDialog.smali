.class Lcom/android/server/am/AppPermissionManagedDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppPermissionManagedDialog.java"


# static fields
.field private static final CONTINUE:I = 0x0

.field private static final FORCE_QUIT:I = 0x1

.field private static final GETMSGBYAPP:I = 0x2

.field private static final LANCHSETTINGS:I = 0x3

.field private static final TYPE_APPSTART_WARNING:I = 0x0

.field private static final TYPE_PERMISSION_ERROR:I = 0x1


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mCMAppName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialogType:I

.field private final mHandler:Landroid/os/Handler;

.field private mMessageByApp:Ljava/lang/String;

.field private mPermission:Ljava/lang/String;

.field private mPermissions:[Ljava/lang/String;

.field private mProc:Lcom/android/server/am/ProcessRecord;

.field private mResource:Landroid/content/res/Resources;

.field private mResult:Lcom/android/server/am/AppErrorResult;

.field private mService:Landroid/app/ICMDialogMessageManager;

.field private mTitleByApp:Ljava/lang/String;

.field private newIntent:Landroid/content/Intent;

.field private serviceConn:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcom/android/server/am/AppErrorResult;
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "permission"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    .line 57
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/server/am/AppPermissionManagedDialog;->newIntent:Landroid/content/Intent;

    .line 58
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mTitleByApp:Ljava/lang/String;

    .line 59
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mMessageByApp:Ljava/lang/String;

    .line 60
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    .line 61
    const-string v10, "Permission manager"

    iput-object v10, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;

    .line 62
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermissions:[Ljava/lang/String;

    .line 63
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermission:Ljava/lang/String;

    .line 64
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    .line 67
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 68
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 71
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mService:Landroid/app/ICMDialogMessageManager;

    .line 72
    new-instance v10, Lcom/android/server/am/AppPermissionManagedDialog$1;

    invoke-direct {v10, p0}, Lcom/android/server/am/AppPermissionManagedDialog$1;-><init>(Lcom/android/server/am/AppPermissionManagedDialog;)V

    iput-object v10, p0, Lcom/android/server/am/AppPermissionManagedDialog;->serviceConn:Landroid/content/ServiceConnection;

    .line 271
    new-instance v10, Lcom/android/server/am/AppPermissionManagedDialog$2;

    invoke-direct {v10, p0}, Lcom/android/server/am/AppPermissionManagedDialog$2;-><init>(Lcom/android/server/am/AppPermissionManagedDialog;)V

    iput-object v10, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mHandler:Landroid/os/Handler;

    .line 174
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mDialogType:I

    .line 175
    iput-object p1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    .line 178
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 179
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 180
    const/4 v8, 0x0

    .line 181
    .local v8, "name":Ljava/lang/CharSequence;
    const/4 v9, 0x0

    .line 183
    .local v9, "tmp_name":Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .line 185
    .local v7, "isUseDefault":Z
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_2

    const/4 v10, 0x1

    :goto_0
    if-nez v10, :cond_0

    .line 187
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 191
    :cond_0
    :try_start_0
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/16 v11, 0x80

    move-object/from16 v0, p4

    invoke-virtual {v10, v0, v11}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/PackageItemInfo;->labelRes:I

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermission:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.sec.android.app.capabilitymanager"

    const/16 v12, 0x80

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 195
    .local v1, "CMInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v1    # "CMInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1
    const/4 v10, 0x1

    if-ne v7, v10, :cond_1

    .line 215
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermission:Ljava/lang/String;

    .line 216
    const-string v10, "Permission manager"

    iput-object v10, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;

    .line 220
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x100

    invoke-virtual {v10, v11}, Landroid/view/Window;->addFlags(I)V

    .line 221
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const-string v11, "Error"

    invoke-virtual {v10, v11}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 223
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 227
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 229
    .local v6, "isChinaNal":Ljava/lang/String;
    if-eqz v6, :cond_3

    const-string v10, "ChinaNalSecurity"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 230
    const/4 v10, -0x2

    iget-object v11, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    const/high16 v12, 0x1040000

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {p0, v10, v11, v12}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 233
    const/4 v10, -0x1

    iget-object v11, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    const v12, 0x1040ae3

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {p0, v10, v11, v12}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 243
    :goto_2
    invoke-direct {p0}, Lcom/android/server/am/AppPermissionManagedDialog;->setTitleAndMessage()V

    .line 245
    new-instance v2, Landroid/content/Intent;

    const-string v10, "com.android.security.capabilitymanager.action.GET_DIALOGMESSAGE"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v2, "bindIntent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/server/am/AppPermissionManagedDialog;->serviceConn:Landroid/content/ServiceConnection;

    const/4 v11, 0x1

    invoke-virtual {p1, v2, v10, v11}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 247
    return-void

    .line 185
    .end local v2    # "bindIntent":Landroid/content/Intent;
    .end local v6    # "isChinaNal":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 197
    :catch_0
    move-exception v3

    .line 200
    .local v3, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.sec.android.app.msc"

    const/16 v12, 0x80

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 201
    .restart local v1    # "CMInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 203
    .end local v1    # "CMInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v4

    .line 205
    .local v4, "e2":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.sec.android.app.capabilitymanagerOverJBP"

    const/16 v12, 0x80

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 206
    .restart local v1    # "CMInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 207
    .end local v1    # "CMInfo":Landroid/content/pm/ApplicationInfo;
    :catch_2
    move-exception v5

    .line 208
    .local v5, "e3":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 238
    .end local v3    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "e2":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "e3":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "isChinaNal":Ljava/lang/String;
    :cond_3
    const/4 v10, -0x1

    iget-object v11, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    const v12, 0x104072e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {p0, v10, v11, v12}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;[Ljava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packagename"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    .line 57
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->newIntent:Landroid/content/Intent;

    .line 58
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mTitleByApp:Ljava/lang/String;

    .line 59
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mMessageByApp:Ljava/lang/String;

    .line 60
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    .line 61
    const-string v7, "Permission manager"

    iput-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;

    .line 62
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermissions:[Ljava/lang/String;

    .line 63
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermission:Ljava/lang/String;

    .line 64
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    .line 67
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 68
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 71
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mService:Landroid/app/ICMDialogMessageManager;

    .line 72
    new-instance v7, Lcom/android/server/am/AppPermissionManagedDialog$1;

    invoke-direct {v7, p0}, Lcom/android/server/am/AppPermissionManagedDialog$1;-><init>(Lcom/android/server/am/AppPermissionManagedDialog;)V

    iput-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->serviceConn:Landroid/content/ServiceConnection;

    .line 271
    new-instance v7, Lcom/android/server/am/AppPermissionManagedDialog$2;

    invoke-direct {v7, p0}, Lcom/android/server/am/AppPermissionManagedDialog$2;-><init>(Lcom/android/server/am/AppPermissionManagedDialog;)V

    iput-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mHandler:Landroid/os/Handler;

    .line 107
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mDialogType:I

    .line 108
    iput-object p1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    .line 111
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->newIntent:Landroid/content/Intent;

    .line 112
    iget-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->newIntent:Landroid/content/Intent;

    const-string v8, "sec_wdlg_newIntent_touch"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/pm/IPackageManager;->getPermissionAlertDialogEnableType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 117
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9, p2}, Landroid/content/pm/IPackageManager;->updateManagedPermissionOfPackage(I[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    :goto_0
    iput-object p4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermissions:[Ljava/lang/String;

    .line 124
    const/4 v6, 0x0

    .line 127
    .local v6, "isUseDefault":Z
    :try_start_1
    iget-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v7, p2, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 128
    .local v1, "appinfo":Landroid/content/pm/ApplicationInfo;
    iget-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    .line 130
    iget-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.sec.android.app.capabilitymanager"

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 131
    .local v0, "CMInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    .end local v0    # "CMInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appinfo":Landroid/content/pm/ApplicationInfo;
    :goto_1
    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 152
    iput-object p2, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    .line 153
    const-string v7, "Permission manager"

    iput-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;

    .line 156
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x100

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 157
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const-string v8, "Warning"

    invoke-virtual {v7, v8}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 159
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 160
    const/4 v7, -0x1

    iget-object v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    const v9, 0x104000a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {p0, v7, v8, v9}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 164
    invoke-direct {p0}, Lcom/android/server/am/AppPermissionManagedDialog;->setTitleAndMessage()V

    .line 166
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.android.security.capabilitymanager.action.GET_DIALOGMESSAGE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v2, "bindIntent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->serviceConn:Landroid/content/ServiceConnection;

    const/4 v8, 0x1

    invoke-virtual {p1, v2, v7, v8}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 168
    return-void

    .line 119
    .end local v2    # "bindIntent":Landroid/content/Intent;
    .end local v6    # "isUseDefault":Z
    :catch_0
    move-exception v3

    .line 120
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 133
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v6    # "isUseDefault":Z
    :catch_1
    move-exception v3

    .line 136
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    iget-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.sec.android.app.msc"

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 137
    .restart local v0    # "CMInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 138
    .end local v0    # "CMInfo":Landroid/content/pm/ApplicationInfo;
    :catch_2
    move-exception v4

    .line 141
    .local v4, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    iget-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.sec.android.app.capabilitymanagerOverJBP"

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 142
    .restart local v0    # "CMInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 143
    .end local v0    # "CMInfo":Landroid/content/pm/ApplicationInfo;
    :catch_3
    move-exception v5

    .line 145
    .local v5, "e2":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v6, 0x1

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/app/ICMDialogMessageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mService:Landroid/app/ICMDialogMessageManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/am/AppPermissionManagedDialog;Landroid/app/ICMDialogMessageManager;)Landroid/app/ICMDialogMessageManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;
    .param p1, "x1"    # Landroid/app/ICMDialogMessageManager;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mService:Landroid/app/ICMDialogMessageManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/am/AppPermissionManagedDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mDialogType:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->serviceConn:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/AppErrorResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/am/AppPermissionManagedDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/server/am/AppPermissionManagedDialog;->setTitleAndMessageByApp()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/am/AppPermissionManagedDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mTitleByApp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/server/am/AppPermissionManagedDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mMessageByApp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/am/AppPermissionManagedDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/AppPermissionManagedDialog;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermissions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/AppPermissionManagedDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermission:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->newIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setTitleAndMessage()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mTitleByApp:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mMessageByApp:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mTitleByApp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mMessageByApp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mDialogType:I

    if-nez v0, :cond_2

    .line 255
    const-string v0, "Warning"

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " can be terminated suddenly. Because some of permission are managed by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\nIf you want more detiled information, please go to the"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 257
    :cond_2
    iget v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mDialogType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 258
    const-string v0, "Error"

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission error. Permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is managed by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". If you want to be using this permission, please enable permission in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". The application "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is terminated."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private setTitleAndMessageByApp()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mTitleByApp:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mMessageByApp:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mTitleByApp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mMessageByApp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 269
    :cond_0
    return-void
.end method
