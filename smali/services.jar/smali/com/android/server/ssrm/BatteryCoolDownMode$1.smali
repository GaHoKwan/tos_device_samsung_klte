.class Lcom/android/server/ssrm/BatteryCoolDownMode$1;
.super Ljava/lang/Object;
.source "BatteryCoolDownMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/BatteryCoolDownMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/BatteryCoolDownMode;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/server/ssrm/BatteryCoolDownMode$1;->this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 154
    :try_start_0
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v5

    .line 155
    .local v5, "monitor":Lcom/android/server/ssrm/Monitor;
    if-eqz v5, :cond_3

    .line 156
    iget-object v7, p0, Lcom/android/server/ssrm/BatteryCoolDownMode$1;->this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;

    iget-boolean v7, v7, Lcom/android/server/ssrm/BatteryCoolDownMode;->mIsRunnableExcuted:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/ssrm/BatteryCoolDownMode$1;->this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;

    iget v7, v7, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevel:I

    if-lez v7, :cond_3

    .line 157
    iget-object v7, p0, Lcom/android/server/ssrm/BatteryCoolDownMode$1;->this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;

    iget-object v0, v7, Lcom/android/server/ssrm/BatteryCoolDownMode;->mExceptionList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 158
    .local v6, "pkg":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/ssrm/BatteryCoolDownMode$1;->this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;

    iget-object v7, v7, Lcom/android/server/ssrm/BatteryCoolDownMode;->mExceptionProcessListMap:Ljava/util/HashMap;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/android/server/ssrm/BatteryCoolDownMode$1;->this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;

    iget-object v7, v7, Lcom/android/server/ssrm/BatteryCoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const-string v8, "check_cooldown_list"

    iget-object v9, p0, Lcom/android/server/ssrm/BatteryCoolDownMode$1;->this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;

    iget-object v9, v9, Lcom/android/server/ssrm/BatteryCoolDownMode;->mExceptionProcessListMap:Ljava/util/HashMap;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 162
    iget-object v7, p0, Lcom/android/server/ssrm/BatteryCoolDownMode$1;->this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;

    iget-object v7, v7, Lcom/android/server/ssrm/BatteryCoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const-string v8, "batt_temp_level"

    iget-object v9, p0, Lcom/android/server/ssrm/BatteryCoolDownMode$1;->this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;

    iget v9, v9, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevel:I

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    iget-object v7, p0, Lcom/android/server/ssrm/BatteryCoolDownMode$1;->this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;

    iget-object v7, v7, Lcom/android/server/ssrm/BatteryCoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const-string v8, "battery_overheat_level"

    iget-object v9, p0, Lcom/android/server/ssrm/BatteryCoolDownMode$1;->this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;

    iget v9, v9, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevel:I

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    iget-object v7, p0, Lcom/android/server/ssrm/BatteryCoolDownMode$1;->this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;

    iget-object v7, v7, Lcom/android/server/ssrm/BatteryCoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const-string v8, "overheat_id"

    const v9, 0x1040a65

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    iget-object v7, v5, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/ssrm/BatteryCoolDownMode$1;->this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;

    iget-object v8, v8, Lcom/android/server/ssrm/BatteryCoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 169
    iget-object v7, p0, Lcom/android/server/ssrm/BatteryCoolDownMode$1;->this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;

    iget-boolean v7, v7, Lcom/android/server/ssrm/BatteryCoolDownMode;->mIsDisplayedCoolDownAlert:Z

    if-nez v7, :cond_2

    .line 170
    iget-object v7, p0, Lcom/android/server/ssrm/BatteryCoolDownMode$1;->this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;

    iget-object v8, p0, Lcom/android/server/ssrm/BatteryCoolDownMode$1;->this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;

    iget v8, v8, Lcom/android/server/ssrm/BatteryCoolDownMode;->mBatteryOverheatLevel:I

    # invokes: Lcom/android/server/ssrm/BatteryCoolDownMode;->killActiveApplications(I)I
    invoke-static {v7, v8}, Lcom/android/server/ssrm/BatteryCoolDownMode;->access$000(Lcom/android/server/ssrm/BatteryCoolDownMode;I)I

    move-result v4

    .line 171
    .local v4, "mResult":I
    if-lez v4, :cond_1

    .line 172
    iget-object v7, p0, Lcom/android/server/ssrm/BatteryCoolDownMode$1;->this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;

    invoke-virtual {v7, v4}, Lcom/android/server/ssrm/BatteryCoolDownMode;->showCoolDownAlert(I)V

    .line 174
    :cond_1
    iget-object v7, p0, Lcom/android/server/ssrm/BatteryCoolDownMode$1;->this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/server/ssrm/BatteryCoolDownMode;->mIsDisplayedCoolDownAlert:Z

    .line 176
    .end local v4    # "mResult":I
    :cond_2
    iget-object v7, p0, Lcom/android/server/ssrm/BatteryCoolDownMode$1;->this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/server/ssrm/BatteryCoolDownMode;->mIsRunnableExcuted:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "monitor":Lcom/android/server/ssrm/Monitor;
    :cond_3
    :goto_1
    return-void

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/ssrm/BatteryCoolDownMode;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/BatteryCoolDownMode;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mKillActiveApplicationsRunnable:: e = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
