.class public Lcom/samsung/voiceshell/MultipleWakeUp;
.super Ljava/lang/Object;
.source "MultipleWakeUp.java"


# static fields
.field private static BookmarkShortcut_filePath:Ljava/lang/String; = null

.field private static final CAMERA_CLASS_NAME:Ljava/lang/String; = "com.sec.android.app.camera.Camera"

.field private static final CAMERA_PACKAGE:Ljava/lang/String; = "com.sec.android.app.camera"

.field private static DirectDial_filePath:Ljava/lang/String; = null

.field private static DirectMessage_filePath:Ljava/lang/String; = null

.field private static final FM_CLASS_NAME:Ljava/lang/String; = "com.sec.android.app.fm.MainActivity"

.field private static final FM_PACKAGE:Ljava/lang/String; = "com.sec.android.app.fm"

.field private static NavigationShortcut_filePath:Ljava/lang/String; = null

.field private static OpenApplication_filePath:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MultipleWakeUp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "/data/data/com.vlingo.midas/files/wakeupdata_DirectDial.txt"

    sput-object v0, Lcom/samsung/voiceshell/MultipleWakeUp;->DirectDial_filePath:Ljava/lang/String;

    .line 26
    const-string v0, "/data/data/com.vlingo.midas/files/wakeupdata_DirectMessage.txt"

    sput-object v0, Lcom/samsung/voiceshell/MultipleWakeUp;->DirectMessage_filePath:Ljava/lang/String;

    .line 27
    const-string v0, "/data/data/com.vlingo.midas/files/wakeupdata_BookmarkShortcut.txt"

    sput-object v0, Lcom/samsung/voiceshell/MultipleWakeUp;->BookmarkShortcut_filePath:Ljava/lang/String;

    .line 28
    const-string v0, "/data/data/com.vlingo.midas/files/wakeupdata_NavigationShortcut.txt"

    sput-object v0, Lcom/samsung/voiceshell/MultipleWakeUp;->NavigationShortcut_filePath:Ljava/lang/String;

    .line 29
    const-string v0, "/data/data/com.vlingo.midas/files/wakeupdata_OpenApplication.txt"

    sput-object v0, Lcom/samsung/voiceshell/MultipleWakeUp;->OpenApplication_filePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SetDataPath(Ljava/lang/String;)V
    .locals 2
    .param p0, "strRootPath"    # Ljava/lang/String;

    .prologue
    .line 34
    const-string v0, "MultipleWakeUp"

    const-string v1, "secMM: SetDataPath, policy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "files/wakeupdata_DirectDial.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/MultipleWakeUp;->DirectDial_filePath:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "files/wakeupdata_DirectMessage.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/MultipleWakeUp;->DirectMessage_filePath:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "files/wakeupdata_BookmarkShortcut.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/MultipleWakeUp;->BookmarkShortcut_filePath:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "files/wakeupdata_NavigationShortcut.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/MultipleWakeUp;->NavigationShortcut_filePath:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "files/wakeupdata_OpenApplication.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/MultipleWakeUp;->OpenApplication_filePath:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static getMultipleWakeUpIntent(ILandroid/content/Context;)Landroid/content/Intent;
    .locals 13
    .param p0, "intentType"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v3, 0x0

    .line 47
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, ""

    .line 48
    .local v6, "results":Ljava/lang/String;
    const/4 v0, 0x0

    .line 50
    .local v0, "Uri":Landroid/net/Uri;
    if-nez p1, :cond_0

    .line 52
    const-string v10, "MultipleWakeUp"

    const-string v11, "WARNING: getMultipleWakeUpIntent, context is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v10, 0x0

    .line 272
    :goto_0
    return-object v10

    .line 57
    :cond_0
    const-string v10, "MultipleWakeUp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "secMM: getMultipleWakeUpIntent, intentType : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", context : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 62
    .local v5, "pm":Landroid/content/pm/PackageManager;
    packed-switch p0, :pswitch_data_0

    .line 257
    const-string v10, "MultipleWakeUp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "secMM: getMultipleWakeUpIntent, intentType is none : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :goto_1
    :pswitch_0
    if-eqz v3, :cond_2

    .line 264
    const-string v10, "MultipleWakeUp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "secMM: getMultipleWakeUpIntent, intent : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object v10, v3

    .line 272
    goto :goto_0

    .line 67
    :pswitch_1
    :try_start_0
    const-string v10, "com.android.phone"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 69
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v10, "com.android.phone.action.RECENT_CALLS"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 71
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 73
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "MultipleWakeUp"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v3, 0x0

    .line 76
    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 80
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :pswitch_2
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v10, "vnd.android-dir/mms-sms"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 88
    :pswitch_3
    :try_start_1
    const-string v10, "com.sec.android.app.camera"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 90
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    .end local v3    # "intent":Landroid/content/Intent;
    .local v4, "intent":Landroid/content/Intent;
    :try_start_2
    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.sec.android.app.camera"

    const-string v12, "com.sec.android.app.camera.Camera"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 93
    const/high16 v10, 0x10200000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_a

    move-object v3, v4

    .line 99
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 95
    :catch_1
    move-exception v2

    .line 97
    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_3
    const-string v10, "MultipleWakeUp"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v3, 0x0

    .line 101
    goto :goto_1

    .line 107
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :pswitch_4
    :try_start_3
    const-string v10, "com.android.calendar"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 109
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 110
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    :try_start_4
    const-string v10, "com.android.calendar"

    const-string v11, "com.android.calendar.AllInOneActivity"

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_9

    move-object v3, v4

    .line 116
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_1

    .line 112
    :catch_2
    move-exception v2

    .line 114
    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_4
    const-string v10, "MultipleWakeUp"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v3, 0x0

    .line 117
    goto/16 :goto_1

    .line 123
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :pswitch_5
    :try_start_5
    const-string v10, "com.sec.android.app.music"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 125
    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.sec.android.music.intent.action.PLAY"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    .line 126
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    :try_start_6
    const-string v10, "launchMusicPlayer"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    const/high16 v10, 0x10000000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_8

    move-object v3, v4

    .line 134
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_1

    .line 129
    :catch_3
    move-exception v2

    .line 131
    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_5
    const-string v10, "MultipleWakeUp"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v10, "sec.musicplayer.PLAYBACK_VIEWER"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v10, "playMusic"

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_1

    .line 141
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :pswitch_6
    :try_start_7
    const-string v10, "com.sec.android.app.fm"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 143
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_4

    .line 144
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    :try_start_8
    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.sec.android.app.fm"

    const-string v12, "com.sec.android.app.fm.MainActivity"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 146
    const-string v10, "playback"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 147
    const/high16 v10, 0x200000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 148
    const/high16 v10, 0x10000000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 149
    const/high16 v10, 0x20000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_7

    move-object v3, v4

    .line 155
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_1

    .line 151
    :catch_4
    move-exception v2

    .line 153
    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_6
    const-string v10, "MultipleWakeUp"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v3, 0x0

    .line 156
    goto/16 :goto_1

    .line 160
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :pswitch_7
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const/high16 v10, 0x10200000

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 169
    :try_start_9
    const-string v9, "com.sec.android.app.voicerecorder"

    .line 170
    .local v9, "strPackageName":Ljava/lang/String;
    const-string v8, "com.sec.android.app.voicerecorder.VoiceRecorderMainActivity"

    .line 172
    .local v8, "strActivityName":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 173
    new-instance v10, Landroid/content/ComponentName;

    invoke-direct {v10, v9, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_1

    .line 177
    .end local v8    # "strActivityName":Ljava/lang/String;
    .end local v9    # "strPackageName":Ljava/lang/String;
    :catch_5
    move-exception v2

    .line 179
    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "MultipleWakeUp"

    const-string v11, "secMM: There is no Voicerecorder. Set intent to VoiceNote"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :try_start_a
    const-string v9, "com.sec.android.app.voicenote"

    .line 185
    .restart local v9    # "strPackageName":Ljava/lang/String;
    const-string v8, "com.sec.android.app.voicenote.main.VNMainActivity"

    .line 187
    .restart local v8    # "strActivityName":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 188
    new-instance v10, Landroid/content/ComponentName;

    invoke-direct {v10, v9, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_1

    .line 190
    .end local v8    # "strActivityName":Ljava/lang/String;
    .end local v9    # "strPackageName":Ljava/lang/String;
    :catch_6
    move-exception v2

    .line 192
    const-string v10, "MultipleWakeUp"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v3, 0x0

    .line 196
    goto/16 :goto_1

    .line 204
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :pswitch_8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_on"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 205
    .local v1, "drivingMode":I
    if-nez v1, :cond_1

    .line 206
    const/4 v1, 0x1

    .line 211
    :goto_7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_on"

    invoke-static {v10, v11, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 213
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v10, "android.settings.DRIVING_MODE_CHANGED"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v10, "DrivingMode"

    invoke-virtual {v3, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 217
    const/4 v3, 0x0

    .line 218
    goto/16 :goto_1

    .line 208
    :cond_1
    const/4 v1, 0x0

    goto :goto_7

    .line 222
    .end local v1    # "drivingMode":I
    :pswitch_9
    sget-object v10, Lcom/samsung/voiceshell/MultipleWakeUp;->DirectDial_filePath:Ljava/lang/String;

    invoke-static {v10}, Lcom/samsung/voiceshell/MultipleWakeUp;->readDataFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 223
    const-string v10, "tel"

    const/4 v11, 0x0

    invoke-static {v10, v6, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 224
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v10, "android.intent.action.CALL"

    invoke-direct {v3, v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 225
    .restart local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_1

    .line 229
    :pswitch_a
    sget-object v10, Lcom/samsung/voiceshell/MultipleWakeUp;->DirectMessage_filePath:Ljava/lang/String;

    invoke-static {v10}, Lcom/samsung/voiceshell/MultipleWakeUp;->readDataFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 230
    const-string v10, "sms"

    const/4 v11, 0x0

    invoke-static {v10, v6, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 231
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v10, "android.intent.action.SENDTO"

    invoke-direct {v3, v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 232
    .restart local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_1

    .line 236
    :pswitch_b
    sget-object v10, Lcom/samsung/voiceshell/MultipleWakeUp;->BookmarkShortcut_filePath:Ljava/lang/String;

    invoke-static {v10}, Lcom/samsung/voiceshell/MultipleWakeUp;->readDataFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 237
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 238
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v3, v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 239
    .restart local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_1

    .line 243
    :pswitch_c
    sget-object v10, Lcom/samsung/voiceshell/MultipleWakeUp;->NavigationShortcut_filePath:Ljava/lang/String;

    invoke-static {v10}, Lcom/samsung/voiceshell/MultipleWakeUp;->readDataFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 244
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "google.navigation:q="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 245
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v3, v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 246
    .restart local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_1

    .line 250
    :pswitch_d
    sget-object v10, Lcom/samsung/voiceshell/MultipleWakeUp;->OpenApplication_filePath:Ljava/lang/String;

    invoke-static {v10}, Lcom/samsung/voiceshell/MultipleWakeUp;->readDataFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 251
    const-string v10, "\\|"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 252
    .local v7, "str":[Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    .restart local v3    # "intent":Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    const/4 v11, 0x0

    aget-object v11, v7, v11

    const/4 v12, 0x1

    aget-object v12, v7, v12

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 268
    .end local v7    # "str":[Ljava/lang/String;
    :cond_2
    const-string v10, "MultipleWakeUp"

    const-string v11, "secMM: getMultipleWakeUpIntent, intent is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 151
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_6

    .line 129
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    :catch_8
    move-exception v2

    move-object v3, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_5

    .line 112
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    :catch_9
    move-exception v2

    move-object v3, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_4

    .line 95
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    :catch_a
    move-exception v2

    move-object v3, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_3

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static readDataFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 277
    const/4 v2, 0x0

    .line 278
    .local v2, "reader":Ljava/io/BufferedReader;
    const-string v4, ""

    .line 281
    .local v4, "results":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 283
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    goto :goto_0

    .line 291
    :cond_0
    if-eqz v3, :cond_1

    .line 292
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v2, v3

    .line 298
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    return-object v4

    .line 293
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v2, v3

    .line 296
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 285
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "line":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 286
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 291
    if-eqz v2, :cond_2

    .line 292
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 293
    :catch_2
    move-exception v0

    .line 294
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 287
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 288
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 291
    if-eqz v2, :cond_2

    .line 292
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 293
    :catch_4
    move-exception v0

    .line 294
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 290
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 291
    :goto_4
    if-eqz v2, :cond_3

    .line 292
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 295
    :cond_3
    :goto_5
    throw v5

    .line 293
    :catch_5
    move-exception v0

    .line 294
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 290
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 287
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 285
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method
