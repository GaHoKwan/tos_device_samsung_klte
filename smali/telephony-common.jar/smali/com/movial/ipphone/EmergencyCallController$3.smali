.class Lcom/movial/ipphone/EmergencyCallController$3;
.super Landroid/content/BroadcastReceiver;
.source "EmergencyCallController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/movial/ipphone/EmergencyCallController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/movial/ipphone/EmergencyCallController;


# direct methods
.method constructor <init>(Lcom/movial/ipphone/EmergencyCallController;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/movial/ipphone/EmergencyCallController$3;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 237
    const-string v3, "EmergencyCallController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.movial.ims_emergency_fail"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 240
    const-string v3, "canceled_by_user"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 241
    .local v1, "canceledByUser":Z
    iget-object v3, p0, Lcom/movial/ipphone/EmergencyCallController$3;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mEmergencyCallPref:I
    invoke-static {v3}, Lcom/movial/ipphone/EmergencyCallController;->access$300(Lcom/movial/ipphone/EmergencyCallController;)I

    move-result v3

    if-ne v3, v6, :cond_1

    if-nez v1, :cond_1

    .line 242
    iget-object v3, p0, Lcom/movial/ipphone/EmergencyCallController$3;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    sget-object v4, Lcom/movial/ipphone/IPUtils$EmergencyState;->IMS_CALL_FAILED:Lcom/movial/ipphone/IPUtils$EmergencyState;

    # setter for: Lcom/movial/ipphone/EmergencyCallController;->mEmergencyState:Lcom/movial/ipphone/IPUtils$EmergencyState;
    invoke-static {v3, v4}, Lcom/movial/ipphone/EmergencyCallController;->access$002(Lcom/movial/ipphone/EmergencyCallController;Lcom/movial/ipphone/IPUtils$EmergencyState;)Lcom/movial/ipphone/IPUtils$EmergencyState;

    .line 243
    iget-object v3, p0, Lcom/movial/ipphone/EmergencyCallController$3;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mIPPhoneProxy:Lcom/movial/ipphone/IPPhoneProxy;
    invoke-static {v3}, Lcom/movial/ipphone/EmergencyCallController;->access$100(Lcom/movial/ipphone/EmergencyCallController;)Lcom/movial/ipphone/IPPhoneProxy;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/movial/ipphone/IPPhoneProxy;->setForceEmergencyMode(Z)V

    .line 245
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 246
    .local v2, "dial":Landroid/content/Intent;
    const-string v3, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/movial/ipphone/EmergencyCallController$3;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->cachedEmergencyNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/movial/ipphone/EmergencyCallController;->access$400(Lcom/movial/ipphone/EmergencyCallController;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 249
    iget-object v3, p0, Lcom/movial/ipphone/EmergencyCallController$3;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/movial/ipphone/EmergencyCallController;->access$500(Lcom/movial/ipphone/EmergencyCallController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 256
    .end local v1    # "canceledByUser":Z
    .end local v2    # "dial":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 251
    .restart local v1    # "canceledByUser":Z
    :cond_1
    iget-object v3, p0, Lcom/movial/ipphone/EmergencyCallController$3;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    sget-object v4, Lcom/movial/ipphone/IPUtils$EmergencyState;->IDLE:Lcom/movial/ipphone/IPUtils$EmergencyState;

    # setter for: Lcom/movial/ipphone/EmergencyCallController;->mEmergencyState:Lcom/movial/ipphone/IPUtils$EmergencyState;
    invoke-static {v3, v4}, Lcom/movial/ipphone/EmergencyCallController;->access$002(Lcom/movial/ipphone/EmergencyCallController;Lcom/movial/ipphone/IPUtils$EmergencyState;)Lcom/movial/ipphone/IPUtils$EmergencyState;

    goto :goto_0

    .line 253
    .end local v1    # "canceledByUser":Z
    :cond_2
    const-string v3, "com.movial.ims_emergency_start"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    iget-object v3, p0, Lcom/movial/ipphone/EmergencyCallController$3;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    sget-object v4, Lcom/movial/ipphone/IPUtils$EmergencyState;->IDLE:Lcom/movial/ipphone/IPUtils$EmergencyState;

    # setter for: Lcom/movial/ipphone/EmergencyCallController;->mEmergencyState:Lcom/movial/ipphone/IPUtils$EmergencyState;
    invoke-static {v3, v4}, Lcom/movial/ipphone/EmergencyCallController;->access$002(Lcom/movial/ipphone/EmergencyCallController;Lcom/movial/ipphone/IPUtils$EmergencyState;)Lcom/movial/ipphone/IPUtils$EmergencyState;

    goto :goto_0
.end method
