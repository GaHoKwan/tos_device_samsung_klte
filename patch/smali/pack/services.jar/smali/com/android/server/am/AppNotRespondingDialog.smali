.class final Lcom/android/server/am/AppNotRespondingDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppNotRespondingDialog.java"


# static fields
.field static final FORCE_CLOSE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AppNotRespondingDialog"

.field static final WAIT:I = 0x2

.field static final WAIT_AND_REPORT:I = 0x3


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V
    .locals 27
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p5, "aboveSystem"    # Z

    .prologue
    .line 55
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 192
    new-instance v22, Lcom/android/server/am/AppNotRespondingDialog$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/AppNotRespondingDialog$2;-><init>(Lcom/android/server/am/AppNotRespondingDialog;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    .line 57
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 58
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 60
    .local v16, "res":Landroid/content/res/Resources;
    const-string v6, "-k -t -z -d -o /data/log/dumpstate_app_anr"

    .line 63
    .local v6, "dumpCmd":Ljava/lang/String;
    const-string/jumbo v22, "user"

    sget-object v23, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 64
    new-instance v22, Ljava/lang/Thread;

    new-instance v23, Lcom/android/server/am/AppNotRespondingDialog$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/AppNotRespondingDialog$1;-><init>(Lcom/android/server/am/AppNotRespondingDialog;)V

    const-string v24, "dumpstate"

    invoke-direct/range {v22 .. v24}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->start()V

    .line 117
    :goto_0
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppNotRespondingDialog;->setCancelable(Z)V

    .line 120
    if-eqz p4, :cond_7

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 123
    .local v11, "name1":Ljava/lang/CharSequence;
    :goto_1
    const/4 v12, 0x0

    .line 124
    .local v12, "name2":Ljava/lang/CharSequence;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/ArrayMap;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v12

    if-eqz v12, :cond_9

    .line 126
    if-eqz v11, :cond_8

    .line 127
    const v17, 0x1040696

    .line 144
    .local v17, "resid":I
    :goto_2
    const-string v22, "com.android.phone"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 145
    const-string v22, "PA"

    const-string v23, "AR"

    invoke-static/range {v22 .. v23}, Landroid/os/Debug;->dumpResetReason(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_0
    if-eqz v12, :cond_b

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppNotRespondingDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 153
    const/16 v22, -0x1

    const v23, 0x104069a

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/AppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 156
    const/16 v22, -0x2

    const v23, 0x104069c

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/AppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 160
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 162
    const/16 v18, 0x0

    .line 163
    .local v18, "rp":Landroid/app/enterprise/RestrictionPolicy;
    const-string v22, "enterprise_policy"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 165
    .local v8, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v8, :cond_1

    .line 166
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v18

    .line 168
    :cond_1
    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Landroid/app/enterprise/RestrictionPolicy;->isGoogleCrashReportAllowed()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 170
    const/16 v22, -0x3

    const v23, 0x104069b

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/AppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 178
    .end local v8    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v18    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_2
    const v22, 0x1040695

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppNotRespondingDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 179
    if-eqz p5, :cond_3

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v22

    const/16 v23, 0x7da

    invoke-virtual/range {v22 .. v23}, Landroid/view/Window;->setType(I)V

    .line 182
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 183
    .local v4, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Application Not Responding: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 184
    const/16 v22, 0x110

    move/from16 v0, v22

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 187
    return-void

    .line 92
    .end local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v11    # "name1":Ljava/lang/CharSequence;
    .end local v12    # "name2":Ljava/lang/CharSequence;
    .end local v17    # "resid":I
    :cond_4
    const/4 v10, 0x0

    .line 93
    .local v10, "filestr":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 94
    .local v19, "time":J
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v22, "yyyy-mm-dd-hh-mm-ss"

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 95
    .local v5, "dayTime":Ljava/text/SimpleDateFormat;
    new-instance v22, Ljava/util/Date;

    move-object/from16 v0, v22

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    .line 96
    .local v21, "timestr":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "/data/log/looper-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ".txt"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 97
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v9, "file":Ljava/io/File;
    const/4 v13, 0x0

    .line 99
    .local v13, "output":Ljava/io/FileOutputStream;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v15, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 102
    .local v15, "pkg":Ljava/lang/String;
    :try_start_0
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .end local v13    # "output":Ljava/io/FileOutputStream;
    .local v14, "output":Ljava/io/FileOutputStream;
    :try_start_1
    const-string v22, "activity"

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v23

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "looper"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    aput-object v15, v24, v25

    invoke-static/range {v22 .. v24}, Landroid/os/Debug;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    if-eqz v14, :cond_c

    .line 109
    :try_start_2
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v13, v14

    .line 114
    .end local v14    # "output":Ljava/io/FileOutputStream;
    .restart local v13    # "output":Ljava/io/FileOutputStream;
    :cond_5
    :goto_4
    const-string v22, "-k -t -z -d -o /data/log/dumpstate_app_anr"

    invoke-static/range {v22 .. v22}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 110
    .end local v13    # "output":Ljava/io/FileOutputStream;
    .restart local v14    # "output":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v7

    .line 111
    .local v7, "e":Ljava/io/IOException;
    const-string v22, "AppNotRespondingDialog"

    const-string v23, "output.close() failed"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v13, v14

    .line 112
    .end local v14    # "output":Ljava/io/FileOutputStream;
    .restart local v13    # "output":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 104
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 105
    .restart local v7    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_3
    const-string v22, "AppNotRespondingDialog"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Can\'t dump looper "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    if-eqz v13, :cond_5

    .line 109
    :try_start_4
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 110
    :catch_2
    move-exception v7

    .line 111
    const-string v22, "AppNotRespondingDialog"

    const-string v23, "output.close() failed"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 107
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v22

    :goto_6
    if-eqz v13, :cond_6

    .line 109
    :try_start_5
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 112
    :cond_6
    :goto_7
    throw v22

    .line 110
    :catch_3
    move-exception v7

    .line 111
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v23, "AppNotRespondingDialog"

    const-string v24, "output.close() failed"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 120
    .end local v5    # "dayTime":Ljava/text/SimpleDateFormat;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "filestr":Ljava/lang/String;
    .end local v13    # "output":Ljava/io/FileOutputStream;
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v19    # "time":J
    .end local v21    # "timestr":Ljava/lang/String;
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 129
    .restart local v11    # "name1":Ljava/lang/CharSequence;
    .restart local v12    # "name2":Ljava/lang/CharSequence;
    :cond_8
    move-object v11, v12

    .line 130
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 131
    const v17, 0x1040698

    .restart local v17    # "resid":I
    goto/16 :goto_2

    .line 134
    .end local v17    # "resid":I
    :cond_9
    if-eqz v11, :cond_a

    .line 135
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 136
    const v17, 0x1040697

    .restart local v17    # "resid":I
    goto/16 :goto_2

    .line 138
    .end local v17    # "resid":I
    :cond_a
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 139
    const v17, 0x1040699

    .restart local v17    # "resid":I
    goto/16 :goto_2

    .line 149
    :cond_b
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_3

    .line 107
    .end local v11    # "name1":Ljava/lang/CharSequence;
    .end local v12    # "name2":Ljava/lang/CharSequence;
    .end local v17    # "resid":I
    .restart local v5    # "dayTime":Ljava/text/SimpleDateFormat;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v10    # "filestr":Ljava/lang/String;
    .restart local v14    # "output":Ljava/io/FileOutputStream;
    .restart local v15    # "pkg":Ljava/lang/String;
    .restart local v19    # "time":J
    .restart local v21    # "timestr":Ljava/lang/String;
    :catchall_1
    move-exception v22

    move-object v13, v14

    .end local v14    # "output":Ljava/io/FileOutputStream;
    .restart local v13    # "output":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 104
    .end local v13    # "output":Ljava/io/FileOutputStream;
    .restart local v14    # "output":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v7

    move-object v13, v14

    .end local v14    # "output":Ljava/io/FileOutputStream;
    .restart local v13    # "output":Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .end local v13    # "output":Ljava/io/FileOutputStream;
    .restart local v14    # "output":Ljava/io/FileOutputStream;
    :cond_c
    move-object v13, v14

    .end local v14    # "output":Ljava/io/FileOutputStream;
    .restart local v13    # "output":Ljava/io/FileOutputStream;
    goto/16 :goto_4
.end method

.method static synthetic access$000(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppNotRespondingDialog;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppNotRespondingDialog;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method


# virtual methods
.method getProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method
