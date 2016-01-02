.class Landroid/util/fenghen/BatteryMod/MinitBattery$1;
.super Landroid/content/BroadcastReceiver;
.source "MinitBattery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/fenghen/BatteryMod/MinitBattery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/util/fenghen/BatteryMod/MinitBattery;


# direct methods
.method constructor <init>(Landroid/util/fenghen/BatteryMod/MinitBattery;)V
    .locals 0

    iput-object p1, p0, Landroid/util/fenghen/BatteryMod/MinitBattery$1;->this$0:Landroid/util/fenghen/BatteryMod/MinitBattery;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/util/fenghen/BatteryMod/MinitBattery$1;->this$0:Landroid/util/fenghen/BatteryMod/MinitBattery;

    const-string v1, "level"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # setter for: Landroid/util/fenghen/BatteryMod/MinitBattery;->mLevel:I
    invoke-static {v0, v1}, Landroid/util/fenghen/BatteryMod/MinitBattery;->access$002(Landroid/util/fenghen/BatteryMod/MinitBattery;I)I

    iget-object v0, p0, Landroid/util/fenghen/BatteryMod/MinitBattery$1;->this$0:Landroid/util/fenghen/BatteryMod/MinitBattery;

    const-string/jumbo v1, "status"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # setter for: Landroid/util/fenghen/BatteryMod/MinitBattery;->mStatus:I
    invoke-static {v0, v1}, Landroid/util/fenghen/BatteryMod/MinitBattery;->access$102(Landroid/util/fenghen/BatteryMod/MinitBattery;I)I

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/util/fenghen/BatteryMod/MinitBattery$1;->this$0:Landroid/util/fenghen/BatteryMod/MinitBattery;

    # invokes: Landroid/util/fenghen/BatteryMod/MinitBattery;->getSettings()V
    invoke-static {v0}, Landroid/util/fenghen/BatteryMod/MinitBattery;->access$300(Landroid/util/fenghen/BatteryMod/MinitBattery;)V

    iget-object v0, p0, Landroid/util/fenghen/BatteryMod/MinitBattery$1;->this$0:Landroid/util/fenghen/BatteryMod/MinitBattery;

    # invokes: Landroid/util/fenghen/BatteryMod/MinitBattery;->updateImageView()V
    invoke-static {v0}, Landroid/util/fenghen/BatteryMod/MinitBattery;->access$400(Landroid/util/fenghen/BatteryMod/MinitBattery;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.three.minit.BATTERY_TYPE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/util/fenghen/BatteryMod/MinitBattery$1;->this$0:Landroid/util/fenghen/BatteryMod/MinitBattery;

    const/4 v1, -0x1

    # setter for: Landroid/util/fenghen/BatteryMod/MinitBattery;->mLastLevel:I
    invoke-static {v0, v1}, Landroid/util/fenghen/BatteryMod/MinitBattery;->access$202(Landroid/util/fenghen/BatteryMod/MinitBattery;I)I

    goto :goto_0
.end method
