.class Lcom/android/server/ssrm/PowerSavingMode$UltraPowerSavingModeObserver;
.super Landroid/database/ContentObserver;
.source "PowerSavingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/PowerSavingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UltraPowerSavingModeObserver"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/ssrm/PowerSavingMode;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/PowerSavingMode;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/server/ssrm/PowerSavingMode$UltraPowerSavingModeObserver;->this$0:Lcom/android/server/ssrm/PowerSavingMode;

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 102
    iput-object p2, p0, Lcom/android/server/ssrm/PowerSavingMode$UltraPowerSavingModeObserver;->mContext:Landroid/content/Context;

    .line 103
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 107
    iget-object v2, p0, Lcom/android/server/ssrm/PowerSavingMode$UltraPowerSavingModeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "ultra_powersaving_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sUltraPowerSavingMode:Z

    .line 109
    iget-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode$UltraPowerSavingModeObserver;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.intent.action.ULTRA_POWER_SAVING_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 111
    return-void

    :cond_0
    move v0, v1

    .line 107
    goto :goto_0
.end method

.method registerUriByName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode$UltraPowerSavingModeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 116
    return-void
.end method
