.class public Lcom/android/server/ssrm/DevSysProperty;
.super Ljava/lang/Object;
.source "DevSysProperty.java"


# static fields
.field static final DEBUG:Z

.field static final SYS_PROPERTY_AP_TEMP:Ljava/lang/String; = "dev.ssrm.ap_temp"

.field static final SYS_PROPERTY_AP_TEMP_DEFAULT:I = -0x3e7

.field static final SYS_PROPERTY_BAT_LEVEL:Ljava/lang/String; = "dev.ssrm.bat_level"

.field static final SYS_PROPERTY_BAT_LEVEL_DEFAULT:I = -0x3e7

.field static final SYS_PROPERTY_BAT_TEMP:Ljava/lang/String; = "dev.ssrm.bat_temp"

.field static final SYS_PROPERTY_BAT_TEMP_DEFAULT:I = -0x3e7

.field static final SYS_PROPERTY_PST:Ljava/lang/String; = "dev.ssrm.pst"

.field static final SYS_PROPERTY_SSRM_FGAPP:Ljava/lang/String; = "dev.ssrm.fgapp"

.field static final SYS_PROPERTY_SSRM_INIT_FAILURE:Ljava/lang/String; = "0"

.field static final SYS_PROPERTY_SSRM_INIT_RESULT:Ljava/lang/String; = "dev.ssrm.init"

.field static final SYS_PROPERTY_SSRM_INIT_SUCCESS:Ljava/lang/String; = "1"

.field static final SYS_PROPERTY_SSRM_MODE:Ljava/lang/String; = "dev.ssrm.mode"

.field static final TAG:Ljava/lang/String; = "SSRMv2:DevSysProperty"

.field static sSsrmFgAppListeners:Ljava/lang/String;

.field static sSsrmModeList:Ljava/lang/String;


# instance fields
.field mShipBuild:Z

.field mTtsFeature:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/DevSysProperty;->DEBUG:Z

    .line 52
    const-string v0, ""

    sput-object v0, Lcom/android/server/ssrm/DevSysProperty;->sSsrmModeList:Ljava/lang/String;

    .line 56
    const-string v0, ""

    sput-object v0, Lcom/android/server/ssrm/DevSysProperty;->sSsrmFgAppListeners:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/ssrm_tts_debug"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/DevSysProperty;->mTtsFeature:Z

    .line 121
    const-string/jumbo v0, "true"

    const-string v1, "ro.product_ship"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/DevSysProperty;->mShipBuild:Z

    return-void
.end method

.method public static addFgAppListeners(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/ssrm/DevSysProperty;->sSsrmFgAppListeners:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/DevSysProperty;->sSsrmFgAppListeners:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public static addMode(Ljava/lang/String;)V
    .locals 2
    .param p0, "feature"    # Ljava/lang/String;

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/ssrm/DevSysProperty;->sSsrmModeList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/DevSysProperty;->sSsrmModeList:Ljava/lang/String;

    .line 96
    return-void
.end method


# virtual methods
.method getApTemperature()I
    .locals 3

    .prologue
    .line 59
    const-string v1, "dev.ssrm.ap_temp"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "result":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/ssrm/DevSysProperty;->DEBUG:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 61
    :cond_0
    const/16 v1, -0x3e7

    .line 63
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method getBatteryLevel()I
    .locals 3

    .prologue
    .line 77
    const-string v1, "dev.ssrm.bat_level"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "result":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/ssrm/DevSysProperty;->DEBUG:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 79
    :cond_0
    const/16 v1, -0x3e7

    .line 81
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method getBatteryTemperature()I
    .locals 3

    .prologue
    .line 68
    const-string v1, "dev.ssrm.bat_temp"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "result":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/ssrm/DevSysProperty;->DEBUG:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 70
    :cond_0
    const/16 v1, -0x3e7

    .line 72
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public isTtsFeatureEnabled()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/server/ssrm/DevSysProperty;->mShipBuild:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/ssrm/DevSysProperty;->mTtsFeature:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setPredictedSurfaceTemperatue(I)V
    .locals 3
    .param p1, "pst"    # I

    .prologue
    .line 86
    const-string v0, "dev.ssrm.pst"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method setSsrmInitResult(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 90
    const-string v1, "dev.ssrm.init"

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void

    .line 90
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method writeFgAppListenersToSystemProperty()V
    .locals 5

    .prologue
    .line 108
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/ssrm_fgapps"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 112
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 113
    const-string v2, "SSRMv2:DevSysProperty"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/server/ssrm/DevSysProperty;->sSsrmFgAppListeners:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v1    # "f":Ljava/io/File;
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method writeModeToSystemProperty()V
    .locals 2

    .prologue
    .line 99
    const-string v0, "dev.ssrm.mode"

    sget-object v1, Lcom/android/server/ssrm/DevSysProperty;->sSsrmModeList:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method
