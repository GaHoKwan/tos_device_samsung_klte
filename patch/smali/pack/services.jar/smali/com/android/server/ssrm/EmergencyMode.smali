.class Lcom/android/server/ssrm/EmergencyMode;
.super Ljava/lang/Object;
.source "EmergencyMode.java"


# static fields
.field private static final SSRM_STATUS_NAME:Ljava/lang/String; = "SSRM_STATUS_NAME"

.field private static final SSRM_STATUS_NOTIFY:Ljava/lang/String; = "com.sec.android.intent.action.SSRM_REQUEST"

.field private static final SSRM_STATUS_VALUE:Ljava/lang/String; = "SSRM_STATUS_VALUE"

.field private static TAG:Ljava/lang/String;


# instance fields
.field EmergencyMode:Z

.field final MSG_TYPE_CHECK_EMERGENCY_MODE:I

.field mContext:Landroid/content/Context;

.field mCpuMaxHelper:Landroid/os/DVFSHelper;

.field mEmergencyCheckRunnable:Ljava/lang/Runnable;

.field mHandler:Landroid/os/Handler;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "SSRMv2:EmergencyMode"

    sput-object v0, Lcom/android/server/ssrm/EmergencyMode;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/EmergencyMode;->EmergencyMode:Z

    .line 53
    iput v7, p0, Lcom/android/server/ssrm/EmergencyMode;->MSG_TYPE_CHECK_EMERGENCY_MODE:I

    .line 74
    new-instance v0, Lcom/android/server/ssrm/EmergencyMode$1;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/EmergencyMode$1;-><init>(Lcom/android/server/ssrm/EmergencyMode;)V

    iput-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mEmergencyCheckRunnable:Ljava/lang/Runnable;

    .line 83
    new-instance v0, Lcom/android/server/ssrm/EmergencyMode$2;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/EmergencyMode$2;-><init>(Lcom/android/server/ssrm/EmergencyMode;)V

    iput-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 56
    iput-object p1, p0, Lcom/android/server/ssrm/EmergencyMode;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/EmergencyMode;->mContext:Landroid/content/Context;

    const-string v2, "SSRM_EMERGENCY_MODE"

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    .line 58
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    const-wide/32 v4, 0x16da00

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 64
    :cond_0
    :goto_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 65
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ssrm/EmergencyMode;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v4, v8

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 68
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mHandler:Landroid/os/Handler;

    .line 69
    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    .line 70
    .local v6, "msg":Landroid/os/Message;
    iput v7, v6, Landroid/os/Message;->what:I

    .line 71
    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/EmergencyMode;->mEmergencyCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    return-void

    .line 60
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v6    # "msg":Landroid/os/Message;
    :cond_1
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KQ:Z

    if-eqz v0, :cond_0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    const-wide/32 v4, 0x16e360

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private static executeCommand(Ljava/lang/String;)V
    .locals 8
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 133
    sget-object v5, Lcom/android/server/ssrm/EmergencyMode;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "executeCommand:: cmd = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 137
    .local v3, "runtime":Ljava/lang/Runtime;
    :try_start_0
    invoke-virtual {v3, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 138
    .local v2, "process":Ljava/lang/Process;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 140
    .local v0, "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 141
    sget-object v5, Lcom/android/server/ssrm/EmergencyMode;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "str = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "process":Ljava/lang/Process;
    .end local v4    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 146
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method


# virtual methods
.method onSettingChanged(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 95
    sput-boolean p1, Lcom/android/server/ssrm/DeviceStatus;->sEmergencyMode:Z

    .line 97
    if-eqz p1, :cond_1

    .line 98
    sget-boolean v1, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    if-eqz v1, :cond_0

    .line 99
    const-string/jumbo v1, "stop mpdecision"

    invoke-static {v1}, Lcom/android/server/ssrm/EmergencyMode;->executeCommand(Ljava/lang/String;)V

    .line 100
    sget-object v1, Lcom/android/server/ssrm/EmergencyMode;->TAG:Ljava/lang/String;

    const-string v2, "/sys/devices/system/cpu/cpu0/online"

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    sget-object v1, Lcom/android/server/ssrm/EmergencyMode;->TAG:Ljava/lang/String;

    const-string v2, "/sys/devices/system/cpu/cpu1/online"

    const-string v3, "0"

    invoke-static {v1, v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-object v1, Lcom/android/server/ssrm/EmergencyMode;->TAG:Ljava/lang/String;

    const-string v2, "/sys/devices/system/cpu/cpu2/online"

    const-string v3, "0"

    invoke-static {v1, v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v1, Lcom/android/server/ssrm/EmergencyMode;->TAG:Ljava/lang/String;

    const-string v2, "/sys/devices/system/cpu/cpu3/online"

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    const-string/jumbo v1, "sys.siop.longlife"

    const-string v2, "minlock_disable"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 108
    .local v0, "boostIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "BOOSTER_UPDATE_DISABLE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v1, "SSRM_STATUS_VALUE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/android/server/ssrm/EmergencyMode;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 113
    iget-object v1, p0, Lcom/android/server/ssrm/EmergencyMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->acquire()V

    .line 129
    :goto_0
    iget-object v1, p0, Lcom/android/server/ssrm/EmergencyMode;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.intent.action.EMERGENCY_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 130
    return-void

    .line 115
    .end local v0    # "boostIntent":Landroid/content/Intent;
    :cond_1
    sget-boolean v1, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    if-eqz v1, :cond_2

    .line 116
    const-string/jumbo v1, "start mpdecision"

    invoke-static {v1}, Lcom/android/server/ssrm/EmergencyMode;->executeCommand(Ljava/lang/String;)V

    .line 118
    :cond_2
    const-string/jumbo v1, "sys.siop.longlife"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 121
    .restart local v0    # "boostIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "BOOSTER_UPDATE_DISABLE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v1, "SSRM_STATUS_VALUE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 124
    iget-object v1, p0, Lcom/android/server/ssrm/EmergencyMode;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 126
    iget-object v1, p0, Lcom/android/server/ssrm/EmergencyMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->release()V

    goto :goto_0
.end method
