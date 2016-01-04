.class public Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;
.super Ljava/lang/Object;
.source "GenericFalImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/GenericFalImpl;
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
.method constructor <init>(Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;Lcom/android/server/ssrm/GenericFalImpl$PlatformType;)V
    .locals 3
    .param p1, "mChipVendor"    # Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;
    .param p2, "mPlatformType"    # Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 106
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 108
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    .line 112
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    .line 120
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 128
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    .line 130
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    .line 133
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl$1;->$SwitchMap$com$android$server$ssrm$GenericFalImpl$PlatformType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 266
    :goto_0
    return-void

    .line 135
    :pswitch_0
    const-string v0, "/sys/devices/platform/pvrsrvkm.0/sgx_dvfs_min_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 136
    const-string v0, "/sys/devices/platform/pvrsrvkm.0/sgx_dvfs_max_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 137
    const-string v0, "/sys/devices/platform/pvrsrvkm.0/sgx_dvfs_table"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 138
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 139
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 140
    const-string v0, "/sys/class/graphics/fb0/lcdfreq/level"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    .line 142
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 143
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    .line 144
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    .line 145
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    .line 146
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    .line 147
    const-string v0, "/sys/class/devfreq/exynos5-busfreq-mif/min_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 148
    const-string v0, "/sys/class/devfreq/exynos5-busfreq-mif/max_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 149
    const-string v0, "/sys/class/devfreq/exynos5-busfreq-mif/freq_table"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 150
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    .line 151
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    goto :goto_0

    .line 154
    :pswitch_1
    const-string v0, "/sys/devices/platform/mali.0/dvfs_min_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 155
    const-string v0, "/sys/devices/platform/mali.0/dvfs_max_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 156
    const-string v0, "/sys/devices/platform/mali.0/dvfs_table"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 157
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 158
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 159
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    .line 160
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 161
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    .line 162
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    .line 163
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    .line 164
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    .line 165
    const-string v0, "/sys/class/devfreq/exynos5-busfreq-mif/min_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 166
    const-string v0, "/sys/class/devfreq/exynos5-busfreq-mif/max_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 167
    const-string v0, "/sys/class/devfreq/exynos5-busfreq-mif/freq_table"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 168
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    .line 169
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    goto :goto_0

    .line 172
    :pswitch_2
    const-string v0, "/sys/devices/11800000.mali/dvfs_min_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 173
    const-string v0, "/sys/devices/11800000.mali/dvfs_max_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 174
    const-string v0, "/sys/devices/11800000.mali/dvfs_table"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 175
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 176
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 177
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    .line 178
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 179
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    .line 180
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    .line 181
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    .line 182
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    .line 183
    const-string v0, "/sys/devices/platform/exynos5-devfreq-mif/devfreq/exynos5-devfreq-mif/min_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 184
    const-string v0, "/sys/devices/platform/exynos5-devfreq-mif/devfreq/exynos5-devfreq-mif/max_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 185
    const-string v0, "/sys/devices/platform/exynos5-devfreq-mif/devfreq/exynos5-devfreq-mif/available_frequencies"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 186
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    .line 187
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    goto/16 :goto_0

    .line 190
    :pswitch_3
    const-string v0, "/sys/devices/14ac0000.mali/dvfs_min_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 191
    const-string v0, "/sys/devices/14ac0000.mali/dvfs_max_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 192
    const-string v0, "/sys/devices/14ac0000.mali/dvfs_table"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 193
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 194
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 195
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    .line 196
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 197
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    .line 198
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    .line 199
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    .line 200
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    .line 201
    const-string v0, "/sys/devices/platform/exynos5-devfreq-mif/devfreq/exynos5-devfreq-mif/min_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 202
    const-string v0, "/sys/devices/platform/exynos5-devfreq-mif/devfreq/exynos5-devfreq-mif/max_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 203
    const-string v0, "/sys/devices/platform/exynos5-devfreq-mif/devfreq/exynos5-devfreq-mif/available_frequencies"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 204
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    .line 205
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    goto/16 :goto_0

    .line 208
    :pswitch_4
    const-string v0, "/sys/devices/platform/mali.0/dvfs_min_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 209
    const-string v0, "/sys/devices/platform/mali.0/dvfs_max_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 210
    const-string v0, "/sys/devices/platform/mali.0/dvfs_table"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 211
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 212
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 213
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    .line 214
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 215
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    .line 216
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    .line 217
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    .line 218
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    .line 219
    const-string v0, "/sys/class/devfreq/exynos5-devfreq-mif/min_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 220
    const-string v0, "/sys/class/devfreq/exynos5-devfreq-mif/max_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 221
    const-string v0, "/sys/class/devfreq/exynos5-devfreq-mif/available_frequencies"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 222
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    .line 223
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    goto/16 :goto_0

    .line 226
    :pswitch_5
    const-string v0, "/sys/power/gpu_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 228
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 229
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 230
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 231
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 232
    const-string v0, "/sys/class/graphics/fb0/lcdfreq/level"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    .line 234
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 235
    const-string v0, "/sys/devices/system/cpu/cpufreq/pegasusq/min_cpu_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    .line 236
    const-string v0, "/sys/devices/system/cpu/cpufreq/pegasusq/max_cpu_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    .line 237
    const-string v0, "/sys/devices/system/cpu/cpufreq/pegasusq/cpucore_table"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    .line 238
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    .line 239
    const-string v0, "/sys/devices/system/cpu/busfreq/min_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 240
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 241
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 242
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    .line 243
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    goto/16 :goto_0

    .line 246
    :pswitch_6
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 247
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 248
    const-string v0, "/sys/devices/platform/galcore/gpu/gpu0/gpufreq/scaling_available_freqs"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 249
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 250
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 251
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    .line 252
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 253
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    .line 254
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    .line 255
    const-string v0, "/sys/devices/system/cpu/possible"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    .line 256
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    .line 257
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 258
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 259
    const-string v0, "/sys/class/devfreq/devfreq-ddr/available_freqs"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 260
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    .line 261
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    goto/16 :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
