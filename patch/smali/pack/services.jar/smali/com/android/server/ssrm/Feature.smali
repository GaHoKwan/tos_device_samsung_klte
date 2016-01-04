.class public Lcom/android/server/ssrm/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# static fields
.field public static AIR_VIEW_PROVIDER_NAME:Ljava/lang/String; = null

.field public static AP_TEMP_PATH:Ljava/lang/String; = null

.field public static BASE_MODEL:Ljava/lang/String; = null

.field public static COMMON_GESTURE_WITH_FINGERHOVER:Z = false

.field public static COMMON_HW_VENDOR_CONFIG:Ljava/lang/String; = null

.field public static COMMON_REGION:Ljava/lang/String; = null

.field public static DISABLE_DYNAMIC_FPS:Z = false

.field public static DISPLAY_WQXGA:Z = false

.field public static DYNAMIC_ANALYSIS:Z = false

.field public static IS_ITALY_MODEL:Z = false

.field public static IS_KOR_MODEL:Z = false

.field public static IS_TABLET:Z = false

.field public static MODEL_CHAGALL:Z = false

.field public static MODEL_D2:Z = false

.field public static MODEL_F_LTE:Z = false

.field public static MODEL_H:Z = false

.field public static MODEL_HA:Z = false

.field public static MODEL_HEAT:Z = false

.field public static MODEL_HF:Z = false

.field public static MODEL_J:Z = false

.field public static MODEL_J6:Z = false

.field public static MODEL_JA:Z = false

.field public static MODEL_JF:Z = false

.field public static MODEL_JFVE:Z = false

.field public static MODEL_JF_REFRESH:Z = false

.field public static MODEL_JS01:Z = false

.field public static MODEL_K:Z = false

.field public static MODEL_KA:Z = false

.field public static MODEL_KAM:Z = false

.field public static MODEL_KF:Z = false

.field public static MODEL_KQ:Z = false

.field public static MODEL_KS01:Z = false

.field public static MODEL_LT03:Z = false

.field public static MODEL_LT03_3GWIFI:Z = false

.field public static MODEL_LT03_LTE:Z = false

.field public static MODEL_MATISSE:Z = false

.field public static MODEL_MILLET:Z = false

.field public static MODEL_MONDRIAN:Z = false

.field public static MODEL_MS01_3G:Z = false

.field public static MODEL_PICASSO:Z = false

.field public static MODEL_PICASSO_3GWIFI:Z = false

.field public static MODEL_PICASSO_LTE:Z = false

.field public static MODEL_T0:Z = false

.field public static MODEL_V1:Z = false

.field public static MODEL_V1_3GWIFI:Z = false

.field public static MODEL_V1_LTE:Z = false

.field public static MODEL_V2:Z = false

.field public static MODEL_V2_3GWIFI:Z = false

.field public static MODEL_V2_LTE:Z = false

.field public static PRODUCT_H:Z = false

.field public static PRODUCT_J:Z = false

.field public static REGION_JPN:Z = false

.field public static REGION_VZW:Z = false

.field public static SIOP_FILENAME:Ljava/lang/String; = null

.field public static SIOP_FOR_CHARGING_LIMITATION:Z = false

.field public static SIOP_TYPE:Ljava/lang/String; = null

.field public static SSRM_BATTERY_COOLDOWN_ENABLE:Z = false

.field public static SSRM_FILENAME:Ljava/lang/String; = null

.field public static SSRM_FOR_CALL_CHARGING_LIMITATION:Z = false

.field public static SSRM_HANGOUTS:Z = false

.field public static SSRM_LOW_BATTERY_LIMITATION:Z = false

.field public static SSRM_POWERSTRETCH:Z = false

.field public static SSRM_PST_ENABLE:Z = false

.field public static SSRM_STS_ENABLE:Z = false

.field public static SSRM_TOUCH_BUS_QOS_BOOSTER:Z = false

.field public static SSRM_TOUCH_SEPARATION:Z = false

.field public static SSRM_TURBO_MODE_BOOSTER:Z = false

.field public static SSRM_VZW_COOLDOWN_ENABLE:Z = false

.field public static STATIC_ANALYSIS:Z = false

.field static final TAG:Ljava/lang/String; = "SSRMv2:Feature"

.field public static sApTempPathExist:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 32
    const-string v5, ""

    sput-object v5, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    .line 34
    const-string v5, ""

    sput-object v5, Lcom/android/server/ssrm/Feature;->SIOP_FILENAME:Ljava/lang/String;

    .line 36
    const-string v5, ""

    sput-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    .line 38
    const-string v5, ""

    sput-object v5, Lcom/android/server/ssrm/Feature;->AIR_VIEW_PROVIDER_NAME:Ljava/lang/String;

    .line 40
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->DISABLE_DYNAMIC_FPS:Z

    .line 42
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->COMMON_GESTURE_WITH_FINGERHOVER:Z

    .line 44
    const-string v5, ""

    sput-object v5, Lcom/android/server/ssrm/Feature;->COMMON_REGION:Ljava/lang/String;

    .line 46
    const-string v5, ""

    sput-object v5, Lcom/android/server/ssrm/Feature;->COMMON_HW_VENDOR_CONFIG:Ljava/lang/String;

    .line 48
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->IS_KOR_MODEL:Z

    .line 50
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->IS_ITALY_MODEL:Z

    .line 52
    const-string v5, ""

    sput-object v5, Lcom/android/server/ssrm/Feature;->SIOP_TYPE:Ljava/lang/String;

    .line 54
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_JA:Z

    .line 56
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_JF:Z

    .line 58
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_J:Z

    .line 60
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_JFVE:Z

    .line 62
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    .line 64
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    .line 66
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    .line 68
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_KAM:Z

    .line 70
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    .line 72
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_KQ:Z

    .line 74
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    .line 76
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    .line 78
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_LT03:Z

    .line 80
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_LT03_3GWIFI:Z

    .line 82
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_LT03_LTE:Z

    .line 84
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_J6:Z

    .line 86
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_JS01:Z

    .line 88
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_V1:Z

    .line 90
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_V1_3GWIFI:Z

    .line 92
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_V1_LTE:Z

    .line 94
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_V2:Z

    .line 96
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_V2_3GWIFI:Z

    .line 98
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_V2_LTE:Z

    .line 100
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_CHAGALL:Z

    .line 102
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_MONDRIAN:Z

    .line 104
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_PICASSO:Z

    .line 106
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_PICASSO_3GWIFI:Z

    .line 108
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_PICASSO_LTE:Z

    .line 110
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_MILLET:Z

    .line 112
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_MATISSE:Z

    .line 114
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->IS_TABLET:Z

    .line 116
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_F_LTE:Z

    .line 118
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_MS01_3G:Z

    .line 120
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_JF_REFRESH:Z

    .line 122
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_D2:Z

    .line 124
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_KS01:Z

    .line 126
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_HEAT:Z

    .line 128
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->MODEL_T0:Z

    .line 130
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->REGION_VZW:Z

    .line 132
    const-string v5, ""

    sput-object v5, Lcom/android/server/ssrm/Feature;->AP_TEMP_PATH:Ljava/lang/String;

    .line 134
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->sApTempPathExist:Z

    .line 136
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->STATIC_ANALYSIS:Z

    .line 138
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->DYNAMIC_ANALYSIS:Z

    .line 140
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->PRODUCT_J:Z

    .line 142
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->PRODUCT_H:Z

    .line 144
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->DISPLAY_WQXGA:Z

    .line 146
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->REGION_JPN:Z

    .line 150
    :try_start_0
    const-string v5, "com.android.server.SsrmService"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 153
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "BASE_MODEL"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 154
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    .line 156
    const-string v5, "SIOP_FILENAME"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 157
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/android/server/ssrm/Feature;->SIOP_FILENAME:Ljava/lang/String;

    .line 159
    const-string v5, "SSRM_FILENAME"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 160
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    .line 162
    const-string v5, "AIR_VIEW_PROVIDER_NAME"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 163
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/android/server/ssrm/Feature;->AIR_VIEW_PROVIDER_NAME:Ljava/lang/String;

    .line 165
    const-string v5, "DISABLE_DYNAMIC_FPS"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 166
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->DISABLE_DYNAMIC_FPS:Z

    .line 168
    const-string v5, "COMMON_GESTURE_WITH_FINGERHOVER"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 169
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->COMMON_GESTURE_WITH_FINGERHOVER:Z

    .line 171
    const-string v5, "COMMON_REGION"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 172
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/android/server/ssrm/Feature;->COMMON_REGION:Ljava/lang/String;

    .line 174
    const-string v5, "COMMON_HW_VENDOR_CONFIG"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 175
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/android/server/ssrm/Feature;->COMMON_HW_VENDOR_CONFIG:Ljava/lang/String;

    .line 177
    const-string v5, "KOR"

    sget-object v8, Lcom/android/server/ssrm/Feature;->COMMON_REGION:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->IS_KOR_MODEL:Z

    .line 179
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v8, "CscFeature_Common_ConfigSiop"

    invoke-virtual {v5, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 181
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v8, "CscFeature_Common_ConfigSiop"

    invoke-virtual {v5, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/server/ssrm/Feature;->SIOP_TYPE:Ljava/lang/String;

    .line 183
    const-string v5, "SIOPS4ITALY"

    sget-object v8, Lcom/android/server/ssrm/Feature;->SIOP_TYPE:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 184
    const-string/jumbo v5, "ssrm_jf_italy"

    sput-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    .line 185
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->IS_ITALY_MODEL:Z

    .line 189
    :cond_0
    const-string v5, "ha"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 190
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    .line 192
    :cond_1
    const-string v5, "hf"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 193
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    .line 195
    :cond_2
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    if-nez v5, :cond_3

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v5, :cond_4

    .line 196
    :cond_3
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    .line 199
    :cond_4
    const-string v5, "kam"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 200
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KAM:Z

    .line 203
    :cond_5
    const-string v5, "ka"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 204
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    .line 206
    :cond_6
    const-string v5, "kf"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 207
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    .line 209
    :cond_7
    const-string v5, "kq"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 210
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KQ:Z

    .line 212
    :cond_8
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    if-nez v5, :cond_9

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KQ:Z

    if-nez v5, :cond_9

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    if-eqz v5, :cond_a

    .line 213
    :cond_9
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    .line 216
    :cond_a
    const-string v5, "ja"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 217
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_JA:Z

    .line 219
    :cond_b
    const-string v5, "jf"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 220
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_JF:Z

    .line 222
    :cond_c
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_JA:Z

    if-nez v5, :cond_d

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_JF:Z

    if-eqz v5, :cond_e

    .line 223
    :cond_d
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_J:Z

    .line 225
    :cond_e
    const-string v5, "heat3g"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 226
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HEAT:Z

    .line 229
    :cond_f
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    if-eqz v5, :cond_2e

    .line 230
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    if-eqz v5, :cond_10

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "lt03"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 231
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_LT03_3GWIFI:Z

    .line 233
    :cond_10
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v5, :cond_11

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "lt03"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 234
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_LT03_LTE:Z

    .line 236
    :cond_11
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_LT03_3GWIFI:Z

    if-nez v5, :cond_12

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_LT03_LTE:Z

    if-eqz v5, :cond_36

    :cond_12
    move v5, v7

    :goto_0
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_LT03:Z

    .line 238
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    if-eqz v5, :cond_13

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string/jumbo v8, "vienna"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 239
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V1_3GWIFI:Z

    .line 241
    :cond_13
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v5, :cond_14

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string/jumbo v8, "vienna"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 242
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V1_LTE:Z

    .line 244
    :cond_14
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V1_3GWIFI:Z

    if-nez v5, :cond_15

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V1_LTE:Z

    if-eqz v5, :cond_37

    :cond_15
    move v5, v7

    :goto_1
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V1:Z

    .line 246
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    if-eqz v5, :cond_16

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string/jumbo v8, "v2"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 247
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V2_3GWIFI:Z

    .line 249
    :cond_16
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v5, :cond_17

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string/jumbo v8, "v2"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 250
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V2_LTE:Z

    .line 252
    :cond_17
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V2_3GWIFI:Z

    if-nez v5, :cond_18

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V2_LTE:Z

    if-eqz v5, :cond_38

    :cond_18
    move v5, v7

    :goto_2
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V2:Z

    .line 254
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    if-eqz v5, :cond_19

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "picasso"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 255
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_PICASSO_3GWIFI:Z

    .line 257
    :cond_19
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v5, :cond_1a

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "picasso"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 258
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_PICASSO_LTE:Z

    .line 260
    :cond_1a
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_PICASSO_3GWIFI:Z

    if-nez v5, :cond_1b

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_PICASSO_LTE:Z

    if-eqz v5, :cond_39

    :cond_1b
    move v5, v7

    :goto_3
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_PICASSO:Z

    .line 262
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "millet"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 263
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_MILLET:Z

    .line 266
    :cond_1c
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "matisse"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 267
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_MATISSE:Z

    .line 270
    :cond_1d
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    if-eqz v5, :cond_1e

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "chagall"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 271
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_CHAGALL:Z

    .line 274
    :cond_1e
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v5, :cond_1f

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "mondrian"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 275
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_MONDRIAN:Z

    .line 278
    :cond_1f
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v5, :cond_20

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "flte"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 279
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_F_LTE:Z

    .line 282
    :cond_20
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v5, :cond_21

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "ks01"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 283
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KS01:Z

    .line 286
    :cond_21
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_JF:Z

    if-eqz v5, :cond_22

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "jfve"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 287
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_JFVE:Z

    .line 290
    :cond_22
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string/jumbo v8, "vzw"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 291
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->REGION_VZW:Z

    .line 293
    :cond_23
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "jpn"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 294
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->REGION_JPN:Z

    .line 296
    :cond_24
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "js01"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 297
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_JS01:Z

    .line 300
    :cond_25
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "ms013g"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 301
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_MS01_3G:Z

    .line 304
    :cond_26
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_JF:Z

    if-eqz v5, :cond_27

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "refresh"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 305
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_JF_REFRESH:Z

    .line 308
    :cond_27
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "d2"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 309
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_D2:Z

    .line 312
    :cond_28
    const-string/jumbo v5, "t0"

    sget-object v8, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_t0_"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 313
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_T0:Z

    .line 316
    :cond_29
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "ja"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2a

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "jf"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 317
    :cond_2a
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_J:Z

    .line 320
    :cond_2b
    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_ha_"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2c

    sget-object v5, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_hf_"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 321
    :cond_2c
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_H:Z

    .line 324
    :cond_2d
    const-string/jumbo v5, "tablet"

    const-string v8, "ro.build.characteristics"

    const-string v9, "default"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->IS_TABLET:Z

    .line 328
    :cond_2e
    new-instance v3, Ljava/io/File;

    const-string v5, "/sys/class/sec/sec-thermistor/temperature"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 329
    .local v3, "f1":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/devices/platform/sec-thermistor/temperature"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    .local v4, "f2":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 332
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/server/ssrm/Feature;->AP_TEMP_PATH:Ljava/lang/String;

    .line 333
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->sApTempPathExist:Z

    .line 341
    :goto_4
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    if-eqz v5, :cond_3c

    .line 342
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->DYNAMIC_ANALYSIS:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "f1":Ljava/io/File;
    .end local v4    # "f2":Ljava/io/File;
    :goto_5
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    if-nez v5, :cond_2f

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_J:Z

    if-nez v5, :cond_2f

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_J6:Z

    if-eqz v5, :cond_3d

    :cond_2f
    move v5, v7

    :goto_6
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_TOUCH_BUS_QOS_BOOSTER:Z

    .line 354
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_JF:Z

    if-nez v5, :cond_30

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_J6:Z

    if-eqz v5, :cond_3e

    :cond_30
    move v5, v7

    :goto_7
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_TURBO_MODE_BOOSTER:Z

    .line 356
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_J:Z

    if-nez v5, :cond_31

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    if-nez v5, :cond_31

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_MILLET:Z

    if-nez v5, :cond_31

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    if-nez v5, :cond_31

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KAM:Z

    if-eqz v5, :cond_3f

    :cond_31
    move v5, v7

    :goto_8
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->SIOP_FOR_CHARGING_LIMITATION:Z

    .line 359
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    if-nez v5, :cond_32

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_MILLET:Z

    if-nez v5, :cond_32

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    if-nez v5, :cond_32

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KAM:Z

    if-nez v5, :cond_32

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_JFVE:Z

    if-eqz v5, :cond_40

    :cond_32
    move v5, v7

    :goto_9
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_FOR_CALL_CHARGING_LIMITATION:Z

    .line 362
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_TOUCH_SEPARATION:Z

    .line 364
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    if-nez v5, :cond_33

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_J:Z

    if-nez v5, :cond_33

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_MS01_3G:Z

    if-eqz v5, :cond_41

    :cond_33
    move v5, v7

    :goto_a
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_POWERSTRETCH:Z

    .line 367
    sput-boolean v7, Lcom/android/server/ssrm/Feature;->SSRM_HANGOUTS:Z

    .line 369
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->PRODUCT_J:Z

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_STS_ENABLE:Z

    .line 371
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_PST_ENABLE:Z

    .line 373
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->REGION_VZW:Z

    if-nez v5, :cond_42

    move v5, v7

    :goto_b
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_BATTERY_COOLDOWN_ENABLE:Z

    .line 375
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->REGION_VZW:Z

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_VZW_COOLDOWN_ENABLE:Z

    .line 377
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V1_3GWIFI:Z

    if-nez v5, :cond_34

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    if-nez v5, :cond_34

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_KQ:Z

    if-eqz v5, :cond_35

    :cond_34
    move v6, v7

    :cond_35
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->SSRM_LOW_BATTERY_LIMITATION:Z

    return-void

    .restart local v2    # "f":Ljava/lang/reflect/Field;
    :cond_36
    move v5, v6

    .line 236
    goto/16 :goto_0

    :cond_37
    move v5, v6

    .line 244
    goto/16 :goto_1

    :cond_38
    move v5, v6

    .line 252
    goto/16 :goto_2

    :cond_39
    move v5, v6

    .line 260
    goto/16 :goto_3

    .line 334
    .restart local v3    # "f1":Ljava/io/File;
    .restart local v4    # "f2":Ljava/io/File;
    :cond_3a
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 335
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/server/ssrm/Feature;->AP_TEMP_PATH:Ljava/lang/String;

    .line 336
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->sApTempPathExist:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 346
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "f1":Ljava/io/File;
    .end local v4    # "f2":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 347
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "SSRMv2:Feature"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "e = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 338
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "f":Ljava/lang/reflect/Field;
    .restart local v3    # "f1":Ljava/io/File;
    .restart local v4    # "f2":Ljava/io/File;
    :cond_3b
    const/4 v5, 0x0

    :try_start_2
    sput-boolean v5, Lcom/android/server/ssrm/Feature;->sApTempPathExist:Z

    goto/16 :goto_4

    .line 344
    :cond_3c
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/ssrm/Feature;->STATIC_ANALYSIS:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "f1":Ljava/io/File;
    .end local v4    # "f2":Ljava/io/File;
    :cond_3d
    move v5, v6

    .line 351
    goto/16 :goto_6

    :cond_3e
    move v5, v6

    .line 354
    goto/16 :goto_7

    :cond_3f
    move v5, v6

    .line 356
    goto/16 :goto_8

    :cond_40
    move v5, v6

    .line 359
    goto/16 :goto_9

    :cond_41
    move v5, v6

    .line 364
    goto :goto_a

    :cond_42
    move v5, v6

    .line 373
    goto :goto_b
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
