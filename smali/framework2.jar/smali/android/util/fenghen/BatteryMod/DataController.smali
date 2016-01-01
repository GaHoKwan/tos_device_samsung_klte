.class public Landroid/util/fenghen/BatteryMod/DataController;
.super Landroid/content/BroadcastReceiver;
.source "DataController.java"


# instance fields
.field private bc:Landroid/util/fenghen/BatteryMod/BatteryController;

.field handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/fenghen/BatteryMod/BatteryController;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Landroid/util/fenghen/BatteryMod/DataController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/util/fenghen/BatteryMod/DataController;->bc:Landroid/util/fenghen/BatteryMod/BatteryController;

    invoke-virtual {p0}, Landroid/util/fenghen/BatteryMod/DataController;->getVal()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Landroid/util/fenghen/BatteryMod/BatteryController;->val:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/util/fenghen/BatteryMod/DataController;->getAnim()I

    move-result v1

    iput v1, p2, Landroid/util/fenghen/BatteryMod/BatteryController;->anim:I

    invoke-virtual {p0}, Landroid/util/fenghen/BatteryMod/DataController;->getVis()I

    move-result v1

    iput v1, p2, Landroid/util/fenghen/BatteryMod/BatteryController;->vis:I

    iget-object v1, p2, Landroid/util/fenghen/BatteryMod/BatteryController;->Receiver:Landroid/content/Intent;

    invoke-virtual {p2, v1}, Landroid/util/fenghen/BatteryMod/BatteryController;->DoWork(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.ghareeb.OGMod.DATA_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/util/fenghen/BatteryMod/DataController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getAnim()I
    .locals 6

    const/4 v2, -0x1

    :try_start_0
    iget-object v3, p0, Landroid/util/fenghen/BatteryMod/DataController;->mContext:Landroid/content/Context;

    const-string v4, "OG_Mod"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "Anim"

    const/4 v4, -0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v3, "OGMod"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getAnim() - Err:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getVal()Ljava/lang/String;
    .locals 6

    const-string v2, "Default"

    :try_start_0
    iget-object v3, p0, Landroid/util/fenghen/BatteryMod/DataController;->mContext:Landroid/content/Context;

    const-string v4, "OG_Mod"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "BatteryStyle"

    const-string v4, "Default"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, "_"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    const-string v3, "OGMod"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getVal() - Err:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getVis()I
    .locals 6

    const/16 v2, 0x8

    :try_start_0
    iget-object v3, p0, Landroid/util/fenghen/BatteryMod/DataController;->mContext:Landroid/content/Context;

    const-string v4, "OG_Mod"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "Visibility"

    const/16 v4, 0x8

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v3, "OGMod"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getVis() - Err:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.ghareeb.OGMod.DATA_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "data"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "data"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/util/fenghen/BatteryMod/DataController;->bc:Landroid/util/fenghen/BatteryMod/BatteryController;

    iget v2, v2, Landroid/util/fenghen/BatteryMod/BatteryController;->anim:I

    iget-object v3, p0, Landroid/util/fenghen/BatteryMod/DataController;->bc:Landroid/util/fenghen/BatteryMod/BatteryController;

    iget v3, v3, Landroid/util/fenghen/BatteryMod/BatteryController;->vis:I

    invoke-virtual {p0, v1, v2, v3}, Landroid/util/fenghen/BatteryMod/DataController;->saveData(Ljava/lang/String;II)V

    iget-object v1, p0, Landroid/util/fenghen/BatteryMod/DataController;->bc:Landroid/util/fenghen/BatteryMod/BatteryController;

    const-string v2, "data"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/util/fenghen/BatteryMod/BatteryController;->val:Ljava/lang/String;

    :cond_0
    const-string v1, "Anim"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/util/fenghen/BatteryMod/DataController;->bc:Landroid/util/fenghen/BatteryMod/BatteryController;

    iget-object v1, v1, Landroid/util/fenghen/BatteryMod/BatteryController;->val:Ljava/lang/String;

    const-string v2, "Anim"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Landroid/util/fenghen/BatteryMod/DataController;->bc:Landroid/util/fenghen/BatteryMod/BatteryController;

    iget v3, v3, Landroid/util/fenghen/BatteryMod/BatteryController;->vis:I

    invoke-virtual {p0, v1, v2, v3}, Landroid/util/fenghen/BatteryMod/DataController;->saveData(Ljava/lang/String;II)V

    iget-object v1, p0, Landroid/util/fenghen/BatteryMod/DataController;->bc:Landroid/util/fenghen/BatteryMod/BatteryController;

    const-string v2, "Anim"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/util/fenghen/BatteryMod/BatteryController;->anim:I

    :cond_1
    const-string v1, "Visibility"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/util/fenghen/BatteryMod/DataController;->bc:Landroid/util/fenghen/BatteryMod/BatteryController;

    iget-object v1, v1, Landroid/util/fenghen/BatteryMod/BatteryController;->val:Ljava/lang/String;

    iget-object v2, p0, Landroid/util/fenghen/BatteryMod/DataController;->bc:Landroid/util/fenghen/BatteryMod/BatteryController;

    iget v2, v2, Landroid/util/fenghen/BatteryMod/BatteryController;->anim:I

    const-string v3, "Visibility"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Landroid/util/fenghen/BatteryMod/DataController;->saveData(Ljava/lang/String;II)V

    iget-object v1, p0, Landroid/util/fenghen/BatteryMod/DataController;->bc:Landroid/util/fenghen/BatteryMod/BatteryController;

    const-string v2, "Visibility"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/util/fenghen/BatteryMod/BatteryController;->vis:I

    :cond_2
    iget-object v1, p0, Landroid/util/fenghen/BatteryMod/DataController;->bc:Landroid/util/fenghen/BatteryMod/BatteryController;

    iget-object v2, p0, Landroid/util/fenghen/BatteryMod/DataController;->bc:Landroid/util/fenghen/BatteryMod/BatteryController;

    iget-object v2, v2, Landroid/util/fenghen/BatteryMod/BatteryController;->Receiver:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/util/fenghen/BatteryMod/BatteryController;->DoWork(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method public saveData(Ljava/lang/String;II)V
    .locals 6

    :try_start_0
    iget-object v3, p0, Landroid/util/fenghen/BatteryMod/DataController;->mContext:Landroid/content/Context;

    const-string v4, "OG_Mod"

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "BatteryStyle"

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "Visibility"

    invoke-interface {v1, v3, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v3, "Anim"

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v3, "OGMod"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "saveData("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "OGMod"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "saveData("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") - Err:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
