.class Lcom/android/server/power/ShutdownThread$10;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(ILandroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;Landroid/net/wifi/WifiManager;J[Z)V
    .locals 0

    .prologue
    .line 976
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$10;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$10;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    iput-wide p3, p0, Lcom/android/server/power/ShutdownThread$10;->val$endTime:J

    iput-object p5, p0, Lcom/android/server/power/ShutdownThread$10;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 978
    const-string v20, "ShutdownThread"

    const-string v21, "!@Start shutdown radios"

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    const-string/jumbo v20, "sys.deviceOffReq"

    const-string v21, "1"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    const-string/jumbo v20, "sys.radio.shutdown"

    const-string/jumbo v21, "true"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    const-string v20, "nfc"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v11

    .line 995
    .local v11, "nfc":Landroid/nfc/INfcAdapter;
    const-string v20, "phone"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v13

    .line 997
    .local v13, "phone":Lcom/android/internal/telephony/ITelephony;
    const-string v20, "bluetooth_manager"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v3

    .line 1000
    .local v3, "bluetooth":Landroid/bluetooth/IBluetoothManager;
    const-string v20, "connectivity"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v5

    .line 1003
    .local v5, "connectivity":Landroid/net/IConnectivityManager;
    const/4 v14, 0x0

    .line 1026
    .local v14, "phone2":Lcom/android/internal/telephony/ITelephony;
    const/4 v4, 0x1

    .line 1029
    .local v4, "bluetoothOff":Z
    const/4 v15, 0x1

    .line 1030
    .local v15, "radioOff":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1031
    const-string v20, "phone_msim"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v10

    .line 1033
    .local v10, "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-eqz v10, :cond_7

    .line 1036
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_7

    .line 1038
    if-eqz v15, :cond_1

    invoke-interface {v10, v9}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRadioOn(I)Z

    move-result v20

    if-nez v20, :cond_1

    const/4 v15, 0x1

    .line 1039
    :goto_1
    invoke-interface {v10, v9}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRadioOn(I)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1040
    const-string v20, "ShutdownThread"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Turning off radio on Subscription :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v10, v0, v9}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setRadio(ZI)Z

    .line 1037
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1038
    :cond_1
    const/4 v15, 0x0

    goto :goto_1

    .line 1046
    .end local v9    # "i":I
    .end local v10    # "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_2
    if-eqz v13, :cond_3

    invoke-interface {v13}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v20

    if-nez v20, :cond_f

    :cond_3
    const/4 v15, 0x1

    .line 1047
    :goto_2
    if-eqz v5, :cond_4

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/net/IConnectivityManager;->isNetworkSupported(I)Z

    move-result v20

    if-eqz v20, :cond_5

    :cond_4
    if-eqz v13, :cond_5

    invoke-interface {v13}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v20

    if-nez v20, :cond_6

    .line 1050
    :cond_5
    const/4 v15, 0x1

    .line 1052
    :cond_6
    if-nez v15, :cond_10

    .line 1053
    const-string v20, "ShutdownThread"

    const-string v21, "Turning off radio..."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v13, v0}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1068
    :cond_7
    :goto_3
    if-eqz v14, :cond_8

    :try_start_1
    invoke-interface {v14}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v20

    if-nez v20, :cond_11

    :cond_8
    const/16 v16, 0x1

    .line 1070
    .local v16, "radioOff2":Z
    :goto_4
    if-nez v16, :cond_9

    .line 1071
    const-string v20, "ShutdownThread"

    const-string v21, "Turning off radio2..."

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v14, v0}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1080
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v20

    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    :cond_a
    const/4 v2, 0x1

    .line 1083
    .local v2, "WiFiOff":Z
    :goto_6
    if-nez v2, :cond_b

    .line 1084
    const-string v20, "ShutdownThread"

    const-string v21, "Disabling WiFi..."

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->shutdown()Z

    .line 1087
    :cond_b
    const-string v20, "ShutdownThread"

    const-string v21, "Waiting for NFC, Bluetooth, Wi-Fi and Radio..."

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    if-eqz v11, :cond_c

    :try_start_2
    invoke-interface {v11}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    :cond_c
    const/4 v12, 0x1

    .line 1095
    .local v12, "nfcOff":Z
    :goto_7
    if-nez v12, :cond_d

    .line 1096
    const-string v20, "ShutdownThread"

    const-string v21, "Turning off NFC..."

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v11, v0}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1105
    :cond_d
    :goto_8
    :try_start_3
    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->dumpInFile()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1110
    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$endTime:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-gez v20, :cond_1d

    .line 1111
    if-nez v4, :cond_e

    .line 1113
    :try_start_4
    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v20

    if-nez v20, :cond_14

    const/4 v4, 0x1

    .line 1118
    :goto_a
    if-eqz v4, :cond_e

    .line 1119
    const-string v20, "ShutdownThread"

    const-string v21, "Bluetooth turned off."

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :cond_e
    if-nez v15, :cond_17

    .line 1124
    const/16 v19, 0x1

    .line 1125
    .local v19, "subRadioOff":Z
    :try_start_5
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v20

    if-eqz v20, :cond_1e

    .line 1126
    const-string v20, "phone_msim"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v10

    .line 1128
    .restart local v10    # "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_b
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_16

    .line 1130
    if-eqz v19, :cond_15

    invoke-interface {v10, v9}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRadioOn(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v20

    if-nez v20, :cond_15

    const/16 v19, 0x1

    .line 1129
    :goto_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 1046
    .end local v2    # "WiFiOff":Z
    .end local v9    # "i":I
    .end local v10    # "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    .end local v12    # "nfcOff":Z
    .end local v16    # "radioOff2":Z
    .end local v19    # "subRadioOff":Z
    :cond_f
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 1056
    :cond_10
    :try_start_6
    const-string v20, "ShutdownThread"

    const-string v21, "radio already turned off"

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_3

    .line 1059
    :catch_0
    move-exception v8

    .line 1060
    .local v8, "ex":Landroid/os/RemoteException;
    const-string v20, "ShutdownThread"

    const-string v21, "RemoteException during radio shutdown"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1061
    const/4 v15, 0x1

    goto/16 :goto_3

    .line 1068
    .end local v8    # "ex":Landroid/os/RemoteException;
    :cond_11
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 1074
    :catch_1
    move-exception v8

    .line 1075
    .restart local v8    # "ex":Landroid/os/RemoteException;
    const-string v20, "ShutdownThread"

    const-string v21, "RemoteException during radio2 shutdown"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1076
    const/16 v16, 0x1

    .restart local v16    # "radioOff2":Z
    goto/16 :goto_5

    .line 1080
    .end local v8    # "ex":Landroid/os/RemoteException;
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1093
    .restart local v2    # "WiFiOff":Z
    :cond_13
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 1099
    :catch_2
    move-exception v8

    .line 1100
    .restart local v8    # "ex":Landroid/os/RemoteException;
    const-string v20, "ShutdownThread"

    const-string v21, "RemoteException during NFC shutdown"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1101
    const/4 v12, 0x1

    .restart local v12    # "nfcOff":Z
    goto/16 :goto_8

    .line 1106
    .end local v8    # "ex":Landroid/os/RemoteException;
    :catch_3
    move-exception v8

    .line 1107
    .restart local v8    # "ex":Landroid/os/RemoteException;
    const-string v20, "ShutdownThread"

    const-string v21, "RemoteException during bluetooth permanent log dump"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto/16 :goto_9

    .line 1113
    .end local v8    # "ex":Landroid/os/RemoteException;
    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_a

    .line 1114
    :catch_4
    move-exception v8

    .line 1115
    .restart local v8    # "ex":Landroid/os/RemoteException;
    const-string v20, "ShutdownThread"

    const-string v21, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1116
    const/4 v4, 0x1

    goto/16 :goto_a

    .line 1130
    .end local v8    # "ex":Landroid/os/RemoteException;
    .restart local v9    # "i":I
    .restart local v10    # "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    .restart local v19    # "subRadioOff":Z
    :cond_15
    const/16 v19, 0x0

    goto :goto_c

    .line 1132
    :cond_16
    move/from16 v15, v19

    .line 1141
    .end local v9    # "i":I
    .end local v10    # "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :goto_d
    const-string v6, ""

    .line 1142
    .local v6, "cpName":Ljava/lang/String;
    const-string v20, "ril.modem.board"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1143
    const-string v20, "XMM"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_21

    .line 1144
    if-eqz v15, :cond_17

    .line 1145
    const-string v17, ""

    .line 1146
    .local v17, "repPhoneOff":Ljava/lang/String;
    const-string v20, "ril.deviceOffRes"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1147
    if-eqz v17, :cond_20

    const-string v20, "1"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_20

    .line 1149
    const-string v20, "ShutdownThread"

    const-string v21, "!@PhoneOff req resp"

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    const/4 v15, 0x1

    .line 1151
    const-string v20, "ShutdownThread"

    const-string v21, "Radio turned off."

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    .end local v6    # "cpName":Ljava/lang/String;
    .end local v17    # "repPhoneOff":Ljava/lang/String;
    .end local v19    # "subRadioOff":Z
    :cond_17
    :goto_e
    if-nez v16, :cond_18

    .line 1175
    :try_start_7
    invoke-interface {v14}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_6

    move-result v20

    if-nez v20, :cond_22

    const/16 v16, 0x1

    .line 1180
    :goto_f
    if-eqz v16, :cond_18

    .line 1181
    const-string v20, "ShutdownThread"

    const-string v21, "Radio2 turned off."

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :cond_18
    if-nez v2, :cond_1b

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_23

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v20

    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v20

    const/16 v21, 0xe

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_23

    :cond_1a
    const/4 v2, 0x1

    .line 1201
    :cond_1b
    :goto_10
    if-nez v12, :cond_1c

    .line 1203
    :try_start_8
    invoke-interface {v11}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_7

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_24

    const/4 v12, 0x1

    .line 1208
    :goto_11
    if-eqz v12, :cond_1c

    .line 1209
    const-string v20, "ShutdownThread"

    const-string v21, "NFC turned off."

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    :cond_1c
    if-eqz v15, :cond_25

    if-eqz v16, :cond_25

    if-eqz v4, :cond_25

    if-eqz v12, :cond_25

    if-eqz v2, :cond_25

    .line 1215
    const-string v20, "ShutdownThread"

    const-string v21, "NFC, Radio, Bluetooth and WiFi shutdown complete."

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$done:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x1

    aput-boolean v22, v20, v21

    .line 1243
    :cond_1d
    return-void

    .line 1134
    .restart local v19    # "subRadioOff":Z
    :cond_1e
    :try_start_9
    invoke-interface {v13}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_5

    move-result v20

    if-nez v20, :cond_1f

    const/4 v15, 0x1

    :goto_12
    goto/16 :goto_d

    :cond_1f
    const/4 v15, 0x0

    goto :goto_12

    .line 1136
    :catch_5
    move-exception v8

    .line 1137
    .restart local v8    # "ex":Landroid/os/RemoteException;
    const-string v20, "ShutdownThread"

    const-string v21, "RemoteException during radio shutdown"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1138
    const/4 v15, 0x1

    goto/16 :goto_d

    .line 1153
    .end local v8    # "ex":Landroid/os/RemoteException;
    .restart local v6    # "cpName":Ljava/lang/String;
    .restart local v17    # "repPhoneOff":Ljava/lang/String;
    :cond_20
    const/4 v15, 0x0

    .line 1154
    const-string v20, "ShutdownThread"

    const-string v21, "ril.deviceOffRes is not set"

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1158
    .end local v17    # "repPhoneOff":Ljava/lang/String;
    :cond_21
    if-eqz v15, :cond_17

    .line 1159
    const-string v20, "ShutdownThread"

    const-string v21, "Radio turned off."

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1175
    .end local v6    # "cpName":Ljava/lang/String;
    .end local v19    # "subRadioOff":Z
    :cond_22
    const/16 v16, 0x0

    goto/16 :goto_f

    .line 1176
    :catch_6
    move-exception v8

    .line 1177
    .restart local v8    # "ex":Landroid/os/RemoteException;
    const-string v20, "ShutdownThread"

    const-string v21, "RemoteException during radio2 shutdown"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1178
    const/16 v16, 0x1

    goto/16 :goto_f

    .line 1195
    .end local v8    # "ex":Landroid/os/RemoteException;
    :cond_23
    const/4 v2, 0x0

    goto :goto_10

    .line 1203
    :cond_24
    const/4 v12, 0x0

    goto :goto_11

    .line 1204
    :catch_7
    move-exception v8

    .line 1205
    .restart local v8    # "ex":Landroid/os/RemoteException;
    const-string v20, "ShutdownThread"

    const-string v21, "RemoteException during NFC shutdown"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1206
    const/4 v12, 0x1

    goto :goto_11

    .line 1219
    .end local v8    # "ex":Landroid/os/RemoteException;
    :cond_25
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 1220
    .local v18, "sb":Ljava/lang/StringBuilder;
    const-string v20, "RadioOff:"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", BluetoothOff:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", NFC Off:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", WiFiOff:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1224
    const-string v20, "ShutdownThread"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    const-string v20, "ShutdownThread"

    const-string v21, "!@before sleep"

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const-wide/16 v20, 0x1f4

    :try_start_a
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_8

    .line 1238
    :goto_13
    const-string v20, "ShutdownThread"

    const-string v21, "!@after sleep"

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    const-string v20, "ShutdownThread"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "!@[Phone off retry:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "] : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$endTime:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " radio="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " radio2="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " bluetooth="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " nfc="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1235
    :catch_8
    move-exception v7

    .line 1236
    .local v7, "e":Ljava/lang/InterruptedException;
    const-string v20, "ShutdownThread"

    const-string v21, "InterruptedException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_13
.end method
