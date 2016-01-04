.class public Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;
.super Ljava/lang/Object;
.source "MarvellFALImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/MarvellFALImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SysfsPath"
.end annotation


# instance fields
.field public BUS_MAX_DEFAULT_FREQUENCY:I

.field public BUS_MAX_PATH:Ljava/lang/String;

.field public BUS_MIN_DEFAULT_FREQUENCY:I

.field public BUS_MIN_PATH:Ljava/lang/String;

.field public BUS_TABLE_PATH:Ljava/lang/String;

.field public CPU_CORE_MAX_PATH:Ljava/lang/String;

.field public CPU_CORE_MIN_PATH:Ljava/lang/String;

.field public CPU_CORE_TABLE_PATH:Ljava/lang/String;

.field public CPU_DEFAULT_CORE:I

.field public GPU_MAX_DEFAULT_FREQUENCY:I

.field public GPU_MAX_PATH:Ljava/lang/String;

.field public GPU_MIN_DEFAULT_FREQUENCY:I

.field public GPU_MIN_PATH:Ljava/lang/String;

.field public GPU_TABLE_PATH:Ljava/lang/String;

.field public LCD_FRAME_RATE_DEFAULT:I

.field public LCD_FRAME_RATE_PATH:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 106
    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 108
    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    .line 112
    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    .line 120
    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 128
    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    .line 130
    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    .line 133
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 134
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 135
    const-string v0, "/sys/devices/platform/galcore/gpu/gpu0/gpufreq/scaling_available_freqs"

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 136
    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 137
    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 138
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    .line 139
    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    .line 141
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    .line 142
    const-string v0, "/sys/devices/system/cpu/possible"

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    .line 143
    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    .line 144
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 145
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 146
    const-string v0, "/sys/class/devfreq/devfreq-ddr/available_freqs"

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 147
    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    .line 148
    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    .line 149
    return-void
.end method
