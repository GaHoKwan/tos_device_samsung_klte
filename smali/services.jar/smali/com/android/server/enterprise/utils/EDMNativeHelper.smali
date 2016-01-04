.class public Lcom/android/server/enterprise/utils/EDMNativeHelper;
.super Ljava/lang/Object;
.source "EDMNativeHelper.java"


# static fields
.field public static final AVRCP_RESTRICTION_INTENT:I = 0x3

.field public static final CAMERA_RESTRICTION_INTENT:I = 0x1

.field public static final MIC_RESTRICTION_INTENT:I = 0x2

.field public static TAG:Ljava/lang/String;

.field public static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "EDMNativeHelper"

    sput-object v0, Lcom/android/server/enterprise/utils/EDMNativeHelper;->TAG:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/utils/EDMNativeHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initService(Landroid/content/Context;)V
    .locals 2
    .param p0, "cxt"    # Landroid/content/Context;

    .prologue
    .line 71
    sput-object p0, Lcom/android/server/enterprise/utils/EDMNativeHelper;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/enterprise/utils/EDMNativeHelper$1;

    invoke-direct {v1}, Lcom/android/server/enterprise/utils/EDMNativeHelper$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 83
    return-void
.end method

.method public static isAVRCPProfileEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 150
    const-string v2, "bluetooth_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 152
    .local v0, "policy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-eqz v0, :cond_0

    .line 153
    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isProfileEnabledInternal(IZ)Z

    move-result v1

    .line 156
    :cond_0
    return v1
.end method

.method public static isAuditLogEnabled()Z
    .locals 2

    .prologue
    .line 182
    const-string v1, "auditlog"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 185
    .local v0, "mAuditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    move-result v1

    .line 189
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isBTOutgoingCallEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 160
    const-string v2, "bluetooth_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 162
    .local v0, "policy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isOutgoingCallsAllowed(Z)Z

    move-result v1

    .line 165
    :cond_0
    return v1
.end method

.method public static isCameraEnabled(I)Z
    .locals 6
    .param p0, "uid"    # I

    .prologue
    const/4 v3, 0x1

    .line 125
    const-string v4, "restriction_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 127
    .local v2, "policy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v2, :cond_1

    .line 128
    new-instance v4, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v4, p0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v4, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabledEx(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v0

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    const/4 v0, 0x1

    .line 132
    .local v0, "cameraEnabled":Z
    sget-object v4, Lcom/android/server/enterprise/utils/EDMNativeHelper;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 133
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_0

    .line 134
    const/4 v4, 0x0

    invoke-virtual {v1, v4, p0}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabledWithUID(Landroid/content/ComponentName;I)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v3

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isMicrophoneEnabled(I)Z
    .locals 4
    .param p0, "uid"    # I

    .prologue
    .line 169
    const/4 v0, 0x1

    .line 170
    .local v0, "microphoneEnabled":Z
    const-string v2, "restriction_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 172
    .local v1, "policy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    sget-object v2, Lcom/android/server/enterprise/utils/EDMNativeHelper;->TAG:Ljava/lang/String;

    const-string v3, "isMicrophoneEnabled : get policy"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    if-eqz v1, :cond_0

    .line 174
    sget-object v2, Lcom/android/server/enterprise/utils/EDMNativeHelper;->TAG:Ljava/lang/String;

    const-string v3, "isMicrophoneEnabled : get policy success call policy.isMicrophoneEnabled"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, p0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v0

    .line 177
    :cond_0
    return v0
.end method

.method public static isScreenCaptureEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 141
    const-string v2, "restriction_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 143
    .local v0, "policy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v0, :cond_0

    .line 144
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabledEx(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    .line 146
    :cond_0
    return v1
.end method

.method public static nativeLogger(IIIILjava/lang/String;[B)V
    .locals 10
    .param p0, "severityGrade"    # I
    .param p1, "moduleGroup"    # I
    .param p2, "outcome"    # I
    .param p3, "uid"    # I
    .param p4, "swComponent"    # Ljava/lang/String;
    .param p5, "logMessage"    # [B

    .prologue
    .line 113
    :try_start_0
    new-instance v9, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {v9, p5, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 114
    .local v9, "logs":Ljava/lang/String;
    const-string v0, "\\n"

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 115
    .local v8, "inputSplitNewLine":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v8

    if-ge v7, v0, :cond_0

    .line 116
    const/4 v2, 0x1

    aget-object v5, v8, v7

    move v0, p0

    move v1, p1

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 118
    .end local v7    # "i":I
    .end local v8    # "inputSplitNewLine":[Ljava/lang/String;
    .end local v9    # "logs":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 119
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v0, Lcom/android/server/enterprise/utils/EDMNativeHelper;->TAG:Ljava/lang/String;

    const-string v1, "Unsupported conversion"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    return-void
.end method

.method public static nativeLogger(IIZILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "severityGrade"    # I
    .param p1, "moduleGroup"    # I
    .param p2, "outcome"    # Z
    .param p3, "uid"    # I
    .param p4, "swComponent"    # Ljava/lang/String;
    .param p5, "logMessage"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static/range {p0 .. p5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public static sendIntent(I)V
    .locals 2
    .param p0, "restriction"    # I

    .prologue
    .line 86
    sget-object v1, Lcom/android/server/enterprise/utils/EDMNativeHelper;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 87
    const/4 v0, -0x1

    .line 88
    .local v0, "msgResId":I
    packed-switch p0, :pswitch_data_0

    .line 103
    .end local v0    # "msgResId":I
    :cond_0
    :goto_0
    return-void

    .line 90
    .restart local v0    # "msgResId":I
    :pswitch_0
    const v0, 0x1040290

    .line 101
    :goto_1
    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    goto :goto_0

    .line 93
    :pswitch_1
    const v0, 0x1040291

    .line 94
    goto :goto_1

    .line 96
    :pswitch_2
    const v0, 0x10402dc

    .line 97
    goto :goto_1

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static native setAuditEnabled(Z)V
.end method
