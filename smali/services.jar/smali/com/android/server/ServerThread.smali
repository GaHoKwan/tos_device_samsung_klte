.class Lcom/android/server/ServerThread;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final DIR_ENCRYPTION:Z

.field public static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field public static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final is3LMAllowed:Z

.field private static final is3LMPowerSavingEnabled:Z


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 212
    const-string v0, "ro.sec.fle.encryption"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final startEmergencyModeService(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2100
    :try_start_0
    invoke-static {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    .line 2101
    .local v1, "emMgr":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->readyEmergencyMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2106
    .end local v1    # "emMgr":Lcom/sec/android/emergencymode/EmergencyManager;
    :goto_0
    return-void

    .line 2102
    :catch_0
    move-exception v0

    .line 2103
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SystemServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting emergency service failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static final startFingerprintService(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2083
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.fingerprint_manager_service"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2085
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2086
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.fingerprint.service"

    const-string v4, "com.samsung.android.fingerprint.service.FingerprintServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2089
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2095
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 2091
    :catch_0
    move-exception v0

    .line 2092
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SystemServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting fingerprint service failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2075
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2076
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2079
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2080
    return-void
.end method


# virtual methods
.method public initAndLoop()V
    .locals 228

    .prologue
    .line 220
    const-string v7, "SystemServer"

    const-string v9, "!@Boot: Start initAndLoop"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v7, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 224
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 226
    const/16 v7, -0x13

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 229
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 230
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 234
    const-string/jumbo v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v189

    .line 236
    .local v189, "shutdownAction":Ljava/lang/String;
    if-eqz v189, :cond_0

    invoke-virtual/range {v189 .. v189}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 237
    const/4 v7, 0x0

    move-object/from16 v0, v189

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_1

    const/16 v181, 0x1

    .line 240
    .local v181, "reboot":Z
    :goto_0
    invoke-virtual/range {v189 .. v189}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_2

    .line 241
    const/4 v7, 0x1

    invoke-virtual/range {v189 .. v189}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v189

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v180

    .line 246
    .local v180, "reason":Ljava/lang/String;
    :goto_1
    move/from16 v0, v181

    move-object/from16 v1, v180

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 250
    .end local v180    # "reason":Ljava/lang/String;
    .end local v181    # "reboot":Z
    :cond_0
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v130

    .line 251
    .local v130, "factoryTestStr":Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v130

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v129, 0x0

    .line 253
    .local v129, "factoryTest":I
    :goto_2
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    .line 255
    .local v33, "headless":Z
    const/16 v141, 0x0

    .line 256
    .local v141, "installer":Lcom/android/server/pm/Installer;
    const/16 v70, 0x0

    .line 257
    .local v70, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v100, 0x0

    .line 258
    .local v100, "contentService":Lcom/android/server/content/ContentService;
    const/16 v144, 0x0

    .line 259
    .local v144, "lights":Lcom/android/server/LightsService;
    const/4 v4, 0x0

    .line 260
    .local v4, "power":Lcom/android/server/power/PowerManagerService;
    const/16 v118, 0x0

    .line 261
    .local v118, "display":Lcom/android/server/display/DisplayManagerService;
    const/16 v79, 0x0

    .line 262
    .local v79, "battery":Lcom/android/server/BatteryService;
    const/16 v216, 0x0

    .line 263
    .local v216, "vibrator":Lcom/android/server/VibratorService;
    const/16 v72, 0x0

    .line 264
    .local v72, "alarm":Lcom/android/server/AlarmManagerService;
    const/16 v157, 0x0

    .line 265
    .local v157, "mountService":Lcom/android/server/MountService;
    const/16 v30, 0x0

    .line 266
    .local v30, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .line 267
    .local v29, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v163, 0x0

    .line 268
    .local v163, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v92, 0x0

    .line 269
    .local v92, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v88, 0x0

    .line 270
    .local v88, "cneObj":Ljava/lang/Object;
    const/16 v224, 0x0

    .line 271
    .local v224, "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v221, 0x0

    .line 274
    .local v221, "wifi":Lcom/android/server/wifi/WifiService;
    const/16 v119, 0x0

    .line 277
    .local v119, "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    const/16 v223, 0x0

    .line 279
    .local v223, "wifiOffloadService":Lcom/android/server/WifiOffloadService;
    const/16 v188, 0x0

    .line 280
    .local v188, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v173, 0x0

    .line 281
    .local v173, "pm":Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 282
    .local v5, "context":Landroid/content/Context;
    const/16 v226, 0x0

    .line 283
    .local v226, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v80, 0x0

    .line 284
    .local v80, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v121, 0x0

    .line 285
    .local v121, "dock":Lcom/android/server/DockObserver;
    const/16 v213, 0x0

    .line 286
    .local v213, "usb":Lcom/android/server/usb/UsbService;
    const/16 v186, 0x0

    .line 287
    .local v186, "serial":Lcom/android/server/SerialService;
    const/16 v209, 0x0

    .line 288
    .local v209, "twilight":Lcom/android/server/TwilightService;
    const/16 v211, 0x0

    .line 289
    .local v211, "uiMode":Lcom/android/server/UiModeManagerService;
    const/16 v182, 0x0

    .line 290
    .local v182, "recognition":Lcom/android/server/RecognitionManagerService;
    const/16 v165, 0x0

    .line 291
    .local v165, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v89, 0x0

    .line 292
    .local v89, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v140, 0x0

    .line 293
    .local v140, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v196, 0x0

    .line 294
    .local v196, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v161, 0x0

    .line 295
    .local v161, "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    const/16 v96, 0x0

    .line 297
    .local v96, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v105, 0x0

    .line 299
    .local v105, "dEncService":Lcom/android/server/DirEncryptService;
    const/16 v149, 0x0

    .line 301
    .local v149, "mHMS":Lcom/android/server/HarmonyEASService;
    const/16 v107, 0x0

    .line 302
    .local v107, "deviceManager":Lcom/android/server/DeviceManager3LMService;
    const/16 v175, 0x0

    .line 306
    .local v175, "powerSaving":Lcom/android/server/PowerSaving3LMService;
    const/16 v178, 0x0

    .line 308
    .local v178, "rcpManagerService":Lcom/android/server/RCPManagerService;
    const/16 v172, 0x0

    .line 312
    .local v172, "personaService":Lcom/android/server/pm/PersonaManagerService;
    const/16 v98, 0x0

    .line 313
    .local v98, "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    const-string v7, "1"

    const-string v9, "ro.config.knox"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v62

    .line 317
    .local v62, "knoxV1Enabled":Z
    const/16 v201, 0x0

    .line 318
    .local v201, "timaService":Lcom/android/server/TimaService;
    const/16 v199, 0x0

    .line 321
    .local v199, "timaObserver":Lcom/android/server/TimaObserver;
    const/16 v159, 0x0

    .line 325
    .local v159, "msapwifi":Lcom/android/server/MsapWifiService;
    :try_start_0
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :goto_3
    new-instance v227, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v227

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 333
    .local v227, "wmHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual/range {v227 .. v227}, Landroid/os/HandlerThread;->start()V

    .line 334
    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v227 .. v227}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 335
    .local v21, "wmHandler":Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 352
    const/16 v24, 0x0

    .line 353
    .local v24, "onlyCore":Z
    const/16 v132, 0x0

    .line 358
    .local v132, "firstBoot":Z
    :try_start_1
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance v142, Lcom/android/server/pm/Installer;

    invoke-direct/range {v142 .. v142}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 360
    .end local v141    # "installer":Lcom/android/server/pm/Installer;
    .local v142, "installer":Lcom/android/server/pm/Installer;
    :try_start_2
    invoke-virtual/range {v142 .. v142}, Lcom/android/server/pm/Installer;->ping()Z

    .line 362
    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v174, Lcom/android/server/power/PowerManagerService;

    invoke-direct/range {v174 .. v174}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_8d

    .line 364
    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .local v174, "power":Lcom/android/server/power/PowerManagerService;
    :try_start_3
    const-string v7, "power"

    move-object/from16 v0, v174

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 386
    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-static/range {v129 .. v129}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_8e

    move-result-object v5

    move-object/from16 v4, v174

    .end local v174    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    move-object/from16 v141, v142

    .line 393
    .end local v142    # "installer":Lcom/android/server/pm/Installer;
    .restart local v141    # "installer":Lcom/android/server/pm/Installer;
    :goto_4
    const-string v7, "config.disable_storage"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v115

    .line 394
    .local v115, "disableStorage":Z
    const-string v7, "config.disable_media"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v112

    .line 395
    .local v112, "disableMedia":Z
    const-string v7, "config.disable_bluetooth"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v110

    .line 396
    .local v110, "disableBluetooth":Z
    const-string v7, "config.disable_telephony"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v117

    .line 397
    .local v117, "disableTelephony":Z
    const-string v7, "config.disable_location"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v111

    .line 398
    .local v111, "disableLocation":Z
    const-string v7, "config.disable_systemui"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v116

    .line 399
    .local v116, "disableSystemUI":Z
    const-string v7, "config.disable_noncore"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v114

    .line 400
    .local v114, "disableNonCoreServices":Z
    const-string v7, "config.disable_network"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v113

    .line 403
    .local v113, "disableNetwork":Z
    :try_start_4
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    new-instance v11, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    invoke-direct {v11, v5, v0}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_7b

    .line 405
    .end local v118    # "display":Lcom/android/server/display/DisplayManagerService;
    .local v11, "display":Lcom/android/server/display/DisplayManagerService;
    :try_start_5
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v11, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 407
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isMultiSimSlot()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 410
    const/16 v190, 0x0

    .local v190, "simSlotNum":I
    :goto_5
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v7

    move/from16 v0, v190

    if-ge v0, v7, :cond_5

    .line 411
    const-string/jumbo v7, "telephony.registry"

    move/from16 v0, v190

    invoke-static {v7, v0}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    move/from16 v0, v190

    invoke-direct {v9, v5, v0}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;I)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    .line 410
    add-int/lit8 v190, v190, 0x1

    goto :goto_5

    .line 237
    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .end local v5    # "context":Landroid/content/Context;
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v21    # "wmHandler":Landroid/os/Handler;
    .end local v24    # "onlyCore":Z
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v30    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v33    # "headless":Z
    .end local v62    # "knoxV1Enabled":Z
    .end local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v79    # "battery":Lcom/android/server/BatteryService;
    .end local v80    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v88    # "cneObj":Ljava/lang/Object;
    .end local v89    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .end local v92    # "connectivity":Lcom/android/server/ConnectivityService;
    .end local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v98    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .end local v100    # "contentService":Lcom/android/server/content/ContentService;
    .end local v105    # "dEncService":Lcom/android/server/DirEncryptService;
    .end local v107    # "deviceManager":Lcom/android/server/DeviceManager3LMService;
    .end local v110    # "disableBluetooth":Z
    .end local v111    # "disableLocation":Z
    .end local v112    # "disableMedia":Z
    .end local v113    # "disableNetwork":Z
    .end local v114    # "disableNonCoreServices":Z
    .end local v115    # "disableStorage":Z
    .end local v116    # "disableSystemUI":Z
    .end local v117    # "disableTelephony":Z
    .end local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v121    # "dock":Lcom/android/server/DockObserver;
    .end local v129    # "factoryTest":I
    .end local v130    # "factoryTestStr":Ljava/lang/String;
    .end local v132    # "firstBoot":Z
    .end local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v141    # "installer":Lcom/android/server/pm/Installer;
    .end local v144    # "lights":Lcom/android/server/LightsService;
    .end local v149    # "mHMS":Lcom/android/server/HarmonyEASService;
    .end local v157    # "mountService":Lcom/android/server/MountService;
    .end local v159    # "msapwifi":Lcom/android/server/MsapWifiService;
    .end local v161    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .end local v163    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v165    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .end local v172    # "personaService":Lcom/android/server/pm/PersonaManagerService;
    .end local v173    # "pm":Landroid/content/pm/IPackageManager;
    .end local v175    # "powerSaving":Lcom/android/server/PowerSaving3LMService;
    .end local v178    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .end local v182    # "recognition":Lcom/android/server/RecognitionManagerService;
    .end local v186    # "serial":Lcom/android/server/SerialService;
    .end local v188    # "serviceDiscovery":Lcom/android/server/NsdService;
    .end local v190    # "simSlotNum":I
    .end local v196    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v199    # "timaObserver":Lcom/android/server/TimaObserver;
    .end local v201    # "timaService":Lcom/android/server/TimaService;
    .end local v209    # "twilight":Lcom/android/server/TwilightService;
    .end local v211    # "uiMode":Lcom/android/server/UiModeManagerService;
    .end local v213    # "usb":Lcom/android/server/usb/UsbService;
    .end local v216    # "vibrator":Lcom/android/server/VibratorService;
    .end local v221    # "wifi":Lcom/android/server/wifi/WifiService;
    .end local v223    # "wifiOffloadService":Lcom/android/server/WifiOffloadService;
    .end local v224    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .end local v226    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v227    # "wmHandlerThread":Landroid/os/HandlerThread;
    :cond_1
    const/16 v181, 0x0

    goto/16 :goto_0

    .line 243
    .restart local v181    # "reboot":Z
    :cond_2
    const/16 v180, 0x0

    .restart local v180    # "reason":Ljava/lang/String;
    goto/16 :goto_1

    .line 251
    .end local v180    # "reason":Ljava/lang/String;
    .end local v181    # "reboot":Z
    .restart local v130    # "factoryTestStr":Ljava/lang/String;
    :cond_3
    invoke-static/range {v130 .. v130}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v129

    goto/16 :goto_2

    .line 326
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v30    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v33    # "headless":Z
    .restart local v62    # "knoxV1Enabled":Z
    .restart local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v80    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v88    # "cneObj":Ljava/lang/Object;
    .restart local v89    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v92    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v98    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v100    # "contentService":Lcom/android/server/content/ContentService;
    .restart local v105    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v107    # "deviceManager":Lcom/android/server/DeviceManager3LMService;
    .restart local v118    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v121    # "dock":Lcom/android/server/DockObserver;
    .restart local v129    # "factoryTest":I
    .restart local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v141    # "installer":Lcom/android/server/pm/Installer;
    .restart local v144    # "lights":Lcom/android/server/LightsService;
    .restart local v149    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v157    # "mountService":Lcom/android/server/MountService;
    .restart local v159    # "msapwifi":Lcom/android/server/MsapWifiService;
    .restart local v161    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v163    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v165    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v172    # "personaService":Lcom/android/server/pm/PersonaManagerService;
    .restart local v173    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v175    # "powerSaving":Lcom/android/server/PowerSaving3LMService;
    .restart local v178    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .restart local v182    # "recognition":Lcom/android/server/RecognitionManagerService;
    .restart local v186    # "serial":Lcom/android/server/SerialService;
    .restart local v188    # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v196    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v199    # "timaObserver":Lcom/android/server/TimaObserver;
    .restart local v201    # "timaService":Lcom/android/server/TimaService;
    .restart local v209    # "twilight":Lcom/android/server/TwilightService;
    .restart local v211    # "uiMode":Lcom/android/server/UiModeManagerService;
    .restart local v213    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v216    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v221    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v223    # "wifiOffloadService":Lcom/android/server/WifiOffloadService;
    .restart local v224    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v226    # "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_0
    move-exception v125

    .line 327
    .local v125, "e":Ljava/lang/Exception;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting ServiceKeeper"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 388
    .end local v125    # "e":Ljava/lang/Exception;
    .restart local v21    # "wmHandler":Landroid/os/Handler;
    .restart local v24    # "onlyCore":Z
    .restart local v132    # "firstBoot":Z
    .restart local v227    # "wmHandlerThread":Landroid/os/HandlerThread;
    :catch_1
    move-exception v125

    .line 389
    .local v125, "e":Ljava/lang/RuntimeException;
    :goto_6
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string v7, "System"

    const-string v9, "************ Failure starting bootstrap service"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 414
    .end local v118    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v125    # "e":Ljava/lang/RuntimeException;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v110    # "disableBluetooth":Z
    .restart local v111    # "disableLocation":Z
    .restart local v112    # "disableMedia":Z
    .restart local v113    # "disableNetwork":Z
    .restart local v114    # "disableNonCoreServices":Z
    .restart local v115    # "disableStorage":Z
    .restart local v116    # "disableSystemUI":Z
    .restart local v117    # "disableTelephony":Z
    :cond_4
    :try_start_6
    new-instance v197, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v197

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3

    .line 415
    .end local v196    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v197, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_7
    const-string/jumbo v7, "telephony.registry"

    move-object/from16 v0, v197

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_7c

    move-object/from16 v196, v197

    .line 419
    .end local v197    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v196    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_5
    :try_start_8
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 420
    const-string v7, "SystemServer"

    const-string v9, "MSimTelephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    new-instance v162, Lcom/android/server/MSimTelephonyRegistry;

    move-object/from16 v0, v162

    invoke-direct {v0, v5}, Lcom/android/server/MSimTelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3

    .line 422
    .end local v161    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .local v162, "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    :try_start_9
    const-string/jumbo v7, "telephony.msim.registry"

    move-object/from16 v0, v162

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_7d

    move-object/from16 v161, v162

    .line 425
    .end local v162    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v161    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    :cond_6
    :try_start_a
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const-string v7, "scheduling_policy"

    new-instance v9, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v9}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 428
    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 430
    invoke-virtual {v11}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_7

    .line 431
    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 435
    :cond_7
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const-string/jumbo v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v104

    .line 438
    .local v104, "cryptState":Ljava/lang/String;
    const-string/jumbo v7, "trigger_restart_min_framework"

    move-object/from16 v0, v104

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 439
    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/16 v24, 0x1

    .line 447
    :cond_8
    :goto_7
    const-string v7, "1"

    const-string v9, "ro.config.tima"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3

    move-result v198

    .line 448
    .local v198, "timaEnabled":Z
    if-eqz v198, :cond_9

    .line 450
    :try_start_b
    const-string v7, "SystemServer"

    const-string v9, "TIMA Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    new-instance v202, Lcom/android/server/TimaService;

    move-object/from16 v0, v202

    invoke-direct {v0, v5}, Lcom/android/server/TimaService;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_3

    .line 452
    .end local v201    # "timaService":Lcom/android/server/TimaService;
    .local v202, "timaService":Lcom/android/server/TimaService;
    :try_start_c
    const-string/jumbo v7, "tima"

    move-object/from16 v0, v202

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_8c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_7e

    move-object/from16 v201, v202

    .line 458
    .end local v202    # "timaService":Lcom/android/server/TimaService;
    .restart local v201    # "timaService":Lcom/android/server/TimaService;
    :goto_8
    :try_start_d
    const-string v7, "SystemServer"

    const-string v9, "TIMA Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    new-instance v200, Lcom/android/server/TimaObserver;

    move-object/from16 v0, v200

    invoke-direct {v0, v5}, Lcom/android/server/TimaObserver;-><init>(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_3

    .end local v199    # "timaObserver":Lcom/android/server/TimaObserver;
    .local v200, "timaObserver":Lcom/android/server/TimaObserver;
    move-object/from16 v199, v200

    .line 465
    .end local v200    # "timaObserver":Lcom/android/server/TimaObserver;
    .restart local v199    # "timaObserver":Lcom/android/server/TimaObserver;
    :goto_9
    :try_start_e
    const-string v7, "3.0"

    const-string v9, "ro.config.timaversion"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v203

    .line 466
    .local v203, "timaversion":Z
    if-eqz v203, :cond_9

    .line 467
    const-string v7, "SystemServer"

    const-string v9, "Added TIMA keystore provider"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance v7, Landroid/security/TimaKeyStoreProvider;

    invoke-direct {v7}, Landroid/security/TimaKeyStoreProvider;-><init>()V

    invoke-static {v7}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 473
    .end local v203    # "timaversion":Z
    :cond_9
    const-string v7, "SystemServer"

    const-string v9, "!@Boot: Start PackageManagerService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    if-eqz v129, :cond_41

    const/4 v7, 0x1

    :goto_a
    move-object/from16 v0, v141

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;

    move-result-object v173

    .line 477
    const-string v7, "SystemServer"

    const-string v9, "!@Boot: End PackageManagerService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_3

    .line 479
    :try_start_f
    invoke-interface/range {v173 .. v173}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_5f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_3

    move-result v132

    .line 483
    :goto_b
    :try_start_10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 485
    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 488
    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const-string/jumbo v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_3

    .line 494
    :try_start_11
    const-string v7, "SystemServer"

    const-string v9, "SEAMS"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const-string v7, "SEAMService"

    new-instance v9, Lcom/android/server/SEAMService;

    invoke-direct {v9, v5}, Lcom/android/server/SEAMService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_3

    .line 503
    :goto_c
    :try_start_12
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v215

    .line 504
    .local v215, "versionInfo":Landroid/os/Bundle;
    const-string v7, "2.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v215

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 505
    const-string v7, "SystemServer"

    const-string v9, "Persona Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->getInstance()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v172

    .line 507
    const-string v7, "persona"

    move-object/from16 v0, v172

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 510
    :cond_a
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_3

    .line 515
    :try_start_13
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    new-instance v71, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v71

    invoke-direct {v0, v5}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_3

    .line 517
    .end local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v71, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_14
    const-string v7, "account"

    move-object/from16 v0, v71

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_8b
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_7f

    move-object/from16 v70, v71

    .line 523
    .end local v71    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_d
    :try_start_15
    const-string v7, ""

    const-string v9, "KT"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_3

    move-result v7

    if-nez v7, :cond_b

    .line 525
    :try_start_16
    const-string v7, "SystemServer"

    const-string v9, "KT UCA Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const-string v7, "ktuca"

    new-instance v9, Landroid/ktuca/KtUcaService;

    invoke-direct {v9, v5}, Landroid/ktuca/KtUcaService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_3

    .line 533
    :cond_b
    :goto_e
    :try_start_17
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/4 v7, 0x1

    move/from16 v0, v129

    if-ne v0, v7, :cond_42

    const/4 v7, 0x1

    :goto_f
    invoke-static {v5, v7}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v100

    .line 539
    new-instance v106, Lcom/android/server/DirEncryptService;

    move-object/from16 v0, v106

    invoke-direct {v0, v5}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_3

    .line 541
    .end local v105    # "dEncService":Lcom/android/server/DirEncryptService;
    .local v106, "dEncService":Lcom/android/server/DirEncryptService;
    :try_start_18
    sget-boolean v7, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    if-eqz v7, :cond_c

    .line 542
    const-string v7, "DirEncryptService"

    move-object/from16 v0, v106

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_80

    :cond_c
    move-object/from16 v105, v106

    .line 551
    .end local v106    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v105    # "dEncService":Lcom/android/server/DirEncryptService;
    :goto_10
    if-eqz v62, :cond_d

    .line 553
    :try_start_19
    const-string v7, "SystemServer"

    const-string v9, "Enterprise Container Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    new-instance v99, Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, v99

    invoke-direct {v0, v5}, Lcom/sec/knox/container/EnterpriseContainerService;-><init>(Landroid/content/Context;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_3

    .line 555
    .end local v98    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .local v99, "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    :try_start_1a
    const-string v7, "container_service"

    move-object/from16 v0, v99

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 557
    const-string v7, "SystemServer"

    const-string v9, "Container Service service created..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_8a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_81

    move-object/from16 v98, v99

    .line 566
    .end local v99    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v98    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    :cond_d
    :goto_11
    :try_start_1b
    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 569
    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    new-instance v6, Lcom/android/server/LightsService;

    invoke-direct {v6, v5}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_3

    .line 572
    .end local v144    # "lights":Lcom/android/server/LightsService;
    .local v6, "lights":Lcom/android/server/LightsService;
    :try_start_1c
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_82

    .line 574
    .end local v79    # "battery":Lcom/android/server/BatteryService;
    .local v8, "battery":Lcom/android/server/BatteryService;
    :try_start_1d
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 578
    const-string v7, "SystemServer"

    const-string v9, "TactileAssist Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    new-instance v195, Lcom/android/server/TactileAssistService;

    move-object/from16 v0, v195

    invoke-direct {v0, v5}, Lcom/android/server/TactileAssistService;-><init>(Landroid/content/Context;)V

    .line 580
    .local v195, "tactileAssist":Lcom/android/server/TactileAssistService;
    const-string/jumbo v7, "tactileassist"

    move-object/from16 v0, v195

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 584
    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    new-instance v217, Lcom/android/server/VibratorService;

    move-object/from16 v0, v217

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_83

    .line 586
    .end local v216    # "vibrator":Lcom/android/server/VibratorService;
    .local v217, "vibrator":Lcom/android/server/VibratorService;
    :try_start_1e
    const-string/jumbo v7, "vibrator"

    move-object/from16 v0, v217

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 590
    const-string v7, "SystemServer"

    const-string v9, "Tw ToolBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    new-instance v204, Lcom/samsung/android/toolbox/TwToolBoxService;

    move-object/from16 v0, v204

    invoke-direct {v0, v5}, Lcom/samsung/android/toolbox/TwToolBoxService;-><init>(Landroid/content/Context;)V

    .line 592
    .local v204, "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    const-string/jumbo v7, "tw_toolbox"

    move-object/from16 v0, v204

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 597
    const-string v7, "SystemServer"

    const-string v9, "SSRM Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_b

    .line 599
    const/16 v82, 0x0

    .line 600
    .local v82, "cfmsClass":Ljava/lang/Class;
    :try_start_1f
    const-string v7, "eng"

    sget-object v9, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 601
    new-instance v87, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/ssrm.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object/from16 v0, v87

    invoke-direct {v0, v7, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 602
    .local v87, "clsLoader":Ldalvik/system/PathClassLoader;
    const-string v7, "com.android.server.ssrm.CustomFrequencyManagerService"

    move-object/from16 v0, v87

    invoke-virtual {v0, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v82

    .line 606
    .end local v87    # "clsLoader":Ldalvik/system/PathClassLoader;
    :goto_12
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-class v10, Landroid/app/IActivityManager;

    aput-object v10, v7, v9

    move-object/from16 v0, v82

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v83

    .line 607
    .local v83, "cfmsConstructor":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    const/4 v9, 0x1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    aput-object v10, v7, v9

    move-object/from16 v0, v83

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v191

    check-cast v191, Landroid/os/IBinder;

    .line 608
    .local v191, "ssrmService":Landroid/os/IBinder;
    const-string v7, "CustomFrequencyManagerService"

    move-object/from16 v0, v191

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_b

    .line 614
    .end local v83    # "cfmsConstructor":Ljava/lang/reflect/Constructor;
    .end local v191    # "ssrmService":Landroid/os/IBinder;
    :goto_13
    :try_start_20
    const-string v7, "SystemServer"

    const-string v9, "Adaptive Display Color Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    new-instance v120, Lcom/android/server/AdaptiveDisplayColorService;

    move-object/from16 v0, v120

    invoke-direct {v0, v5}, Lcom/android/server/AdaptiveDisplayColorService;-><init>(Landroid/content/Context;)V
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_b

    .line 617
    .end local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .local v120, "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    :try_start_21
    const-string v7, "SystemServer"

    const-string v9, "Consumer IR Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    new-instance v97, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v97

    invoke-direct {v0, v5}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_84

    .line 619
    .end local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v97, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_22
    const-string v7, "consumer_ir"

    move-object/from16 v0, v97

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 623
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v10

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/display/DisplayManagerService;)V

    .line 627
    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    new-instance v16, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_85

    .line 629
    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .local v16, "alarm":Lcom/android/server/AlarmManagerService;
    :try_start_23
    const-string v7, "alarm"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 631
    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v17

    move-object v13, v5

    move-object v14, v8

    move-object v15, v4

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 634
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    const-string v9, "WindowManager thread"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v9}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;Ljava/lang/String;)V

    .line 636
    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    new-instance v20, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_86

    .line 639
    .end local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v20, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_24
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "com.sec.feature.sensorhub"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 640
    const-string v7, "SystemServer"

    const-string v9, "Context Aware Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const-string v7, "context_aware"

    new-instance v9, Landroid/hardware/contextaware/manager/ContextAwareService;

    invoke-direct {v9, v5}, Landroid/hardware/contextaware/manager/ContextAwareService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 643
    const-string v7, "SystemServer"

    const-string v9, "SContext Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const-string v7, "scontext"

    new-instance v9, Landroid/hardware/scontext/SContextService;

    invoke-direct {v9, v5}, Landroid/hardware/scontext/SContextService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 647
    :cond_e
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const/4 v7, 0x1

    move/from16 v0, v129

    if-eq v0, v7, :cond_44

    const/16 v22, 0x1

    :goto_14
    if-nez v132, :cond_45

    const/16 v23, 0x1

    :goto_15
    move-object/from16 v17, v5

    move-object/from16 v18, v4

    move-object/from16 v19, v11

    invoke-static/range {v17 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v226

    .line 651
    const-string/jumbo v7, "window"

    move-object/from16 v0, v226

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 652
    const-string v7, "input"

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Theme Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const-string v7, "ThemeService"

    new-instance v9, Lcom/android/server/ThemeManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/ThemeManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 654
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v226

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 656
    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v7

    move-object/from16 v0, v226

    invoke-virtual {v7, v0}, Lcom/android/server/am/MultiWindowFacadeService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 659
    invoke-virtual/range {v226 .. v226}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 660
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/input/InputManagerService;->start()V

    .line 662
    move-object/from16 v0, v226

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    .line 663
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    .line 668
    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 669
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :goto_16
    const-string v7, "2.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v215

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 691
    const-string v7, "SystemServer"

    const-string v9, "RCP Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_c

    .line 693
    :try_start_25
    new-instance v179, Lcom/android/server/RCPManagerService;

    move-object/from16 v0, v179

    invoke-direct {v0, v5}, Lcom/android/server/RCPManagerService;-><init>(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_c

    .line 694
    .end local v178    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .local v179, "rcpManagerService":Lcom/android/server/RCPManagerService;
    :try_start_26
    const-string v7, "rcp"

    move-object/from16 v0, v179

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_89
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_88

    move-object/from16 v178, v179

    .end local v179    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .restart local v178    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    :cond_f
    :goto_17
    move-object/from16 v96, v97

    .end local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v119, v120

    .end local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    move-object/from16 v216, v217

    .line 705
    .end local v82    # "cfmsClass":Ljava/lang/Class;
    .end local v104    # "cryptState":Ljava/lang/String;
    .end local v195    # "tactileAssist":Lcom/android/server/TactileAssistService;
    .end local v198    # "timaEnabled":Z
    .end local v204    # "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    .end local v215    # "versionInfo":Landroid/os/Bundle;
    .end local v217    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v216    # "vibrator":Lcom/android/server/VibratorService;
    :goto_18
    const/16 v108, 0x0

    .line 707
    .local v108, "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    const/16 v127, 0x0

    .line 709
    .local v127, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const/16 v193, 0x0

    .line 710
    .local v193, "statusBar":Lcom/android/server/StatusBarManagerService;
    const/16 v138, 0x0

    .line 711
    .local v138, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v73, 0x0

    .line 712
    .local v73, "appWidget":Lcom/android/server/AppWidgetService;
    const/16 v167, 0x0

    .line 713
    .local v167, "notification":Lcom/android/server/NotificationManagerService;
    const/16 v219, 0x0

    .line 714
    .local v219, "wallpaper":Lcom/android/server/WallpaperManagerService;
    const/16 v145, 0x0

    .line 715
    .local v145, "location":Lcom/android/server/LocationManagerService;
    const/16 v184, 0x0

    .line 716
    .local v184, "sLocation":Landroid/os/IBinder;
    const/16 v101, 0x0

    .line 717
    .local v101, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v207, 0x0

    .line 718
    .local v207, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v147, 0x0

    .line 719
    .local v147, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v123, 0x0

    .line 721
    .local v123, "dreamy":Lcom/android/server/dreams/DreamManagerService;
    const/16 v205, 0x0

    .line 723
    .local v205, "transcloud":Lcom/android/server/TranscloudMonitorService;
    const/16 v76, 0x0

    .line 724
    .local v76, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v176, 0x0

    .line 725
    .local v176, "printManager":Lcom/android/server/print/PrintManagerService;
    const/16 v151, 0x0

    .line 728
    .local v151, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/4 v7, 0x1

    move/from16 v0, v129

    if-eq v0, v7, :cond_10

    .line 732
    :try_start_27
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    new-instance v139, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v139

    move-object/from16 v1, v226

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_e

    .line 734
    .end local v138    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v139, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_28
    const-string v7, "input_method"

    move-object/from16 v0, v139

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_7a

    move-object/from16 v138, v139

    .line 740
    .end local v139    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v138    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_19
    :try_start_29
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_f

    .line 750
    :cond_10
    :goto_1a
    :try_start_2a
    const-string v7, "SystemServer"

    const-string v9, "Window Manager displayReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    invoke-virtual/range {v226 .. v226}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_10

    .line 757
    :goto_1b
    :try_start_2b
    const-string v7, "SystemServer"

    const-string v9, "Package Manager performBootDexOpt"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-interface/range {v173 .. v173}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_11

    .line 764
    :goto_1c
    :try_start_2c
    const-string v7, "SystemServer"

    const-string v9, "ActivityManagerNative showBootMessage"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10406a8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2c} :catch_79

    .line 773
    :goto_1d
    if-eqz v62, :cond_11

    .line 775
    if-eqz v98, :cond_11

    :try_start_2d
    invoke-virtual/range {v98 .. v98}, Lcom/sec/knox/container/EnterpriseContainerService;->preSystemReady()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_12

    .line 782
    :cond_11
    :goto_1e
    const/4 v7, 0x1

    move/from16 v0, v129

    if-eq v0, v7, :cond_4e

    .line 784
    :try_start_2e
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    new-instance v109, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v109

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_13

    .line 786
    .end local v108    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .local v109, "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :try_start_2f
    const-string v7, "device_policy"

    move-object/from16 v0, v109

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_78

    move-object/from16 v108, v109

    .line 791
    .end local v109    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v108    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :goto_1f
    if-nez v115, :cond_12

    const-string v7, "0"

    const-string/jumbo v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 798
    :try_start_30
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    new-instance v158, Lcom/android/server/MountService;

    move-object/from16 v0, v158

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_14

    .line 800
    .end local v157    # "mountService":Lcom/android/server/MountService;
    .local v158, "mountService":Lcom/android/server/MountService;
    :try_start_31
    const-string v7, "mount"

    move-object/from16 v0, v158

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_77

    move-object/from16 v157, v158

    .line 808
    .end local v158    # "mountService":Lcom/android/server/MountService;
    .restart local v157    # "mountService":Lcom/android/server/MountService;
    :cond_12
    :goto_20
    :try_start_32
    const-string v7, "SystemServer"

    const-string v9, "DirEncryptSerrvice"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    if-eqz v105, :cond_13

    .line 810
    const-string v7, "SystemServer"

    const-string v9, "DirEncryptService.SystemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-virtual/range {v105 .. v105}, Lcom/android/server/DirEncryptService;->systemReady()V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_15

    .line 818
    :cond_13
    :goto_21
    if-nez v114, :cond_15

    .line 820
    :try_start_33
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    new-instance v148, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v148

    invoke-direct {v0, v5}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_16

    .line 822
    .end local v147    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v148, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_34
    const-string v7, "lock_settings"

    move-object/from16 v0, v148

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_76

    move-object/from16 v147, v148

    .line 836
    .end local v148    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v147    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_22
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v215

    .line 837
    .restart local v215    # "versionInfo":Landroid/os/Bundle;
    const-string v7, "2.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v215

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 839
    :try_start_35
    invoke-virtual/range {v172 .. v172}, Lcom/android/server/pm/PersonaManagerService;->preSystemReady()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_17

    .line 848
    :cond_14
    :goto_23
    :try_start_36
    const-string v7, "SystemServer"

    const-string v9, "Enterprise Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    new-instance v128, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-object/from16 v0, v173

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    move-object v7, v0

    move-object/from16 v0, v128

    move-object/from16 v1, v108

    invoke-direct {v0, v5, v7, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Landroid/app/admin/IDevicePolicyManager;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_18

    .line 850
    .end local v127    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .local v128, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :try_start_37
    const-string v7, "enterprise_policy"

    move-object/from16 v0, v128

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 851
    const-string v7, "SystemServer"

    const-string v9, "Enterprise Policymanager service created..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_75

    move-object/from16 v127, v128

    .line 860
    .end local v128    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v215    # "versionInfo":Landroid/os/Bundle;
    .restart local v127    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :cond_15
    :goto_24
    :try_start_38
    const-string v7, "SystemServer"

    const-string v9, "HarmonyEAS service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    new-instance v150, Lcom/android/server/HarmonyEASService;

    move-object/from16 v0, v150

    invoke-direct {v0, v5}, Lcom/android/server/HarmonyEASService;-><init>(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_19

    .line 862
    .end local v149    # "mHMS":Lcom/android/server/HarmonyEASService;
    .local v150, "mHMS":Lcom/android/server/HarmonyEASService;
    :try_start_39
    const-string v7, "harmony_eas_service"

    move-object/from16 v0, v150

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 863
    const-string v7, "SystemServer"

    const-string v9, "Harmony EAS service created..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_74

    move-object/from16 v149, v150

    .line 869
    .end local v150    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v149    # "mHMS":Lcom/android/server/HarmonyEASService;
    :goto_25
    if-nez v116, :cond_16

    .line 871
    :try_start_3a
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    new-instance v194, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v194

    move-object/from16 v1, v226

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_1a

    .line 873
    .end local v193    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .local v194, "statusBar":Lcom/android/server/StatusBarManagerService;
    :try_start_3b
    const-string/jumbo v7, "statusbar"

    move-object/from16 v0, v194

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_73

    move-object/from16 v193, v194

    .line 879
    .end local v194    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v193    # "statusBar":Lcom/android/server/StatusBarManagerService;
    :cond_16
    :goto_26
    if-nez v114, :cond_17

    .line 881
    :try_start_3c
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_1b

    .line 894
    :cond_17
    :goto_27
    :try_start_3d
    const-string v7, "SystemServer"

    const-string v9, "ClipboardEx Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const-string v7, "clipboardEx"

    new-instance v9, Lcom/android/server/sec/InternalClipboardExService;

    invoke-direct {v9, v5}, Lcom/android/server/sec/InternalClipboardExService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_1c

    .line 901
    :goto_28
    if-nez v113, :cond_18

    .line 903
    :try_start_3e
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    .line 905
    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_1d

    .line 911
    :cond_18
    :goto_29
    if-nez v114, :cond_19

    .line 913
    :try_start_3f
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    new-instance v208, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v208

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_1e

    .line 915
    .end local v207    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v208, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_40
    const-string/jumbo v7, "textservices"

    move-object/from16 v0, v208

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_72

    move-object/from16 v207, v208

    .line 921
    .end local v208    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v207    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_19
    :goto_2a
    if-nez v113, :cond_4d

    .line 923
    :try_start_41
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    new-instance v164, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v164

    move-object/from16 v1, v30

    move-object/from16 v2, v16

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_1f

    .line 925
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v164, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_42
    const-string v7, "netstats"

    move-object/from16 v0, v164

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_71

    move-object/from16 v29, v164

    .line 931
    .end local v164    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_2b
    :try_start_43
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_20

    .line 935
    .end local v163    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_44
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_70

    .line 941
    :goto_2c
    :try_start_45
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    new-instance v225, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v225

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_21

    .line 943
    .end local v224    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .local v225, "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_46
    const-string/jumbo v7, "wifip2p"

    move-object/from16 v0, v225

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_6f

    move-object/from16 v224, v225

    .line 949
    .end local v225    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v224    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :goto_2d
    :try_start_47
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    new-instance v222, Lcom/android/server/wifi/WifiService;

    move-object/from16 v0, v222

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_22

    .line 951
    .end local v221    # "wifi":Lcom/android/server/wifi/WifiService;
    .local v222, "wifi":Lcom/android/server/wifi/WifiService;
    :try_start_48
    const-string/jumbo v7, "wifi"

    move-object/from16 v0, v222

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_6e

    move-object/from16 v221, v222

    .line 958
    .end local v222    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v221    # "wifi":Lcom/android/server/wifi/WifiService;
    :goto_2e
    :try_start_49
    const-string v7, "SystemServer"

    const-string v9, "MSAP Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    new-instance v160, Lcom/android/server/MsapWifiService;

    move-object/from16 v0, v160

    invoke-direct {v0, v5}, Lcom/android/server/MsapWifiService;-><init>(Landroid/content/Context;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_23

    .line 960
    .end local v159    # "msapwifi":Lcom/android/server/MsapWifiService;
    .local v160, "msapwifi":Lcom/android/server/MsapWifiService;
    :try_start_4a
    const-string v7, "msapwifi"

    move-object/from16 v0, v160

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_6d

    move-object/from16 v159, v160

    .line 967
    .end local v160    # "msapwifi":Lcom/android/server/MsapWifiService;
    .restart local v159    # "msapwifi":Lcom/android/server/MsapWifiService;
    :goto_2f
    :try_start_4b
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    new-instance v93, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v93

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_24

    .line 970
    .end local v92    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v93, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_4c
    const-string v7, "connectivity"

    move-object/from16 v0, v93

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 971
    move-object/from16 v0, v29

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 972
    move-object/from16 v0, v25

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 974
    invoke-virtual/range {v224 .. v224}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V

    .line 975
    invoke-virtual/range {v221 .. v221}, Lcom/android/server/wifi/WifiService;->checkAndStartWifi()V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_6c

    move-object/from16 v92, v93

    .line 1024
    .end local v93    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v92    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_30
    :try_start_4d
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v188

    .line 1026
    const-string v7, "servicediscovery"

    move-object/from16 v0, v188

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_25

    .line 1033
    :goto_31
    if-nez v114, :cond_1a

    .line 1035
    :try_start_4e
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    const-string/jumbo v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_26

    .line 1048
    :cond_1a
    :goto_32
    if-eqz v157, :cond_1b

    if-nez v24, :cond_1b

    .line 1050
    const-string/jumbo v7, "vold.decrypt"

    const-string v9, "null"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "trigger_restart_min_framework"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b

    .line 1051
    invoke-virtual/range {v157 .. v157}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 1055
    :cond_1b
    if-eqz v70, :cond_1c

    .line 1056
    :try_start_4f
    const-string v7, "SystemServer"

    const-string v9, "accountManager systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    invoke-virtual/range {v70 .. v70}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_27

    .line 1064
    :cond_1c
    :goto_33
    if-eqz v100, :cond_1d

    .line 1065
    :try_start_50
    const-string v7, "SystemServer"

    const-string v9, "contentService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    invoke-virtual/range {v100 .. v100}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_28

    .line 1073
    :cond_1d
    :goto_34
    :try_start_51
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    new-instance v168, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v168

    move-object/from16 v1, v193

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_29

    .line 1075
    .end local v167    # "notification":Lcom/android/server/NotificationManagerService;
    .local v168, "notification":Lcom/android/server/NotificationManagerService;
    :try_start_52
    const-string v7, "notification"

    move-object/from16 v0, v168

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1076
    move-object/from16 v0, v25

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_6b

    move-object/from16 v167, v168

    .line 1082
    .end local v168    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v167    # "notification":Lcom/android/server/NotificationManagerService;
    :goto_35
    :try_start_53
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_2a

    .line 1089
    :goto_36
    if-nez v111, :cond_1e

    .line 1091
    :try_start_54
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    new-instance v146, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v146

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_2b

    .line 1093
    .end local v145    # "location":Lcom/android/server/LocationManagerService;
    .local v146, "location":Lcom/android/server/LocationManagerService;
    :try_start_55
    const-string v7, "location"

    move-object/from16 v0, v146

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_6a

    move-object/from16 v145, v146

    .line 1099
    .end local v146    # "location":Lcom/android/server/LocationManagerService;
    .restart local v145    # "location":Lcom/android/server/LocationManagerService;
    :goto_37
    :try_start_56
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    new-instance v102, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v102

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_2c

    .line 1101
    .end local v101    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v102, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_57
    const-string v7, "country_detector"

    move-object/from16 v0, v102

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_69

    move-object/from16 v101, v102

    .line 1139
    .end local v102    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v101    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_1e
    :goto_38
    :try_start_58
    const-string v7, "SystemServer"

    const-string v9, "SLocation Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    const-string v7, "com.samsung.location.SLocationLoader"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v185

    .line 1141
    .local v185, "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "getSLocationService"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v12, Landroid/content/Context;

    aput-object v12, v9, v10

    move-object/from16 v0, v185

    invoke-virtual {v0, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v133

    .line 1142
    .local v133, "getSLocationService":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    move-object/from16 v0, v133

    invoke-virtual {v0, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object/from16 v184, v0

    .line 1143
    const-string v7, "sec_location"

    move-object/from16 v0, v184

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1144
    const-string v7, "SystemServer"

    const-string v9, "Loading SLocationService has been completed."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_2d

    .line 1149
    .end local v133    # "getSLocationService":Ljava/lang/reflect/Method;
    .end local v185    # "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_39
    if-nez v114, :cond_1f

    .line 1151
    :try_start_59
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    const-string v7, "search"

    new-instance v9, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_2e

    .line 1160
    :cond_1f
    :goto_3a
    :try_start_5a
    const-string v7, "com.sec.feature.spell_manager_service"

    move-object/from16 v0, v173

    invoke-interface {v0, v7}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 1161
    const-string v7, "SystemServer"

    const-string v9, "Spell Manager Service starting..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    const-string/jumbo v7, "spell"

    new-instance v9, Landroid/server/spell/SpellManagerService;

    invoke-direct {v9, v5}, Landroid/server/spell/SpellManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_2f

    .line 1172
    :goto_3b
    :try_start_5b
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_30

    .line 1179
    :goto_3c
    if-nez v114, :cond_20

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110032

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 1182
    :try_start_5c
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    if-nez v33, :cond_20

    .line 1184
    new-instance v220, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v220

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_31

    .line 1185
    .end local v219    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .local v220, "wallpaper":Lcom/android/server/WallpaperManagerService;
    :try_start_5d
    const-string/jumbo v7, "wallpaper"

    move-object/from16 v0, v220

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_68

    move-object/from16 v219, v220

    .line 1192
    .end local v220    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v219    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :cond_20
    :goto_3d
    if-nez v112, :cond_21

    const-string v7, "0"

    const-string/jumbo v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21

    .line 1194
    :try_start_5e
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_32

    .line 1201
    :cond_21
    :goto_3e
    if-nez v114, :cond_22

    .line 1203
    :try_start_5f
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    new-instance v122, Lcom/android/server/DockObserver;

    move-object/from16 v0, v122

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_33

    .end local v121    # "dock":Lcom/android/server/DockObserver;
    .local v122, "dock":Lcom/android/server/DockObserver;
    move-object/from16 v121, v122

    .line 1211
    .end local v122    # "dock":Lcom/android/server/DockObserver;
    .restart local v121    # "dock":Lcom/android/server/DockObserver;
    :cond_22
    :goto_3f
    if-nez v112, :cond_23

    .line 1213
    :try_start_60
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v20

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_34

    .line 1222
    :cond_23
    :goto_40
    if-nez v114, :cond_24

    .line 1224
    :try_start_61
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    new-instance v214, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v214

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_35

    .line 1227
    .end local v213    # "usb":Lcom/android/server/usb/UsbService;
    .local v214, "usb":Lcom/android/server/usb/UsbService;
    :try_start_62
    const-string/jumbo v7, "usb"

    move-object/from16 v0, v214

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_67

    move-object/from16 v213, v214

    .line 1233
    .end local v214    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v213    # "usb":Lcom/android/server/usb/UsbService;
    :goto_41
    :try_start_63
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    new-instance v187, Lcom/android/server/SerialService;

    move-object/from16 v0, v187

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_36

    .line 1236
    .end local v186    # "serial":Lcom/android/server/SerialService;
    .local v187, "serial":Lcom/android/server/SerialService;
    :try_start_64
    const-string v7, "serial"

    move-object/from16 v0, v187

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_66

    move-object/from16 v186, v187

    .line 1243
    .end local v187    # "serial":Lcom/android/server/SerialService;
    .restart local v186    # "serial":Lcom/android/server/SerialService;
    :cond_24
    :goto_42
    :try_start_65
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    new-instance v210, Lcom/android/server/TwilightService;

    move-object/from16 v0, v210

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_37

    .end local v209    # "twilight":Lcom/android/server/TwilightService;
    .local v210, "twilight":Lcom/android/server/TwilightService;
    move-object/from16 v209, v210

    .line 1250
    .end local v210    # "twilight":Lcom/android/server/TwilightService;
    .restart local v209    # "twilight":Lcom/android/server/TwilightService;
    :goto_43
    :try_start_66
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    new-instance v212, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v212

    move-object/from16 v1, v209

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_66} :catch_38

    .end local v211    # "uiMode":Lcom/android/server/UiModeManagerService;
    .local v212, "uiMode":Lcom/android/server/UiModeManagerService;
    move-object/from16 v211, v212

    .line 1258
    .end local v212    # "uiMode":Lcom/android/server/UiModeManagerService;
    .restart local v211    # "uiMode":Lcom/android/server/UiModeManagerService;
    :goto_44
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v9, "CscFeature_Common_EnableSUA"

    invoke-virtual {v7, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 1261
    :try_start_67
    const-string v7, "SystemServer"

    const-string v9, "KiesUsb Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    const-string v7, "kiesusb"

    new-instance v9, Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {v9, v5}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_67} :catch_39

    .line 1269
    :cond_25
    :goto_45
    if-nez v114, :cond_26

    .line 1271
    :try_start_68
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_68} :catch_3a

    .line 1279
    :goto_46
    :try_start_69
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    new-instance v74, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v74

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_69} :catch_3b

    .line 1281
    .end local v73    # "appWidget":Lcom/android/server/AppWidgetService;
    .local v74, "appWidget":Lcom/android/server/AppWidgetService;
    :try_start_6a
    const-string v7, "appwidget"

    move-object/from16 v0, v74

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6a} :catch_65

    move-object/from16 v73, v74

    .line 1287
    .end local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v73    # "appWidget":Lcom/android/server/AppWidgetService;
    :goto_47
    :try_start_6b
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    new-instance v183, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v183

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6b} :catch_3c

    .end local v182    # "recognition":Lcom/android/server/RecognitionManagerService;
    .local v183, "recognition":Lcom/android/server/RecognitionManagerService;
    move-object/from16 v182, v183

    .line 1293
    .end local v183    # "recognition":Lcom/android/server/RecognitionManagerService;
    .restart local v182    # "recognition":Lcom/android/server/RecognitionManagerService;
    :cond_26
    :goto_48
    const-string v7, "ro.SecEDS.enable"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    .line 1295
    .local v69, "SecEDSEnable":Ljava/lang/String;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SecEDS Service ro.tvout.enable = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const-string v7, "false"

    move-object/from16 v0, v69

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_27

    .line 1303
    :try_start_6c
    const-string v7, "SystemServer"

    const-string v9, "Starting SecEDSEnable Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    const/16 v126, 0x0

    .line 1307
    .local v126, "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "com.android.server.SecExternalDisplayService"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v126

    .line 1309
    if-nez v126, :cond_4b

    .line 1311
    const-string v7, "SystemServer"

    const-string v9, "eds Service not exist"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6c} :catch_3d

    .line 1338
    .end local v126    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_27
    :goto_49
    :try_start_6d
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_6d} :catch_3e

    .line 1356
    :goto_4a
    :try_start_6e
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v169

    .line 1357
    .local v169, "pM":Landroid/content/pm/PackageManager;
    if-eqz v169, :cond_2b

    .line 1358
    const-string v7, "SystemServer"

    const-string v9, "PackageManager is not null!!"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    const/16 v143, 0x0

    .line 1360
    .local v143, "isAddService":Z
    const-string v7, "com.sec.feature.multiwindow"

    move-object/from16 v0, v169

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 1361
    const/16 v143, 0x1

    .line 1363
    :cond_28
    const-string v7, "com.sec.feature.spen_usp"

    move-object/from16 v0, v169

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v7

    const/4 v9, 0x2

    if-lt v7, v9, :cond_29

    .line 1364
    const/16 v143, 0x1

    .line 1366
    :cond_29
    const-string v7, "com.sec.feature.spen_usp"

    move-object/from16 v0, v169

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_2a

    .line 1367
    const/16 v143, 0x0

    .line 1369
    :cond_2a
    if-eqz v143, :cond_2b

    .line 1370
    const-string v7, "SystemServer"

    const-string v9, "SpenGestureManagerService enable"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    const-string/jumbo v7, "spengestureservice"

    new-instance v9, Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v0, v226

    invoke-direct {v9, v5, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_6e} :catch_3f

    .line 1380
    .end local v143    # "isAddService":Z
    .end local v169    # "pM":Landroid/content/pm/PackageManager;
    :cond_2b
    :goto_4b
    :try_start_6f
    const-string v7, "SystemServer"

    const-string v9, "Palm Motion Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    const-string v7, "palmmotionservice"

    new-instance v9, Lcom/android/server/palmMotion/PalmMotionService;

    move-object/from16 v0, v20

    invoke-direct {v9, v5, v0}, Lcom/android/server/palmMotion/PalmMotionService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_6f} :catch_40

    .line 1398
    :goto_4c
    :try_start_70
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v170

    .line 1399
    .local v170, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v170, :cond_2c

    .line 1400
    const-string v7, "com.sec.feature.lotus"

    move-object/from16 v0, v170

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_2c

    .line 1401
    const-string v7, "SystemServer"

    const-string v9, "GlanceCard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    const-string v7, "glancecardservice"

    new-instance v9, Lcom/android/server/glancecard/GlanceCardManagerService;

    move-object/from16 v0, v226

    invoke-direct {v9, v5, v0}, Lcom/android/server/glancecard/GlanceCardManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_70} :catch_41

    .line 1414
    .end local v170    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_2c
    :goto_4d
    :try_start_71
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_71} :catch_42

    .line 1421
    :goto_4e
    if-nez v113, :cond_2d

    .line 1423
    :try_start_72
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    new-instance v166, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v166

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_72} :catch_43

    .end local v165    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v166, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v165, v166

    .line 1456
    .end local v166    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v165    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_2d
    :goto_4f
    if-nez v112, :cond_2e

    .line 1458
    :try_start_73
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    new-instance v90, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v90

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_73} :catch_44

    .line 1460
    .end local v89    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v90, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_74
    const-string v7, "commontime_management"

    move-object/from16 v0, v90

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_74} :catch_64

    move-object/from16 v89, v90

    .line 1466
    .end local v90    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v89    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :cond_2e
    :goto_50
    if-nez v113, :cond_2f

    .line 1468
    :try_start_75
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_75} :catch_45

    .line 1475
    :cond_2f
    :goto_51
    if-nez v114, :cond_30

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111004c

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 1478
    :try_start_76
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    new-instance v124, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v124

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_76} :catch_46

    .line 1481
    .end local v123    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .local v124, "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :try_start_77
    const-string v7, "dreams"

    move-object/from16 v0, v124

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_77} :catch_63

    move-object/from16 v123, v124

    .line 1489
    .end local v124    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v123    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :cond_30
    :goto_52
    :try_start_78
    const-string v7, "SystemServer"

    const-string v9, "Transcloud Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    new-instance v206, Lcom/android/server/TranscloudMonitorService;

    move-object/from16 v0, v206

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/TranscloudMonitorService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_78} :catch_47

    .end local v205    # "transcloud":Lcom/android/server/TranscloudMonitorService;
    .local v206, "transcloud":Lcom/android/server/TranscloudMonitorService;
    move-object/from16 v205, v206

    .line 1496
    .end local v206    # "transcloud":Lcom/android/server/TranscloudMonitorService;
    .restart local v205    # "transcloud":Lcom/android/server/TranscloudMonitorService;
    :goto_53
    if-nez v114, :cond_31

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v7

    if-nez v7, :cond_31

    .line 1498
    :try_start_79
    const-string v7, "SystemServer"

    const-string v9, "Assets Atlas Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    new-instance v77, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v77

    invoke-direct {v0, v5}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_79} :catch_48

    .line 1500
    .end local v76    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v77, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_7a
    const-string v7, "assetatlas"

    move-object/from16 v0, v77

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_7a} :catch_62

    move-object/from16 v76, v77

    .line 1507
    .end local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v76    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_31
    :goto_54
    :try_start_7b
    const-string v7, "SystemServer"

    const-string v9, "IdleMaintenanceService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    new-instance v7, Lcom/android/server/IdleMaintenanceService;

    invoke-direct {v7, v5, v8}, Lcom/android/server/IdleMaintenanceService;-><init>(Landroid/content/Context;Lcom/android/server/BatteryService;)V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7b} :catch_49

    .line 1515
    :goto_55
    const-string v7, "SystemServer"

    const-string v9, "SEC_PRODUCT_FEATURE_ABSOLUTE_ENABLE=FALSE - true"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    :try_start_7c
    const-string v7, "SystemServer"

    const-string v9, "Absolute Persistence Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    const-string v7, "ABTPersistenceService"

    new-instance v9, Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {v9, v5}, Lcom/absolute/android/persistservice/ABTPersistenceService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_7c} :catch_4a

    .line 1527
    :goto_56
    :try_start_7d
    const-string v7, "SystemServer"

    const-string v9, "Print Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    new-instance v177, Lcom/android/server/print/PrintManagerService;

    move-object/from16 v0, v177

    invoke-direct {v0, v5}, Lcom/android/server/print/PrintManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_7d} :catch_4b

    .line 1529
    .end local v176    # "printManager":Lcom/android/server/print/PrintManagerService;
    .local v177, "printManager":Lcom/android/server/print/PrintManagerService;
    :try_start_7e
    const-string v7, "print"

    move-object/from16 v0, v177

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_7e} :catch_61

    move-object/from16 v176, v177

    .line 1534
    .end local v177    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v176    # "printManager":Lcom/android/server/print/PrintManagerService;
    :goto_57
    if-nez v114, :cond_32

    .line 1536
    :try_start_7f
    const-string v7, "SystemServer"

    const-string v9, "Media Router Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    new-instance v152, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v152

    invoke-direct {v0, v5}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_7f} :catch_4c

    .line 1538
    .end local v151    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v152, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_80
    const-string v7, "media_router"

    move-object/from16 v0, v152

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_80} :catch_60

    move-object/from16 v151, v152

    .line 1558
    .end local v152    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v151    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :cond_32
    :goto_58
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v171

    .line 1559
    .local v171, "packageMgr":Landroid/content/pm/PackageManager;
    const-string v7, "com.sec.feature.minimode"

    move-object/from16 v0, v171

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_34

    .line 1561
    :try_start_81
    const-string v7, "SystemServer"

    const-string v9, "MiniModeAppManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    const-string v154, "/data/dalvik-cache/system@framework@minimode.jar@classes.dex"

    .line 1563
    .local v154, "minimodeFrameworkDexPath":Ljava/lang/String;
    const-string v156, "/data/dalvik-cache/minimode.dex"

    .line 1565
    .local v156, "minimodeGenDexPath":Ljava/lang/String;
    sget-object v7, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, v154

    invoke-interface {v7, v0}, Llibcore/io/Os;->stat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v192

    .line 1566
    .local v192, "stat":Llibcore/io/StructStat;
    if-eqz v192, :cond_33

    .line 1567
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v154

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v156

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v9}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 1568
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v156

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is copied from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v154

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    new-instance v155, Ljava/io/File;

    invoke-direct/range {v155 .. v156}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1570
    .local v155, "minimodeGenDexFile":Ljava/io/File;
    move-object/from16 v0, v192

    iget-wide v9, v0, Llibcore/io/StructStat;->st_mtime:J

    move-object/from16 v0, v155

    invoke-virtual {v0, v9, v10}, Ljava/io/File;->setLastModified(J)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 1571
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lastModfied time of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v156

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is changed to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v192

    iget-wide v12, v0, Llibcore/io/StructStat;->st_mtime:J

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    .end local v155    # "minimodeGenDexFile":Ljava/io/File;
    :cond_33
    new-instance v84, Ldalvik/system/DexClassLoader;

    const-string v7, "/system/framework/minimode.jar"

    const-string v9, "/data/dalvik-cache/"

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    move-object/from16 v0, v84

    invoke-direct {v0, v7, v9, v10, v12}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1578
    .local v84, "cl":Ljava/lang/ClassLoader;
    const-string v7, "com.sec.minimode.manager.MiniModeAppManagerService"

    move-object/from16 v0, v84

    invoke-virtual {v0, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v67

    .line 1579
    .local v67, "MiniModeAppManagerServiceClass":Ljava/lang/Class;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    move-object/from16 v0, v67

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v68

    .line 1580
    .local v68, "MiniModeAppManagerServiceContructor":Ljava/lang/reflect/Constructor;
    const-string v9, "mini_mode_app_manager"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v7, v10

    move-object/from16 v0, v68

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v9, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_81} :catch_4d

    .line 1589
    .end local v67    # "MiniModeAppManagerServiceClass":Ljava/lang/Class;
    .end local v68    # "MiniModeAppManagerServiceContructor":Ljava/lang/reflect/Constructor;
    .end local v84    # "cl":Ljava/lang/ClassLoader;
    .end local v154    # "minimodeFrameworkDexPath":Ljava/lang/String;
    .end local v156    # "minimodeGenDexPath":Ljava/lang/String;
    .end local v192    # "stat":Llibcore/io/StructStat;
    :cond_34
    :goto_59
    const-string v7, "com.sec.feature.barcode_emulator"

    move-object/from16 v0, v171

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 1591
    :try_start_82
    const-string v7, "SystemServer"

    const-string v9, "BarBeamService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    new-instance v78, Landroid/app/BarBeamService;

    move-object/from16 v0, v78

    invoke-direct {v0, v5}, Landroid/app/BarBeamService;-><init>(Landroid/content/Context;)V

    .line 1594
    .local v78, "barbeam":Landroid/app/BarBeamService;
    const-string v7, "barbeam"

    move-object/from16 v0, v78

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_82} :catch_4e

    .line 1602
    .end local v78    # "barbeam":Landroid/app/BarBeamService;
    :cond_35
    :goto_5a
    :try_start_83
    const-string v7, "SystemServer"

    const-string v9, "Motion Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    const-string v7, "motion_recognition"

    new-instance v9, Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {v9, v5}, Landroid/hardware/motion/MotionRecognitionService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_83} :catch_4f

    .line 1610
    :goto_5b
    :try_start_84
    const-string v7, "SystemServer"

    const-string v9, "VoIPInterfaceManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    const-string/jumbo v7, "voip"

    new-instance v9, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v9, v5}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_84} :catch_50

    .line 1618
    :goto_5c
    const-string v7, "com.sec.feature.cover.flip"

    move-object/from16 v0, v171

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_36

    const-string v7, "com.sec.feature.cover.sview"

    move-object/from16 v0, v171

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 1621
    :cond_36
    :try_start_85
    const-string v7, "SystemServer"

    const-string v9, "CoverManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    new-instance v103, Lcom/android/server/cover/CoverManagerService;

    move-object/from16 v0, v103

    invoke-direct {v0, v5}, Lcom/android/server/cover/CoverManagerService;-><init>(Landroid/content/Context;)V

    .line 1623
    .local v103, "cover":Lcom/android/server/cover/CoverManagerService;
    const-string v7, "cover"

    move-object/from16 v0, v103

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_85} :catch_51

    .line 1632
    .end local v103    # "cover":Lcom/android/server/cover/CoverManagerService;
    :cond_37
    :goto_5d
    :try_start_86
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v169

    .line 1633
    .restart local v169    # "pM":Landroid/content/pm/PackageManager;
    if-eqz v169, :cond_38

    .line 1635
    const-string v7, "SystemServer"

    const-string v9, "PackageManager is not null!!"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    const-string v7, "com.sec.feature.healthcover"

    move-object/from16 v0, v169

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_38

    .line 1637
    const-string v7, "SystemServer"

    const-string v9, "HealthCoverManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    new-instance v135, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/healthcoverservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object/from16 v0, v135

    invoke-direct {v0, v7, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1639
    .local v135, "hcClassLoader":Ldalvik/system/PathClassLoader;
    const-string v7, "com.samsung.android.healthcover.HealthCoverService"

    move-object/from16 v0, v135

    invoke-virtual {v0, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v134

    .line 1640
    .local v134, "hcClass":Ljava/lang/Class;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    move-object/from16 v0, v134

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v136

    .line 1641
    .local v136, "hcConstructor":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    move-object/from16 v0, v136

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v137

    check-cast v137, Landroid/os/IBinder;

    .line 1642
    .local v137, "hcService":Landroid/os/IBinder;
    const-string v7, "healthcover"

    move-object/from16 v0, v137

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_86} :catch_52

    .line 1656
    .end local v69    # "SecEDSEnable":Ljava/lang/String;
    .end local v134    # "hcClass":Ljava/lang/Class;
    .end local v135    # "hcClassLoader":Ldalvik/system/PathClassLoader;
    .end local v136    # "hcConstructor":Ljava/lang/reflect/Constructor;
    .end local v137    # "hcService":Landroid/os/IBinder;
    .end local v169    # "pM":Landroid/content/pm/PackageManager;
    .end local v171    # "packageMgr":Landroid/content/pm/PackageManager;
    :cond_38
    :goto_5e
    :try_start_87
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v84

    .line 1657
    .restart local v84    # "cl":Ljava/lang/ClassLoader;
    const-string v7, "com.sec.android.smartface.SmartFaceManager"

    const/4 v9, 0x1

    move-object/from16 v0, v84

    invoke-static {v7, v9, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v85

    .line 1658
    .local v85, "class_SmartFaceManager":Ljava/lang/Class;
    const-string v7, "SMARTFACE_SERVICE"

    move-object/from16 v0, v85

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v131

    .line 1660
    .local v131, "field_SMARTFACE_SERVICE":Ljava/lang/reflect/Field;
    const-string v7, "com.sec.android.smartface.SmartFaceService"

    const/4 v9, 0x1

    move-object/from16 v0, v84

    invoke-static {v7, v9, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v86

    .line 1661
    .local v86, "class_SmartFaceService":Ljava/lang/Class;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    move-object/from16 v0, v86

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v95

    .line 1663
    .local v95, "constructor_SmartFaceService":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x0

    move-object/from16 v0, v131

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    move-object/from16 v0, v95

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/IBinder;

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1664
    const-string v7, "SystemServer"

    const-string v9, "SmartFaceService loaded!"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_87} :catch_53

    .line 1706
    .end local v84    # "cl":Ljava/lang/ClassLoader;
    .end local v85    # "class_SmartFaceManager":Ljava/lang/Class;
    .end local v86    # "class_SmartFaceService":Ljava/lang/Class;
    .end local v95    # "constructor_SmartFaceService":Ljava/lang/reflect/Constructor;
    .end local v131    # "field_SMARTFACE_SERVICE":Ljava/lang/reflect/Field;
    :goto_5f
    const-string v7, "SystemServer"

    const-string v9, "Window Manager detectSafeMode"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    invoke-virtual/range {v226 .. v226}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v47

    .line 1708
    .local v47, "safeMode":Z
    if-eqz v47, :cond_4c

    .line 1709
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1711
    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 1713
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1722
    :goto_60
    :try_start_88
    const-string v7, "SystemServer"

    const-string/jumbo v9, "vibrator systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    invoke-virtual/range {v216 .. v216}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_88} :catch_54

    .line 1728
    :goto_61
    if-eqz v147, :cond_39

    .line 1730
    :try_start_89
    const-string v7, "SystemServer"

    const-string v9, "lockSettings systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    invoke-virtual/range {v147 .. v147}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_89 .. :try_end_89} :catch_55

    .line 1737
    :cond_39
    :goto_62
    if-eqz v108, :cond_3a

    .line 1739
    :try_start_8a
    const-string v7, "SystemServer"

    const-string v9, "devicePolicy systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    invoke-virtual/range {v108 .. v108}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_8a} :catch_56

    .line 1748
    :cond_3a
    :goto_63
    if-eqz v127, :cond_3b

    .line 1749
    invoke-virtual/range {v127 .. v127}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V

    .line 1750
    const-string v7, "SystemServer"

    const-string v9, "enterprisePolicy systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    :cond_3b
    if-eqz v167, :cond_3c

    .line 1756
    :try_start_8b
    const-string v7, "SystemServer"

    const-string v9, "notification systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    invoke-virtual/range {v167 .. v167}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_8b} :catch_57

    .line 1764
    :cond_3c
    :goto_64
    :try_start_8c
    const-string v7, "SystemServer"

    const-string v9, "Window Manager systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    invoke-virtual/range {v226 .. v226}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_8c} :catch_58

    .line 1770
    :goto_65
    if-eqz v47, :cond_3d

    .line 1771
    const-string v7, "SystemServer"

    const-string v9, "ActivityManager showSafeModeOverlay"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1778
    :cond_3d
    invoke-virtual/range {v226 .. v226}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v91

    .line 1779
    .local v91, "config":Landroid/content/res/Configuration;
    new-instance v153, Landroid/util/DisplayMetrics;

    invoke-direct/range {v153 .. v153}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1780
    .local v153, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v218

    check-cast v218, Landroid/view/WindowManager;

    .line 1781
    .local v218, "w":Landroid/view/WindowManager;
    invoke-interface/range {v218 .. v218}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v153

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1782
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v91

    move-object/from16 v1, v153

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1785
    :try_start_8d
    const-string v7, "SystemServer"

    const-string v9, "PowerManagerService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    move-object/from16 v0, v209

    move-object/from16 v1, v123

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_8d} :catch_59

    .line 1793
    :goto_66
    :try_start_8e
    const-string v7, "SystemServer"

    const-string v9, "LightsService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    invoke-virtual {v6}, Lcom/android/server/LightsService;->systemReady()V
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_8e} :catch_5a

    .line 1801
    :goto_67
    :try_start_8f
    const-string v7, "SystemServer"

    const-string v9, "AdaptiveDisplayColorService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    invoke-virtual/range {v119 .. v119}, Lcom/android/server/AdaptiveDisplayColorService;->systemReady()V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_8f} :catch_5b

    .line 1808
    :goto_68
    :try_start_90
    const-string v7, "SystemServer"

    const-string v9, "PackageManagerService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    invoke-interface/range {v173 .. v173}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_90} :catch_5c

    .line 1815
    :goto_69
    :try_start_91
    const-string v7, "SystemServer"

    const-string v9, "DisplayManagerService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    move/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_91} :catch_5d

    .line 1821
    :goto_6a
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v215

    .line 1822
    .restart local v215    # "versionInfo":Landroid/os/Bundle;
    const-string v7, "2.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v215

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 1824
    :try_start_92
    invoke-virtual/range {v172 .. v172}, Lcom/android/server/pm/PersonaManagerService;->systemReady()V
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_92} :catch_5e

    .line 1831
    :cond_3e
    :goto_6b
    move-object/from16 v34, v5

    .line 1832
    .local v34, "contextF":Landroid/content/Context;
    move-object/from16 v35, v157

    .line 1833
    .local v35, "mountServiceF":Lcom/android/server/MountService;
    move-object/from16 v36, v8

    .line 1834
    .local v36, "batteryF":Lcom/android/server/BatteryService;
    move-object/from16 v37, v30

    .line 1835
    .local v37, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v38, v29

    .line 1836
    .local v38, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v39, v25

    .line 1837
    .local v39, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v40, v92

    .line 1838
    .local v40, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v41, v121

    .line 1839
    .local v41, "dockF":Lcom/android/server/DockObserver;
    move-object/from16 v42, v213

    .line 1840
    .local v42, "usbF":Lcom/android/server/usb/UsbService;
    move-object/from16 v43, v209

    .line 1841
    .local v43, "twilightF":Lcom/android/server/TwilightService;
    move-object/from16 v44, v211

    .line 1842
    .local v44, "uiModeF":Lcom/android/server/UiModeManagerService;
    move-object/from16 v46, v73

    .line 1843
    .local v46, "appWidgetF":Lcom/android/server/AppWidgetService;
    move-object/from16 v48, v219

    .line 1844
    .local v48, "wallpaperF":Lcom/android/server/WallpaperManagerService;
    move-object/from16 v49, v138

    .line 1845
    .local v49, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v45, v182

    .line 1846
    .local v45, "recognitionF":Lcom/android/server/RecognitionManagerService;
    move-object/from16 v51, v145

    .line 1847
    .local v51, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v52, v184

    .line 1848
    .local v52, "sLocationF":Landroid/os/IBinder;
    move-object/from16 v53, v101

    .line 1849
    .local v53, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v54, v165

    .line 1850
    .local v54, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v55, v89

    .line 1851
    .local v55, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v56, v207

    .line 1852
    .local v56, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v50, v193

    .line 1853
    .local v50, "statusBarF":Lcom/android/server/StatusBarManagerService;
    move-object/from16 v57, v123

    .line 1855
    .local v57, "dreamyF":Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v58, v205

    .line 1857
    .local v58, "transcloudF":Lcom/android/server/TranscloudMonitorService;
    move-object/from16 v59, v76

    .line 1858
    .local v59, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v60, v20

    .line 1859
    .local v60, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v61, v196

    .line 1860
    .local v61, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v64, v161

    .line 1861
    .local v64, "msimTelephonyRegistryF":Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v65, v176

    .line 1862
    .local v65, "printManagerF":Lcom/android/server/print/PrintManagerService;
    move-object/from16 v66, v151

    .line 1865
    .local v66, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v63, v98

    .line 1873
    .local v63, "containerServiceF":Lcom/sec/knox/container/EnterpriseContainerService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$2;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v66}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/TranscloudMonitorService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;ZLcom/sec/knox/container/EnterpriseContainerService;Lcom/android/server/MSimTelephonyRegistry;Lcom/android/server/print/PrintManagerService;Lcom/android/server/media/MediaRouterService;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 2062
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 2063
    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    :cond_3f
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2069
    const-string v7, "SystemServer"

    const-string v9, "!@Boot: End initAndLoop"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2071
    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    return-void

    .line 441
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v34    # "contextF":Landroid/content/Context;
    .end local v35    # "mountServiceF":Lcom/android/server/MountService;
    .end local v36    # "batteryF":Lcom/android/server/BatteryService;
    .end local v37    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v38    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v39    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v41    # "dockF":Lcom/android/server/DockObserver;
    .end local v42    # "usbF":Lcom/android/server/usb/UsbService;
    .end local v43    # "twilightF":Lcom/android/server/TwilightService;
    .end local v44    # "uiModeF":Lcom/android/server/UiModeManagerService;
    .end local v45    # "recognitionF":Lcom/android/server/RecognitionManagerService;
    .end local v46    # "appWidgetF":Lcom/android/server/AppWidgetService;
    .end local v47    # "safeMode":Z
    .end local v48    # "wallpaperF":Lcom/android/server/WallpaperManagerService;
    .end local v49    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v50    # "statusBarF":Lcom/android/server/StatusBarManagerService;
    .end local v51    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v52    # "sLocationF":Landroid/os/IBinder;
    .end local v53    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v54    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v55    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v56    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v57    # "dreamyF":Lcom/android/server/dreams/DreamManagerService;
    .end local v58    # "transcloudF":Lcom/android/server/TranscloudMonitorService;
    .end local v59    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v60    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v61    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v63    # "containerServiceF":Lcom/sec/knox/container/EnterpriseContainerService;
    .end local v64    # "msimTelephonyRegistryF":Lcom/android/server/MSimTelephonyRegistry;
    .end local v65    # "printManagerF":Lcom/android/server/print/PrintManagerService;
    .end local v66    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v73    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v76    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v91    # "config":Landroid/content/res/Configuration;
    .end local v101    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v108    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v123    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v127    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v138    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v145    # "location":Lcom/android/server/LocationManagerService;
    .end local v147    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v151    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v153    # "metrics":Landroid/util/DisplayMetrics;
    .end local v167    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v176    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v184    # "sLocation":Landroid/os/IBinder;
    .end local v193    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v205    # "transcloud":Lcom/android/server/TranscloudMonitorService;
    .end local v207    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v215    # "versionInfo":Landroid/os/Bundle;
    .end local v218    # "w":Landroid/view/WindowManager;
    .end local v219    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v104    # "cryptState":Ljava/lang/String;
    .restart local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v144    # "lights":Lcom/android/server/LightsService;
    .restart local v163    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_40
    :try_start_93
    const-string v7, "1"

    move-object/from16 v0, v104

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 442
    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/16 v24, 0x1

    goto/16 :goto_7

    .line 453
    .restart local v198    # "timaEnabled":Z
    :catch_2
    move-exception v125

    .line 454
    .local v125, "e":Ljava/lang/Throwable;
    :goto_6c
    const-string/jumbo v7, "starting TimaService"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_93
    .catch Ljava/lang/RuntimeException; {:try_start_93 .. :try_end_93} :catch_3

    goto/16 :goto_8

    .line 700
    .end local v104    # "cryptState":Ljava/lang/String;
    .end local v125    # "e":Ljava/lang/Throwable;
    .end local v198    # "timaEnabled":Z
    :catch_3
    move-exception v125

    move-object/from16 v20, v140

    .end local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v79

    .end local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v144

    .line 701
    .end local v144    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .local v125, "e":Ljava/lang/RuntimeException;
    :goto_6d
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_18

    .line 461
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v125    # "e":Ljava/lang/RuntimeException;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v104    # "cryptState":Ljava/lang/String;
    .restart local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v144    # "lights":Lcom/android/server/LightsService;
    .restart local v198    # "timaEnabled":Z
    :catch_4
    move-exception v125

    .line 462
    .local v125, "e":Ljava/lang/Throwable;
    :try_start_94
    const-string/jumbo v7, "starting TimaObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 474
    .end local v125    # "e":Ljava/lang/Throwable;
    :cond_41
    const/4 v7, 0x0

    goto/16 :goto_a

    .line 497
    :catch_5
    move-exception v125

    .line 498
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SE Android Manager Service"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 518
    .end local v125    # "e":Ljava/lang/Throwable;
    .restart local v215    # "versionInfo":Landroid/os/Bundle;
    :catch_6
    move-exception v125

    .line 519
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_6e
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 527
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v125

    .line 528
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting KT UCA Service"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_94
    .catch Ljava/lang/RuntimeException; {:try_start_94 .. :try_end_94} :catch_3

    goto/16 :goto_e

    .line 534
    .end local v125    # "e":Ljava/lang/Throwable;
    :cond_42
    const/4 v7, 0x0

    goto/16 :goto_f

    .line 544
    .end local v105    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v106    # "dEncService":Lcom/android/server/DirEncryptService;
    :catch_8
    move-exception v125

    .line 545
    .restart local v125    # "e":Ljava/lang/Throwable;
    :try_start_95
    const-string v7, "SystemServer"

    const-string v9, "Failure starting DirEncryptService"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_95
    .catch Ljava/lang/RuntimeException; {:try_start_95 .. :try_end_95} :catch_80

    .line 546
    const/16 v105, 0x0

    .end local v106    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v105    # "dEncService":Lcom/android/server/DirEncryptService;
    goto/16 :goto_10

    .line 558
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v125

    .line 559
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_6f
    :try_start_96
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure starting Container Service"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {v125 .. v125}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catch Ljava/lang/RuntimeException; {:try_start_96 .. :try_end_96} :catch_3

    goto/16 :goto_11

    .line 604
    .end local v79    # "battery":Lcom/android/server/BatteryService;
    .end local v125    # "e":Ljava/lang/Throwable;
    .end local v144    # "lights":Lcom/android/server/LightsService;
    .end local v216    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v82    # "cfmsClass":Ljava/lang/Class;
    .restart local v195    # "tactileAssist":Lcom/android/server/TactileAssistService;
    .restart local v204    # "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    .restart local v217    # "vibrator":Lcom/android/server/VibratorService;
    :cond_43
    :try_start_97
    const-string v7, "com.android.server.ssrm.CustomFrequencyManagerService"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_97} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_97 .. :try_end_97} :catch_b

    move-result-object v82

    goto/16 :goto_12

    .line 609
    :catch_a
    move-exception v125

    .line 610
    .local v125, "e":Ljava/lang/Exception;
    :try_start_98
    const-string v7, "SystemServer"

    const-string/jumbo v9, "ssrm.jar not found"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catch Ljava/lang/RuntimeException; {:try_start_98 .. :try_end_98} :catch_b

    goto/16 :goto_13

    .line 700
    .end local v82    # "cfmsClass":Ljava/lang/Class;
    .end local v125    # "e":Ljava/lang/Exception;
    .end local v204    # "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    :catch_b
    move-exception v125

    move-object/from16 v20, v140

    .end local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v216, v217

    .end local v217    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v216    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_6d

    .line 648
    .end local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v216    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v82    # "cfmsClass":Ljava/lang/Class;
    .restart local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v204    # "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    .restart local v217    # "vibrator":Lcom/android/server/VibratorService;
    :cond_44
    const/16 v22, 0x0

    goto/16 :goto_14

    :cond_45
    const/16 v23, 0x0

    goto/16 :goto_15

    .line 670
    :cond_46
    const/4 v7, 0x1

    move/from16 v0, v129

    if-ne v0, v7, :cond_47

    .line 671
    :try_start_99
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 700
    :catch_c
    move-exception v125

    move-object/from16 v96, v97

    .end local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v119, v120

    .end local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    move-object/from16 v216, v217

    .end local v217    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v216    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_6d

    .line 672
    .end local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v216    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v217    # "vibrator":Lcom/android/server/VibratorService;
    :cond_47
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "android.hardware.bluetooth"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_48

    .line 674
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 675
    :cond_48
    if-eqz v110, :cond_49

    .line 676
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Service disabled by config"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 678
    :cond_49
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    new-instance v81, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v81

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_99
    .catch Ljava/lang/RuntimeException; {:try_start_99 .. :try_end_99} :catch_c

    .line 680
    .end local v80    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v81, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_9a
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v81

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 683
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Secure Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const-string v7, "bluetooth_secure_mode_manager"

    new-instance v9, Landroid/app/BluetoothSecureManagerService;

    invoke-direct {v9, v5}, Landroid/app/BluetoothSecureManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9a
    .catch Ljava/lang/RuntimeException; {:try_start_9a .. :try_end_9a} :catch_87

    move-object/from16 v80, v81

    .end local v81    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v80    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_16

    .line 695
    :catch_d
    move-exception v125

    .line 696
    .local v125, "e":Ljava/lang/Throwable;
    :goto_70
    :try_start_9b
    const-string v7, "SystemServer"

    const-string v9, "Failure starting RCP Manager Service"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9b
    .catch Ljava/lang/RuntimeException; {:try_start_9b .. :try_end_9b} :catch_c

    goto/16 :goto_17

    .line 735
    .end local v82    # "cfmsClass":Ljava/lang/Class;
    .end local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v104    # "cryptState":Ljava/lang/String;
    .end local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v125    # "e":Ljava/lang/Throwable;
    .end local v195    # "tactileAssist":Lcom/android/server/TactileAssistService;
    .end local v198    # "timaEnabled":Z
    .end local v204    # "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    .end local v215    # "versionInfo":Landroid/os/Bundle;
    .end local v217    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v73    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v76    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v101    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v108    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v123    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v127    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v138    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v145    # "location":Lcom/android/server/LocationManagerService;
    .restart local v147    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v151    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v167    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v176    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v184    # "sLocation":Landroid/os/IBinder;
    .restart local v193    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v205    # "transcloud":Lcom/android/server/TranscloudMonitorService;
    .restart local v207    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v216    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v219    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_e
    move-exception v125

    .line 736
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_71
    const-string/jumbo v7, "starting Input MethodManager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 743
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v125

    .line 744
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 752
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v125

    .line 753
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 759
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v125

    .line 760
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 776
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v125

    .line 777
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "making Containerservice preSystemReady ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 787
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v125

    .line 788
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_72
    const-string/jumbo v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 801
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v125

    .line 802
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_73
    const-string/jumbo v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 813
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v125

    .line 814
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting DirEncryption service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 823
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v125

    .line 824
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_74
    const-string/jumbo v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 840
    .end local v125    # "e":Ljava/lang/Throwable;
    .restart local v215    # "versionInfo":Landroid/os/Bundle;
    :catch_17
    move-exception v125

    .line 841
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "Unable to call PMS preSystemReady method"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 852
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v125

    .line 853
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_75
    const-string v7, "SystemServer"

    const-string v9, "Failure starting EnterpriseDeviceManagerService"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_24

    .line 864
    .end local v125    # "e":Ljava/lang/Throwable;
    .end local v215    # "versionInfo":Landroid/os/Bundle;
    :catch_19
    move-exception v125

    .line 865
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_76
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Harmony EAS service"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25

    .line 874
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v125

    .line 875
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_77
    const-string/jumbo v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 884
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v125

    .line 885
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 897
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v125

    .line 898
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "Failure starting ClipboardEx Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 906
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v125

    .line 907
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 916
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v125

    .line 917
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_78
    const-string/jumbo v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 926
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v125

    .line 927
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_79
    const-string/jumbo v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 936
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v125

    move-object/from16 v25, v163

    .line 937
    .end local v163    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_7a
    const-string/jumbo v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 944
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v125

    .line 945
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_7b
    const-string/jumbo v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 952
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v125

    .line 953
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_7c
    const-string/jumbo v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 961
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v125

    .line 962
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_7d
    const-string/jumbo v7, "starting MSAP Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 976
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v125

    .line 977
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_7e
    const-string/jumbo v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 1028
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v125

    .line 1029
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 1038
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v125

    .line 1039
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 1059
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v125

    .line 1060
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 1068
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_28
    move-exception v125

    .line 1069
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 1077
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v125

    .line 1078
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_7f
    const-string/jumbo v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 1085
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v125

    .line 1086
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 1094
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v125

    .line 1095
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_80
    const-string/jumbo v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 1102
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v125

    .line 1103
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_81
    const-string/jumbo v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 1145
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v125

    .line 1146
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Loading SLocation has been failed, error or not support"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v125 .. v125}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_39

    .line 1154
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v125

    .line 1155
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 1165
    .end local v125    # "e":Ljava/lang/Throwable;
    :cond_4a
    :try_start_9c
    const-string v7, "SystemServer"

    const-string v9, "Spell Manager Service disabled"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_9c} :catch_2f

    goto/16 :goto_3b

    .line 1167
    :catch_2f
    move-exception v125

    .line 1168
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "starting Spell Service failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v125

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    .line 1175
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_30
    move-exception v125

    .line 1176
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 1187
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_31
    move-exception v125

    .line 1188
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_82
    const-string/jumbo v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 1196
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_32
    move-exception v125

    .line 1197
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 1206
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_33
    move-exception v125

    .line 1207
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 1217
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_34
    move-exception v125

    .line 1218
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 1228
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_35
    move-exception v125

    .line 1229
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_83
    const-string/jumbo v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 1237
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_36
    move-exception v125

    .line 1238
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_84
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_42

    .line 1245
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_37
    move-exception v125

    .line 1246
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 1253
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_38
    move-exception v125

    .line 1254
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 1263
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_39
    move-exception v125

    .line 1264
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "Failue staring KiesUsbObserver Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 1274
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_3a
    move-exception v125

    .line 1275
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_46

    .line 1282
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_3b
    move-exception v125

    .line 1283
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_85
    const-string/jumbo v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .line 1289
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_3c
    move-exception v125

    .line 1290
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .line 1319
    .end local v125    # "e":Ljava/lang/Throwable;
    .restart local v69    # "SecEDSEnable":Ljava/lang/String;
    .restart local v126    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4b
    :try_start_9d
    const-string v7, "SystemServer"

    const-string v9, "edsclass Service exist"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/Class;

    move-object/from16 v75, v0

    .line 1323
    .local v75, "arg":[Ljava/lang/Class;
    const/4 v7, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v75, v7

    .line 1325
    move-object/from16 v0, v126

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v94

    .line 1327
    .local v94, "constructor":Ljava/lang/reflect/Constructor;
    const-string v9, "SecExternalDisplayService"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v7, v10

    move-object/from16 v0, v94

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v9, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_9d} :catch_3d

    goto/16 :goto_49

    .line 1330
    .end local v75    # "arg":[Ljava/lang/Class;
    .end local v94    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v126    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_3d
    move-exception v125

    .line 1332
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting eds Service"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_49

    .line 1340
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_3e
    move-exception v125

    .line 1341
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4a

    .line 1374
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_3f
    move-exception v125

    .line 1375
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting SpenGestureManagerService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b

    .line 1383
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_40
    move-exception v125

    .line 1384
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting PalmMotion Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4c

    .line 1405
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_41
    move-exception v125

    .line 1406
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting GlanceCardManagerService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d

    .line 1417
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_42
    move-exception v125

    .line 1418
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4e

    .line 1425
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_43
    move-exception v125

    .line 1426
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4f

    .line 1461
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_44
    move-exception v125

    .line 1462
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_86
    const-string/jumbo v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_50

    .line 1470
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_45
    move-exception v125

    .line 1471
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_51

    .line 1482
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_46
    move-exception v125

    .line 1483
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_87
    const-string/jumbo v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_52

    .line 1491
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_47
    move-exception v125

    .line 1492
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure starting TranscloudService "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v125 .. v125}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_53

    .line 1501
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_48
    move-exception v125

    .line 1502
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_88
    const-string/jumbo v7, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_54

    .line 1509
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_49
    move-exception v125

    .line 1510
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting IdleMaintenanceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_55

    .line 1521
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_4a
    move-exception v125

    .line 1522
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Absolute Persistence Service"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_56

    .line 1530
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_4b
    move-exception v125

    .line 1531
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_89
    const-string/jumbo v7, "starting Print Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_57

    .line 1539
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_4c
    move-exception v125

    .line 1540
    .restart local v125    # "e":Ljava/lang/Throwable;
    :goto_8a
    const-string/jumbo v7, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_58

    .line 1582
    .end local v125    # "e":Ljava/lang/Throwable;
    .restart local v171    # "packageMgr":Landroid/content/pm/PackageManager;
    :catch_4d
    move-exception v125

    .line 1583
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting MiniModeAppManager Service"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_59

    .line 1595
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_4e
    move-exception v125

    .line 1596
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting BarBeam Service"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5a

    .line 1604
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_4f
    move-exception v125

    .line 1605
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Motion Recognition Service"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5b

    .line 1612
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_50
    move-exception v125

    .line 1613
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5c

    .line 1624
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_51
    move-exception v125

    .line 1625
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting CoverManager Service"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5d

    .line 1645
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_52
    move-exception v125

    .line 1646
    .local v125, "e":Ljava/lang/Exception;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting HealthCoverService"

    move-object/from16 v0, v125

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5e

    .line 1665
    .end local v69    # "SecEDSEnable":Ljava/lang/String;
    .end local v125    # "e":Ljava/lang/Exception;
    .end local v171    # "packageMgr":Landroid/content/pm/PackageManager;
    :catch_53
    move-exception v125

    .line 1666
    .restart local v125    # "e":Ljava/lang/Exception;
    const-string v7, "Fail to start SmartFaceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5f

    .line 1716
    .end local v125    # "e":Ljava/lang/Exception;
    .restart local v47    # "safeMode":Z
    :cond_4c
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_60

    .line 1724
    :catch_54
    move-exception v125

    .line 1725
    .local v125, "e":Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_61

    .line 1732
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_55
    move-exception v125

    .line 1733
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_62

    .line 1741
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_56
    move-exception v125

    .line 1742
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_63

    .line 1758
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_57
    move-exception v125

    .line 1759
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_64

    .line 1766
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_58
    move-exception v125

    .line 1767
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_65

    .line 1787
    .end local v125    # "e":Ljava/lang/Throwable;
    .restart local v91    # "config":Landroid/content/res/Configuration;
    .restart local v153    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v218    # "w":Landroid/view/WindowManager;
    :catch_59
    move-exception v125

    .line 1788
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_66

    .line 1795
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_5a
    move-exception v125

    .line 1796
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "making Lights Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_67

    .line 1803
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_5b
    move-exception v125

    .line 1804
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "making Adaptive Display Color Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_68

    .line 1810
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_5c
    move-exception v125

    .line 1811
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_69

    .line 1817
    .end local v125    # "e":Ljava/lang/Throwable;
    :catch_5d
    move-exception v125

    .line 1818
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6a

    .line 1825
    .end local v125    # "e":Ljava/lang/Throwable;
    .restart local v215    # "versionInfo":Landroid/os/Bundle;
    :catch_5e
    move-exception v125

    .line 1826
    .restart local v125    # "e":Ljava/lang/Throwable;
    const-string v7, "making Persona Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6b

    .line 480
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v47    # "safeMode":Z
    .end local v73    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v76    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v91    # "config":Landroid/content/res/Configuration;
    .end local v101    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v108    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v123    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v125    # "e":Ljava/lang/Throwable;
    .end local v127    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v138    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v145    # "location":Lcom/android/server/LocationManagerService;
    .end local v147    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v151    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v153    # "metrics":Landroid/util/DisplayMetrics;
    .end local v167    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v176    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v184    # "sLocation":Landroid/os/IBinder;
    .end local v193    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v205    # "transcloud":Lcom/android/server/TranscloudMonitorService;
    .end local v207    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v215    # "versionInfo":Landroid/os/Bundle;
    .end local v218    # "w":Landroid/view/WindowManager;
    .end local v219    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v104    # "cryptState":Ljava/lang/String;
    .restart local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v144    # "lights":Lcom/android/server/LightsService;
    .restart local v163    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v198    # "timaEnabled":Z
    :catch_5f
    move-exception v7

    goto/16 :goto_b

    .line 1539
    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v79    # "battery":Lcom/android/server/BatteryService;
    .end local v104    # "cryptState":Ljava/lang/String;
    .end local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v144    # "lights":Lcom/android/server/LightsService;
    .end local v163    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v198    # "timaEnabled":Z
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v69    # "SecEDSEnable":Ljava/lang/String;
    .restart local v73    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v76    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v101    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v108    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v123    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v127    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v138    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v145    # "location":Lcom/android/server/LocationManagerService;
    .restart local v147    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v152    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v167    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v176    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v184    # "sLocation":Landroid/os/IBinder;
    .restart local v193    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v205    # "transcloud":Lcom/android/server/TranscloudMonitorService;
    .restart local v207    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v219    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_60
    move-exception v125

    move-object/from16 v151, v152

    .end local v152    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v151    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_8a

    .line 1530
    .end local v176    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v177    # "printManager":Lcom/android/server/print/PrintManagerService;
    :catch_61
    move-exception v125

    move-object/from16 v176, v177

    .end local v177    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v176    # "printManager":Lcom/android/server/print/PrintManagerService;
    goto/16 :goto_89

    .line 1501
    .end local v76    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_62
    move-exception v125

    move-object/from16 v76, v77

    .end local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v76    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_88

    .line 1482
    .end local v123    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v124    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :catch_63
    move-exception v125

    move-object/from16 v123, v124

    .end local v124    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v123    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    goto/16 :goto_87

    .line 1461
    .end local v89    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v90    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_64
    move-exception v125

    move-object/from16 v89, v90

    .end local v90    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v89    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_86

    .line 1282
    .end local v69    # "SecEDSEnable":Ljava/lang/String;
    .end local v73    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    :catch_65
    move-exception v125

    move-object/from16 v73, v74

    .end local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v73    # "appWidget":Lcom/android/server/AppWidgetService;
    goto/16 :goto_85

    .line 1237
    .end local v186    # "serial":Lcom/android/server/SerialService;
    .restart local v187    # "serial":Lcom/android/server/SerialService;
    :catch_66
    move-exception v125

    move-object/from16 v186, v187

    .end local v187    # "serial":Lcom/android/server/SerialService;
    .restart local v186    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_84

    .line 1228
    .end local v213    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v214    # "usb":Lcom/android/server/usb/UsbService;
    :catch_67
    move-exception v125

    move-object/from16 v213, v214

    .end local v214    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v213    # "usb":Lcom/android/server/usb/UsbService;
    goto/16 :goto_83

    .line 1187
    .end local v219    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v220    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_68
    move-exception v125

    move-object/from16 v219, v220

    .end local v220    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v219    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_82

    .line 1102
    .end local v101    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v102    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_69
    move-exception v125

    move-object/from16 v101, v102

    .end local v102    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v101    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_81

    .line 1094
    .end local v145    # "location":Lcom/android/server/LocationManagerService;
    .restart local v146    # "location":Lcom/android/server/LocationManagerService;
    :catch_6a
    move-exception v125

    move-object/from16 v145, v146

    .end local v146    # "location":Lcom/android/server/LocationManagerService;
    .restart local v145    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_80

    .line 1077
    .end local v167    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v168    # "notification":Lcom/android/server/NotificationManagerService;
    :catch_6b
    move-exception v125

    move-object/from16 v167, v168

    .end local v168    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v167    # "notification":Lcom/android/server/NotificationManagerService;
    goto/16 :goto_7f

    .line 976
    .end local v92    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v93    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_6c
    move-exception v125

    move-object/from16 v92, v93

    .end local v93    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v92    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_7e

    .line 961
    .end local v159    # "msapwifi":Lcom/android/server/MsapWifiService;
    .restart local v160    # "msapwifi":Lcom/android/server/MsapWifiService;
    :catch_6d
    move-exception v125

    move-object/from16 v159, v160

    .end local v160    # "msapwifi":Lcom/android/server/MsapWifiService;
    .restart local v159    # "msapwifi":Lcom/android/server/MsapWifiService;
    goto/16 :goto_7d

    .line 952
    .end local v221    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v222    # "wifi":Lcom/android/server/wifi/WifiService;
    :catch_6e
    move-exception v125

    move-object/from16 v221, v222

    .end local v222    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v221    # "wifi":Lcom/android/server/wifi/WifiService;
    goto/16 :goto_7c

    .line 944
    .end local v224    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v225    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :catch_6f
    move-exception v125

    move-object/from16 v224, v225

    .end local v225    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v224    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_7b

    .line 936
    :catch_70
    move-exception v125

    goto/16 :goto_7a

    .line 926
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v163    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v164    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_71
    move-exception v125

    move-object/from16 v29, v164

    .end local v164    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_79

    .line 916
    .end local v207    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v208    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_72
    move-exception v125

    move-object/from16 v207, v208

    .end local v208    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v207    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_78

    .line 874
    .end local v193    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v194    # "statusBar":Lcom/android/server/StatusBarManagerService;
    :catch_73
    move-exception v125

    move-object/from16 v193, v194

    .end local v194    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v193    # "statusBar":Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_77

    .line 864
    .end local v149    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v150    # "mHMS":Lcom/android/server/HarmonyEASService;
    :catch_74
    move-exception v125

    move-object/from16 v149, v150

    .end local v150    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v149    # "mHMS":Lcom/android/server/HarmonyEASService;
    goto/16 :goto_76

    .line 852
    .end local v127    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v128    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v215    # "versionInfo":Landroid/os/Bundle;
    :catch_75
    move-exception v125

    move-object/from16 v127, v128

    .end local v128    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v127    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    goto/16 :goto_75

    .line 823
    .end local v147    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v215    # "versionInfo":Landroid/os/Bundle;
    .restart local v148    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_76
    move-exception v125

    move-object/from16 v147, v148

    .end local v148    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v147    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_74

    .line 801
    .end local v157    # "mountService":Lcom/android/server/MountService;
    .restart local v158    # "mountService":Lcom/android/server/MountService;
    :catch_77
    move-exception v125

    move-object/from16 v157, v158

    .end local v158    # "mountService":Lcom/android/server/MountService;
    .restart local v157    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_73

    .line 787
    .end local v108    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v109    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :catch_78
    move-exception v125

    move-object/from16 v108, v109

    .end local v109    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v108    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_72

    .line 769
    :catch_79
    move-exception v7

    goto/16 :goto_1d

    .line 735
    .end local v138    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v139    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_7a
    move-exception v125

    move-object/from16 v138, v139

    .end local v139    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v138    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_71

    .line 700
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v73    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v76    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v101    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v108    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v123    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v127    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v138    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v145    # "location":Lcom/android/server/LocationManagerService;
    .end local v147    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v151    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v167    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v176    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v184    # "sLocation":Landroid/os/IBinder;
    .end local v193    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v205    # "transcloud":Lcom/android/server/TranscloudMonitorService;
    .end local v207    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v219    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v118    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v144    # "lights":Lcom/android/server/LightsService;
    :catch_7b
    move-exception v125

    move-object/from16 v20, v140

    .end local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v79

    .end local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v11, v118

    .end local v118    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v144

    .end local v144    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_6d

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v196    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v144    # "lights":Lcom/android/server/LightsService;
    .restart local v197    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_7c
    move-exception v125

    move-object/from16 v196, v197

    .end local v197    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v196    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v140

    .end local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v79

    .end local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v144

    .end local v144    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_6d

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v161    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v144    # "lights":Lcom/android/server/LightsService;
    .restart local v162    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    :catch_7d
    move-exception v125

    move-object/from16 v161, v162

    .end local v162    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v161    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v20, v140

    .end local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v79

    .end local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v144

    .end local v144    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_6d

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v201    # "timaService":Lcom/android/server/TimaService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v104    # "cryptState":Ljava/lang/String;
    .restart local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v144    # "lights":Lcom/android/server/LightsService;
    .restart local v198    # "timaEnabled":Z
    .restart local v202    # "timaService":Lcom/android/server/TimaService;
    :catch_7e
    move-exception v125

    move-object/from16 v201, v202

    .end local v202    # "timaService":Lcom/android/server/TimaService;
    .restart local v201    # "timaService":Lcom/android/server/TimaService;
    move-object/from16 v20, v140

    .end local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v79

    .end local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v144

    .end local v144    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_6d

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v71    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v144    # "lights":Lcom/android/server/LightsService;
    .restart local v215    # "versionInfo":Landroid/os/Bundle;
    :catch_7f
    move-exception v125

    move-object/from16 v20, v140

    .end local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v79

    .end local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v144

    .end local v144    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    move-object/from16 v70, v71

    .end local v71    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_6d

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v105    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v106    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v144    # "lights":Lcom/android/server/LightsService;
    :catch_80
    move-exception v125

    move-object/from16 v105, v106

    .end local v106    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v105    # "dEncService":Lcom/android/server/DirEncryptService;
    move-object/from16 v20, v140

    .end local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v79

    .end local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v144

    .end local v144    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_6d

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v98    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v99    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v144    # "lights":Lcom/android/server/LightsService;
    :catch_81
    move-exception v125

    move-object/from16 v98, v99

    .end local v99    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v98    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    move-object/from16 v20, v140

    .end local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v79

    .end local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v144

    .end local v144    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_6d

    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    :catch_82
    move-exception v125

    move-object/from16 v20, v140

    .end local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v79

    .end local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    goto/16 :goto_6d

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    :catch_83
    move-exception v125

    move-object/from16 v20, v140

    .end local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    goto/16 :goto_6d

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v216    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v82    # "cfmsClass":Ljava/lang/Class;
    .restart local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v195    # "tactileAssist":Lcom/android/server/TactileAssistService;
    .restart local v204    # "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    .restart local v217    # "vibrator":Lcom/android/server/VibratorService;
    :catch_84
    move-exception v125

    move-object/from16 v20, v140

    .end local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v119, v120

    .end local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v216, v217

    .end local v217    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v216    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_6d

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v216    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v217    # "vibrator":Lcom/android/server/VibratorService;
    :catch_85
    move-exception v125

    move-object/from16 v96, v97

    .end local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v20, v140

    .end local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v119, v120

    .end local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v216, v217

    .end local v217    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v216    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_6d

    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v216    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v217    # "vibrator":Lcom/android/server/VibratorService;
    :catch_86
    move-exception v125

    move-object/from16 v96, v97

    .end local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v20, v140

    .end local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v119, v120

    .end local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    move-object/from16 v216, v217

    .end local v217    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v216    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_6d

    .end local v80    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v216    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v81    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v217    # "vibrator":Lcom/android/server/VibratorService;
    :catch_87
    move-exception v125

    move-object/from16 v96, v97

    .end local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v80, v81

    .end local v81    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v80    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v119, v120

    .end local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    move-object/from16 v216, v217

    .end local v217    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v216    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_6d

    .end local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v178    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .end local v216    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v179    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .restart local v217    # "vibrator":Lcom/android/server/VibratorService;
    :catch_88
    move-exception v125

    move-object/from16 v178, v179

    .end local v179    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .restart local v178    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    move-object/from16 v96, v97

    .end local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v119, v120

    .end local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    move-object/from16 v216, v217

    .end local v217    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v216    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_6d

    .line 695
    .end local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v178    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .end local v216    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v179    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .restart local v217    # "vibrator":Lcom/android/server/VibratorService;
    :catch_89
    move-exception v125

    move-object/from16 v178, v179

    .end local v179    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .restart local v178    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    goto/16 :goto_70

    .line 558
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v82    # "cfmsClass":Ljava/lang/Class;
    .end local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v98    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .end local v120    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v195    # "tactileAssist":Lcom/android/server/TactileAssistService;
    .end local v204    # "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    .end local v217    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v79    # "battery":Lcom/android/server/BatteryService;
    .restart local v96    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v99    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v119    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v144    # "lights":Lcom/android/server/LightsService;
    .restart local v216    # "vibrator":Lcom/android/server/VibratorService;
    :catch_8a
    move-exception v125

    move-object/from16 v98, v99

    .end local v99    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v98    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    goto/16 :goto_6f

    .line 518
    .end local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v71    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :catch_8b
    move-exception v125

    move-object/from16 v70, v71

    .end local v71    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_6e

    .line 453
    .end local v201    # "timaService":Lcom/android/server/TimaService;
    .end local v215    # "versionInfo":Landroid/os/Bundle;
    .restart local v202    # "timaService":Lcom/android/server/TimaService;
    :catch_8c
    move-exception v125

    move-object/from16 v201, v202

    .end local v202    # "timaService":Lcom/android/server/TimaService;
    .restart local v201    # "timaService":Lcom/android/server/TimaService;
    goto/16 :goto_6c

    .line 388
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v104    # "cryptState":Ljava/lang/String;
    .end local v110    # "disableBluetooth":Z
    .end local v111    # "disableLocation":Z
    .end local v112    # "disableMedia":Z
    .end local v113    # "disableNetwork":Z
    .end local v114    # "disableNonCoreServices":Z
    .end local v115    # "disableStorage":Z
    .end local v116    # "disableSystemUI":Z
    .end local v117    # "disableTelephony":Z
    .end local v141    # "installer":Lcom/android/server/pm/Installer;
    .end local v198    # "timaEnabled":Z
    .restart local v118    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v142    # "installer":Lcom/android/server/pm/Installer;
    :catch_8d
    move-exception v125

    move-object/from16 v141, v142

    .end local v142    # "installer":Lcom/android/server/pm/Installer;
    .restart local v141    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_6

    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .end local v141    # "installer":Lcom/android/server/pm/Installer;
    .restart local v142    # "installer":Lcom/android/server/pm/Installer;
    .restart local v174    # "power":Lcom/android/server/power/PowerManagerService;
    :catch_8e
    move-exception v125

    move-object/from16 v4, v174

    .end local v174    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    move-object/from16 v141, v142

    .end local v142    # "installer":Lcom/android/server/pm/Installer;
    .restart local v141    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_6

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v79    # "battery":Lcom/android/server/BatteryService;
    .end local v118    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v140    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v144    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v73    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v76    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v101    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v108    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v110    # "disableBluetooth":Z
    .restart local v111    # "disableLocation":Z
    .restart local v112    # "disableMedia":Z
    .restart local v113    # "disableNetwork":Z
    .restart local v114    # "disableNonCoreServices":Z
    .restart local v115    # "disableStorage":Z
    .restart local v116    # "disableSystemUI":Z
    .restart local v117    # "disableTelephony":Z
    .restart local v123    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v127    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v138    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v145    # "location":Lcom/android/server/LocationManagerService;
    .restart local v147    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v151    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v167    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v176    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v184    # "sLocation":Landroid/os/IBinder;
    .restart local v193    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v205    # "transcloud":Lcom/android/server/TranscloudMonitorService;
    .restart local v207    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v219    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :cond_4d
    move-object/from16 v25, v163

    .end local v163    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_31

    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v163    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_4e
    move-object/from16 v25, v163

    .end local v163    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_5e
.end method

.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 215
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    return-void
.end method
