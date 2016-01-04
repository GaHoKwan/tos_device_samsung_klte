.class Lcom/movial/ipphone/EmergencyCallController$2;
.super Landroid/os/Handler;
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
    .line 105
    iput-object p1, p0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 108
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    packed-switch v12, :pswitch_data_0

    .line 229
    const-string v12, "EmergencyCallController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No such event defined: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 111
    :pswitch_0
    const-string v12, "EmergencyCallController"

    const-string v13, "Receive EVENT_CALL_DISCONNECT"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 113
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/Connection;

    .line 114
    .local v3, "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v2

    .line 115
    .local v2, "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mEmergencyState:Lcom/movial/ipphone/IPUtils$EmergencyState;
    invoke-static {v12}, Lcom/movial/ipphone/EmergencyCallController;->access$000(Lcom/movial/ipphone/EmergencyCallController;)Lcom/movial/ipphone/IPUtils$EmergencyState;

    move-result-object v12

    sget-object v13, Lcom/movial/ipphone/IPUtils$EmergencyState;->NOT_INITIALIZED:Lcom/movial/ipphone/IPUtils$EmergencyState;

    if-eq v12, v13, :cond_1

    sget-object v12, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v12, :cond_2

    sget-object v12, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v12, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mEmergencyTimeoutCanceled:Z
    invoke-static {v12}, Lcom/movial/ipphone/EmergencyCallController;->access$200(Lcom/movial/ipphone/EmergencyCallController;)Z

    move-result v12

    if-eqz v12, :cond_3

    sget-object v12, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v12, :cond_3

    .line 120
    :cond_2
    const-string v12, "EmergencyCallController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "GSM E911 Failed cause = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mIPPhoneProxy:Lcom/movial/ipphone/IPPhoneProxy;
    invoke-static {v12}, Lcom/movial/ipphone/EmergencyCallController;->access$100(Lcom/movial/ipphone/EmergencyCallController;)Lcom/movial/ipphone/IPPhoneProxy;

    move-result-object v12

    invoke-virtual {v12}, Lcom/movial/ipphone/IPPhoneProxy;->getForceEmergencyMode()Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mEmergencyCallPref:I
    invoke-static {v12}, Lcom/movial/ipphone/EmergencyCallController;->access$300(Lcom/movial/ipphone/EmergencyCallController;)I

    move-result v12

    if-nez v12, :cond_0

    .line 122
    const-string v12, "EmergencyCallController"

    const-string v13, "Trigger CS->IMS fallback"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    sget-object v13, Lcom/movial/ipphone/IPUtils$EmergencyState;->CS_CALL_FAILED:Lcom/movial/ipphone/IPUtils$EmergencyState;

    # setter for: Lcom/movial/ipphone/EmergencyCallController;->mEmergencyState:Lcom/movial/ipphone/IPUtils$EmergencyState;
    invoke-static {v12, v13}, Lcom/movial/ipphone/EmergencyCallController;->access$002(Lcom/movial/ipphone/EmergencyCallController;Lcom/movial/ipphone/IPUtils$EmergencyState;)Lcom/movial/ipphone/IPUtils$EmergencyState;

    .line 124
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mIPPhoneProxy:Lcom/movial/ipphone/IPPhoneProxy;
    invoke-static {v12}, Lcom/movial/ipphone/EmergencyCallController;->access$100(Lcom/movial/ipphone/EmergencyCallController;)Lcom/movial/ipphone/IPPhoneProxy;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/movial/ipphone/IPPhoneProxy;->setForceEmergencyMode(Z)V

    .line 125
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mIPPhoneProxy:Lcom/movial/ipphone/IPPhoneProxy;
    invoke-static {v12}, Lcom/movial/ipphone/EmergencyCallController;->access$100(Lcom/movial/ipphone/EmergencyCallController;)Lcom/movial/ipphone/IPPhoneProxy;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/movial/ipphone/IPPhoneProxy;->setRadioPower(Z)V

    .line 127
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 128
    .local v4, "dial":Landroid/content/Intent;
    const-string v12, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v4, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const/high16 v12, 0x10000000

    invoke-virtual {v4, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 130
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "tel:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->cachedEmergencyNumber:Ljava/lang/String;
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$400(Lcom/movial/ipphone/EmergencyCallController;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 131
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/movial/ipphone/EmergencyCallController;->access$500(Lcom/movial/ipphone/EmergencyCallController;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 133
    .end local v4    # "dial":Landroid/content/Intent;
    :cond_3
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mEmergencyState:Lcom/movial/ipphone/IPUtils$EmergencyState;
    invoke-static {v12}, Lcom/movial/ipphone/EmergencyCallController;->access$000(Lcom/movial/ipphone/EmergencyCallController;)Lcom/movial/ipphone/IPUtils$EmergencyState;

    move-result-object v12

    sget-object v13, Lcom/movial/ipphone/IPUtils$EmergencyState;->NOT_INITIALIZED:Lcom/movial/ipphone/IPUtils$EmergencyState;

    if-eq v12, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mEmergencyTimeoutCanceled:Z
    invoke-static {v12}, Lcom/movial/ipphone/EmergencyCallController;->access$200(Lcom/movial/ipphone/EmergencyCallController;)Z

    move-result v12

    if-nez v12, :cond_0

    sget-object v12, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v12, :cond_0

    .line 136
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    sget-object v13, Lcom/movial/ipphone/IPUtils$EmergencyState;->IDLE:Lcom/movial/ipphone/IPUtils$EmergencyState;

    # setter for: Lcom/movial/ipphone/EmergencyCallController;->mEmergencyState:Lcom/movial/ipphone/IPUtils$EmergencyState;
    invoke-static {v12, v13}, Lcom/movial/ipphone/EmergencyCallController;->access$002(Lcom/movial/ipphone/EmergencyCallController;Lcom/movial/ipphone/IPUtils$EmergencyState;)Lcom/movial/ipphone/IPUtils$EmergencyState;

    .line 137
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mIPPhoneProxy:Lcom/movial/ipphone/IPPhoneProxy;
    invoke-static {v12}, Lcom/movial/ipphone/EmergencyCallController;->access$100(Lcom/movial/ipphone/EmergencyCallController;)Lcom/movial/ipphone/IPPhoneProxy;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/movial/ipphone/IPPhoneProxy;->setForceEmergencyMode(Z)V

    .line 138
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mIPPhoneProxy:Lcom/movial/ipphone/IPPhoneProxy;
    invoke-static {v12}, Lcom/movial/ipphone/EmergencyCallController;->access$100(Lcom/movial/ipphone/EmergencyCallController;)Lcom/movial/ipphone/IPPhoneProxy;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/movial/ipphone/IPPhoneProxy;->setRadioPower(Z)V

    goto/16 :goto_0

    .line 144
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    .end local v3    # "conn":Lcom/android/internal/telephony/Connection;
    :pswitch_1
    const-string v12, "EmergencyCallController"

    const-string v13, "Receive EVENT_CS_EMERGENCY_TIMEOUT"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v12}, Lcom/movial/ipphone/EmergencyCallController;->access$600(Lcom/movial/ipphone/EmergencyCallController;)Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v12, v13, :cond_0

    .line 146
    const-string v12, "EmergencyCallController"

    const-string v13, "hangup gsm emergency call..."

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    const/4 v13, 0x1

    # setter for: Lcom/movial/ipphone/EmergencyCallController;->mEmergencyTimeoutCanceled:Z
    invoke-static {v12, v13}, Lcom/movial/ipphone/EmergencyCallController;->access$202(Lcom/movial/ipphone/EmergencyCallController;Z)Z

    .line 149
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v12}, Lcom/movial/ipphone/EmergencyCallController;->access$600(Lcom/movial/ipphone/EmergencyCallController;)Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 150
    :catch_0
    move-exception v5

    .line 151
    .local v5, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v12, "EmergencyCallController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "hangup call failed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 158
    .end local v5    # "e":Lcom/android/internal/telephony/CallStateException;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v12}, Lcom/movial/ipphone/EmergencyCallController;->access$600(Lcom/movial/ipphone/EmergencyCallController;)Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    .line 159
    .local v11, "state":Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mIPPhoneProxy:Lcom/movial/ipphone/IPPhoneProxy;
    invoke-static {v12}, Lcom/movial/ipphone/EmergencyCallController;->access$100(Lcom/movial/ipphone/EmergencyCallController;)Lcom/movial/ipphone/IPPhoneProxy;

    move-result-object v12

    invoke-virtual {v12}, Lcom/movial/ipphone/IPPhoneProxy;->getForceEmergencyMode()Z

    move-result v6

    .line 160
    .local v6, "forceEmergency":Z
    const-string v12, "EmergencyCallController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Receive EVENT_PHONE_STATE_CHANGED: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v7, 0x0

    .line 165
    .local v7, "isCSEmergencyUnderWifiCall":Z
    sget-object v12, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v11, v12, :cond_6

    .line 166
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/movial/ipphone/EmergencyCallController;->access$500(Lcom/movial/ipphone/EmergencyCallController;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "CELL_ONLY"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_c

    const/4 v9, 0x1

    .line 167
    .local v9, "isWifiCallEnabled":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v12}, Lcom/movial/ipphone/EmergencyCallController;->access$600(Lcom/movial/ipphone/EmergencyCallController;)Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v8

    .line 168
    .local v8, "isEmergencyCall":Z
    if-nez v6, :cond_5

    if-eqz v8, :cond_5

    if-nez v9, :cond_4

    sget-object v12, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_5

    .line 170
    :cond_4
    const/4 v7, 0x1

    .line 174
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/movial/ipphone/EmergencyCallController;->access$500(Lcom/movial/ipphone/EmergencyCallController;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "PREFERRED_OPTION"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/movial/ipphone/IPPhoneSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 175
    .local v10, "profile":I
    if-nez v6, :cond_6

    if-eqz v8, :cond_6

    if-eqz v9, :cond_6

    const/4 v12, 0x1

    if-ne v10, v12, :cond_6

    sget-object v12, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_6

    .line 176
    const-string v12, "EmergencyCallController"

    const-string v13, "disabling wifi call temporarily..."

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/movial/ipphone/EmergencyCallController;->access$500(Lcom/movial/ipphone/EmergencyCallController;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "CELL_ONLY"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 178
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/movial/ipphone/EmergencyCallController;->access$500(Lcom/movial/ipphone/EmergencyCallController;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "ECM"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 179
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    const/4 v13, 0x1

    # setter for: Lcom/movial/ipphone/EmergencyCallController;->mSuccessfulGsmEmergency:Z
    invoke-static {v12, v13}, Lcom/movial/ipphone/EmergencyCallController;->access$702(Lcom/movial/ipphone/EmergencyCallController;Z)Z

    .line 180
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mIPPhoneProxy:Lcom/movial/ipphone/IPPhoneProxy;
    invoke-static {v12}, Lcom/movial/ipphone/EmergencyCallController;->access$100(Lcom/movial/ipphone/EmergencyCallController;)Lcom/movial/ipphone/IPPhoneProxy;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/movial/ipphone/IPPhoneProxy;->setForceEmergencyMode(Z)V

    .line 181
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    const/4 v13, 0x1

    # setter for: Lcom/movial/ipphone/EmergencyCallController;->mTemporaryWFCOff:Z
    invoke-static {v12, v13}, Lcom/movial/ipphone/EmergencyCallController;->access$802(Lcom/movial/ipphone/EmergencyCallController;Z)Z

    .line 185
    .end local v8    # "isEmergencyCall":Z
    .end local v9    # "isWifiCallEnabled":Z
    .end local v10    # "profile":I
    :cond_6
    if-nez v6, :cond_7

    if-eqz v7, :cond_8

    :cond_7
    sget-object v12, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_8

    .line 186
    const-string v12, "EmergencyCallController"

    const-string v13, "disabling wifi call..."

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/movial/ipphone/EmergencyCallController;->access$500(Lcom/movial/ipphone/EmergencyCallController;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "CELL_ONLY"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 188
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/movial/ipphone/EmergencyCallController;->access$500(Lcom/movial/ipphone/EmergencyCallController;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "ECM"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 189
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    const/4 v13, 0x1

    # setter for: Lcom/movial/ipphone/EmergencyCallController;->mSuccessfulGsmEmergency:Z
    invoke-static {v12, v13}, Lcom/movial/ipphone/EmergencyCallController;->access$702(Lcom/movial/ipphone/EmergencyCallController;Z)Z

    .line 190
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mIPPhoneProxy:Lcom/movial/ipphone/IPPhoneProxy;
    invoke-static {v12}, Lcom/movial/ipphone/EmergencyCallController;->access$100(Lcom/movial/ipphone/EmergencyCallController;)Lcom/movial/ipphone/IPPhoneProxy;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/movial/ipphone/IPPhoneProxy;->setForceEmergencyMode(Z)V

    .line 193
    :cond_8
    if-nez v6, :cond_9

    if-eqz v7, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mSuccessfulGsmEmergency:Z
    invoke-static {v12}, Lcom/movial/ipphone/EmergencyCallController;->access$700(Lcom/movial/ipphone/EmergencyCallController;)Z

    move-result v12

    if-eqz v12, :cond_a

    sget-object v12, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v11, v12, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mRetryEmergencyIMSRegistration:Z
    invoke-static {v12}, Lcom/movial/ipphone/EmergencyCallController;->access$900(Lcom/movial/ipphone/EmergencyCallController;)Z

    move-result v12

    if-eqz v12, :cond_0

    sget-object v12, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_0

    .line 195
    :cond_b
    const-string v12, "EmergencyCallController"

    const-string v13, "start EMERGENCY_DELAYED_IMS_REGISTRATION timer: 180000"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    const/4 v13, 0x0

    # setter for: Lcom/movial/ipphone/EmergencyCallController;->mRetryEmergencyIMSRegistration:Z
    invoke-static {v12, v13}, Lcom/movial/ipphone/EmergencyCallController;->access$902(Lcom/movial/ipphone/EmergencyCallController;Z)Z

    .line 197
    const/4 v12, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 198
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mTemporaryWFCOff:Z
    invoke-static {v12}, Lcom/movial/ipphone/EmergencyCallController;->access$800(Lcom/movial/ipphone/EmergencyCallController;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 199
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    const/4 v13, 0x0

    # setter for: Lcom/movial/ipphone/EmergencyCallController;->mTemporaryWFCOff:Z
    invoke-static {v12, v13}, Lcom/movial/ipphone/EmergencyCallController;->access$802(Lcom/movial/ipphone/EmergencyCallController;Z)Z

    .line 200
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/movial/ipphone/EmergencyCallController;->access$1000(Lcom/movial/ipphone/EmergencyCallController;)Landroid/os/Handler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$1000(Lcom/movial/ipphone/EmergencyCallController;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x5

    invoke-static {v13, v14}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v13

    const-wide/16 v14, 0x1388

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 166
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 202
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/movial/ipphone/EmergencyCallController;->access$1000(Lcom/movial/ipphone/EmergencyCallController;)Landroid/os/Handler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/movial/ipphone/EmergencyCallController;->access$1000(Lcom/movial/ipphone/EmergencyCallController;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x5

    invoke-static {v13, v14}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v13

    const-wide/32 v14, 0x2bf20

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 208
    .end local v6    # "forceEmergency":Z
    .end local v7    # "isCSEmergencyUnderWifiCall":Z
    .end local v11    # "state":Lcom/android/internal/telephony/Call$State;
    :pswitch_3
    const-string v12, "EmergencyCallController"

    const-string v13, "Receive EVENT_DELAYED_IMS_REGISTRATION"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v12}, Lcom/movial/ipphone/EmergencyCallController;->access$600(Lcom/movial/ipphone/EmergencyCallController;)Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v12, v13, :cond_e

    .line 210
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/movial/ipphone/EmergencyCallController;->access$500(Lcom/movial/ipphone/EmergencyCallController;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "ECM"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 211
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/movial/ipphone/EmergencyCallController;->access$500(Lcom/movial/ipphone/EmergencyCallController;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "CELL_ONLY"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 212
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    const/4 v13, 0x0

    # setter for: Lcom/movial/ipphone/EmergencyCallController;->mSuccessfulGsmEmergency:Z
    invoke-static {v12, v13}, Lcom/movial/ipphone/EmergencyCallController;->access$702(Lcom/movial/ipphone/EmergencyCallController;Z)Z

    goto/16 :goto_0

    .line 215
    :cond_e
    const-string v12, "EmergencyCallController"

    const-string v13, "Phone not idle, delay the time to resume IMS"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    const/4 v13, 0x1

    # setter for: Lcom/movial/ipphone/EmergencyCallController;->mRetryEmergencyIMSRegistration:Z
    invoke-static {v12, v13}, Lcom/movial/ipphone/EmergencyCallController;->access$902(Lcom/movial/ipphone/EmergencyCallController;Z)Z

    goto/16 :goto_0

    .line 222
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    iget-object v11, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, Landroid/telephony/ServiceState;

    .line 223
    .local v11, "state":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getState()I

    move-result v13

    # setter for: Lcom/movial/ipphone/EmergencyCallController;->mGsmRadioState:I
    invoke-static {v12, v13}, Lcom/movial/ipphone/EmergencyCallController;->access$1102(Lcom/movial/ipphone/EmergencyCallController;I)I

    .line 224
    const-string v12, "EmergencyCallController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Receive EVENT_SERVICE_STATE_CHANGED, state = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/movial/ipphone/EmergencyCallController$2;->this$0:Lcom/movial/ipphone/EmergencyCallController;

    # getter for: Lcom/movial/ipphone/EmergencyCallController;->mGsmRadioState:I
    invoke-static {v14}, Lcom/movial/ipphone/EmergencyCallController;->access$1100(Lcom/movial/ipphone/EmergencyCallController;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
