.class public Lcom/samsung/android/secretmode/SecretModeManager;
.super Ljava/lang/Object;
.source "SecretModeManager.java"


# static fields
.field public static final ACTION_CHANGE_PERSONAL_PAGE_MODE:Ljava/lang/String; = "com.samsung.android.intent.action.CHANGE_PERSONAL_PAGE_MODE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_CHANGE_SECRET_MODE:Ljava/lang/String; = "com.samsung.android.intent.action.CHANGE_SECRET_MODE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_PERSONAL_PAGE_OFF:Ljava/lang/String; = "com.samsung.android.intent.action.PERSONAL_PAGE_OFF"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_PERSONAL_PAGE_ON:Ljava/lang/String; = "com.samsung.android.intent.action.PERSONAL_PAGE_ON"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_PRIVATE_MODE_OFF:Ljava/lang/String; = "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

.field public static final ACTION_PRIVATE_MODE_ON:Ljava/lang/String; = "com.samsung.android.intent.action.PRIVATE_MODE_ON"

.field public static final ACTION_SECRET_MODE_OFF:Ljava/lang/String; = "com.samsung.android.intent.action.SECRET_MODE_OFF"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_SECRET_MODE_ON:Ljava/lang/String; = "com.samsung.android.intent.action.SECRET_MODE_ON"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_SHOW_VISUAL_CUE:Ljava/lang/String; = "com.samsung.android.personalpage.action.SHOW_VISUAL_CUE"

.field private static final DEBUG:Z

.field public static final FAIL_PENDING_INTENT:Ljava/lang/String; = "FailPendingIntent"

.field public static final PENDING_INTENT_DATA:Ljava/lang/String; = "PendingIntentData"

.field private static final PERSONAL_PAGE_PATH:Ljava/lang/String; = "/storage/Private"

.field public static final PROPERTY_KEY_PERSONAL_PAGE_MODE:Ljava/lang/String; = "sys.samsung.personalpage.mode"

.field public static final PROPERTY_KEY_SECRET_MODE:Ljava/lang/String; = "sys.samsung.personalpage.mode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SECRETMODE_SERVICE:Landroid/content/ComponentName;

.field public static final SUCCESS_PENDING_INTENT:Ljava/lang/String; = "SuccessPendingIntent"

.field private static final TAG:Ljava/lang/String; = "SecretModeManager"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/secretmode/SecretModeManager;->DEBUG:Z

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.personalpage.service"

    const-string v2, "com.samsung.android.personalpage.service.PersonalPageService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/secretmode/SecretModeManager;->SECRETMODE_SERVICE:Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPersonalPageRoot(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "/storage/Private"

    return-object v0
.end method

.method public static getSecretDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "/storage/Private"

    return-object v0
.end method

.method public static isPersonalPageMode()Z
    .locals 3

    const-string/jumbo v1, "sys.samsung.personalpage.mode"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isPersonalPageMounted(Landroid/content/Context;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_1

    const-string v5, "SecretModeManager"

    const-string v6, "isPersonalPageMounted: context is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v4

    :cond_1
    const-string/jumbo v5, "storage"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    sget-boolean v5, Lcom/samsung/android/secretmode/SecretModeManager;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "SecretModeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPersonalPageMounted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "sec_container_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "0"

    const-string/jumbo v6, "sys.samsung.personalpage.mode"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v2, :cond_3

    :try_start_0
    const-string v4, "/storage/Private"

    invoke-virtual {v2, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_1
    move v4, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isSecretDirMounted(Landroid/content/Context;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/secretmode/SecretModeManager;->isPersonalPageMounted(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isSecretMode()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/samsung/android/secretmode/SecretModeManager;->isPersonalPageMode()Z

    move-result v0

    return v0
.end method

.method public static showVisualCue(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z
    .locals 3

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.personalpage.action.SHOW_VISUAL_CUE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/secretmode/SecretModeManager;->SECRETMODE_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "SuccessPendingIntent"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "FailPendingIntent"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "PendingIntentData"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v2, 0x1

    return v2
.end method
