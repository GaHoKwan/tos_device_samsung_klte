.class Lcom/movial/ipphone/EmergencyCallController$1;
.super Landroid/telephony/PhoneStateListener;
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
    .line 91
    iput-object p1, p0, Lcom/movial/ipphone/EmergencyCallController$1;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 94
    const-string v0, "EmergencyCallController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mEmergencyState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/movial/ipphone/EmergencyCallController$1;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mEmergencyState:Lcom/movial/ipphone/IPUtils$EmergencyState;
    invoke-static {v2}, Lcom/movial/ipphone/EmergencyCallController;->access$000(Lcom/movial/ipphone/EmergencyCallController;)Lcom/movial/ipphone/IPUtils$EmergencyState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " force "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/movial/ipphone/EmergencyCallController$1;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mIPPhoneProxy:Lcom/movial/ipphone/IPPhoneProxy;
    invoke-static {v2}, Lcom/movial/ipphone/EmergencyCallController;->access$100(Lcom/movial/ipphone/EmergencyCallController;)Lcom/movial/ipphone/IPPhoneProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/movial/ipphone/IPPhoneProxy;->getForceEmergencyMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/movial/ipphone/EmergencyCallController$1;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mEmergencyState:Lcom/movial/ipphone/IPUtils$EmergencyState;
    invoke-static {v0}, Lcom/movial/ipphone/EmergencyCallController;->access$000(Lcom/movial/ipphone/EmergencyCallController;)Lcom/movial/ipphone/IPUtils$EmergencyState;

    move-result-object v0

    sget-object v1, Lcom/movial/ipphone/IPUtils$EmergencyState;->CS_CALL_DIALING:Lcom/movial/ipphone/IPUtils$EmergencyState;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/movial/ipphone/EmergencyCallController$1;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    sget-object v1, Lcom/movial/ipphone/IPUtils$EmergencyState;->CS_CALL_CONNECTED:Lcom/movial/ipphone/IPUtils$EmergencyState;

    # setter for: Lcom/movial/ipphone/EmergencyCallController;->mEmergencyState:Lcom/movial/ipphone/IPUtils$EmergencyState;
    invoke-static {v0, v1}, Lcom/movial/ipphone/EmergencyCallController;->access$002(Lcom/movial/ipphone/EmergencyCallController;Lcom/movial/ipphone/IPUtils$EmergencyState;)Lcom/movial/ipphone/IPUtils$EmergencyState;

    .line 101
    :cond_0
    :goto_0
    const-string v0, "EmergencyCallController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEmergencyState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/movial/ipphone/EmergencyCallController$1;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mEmergencyState:Lcom/movial/ipphone/IPUtils$EmergencyState;
    invoke-static {v2}, Lcom/movial/ipphone/EmergencyCallController;->access$000(Lcom/movial/ipphone/EmergencyCallController;)Lcom/movial/ipphone/IPUtils$EmergencyState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/movial/ipphone/EmergencyCallController$1;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mEmergencyState:Lcom/movial/ipphone/IPUtils$EmergencyState;
    invoke-static {v0}, Lcom/movial/ipphone/EmergencyCallController;->access$000(Lcom/movial/ipphone/EmergencyCallController;)Lcom/movial/ipphone/IPUtils$EmergencyState;

    move-result-object v0

    sget-object v1, Lcom/movial/ipphone/IPUtils$EmergencyState;->CS_CALL_CONNECTED:Lcom/movial/ipphone/IPUtils$EmergencyState;

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/movial/ipphone/EmergencyCallController$1;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mIPPhoneProxy:Lcom/movial/ipphone/IPPhoneProxy;
    invoke-static {v0}, Lcom/movial/ipphone/EmergencyCallController;->access$100(Lcom/movial/ipphone/EmergencyCallController;)Lcom/movial/ipphone/IPPhoneProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/movial/ipphone/IPPhoneProxy;->setForceEmergencyMode(Z)V

    goto :goto_0
.end method
