.class Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MultiSimMobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/MultiSimMobileDataStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSimMobileDataStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/MultiSimMobileDataStateTracker;


# direct methods
.method private constructor <init>(Landroid/net/MultiSimMobileDataStateTracker;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 152
    const-string v13, "simSlot"

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getDefaultSimSlot()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 154
    .local v10, "simSlot":I
    const-string v13, "ril.MSIMM"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 155
    .local v9, "simMaster":I
    const-string v13, "persist.sys.dataprefer.simid"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Lcom/android/internal/telephony/MultiSimManager;->getLogicalSimSlot(I)I

    move-result v4

    .line 167
    .local v4, "dataPreferSimSlot":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v13, v13, Landroid/net/MultiSimMobileDataStateTracker;->mApnType:Ljava/lang/String;

    const-string v14, "mms"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 168
    const-string v13, "persist.sys.datacross"

    const/4 v14, -0x1

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 170
    .local v3, "crossSimSlot":I
    const/4 v13, -0x1

    if-eq v3, v13, :cond_0

    .line 171
    const/4 v13, 0x1

    if-eq v9, v13, :cond_0

    .line 172
    move v4, v3

    .line 176
    .end local v3    # "crossSimSlot":I
    :cond_0
    if-eq v10, v4, :cond_2

    .line 295
    :cond_1
    :goto_0
    return-void

    .line 180
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 182
    const-string v13, "apnType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "apnType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v13, v13, Landroid/net/MultiSimMobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-static {v2, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 192
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v13, v13, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v7

    .line 193
    .local v7, "oldSubtype":I
    invoke-static {v10}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/MultiSimTelephonyManager;->getNetworkType()I

    move-result v6

    .line 194
    .local v6, "newSubType":I
    invoke-static {v10}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/MultiSimTelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v12

    .line 195
    .local v12, "subTypeName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v13, v13, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v13, v6, v12}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    .line 196
    if-eq v6, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v13, v13, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 197
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v13, v13, Landroid/net/MultiSimMobileDataStateTracker;->mTarget:Landroid/os/Handler;

    const v14, 0x70003

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v7, v15, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 199
    .local v5, "msg":Landroid/os/Message;
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 202
    .end local v5    # "msg":Landroid/os/Message;
    :cond_3
    const-class v13, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v14, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 204
    .local v11, "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string v13, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 205
    .local v8, "reason":Ljava/lang/String;
    const-string v13, "apn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "apnName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v13, v13, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    const-string v14, "networkRoaming"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    invoke-virtual {v13, v14}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    .line 212
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v14, v13, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    const-string v13, "networkUnvailable"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_5

    const/4 v13, 0x1

    :goto_1
    invoke-virtual {v14, v13}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 219
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v13, v13, Landroid/net/MultiSimMobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v13, v11, :cond_8

    .line 220
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iput-object v11, v13, Landroid/net/MultiSimMobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 221
    sget-object v13, Landroid/net/MultiSimMobileDataStateTracker$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    goto/16 :goto_0

    .line 223
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    invoke-virtual {v13}, Landroid/net/MultiSimMobileDataStateTracker;->isTeardownRequested()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 224
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/net/MultiSimMobileDataStateTracker;->setTeardownRequested(Z)V

    .line 227
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v13, v14, v8, v1}, Landroid/net/MultiSimMobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    :cond_5
    const/4 v13, 0x0

    goto :goto_1

    .line 236
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v13, v14, v8, v1}, Landroid/net/MultiSimMobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 239
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v13, v14, v8, v1}, Landroid/net/MultiSimMobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 242
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v13, "linkProperties"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/LinkProperties;

    iput-object v13, v14, Landroid/net/MultiSimMobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 244
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v13, v13, Landroid/net/MultiSimMobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v13, :cond_6

    .line 245
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v14, "CONNECTED event did not supply link properties."

    invoke-virtual {v13, v14}, Landroid/net/MultiSimMobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    new-instance v14, Landroid/net/LinkProperties;

    invoke-direct {v14}, Landroid/net/LinkProperties;-><init>()V

    iput-object v14, v13, Landroid/net/MultiSimMobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 248
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v13, "linkCapabilities"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/LinkCapabilities;

    iput-object v13, v14, Landroid/net/MultiSimMobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 250
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v13, v13, Landroid/net/MultiSimMobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    if-nez v13, :cond_7

    .line 251
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v14, "CONNECTED event did not supply link capabilities."

    invoke-virtual {v13, v14}, Landroid/net/MultiSimMobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    new-instance v14, Landroid/net/LinkCapabilities;

    invoke-direct {v14}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v14, v13, Landroid/net/MultiSimMobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 254
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v13, v14, v8, v1}, Landroid/net/MultiSimMobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 259
    :cond_8
    const-string v13, "linkPropertiesChanged"

    invoke-static {v8, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 260
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v13, "linkProperties"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/LinkProperties;

    iput-object v13, v14, Landroid/net/MultiSimMobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 262
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v13, v13, Landroid/net/MultiSimMobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v13, :cond_9

    .line 263
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v14, "No link property in LINK_PROPERTIES change event."

    invoke-virtual {v13, v14}, Landroid/net/MultiSimMobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    new-instance v14, Landroid/net/LinkProperties;

    invoke-direct {v14}, Landroid/net/LinkProperties;-><init>()V

    iput-object v14, v13, Landroid/net/MultiSimMobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 267
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v13, v13, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v14, v14, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v15, v15, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v15}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v8, v15}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v13, v13, Landroid/net/MultiSimMobileDataStateTracker;->mTarget:Landroid/os/Handler;

    const v14, 0x70001

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v15, v15, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v13, v14, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 271
    .restart local v5    # "msg":Landroid/os/Message;
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 274
    .end local v1    # "apnName":Ljava/lang/String;
    .end local v2    # "apnType":Ljava/lang/String;
    .end local v5    # "msg":Landroid/os/Message;
    .end local v6    # "newSubType":I
    .end local v7    # "oldSubtype":I
    .end local v8    # "reason":Ljava/lang/String;
    .end local v11    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    .end local v12    # "subTypeName":Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 276
    const-string v13, "apnType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 277
    .restart local v2    # "apnType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v13, v13, Landroid/net/MultiSimMobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-static {v2, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 285
    const-string v13, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 286
    .restart local v8    # "reason":Ljava/lang/String;
    const-string v13, "apn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    .restart local v1    # "apnName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v13, v14, v8, v1}, Landroid/net/MultiSimMobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
