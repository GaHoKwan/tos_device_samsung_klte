.class public Lcom/android/server/ssrm/CoolDownMode;
.super Ljava/lang/Object;
.source "CoolDownMode.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field final ACTION_CHECK_COOLDOWN_LEVEL:Ljava/lang/String;

.field BATTERY_COOLDOWN_TEMP_6:I

.field BATTERY_COOLDOWN_TEMP_8:I

.field final CHECK_COOLDOWN_LEVEL:Ljava/lang/String;

.field final CHECK_COOLDOWN_LIST:Ljava/lang/String;

.field DELAY_FOR_SIOPLEVE_6:I

.field DELAY_FOR_SIOPLEVE_8:I

.field final OVERHEAT_ID:Ljava/lang/String;

.field VZW_COOLDOWN_TEMP_LEVEL_6:I

.field VZW_COOLDOWN_TEMP_LEVEL_8:I

.field final VZW_COOL_DOWN_LEVEL_0:I

.field final VZW_COOL_DOWN_LEVEL_6:I

.field final VZW_COOL_DOWN_LEVEL_8:I

.field isSetupWizardCompleted:Z

.field mCurSIOPStep:I

.field mDisableCoolDown:Z

.field final mIntentCheckCooldownLevel:Landroid/content/Intent;

.field mKillActiveApplicationsRunnable:Ljava/lang/Runnable;

.field mPrevSIOPStep:I

.field mSendSIOPLevelDelay:J

.field mStartKillActiveApplicationsRunnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "SSRMv2:CoolDownMode"

    sput-object v0, Lcom/android/server/ssrm/CoolDownMode;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    const v4, 0xea60

    const/16 v3, 0x2a8

    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v2, p0, Lcom/android/server/ssrm/CoolDownMode;->mPrevSIOPStep:I

    .line 40
    iput v2, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ssrm/CoolDownMode;->mSendSIOPLevelDelay:J

    .line 44
    iput v4, p0, Lcom/android/server/ssrm/CoolDownMode;->DELAY_FOR_SIOPLEVE_6:I

    .line 46
    iput v4, p0, Lcom/android/server/ssrm/CoolDownMode;->DELAY_FOR_SIOPLEVE_8:I

    .line 48
    const/16 v0, 0x262

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOLDOWN_TEMP_LEVEL_6:I

    .line 50
    iput v3, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOLDOWN_TEMP_LEVEL_8:I

    .line 52
    const/16 v0, 0x2bc

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->BATTERY_COOLDOWN_TEMP_6:I

    .line 54
    const/16 v0, 0x320

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->BATTERY_COOLDOWN_TEMP_8:I

    .line 56
    iput v2, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOL_DOWN_LEVEL_0:I

    .line 58
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOL_DOWN_LEVEL_6:I

    .line 60
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOL_DOWN_LEVEL_8:I

    .line 62
    iput-boolean v2, p0, Lcom/android/server/ssrm/CoolDownMode;->isSetupWizardCompleted:Z

    .line 64
    iput-boolean v2, p0, Lcom/android/server/ssrm/CoolDownMode;->mStartKillActiveApplicationsRunnable:Z

    .line 66
    iput-boolean v2, p0, Lcom/android/server/ssrm/CoolDownMode;->mDisableCoolDown:Z

    .line 68
    const-string v0, "android.intent.action.CHECK_COOLDOWN_LEVEL"

    iput-object v0, p0, Lcom/android/server/ssrm/CoolDownMode;->ACTION_CHECK_COOLDOWN_LEVEL:Ljava/lang/String;

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHECK_COOLDOWN_LEVEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    .line 72
    const-string v0, "check_cooldown_level"

    iput-object v0, p0, Lcom/android/server/ssrm/CoolDownMode;->CHECK_COOLDOWN_LEVEL:Ljava/lang/String;

    .line 74
    const-string v0, "check_cooldown_list"

    iput-object v0, p0, Lcom/android/server/ssrm/CoolDownMode;->CHECK_COOLDOWN_LIST:Ljava/lang/String;

    .line 76
    const-string v0, "overheat_id"

    iput-object v0, p0, Lcom/android/server/ssrm/CoolDownMode;->OVERHEAT_ID:Ljava/lang/String;

    .line 176
    new-instance v0, Lcom/android/server/ssrm/CoolDownMode$2;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/CoolDownMode$2;-><init>(Lcom/android/server/ssrm/CoolDownMode;)V

    iput-object v0, p0, Lcom/android/server/ssrm/CoolDownMode;->mKillActiveApplicationsRunnable:Ljava/lang/Runnable;

    .line 79
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/ssrm_v2.cooldown_disable"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/CoolDownMode;->mDisableCoolDown:Z

    .line 83
    :cond_0
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    if-eqz v0, :cond_2

    .line 84
    const/16 v0, 0x258

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOLDOWN_TEMP_LEVEL_6:I

    .line 85
    const/16 v0, 0x29e

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOLDOWN_TEMP_LEVEL_8:I

    .line 90
    :cond_1
    :goto_0
    return-void

    .line 86
    :cond_2
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_MATISSE:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_MILLET:Z

    if-eqz v0, :cond_1

    .line 87
    :cond_3
    const/16 v0, 0x276

    iput v0, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOLDOWN_TEMP_LEVEL_6:I

    .line 88
    iput v3, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOLDOWN_TEMP_LEVEL_8:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/ssrm/CoolDownMode;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ssrm/CoolDownMode;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/CoolDownMode;->killActiveApplications(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/server/ssrm/CoolDownMode;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getLaunchers()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v5

    .line 299
    .local v5, "monitor":Lcom/android/server/ssrm/Monitor;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 300
    .local v4, "mResult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 301
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    iget-object v6, v5, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 306
    .local v3, "mLauncherInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 307
    .local v2, "item":Landroid/content/pm/ResolveInfo;
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 309
    .end local v2    # "item":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v4
.end method

.method private getRunningTasks(Landroid/app/ActivityManager;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "activityManager"    # Landroid/app/ActivityManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v2, "mResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v4, 0x3e8

    invoke-virtual {p1, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 280
    .local v3, "mRunningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_2

    .line 281
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 282
    .local v1, "item":Landroid/app/ActivityManager$RunningTaskInfo;
    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    if-lez v4, :cond_0

    .line 283
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 285
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 287
    :cond_1
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2
    return-object v2
.end method

.method private killActiveApplications(I)I
    .locals 12
    .param p1, "siopLevel"    # I

    .prologue
    const/4 v11, 0x1

    .line 214
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v7

    .line 216
    .local v7, "monitor":Lcom/android/server/ssrm/Monitor;
    const-string v9, "checkingSIOP"

    const-string v10, "killActiveApplications start"

    invoke-static {v9, v10}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v9, v7, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/ActivityManager;

    invoke-direct {p0, v9}, Lcom/android/server/ssrm/CoolDownMode;->getRunningTasks(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v6

    .line 218
    .local v6, "mRunningTaskInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, v7, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v9}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    .line 220
    .local v8, "processInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/16 v9, 0x8

    if-ne p1, v9, :cond_a

    .line 221
    invoke-direct {p0}, Lcom/android/server/ssrm/CoolDownMode;->getLaunchers()Ljava/util/HashMap;

    move-result-object v5

    .line 222
    .local v5, "mLuncherInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 223
    .local v3, "mExceptionListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v4, 0x0

    .line 224
    .local v4, "mForcedStopNumber":I
    const-string v9, "com.android.contacts"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v9, "com.android.phone"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v9, "com.android.incallui"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v9, "com.google.android.apps.maps"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-boolean v9, v7, Lcom/android/server/ssrm/Monitor;->mCallStateOffHook:Z

    if-eqz v9, :cond_0

    .line 229
    const-string v9, "com.android.settings"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v9, "com.sec.allsharecastplayer"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v9, "com.sec.android.app.wfdbroker"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_2

    .line 235
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 236
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 234
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_5

    .line 241
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "com.vznavigator"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 243
    :cond_3
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 240
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 247
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 248
    .local v2, "item":Ljava/lang/String;
    sget-object v9, Lcom/android/server/ssrm/CoolDownMode;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " killActiveApplications : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v9, v7, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v9, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_2

    .line 252
    .end local v2    # "item":Ljava/lang/String;
    :cond_6
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 253
    .local v2, "item":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string v9, "com.sec.android.app.videoplayer"

    iget-object v10, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 254
    sget-object v9, Lcom/android/server/ssrm/CoolDownMode;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " killActiveApplications : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v9, v7, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v10, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 256
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 259
    .end local v2    # "item":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v4, v9

    .line 272
    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "mExceptionListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v4    # "mForcedStopNumber":I
    .end local v5    # "mLuncherInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_9
    :goto_4
    return v4

    .line 260
    :cond_a
    const/4 v9, 0x6

    if-lt p1, v9, :cond_c

    .line 261
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 262
    .restart local v3    # "mExceptionListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v4, 0x0

    .line 263
    .restart local v4    # "mForcedStopNumber":I
    const-string v9, "com.into.stability"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_9

    .line 265
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 266
    iget-object v10, v7, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 267
    add-int/lit8 v4, v4, 0x1

    .line 264
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 272
    .end local v0    # "i":I
    .end local v3    # "mExceptionListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v4    # "mForcedStopNumber":I
    :cond_c
    const/4 v4, -0x1

    goto :goto_4
.end method


# virtual methods
.method isSetupWizardFinished()Z
    .locals 3

    .prologue
    .line 313
    const-string v1, "persist.sys.setupwizard"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "setupFinished":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "FINISH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    sget-object v1, Lcom/android/server/ssrm/CoolDownMode;->TAG:Ljava/lang/String;

    const-string v2, " isSetupWizardFinished ? : true "

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const/4 v1, 0x1

    .line 319
    :goto_0
    return v1

    .line 318
    :cond_0
    sget-object v1, Lcom/android/server/ssrm/CoolDownMode;->TAG:Ljava/lang/String;

    const-string v2, " isSetupWizardFinished ? : false "

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showCoolDownAlert(Ljava/lang/String;)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 153
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v2

    .line 154
    .local v2, "monitor":Lcom/android/server/ssrm/Monitor;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 155
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 156
    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const v4, 0x1040a63

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 158
    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const v4, 0x1040a62

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 160
    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const v4, 0x1040a64

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/ssrm/CoolDownMode$1;

    invoke-direct {v4, p0}, Lcom/android/server/ssrm/CoolDownMode$1;-><init>(Lcom/android/server/ssrm/CoolDownMode;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 171
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 172
    .local v1, "d":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 173
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 174
    return-void
.end method

.method public startVZWCoolDownMode(I)V
    .locals 11
    .param p1, "currentTemperature"    # I

    .prologue
    const v10, 0x1040a61

    const/16 v9, 0x8

    const/4 v8, 0x6

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 93
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v2

    .line 94
    .local v2, "monitor":Lcom/android/server/ssrm/Monitor;
    iget-boolean v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mDisableCoolDown:Z

    if-eqz v3, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-boolean v3, v2, Lcom/android/server/ssrm/Monitor;->mBootComplete:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/ssrm/CoolDownMode;->isSetupWizardCompleted:Z

    if-nez v3, :cond_4

    .line 98
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/ssrm/CoolDownMode;->isSetupWizardFinished()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 99
    iput-boolean v7, p0, Lcom/android/server/ssrm/CoolDownMode;->isSetupWizardCompleted:Z

    .line 101
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/ssrm/CoolDownMode;->isSetupWizardCompleted:Z

    if-eqz v3, :cond_0

    .line 106
    :cond_4
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->getBatteryTemperature()I

    move-result v0

    .line 107
    .local v0, "battTemp":I
    sget-object v3, Lcom/android/server/ssrm/CoolDownMode;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "battTemp is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOLDOWN_TEMP_LEVEL_8:I

    if-ge p1, v3, :cond_5

    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->BATTERY_COOLDOWN_TEMP_8:I

    if-lt v0, v3, :cond_8

    .line 109
    :cond_5
    iput v9, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    .line 119
    :goto_1
    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    iget v4, p0, Lcom/android/server/ssrm/CoolDownMode;->mPrevSIOPStep:I

    if-eq v3, v4, :cond_7

    .line 120
    sget-object v3, Lcom/android/server/ssrm/CoolDownMode;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CoolDownLevel is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string/jumbo v3, "sys.siop.level"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v1, "mExceptionProcessListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    if-ne v3, v9, :cond_b

    .line 124
    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->DELAY_FOR_SIOPLEVE_8:I

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mSendSIOPLevelDelay:J

    .line 140
    :goto_2
    iget-boolean v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mStartKillActiveApplicationsRunnable:Z

    if-eqz v3, :cond_6

    .line 141
    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/ssrm/CoolDownMode;->mKillActiveApplicationsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 142
    iput-boolean v6, p0, Lcom/android/server/ssrm/CoolDownMode;->mStartKillActiveApplicationsRunnable:Z

    .line 144
    :cond_6
    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    if-eqz v3, :cond_7

    .line 145
    iput-boolean v7, p0, Lcom/android/server/ssrm/CoolDownMode;->mStartKillActiveApplicationsRunnable:Z

    .line 146
    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/ssrm/CoolDownMode;->mKillActiveApplicationsRunnable:Ljava/lang/Runnable;

    iget-wide v5, p0, Lcom/android/server/ssrm/CoolDownMode;->mSendSIOPLevelDelay:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    .end local v1    # "mExceptionProcessListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_7
    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    iput v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mPrevSIOPStep:I

    goto/16 :goto_0

    .line 110
    :cond_8
    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->VZW_COOLDOWN_TEMP_LEVEL_6:I

    if-ge p1, v3, :cond_9

    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->BATTERY_COOLDOWN_TEMP_6:I

    if-lt v0, v3, :cond_a

    .line 112
    :cond_9
    iput v8, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    goto :goto_1

    .line 114
    :cond_a
    iput v6, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    goto :goto_1

    .line 125
    .restart local v1    # "mExceptionProcessListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_b
    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    if-ne v3, v8, :cond_c

    .line 126
    iget v3, p0, Lcom/android/server/ssrm/CoolDownMode;->DELAY_FOR_SIOPLEVE_6:I

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mSendSIOPLevelDelay:J

    .line 127
    const-string v3, "com.into.stability"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const-string v4, "check_cooldown_list"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 129
    iget-object v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const-string v4, "check_cooldown_level"

    iget v5, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    iget-object v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const-string v4, "overheat_id"

    invoke-virtual {v3, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 134
    :cond_c
    iget-object v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const-string v4, "check_cooldown_list"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 135
    iget-object v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const-string v4, "check_cooldown_level"

    iget v5, p0, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    iget-object v3, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const-string v4, "overheat_id"

    invoke-virtual {v3, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    iget-object v3, v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_2
.end method
