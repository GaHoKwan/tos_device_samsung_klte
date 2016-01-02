.class Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;
.super Landroid/content/BroadcastReceiver;
.source "TelephonyPropertiesEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyPropertiesEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/TelephonyPropertiesEdit;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    const-string v22, "TelephonyPropertiesEdit"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onReceive : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    const-string v23, "NEW_CARD_CHECK"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 51
    const-string v22, "slotWitch"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 52
    .local v21, "slot":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    # invokes: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyNewCard(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$000(Lcom/android/internal/telephony/TelephonyPropertiesEdit;I)V

    .line 140
    .end local v21    # "slot":I
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    const-string v23, "android.settings.SIMCARD_MGT"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 54
    const-string v22, "simcard_sim_id"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 55
    .local v19, "simId":I
    const-string v22, "simcard_sim_icon"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 56
    .local v18, "simIconIndex":Ljava/lang/String;
    const-string v22, "simcard_sim_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 58
    .local v20, "simName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    # invokes: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyIconName(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$100(Lcom/android/internal/telephony/TelephonyPropertiesEdit;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    .end local v18    # "simIconIndex":Ljava/lang/String;
    .end local v19    # "simId":I
    .end local v20    # "simName":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    const-string v23, "ACTION_REGCARD_ICON_CHANGED"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 62
    .local v9, "extras":Landroid/os/Bundle;
    const-string v22, "CDMA01_ICON_INDEX"

    const-string v23, "6"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 63
    .local v7, "cdmaIcon":Ljava/lang/String;
    const-string v22, "GSM_ICON_INDEX"

    const-string v23, "7"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 64
    .local v11, "gsm01Icon":Ljava/lang/String;
    const-string v22, "GSM02_ICON_INDEX"

    const-string v23, "8"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 66
    .local v14, "gsm02Icon":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    # invokes: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v7, v11, v14}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$200(Lcom/android/internal/telephony/TelephonyPropertiesEdit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 67
    .end local v7    # "cdmaIcon":Ljava/lang/String;
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v11    # "gsm01Icon":Ljava/lang/String;
    .end local v14    # "gsm02Icon":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    const-string v23, "ACTION_REGCARD_CARDNAME_CHANGED"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 70
    .restart local v9    # "extras":Landroid/os/Bundle;
    const-string v22, "CDMA01_CARDNAME"

    const-string v23, "Slot 1"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 71
    .local v8, "cdmaName":Ljava/lang/String;
    const-string v22, "GSM_CARDNAME"

    const-string v23, "Slot 2"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 72
    .local v12, "gsm01Name":Ljava/lang/String;
    const-string v22, "GSM02_CARDNAME"

    const-string v23, "Slot 1"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 74
    .local v15, "gsm02Name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    # invokes: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyCardname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v8, v12, v15}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$300(Lcom/android/internal/telephony/TelephonyPropertiesEdit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 75
    .end local v8    # "cdmaName":Ljava/lang/String;
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v12    # "gsm01Name":Ljava/lang/String;
    .end local v15    # "gsm02Name":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    const-string v23, "ACTION_NETWORK_ACTIVATE_STATE"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 78
    .restart local v9    # "extras":Landroid/os/Bundle;
    const-string v22, "CARDTYPE_CDMA01"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 79
    .local v6, "cdmaAct":Ljava/lang/String;
    const-string v22, "CARDTYPE_GSM"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 80
    .local v10, "gsm01Act":Ljava/lang/String;
    const-string v22, "CARDTYPE_GSM02"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 82
    .local v13, "gsm02Act":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    # invokes: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v6, v10, v13}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$400(Lcom/android/internal/telephony/TelephonyPropertiesEdit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 83
    .end local v6    # "cdmaAct":Ljava/lang/String;
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v10    # "gsm01Act":Ljava/lang/String;
    .end local v13    # "gsm02Act":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    const-string v23, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 84
    const-string v22, "simSlot"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 85
    .restart local v21    # "slot":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    # invokes: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyState(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$500(Lcom/android/internal/telephony/TelephonyPropertiesEdit;I)V

    goto/16 :goto_0

    .line 91
    .end local v21    # "slot":I
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    const-string v23, "ACTION_PLMN_UPDATE"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 94
    .restart local v9    # "extras":Landroid/os/Bundle;
    const-string v22, "slot1"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 95
    .local v16, "sSwitchStateC":Ljava/lang/String;
    const-string v22, "slot2"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 96
    .local v17, "sSwitchStateG":Ljava/lang/String;
    const-string v22, "slot1State"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 97
    .local v4, "bSwitchImgViewC":Z
    const-string v22, "slot2State"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 98
    .local v5, "bSwitchImgViewG":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    # invokes: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyPLMN(Ljava/lang/String;Ljava/lang/String;ZZ)V
    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$600(Lcom/android/internal/telephony/TelephonyPropertiesEdit;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 99
    .end local v4    # "bSwitchImgViewC":Z
    .end local v5    # "bSwitchImgViewG":Z
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v16    # "sSwitchStateC":Ljava/lang/String;
    .end local v17    # "sSwitchStateG":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    const-string v23, "com.samsung.intent.action.Slot1OffCompleted"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 100
    const-string v22, "gsm.sim.active"

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "0"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v22, "gsm.sim.currentcardstatus"

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "2"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v22, v0

    # getter for: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$700(Lcom/android/internal/telephony/TelephonyPropertiesEdit;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "phone1_on"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 109
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    const-string v23, "com.samsung.intent.action.Slot1OnCompleted"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 110
    const-string v22, "gsm.sim.active"

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "0"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v22, "gsm.sim.currentcardstatus"

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "3"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v22, v0

    # getter for: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$700(Lcom/android/internal/telephony/TelephonyPropertiesEdit;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "phone1_on"

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 119
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    const-string v23, "com.samsung.intent.action.Slot2OffCompleted"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 120
    const-string v22, "gsm.sim.active"

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "0"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v22, "gsm.sim.currentcardstatus"

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "2"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v22, v0

    # getter for: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$700(Lcom/android/internal/telephony/TelephonyPropertiesEdit;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "phone2_on"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 129
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    const-string v23, "com.samsung.intent.action.Slot2OnCompleted"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 130
    const-string v22, "gsm.sim.active"

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "0"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v22, "gsm.sim.currentcardstatus"

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "3"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v22, v0

    # getter for: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$700(Lcom/android/internal/telephony/TelephonyPropertiesEdit;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "phone2_on"

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method
