.class public Landroid/hardware/contextaware/ContextAwareManager;
.super Ljava/lang/Object;
.source "ContextAwareManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;
    }
.end annotation


# static fields
.field public static final ABNORMAL_SHOCK_SERVICE:I

.field public static final ACCELEROMETER_SENSOR_SERVICE:I

.field public static final ACTIVITY_TRACKER_BATCH_SERVICE:I

.field public static final ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

.field public static final ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

.field public static final ACTIVITY_TRACKER_SERVICE:I

.field public static final APDR_SERVICE:I

.field public static final AUTO_ROTATION_SERVICE:I

.field public static final BEST_LOCATION_SERVICE:I

.field public static final BOUNCE_LONG_MOTION_SERVICE:I

.field public static final BOUNCE_SHORT_MOTION_SERVICE:I

.field public static final CALL_MOTION_SERVICE:I

.field public static final CALL_POSE_SERVICE:I

.field public static final CAPTURE_MOTION_SERVICE:I

.field public static final CARE_GIVER_SERVICE:I

.field public static final CMD_PROCESS_FAULT_DETECTION:I

.field public static final CURRENT_STATUS_FOR_POSITIONING_SERVICE:I = 0x0

.field public static final DEFAULT_VERSION:I = 0x1

.field public static final DIRECT_CALL_SERVICE:I

.field public static final DOUBLE_TAP_MOTION_SERVICE:I

.field public static final FLAT_MOTION_SERVICE:I

.field public static final FLIP_COVER_ACTION_SERVICE:I

.field public static final GESTURE_APPROACH_SERVICE:I

.field public static final GYROSCOPE_SENSOR_SERVICE:I

.field public static final GYRO_TEMPERATURE_SERVICE:I

.field public static final LIFE_LOG_COMPONENT_SERVICE:I

.field public static final LIFE_LOG_SERVICE:I

.field public static final LOCATION_SERVICE:I

.field public static final LOG_LEVEL_DEBUG:I

.field public static final LOG_LEVEL_ERROR:I

.field public static final LOG_LEVEL_INFO:I

.field public static final LOG_LEVEL_TRACE:I

.field public static final LOG_LEVEL_WARN:I

.field public static final LPP_SERVICE:I

.field public static final MAGNETIC_SENSOR_SERVICE:I

.field public static final MOTION_SERVICE:I

.field public static final MOVEMENT_ALERT_SERVICE:I

.field public static final MOVEMENT_FOR_POSITIONING_SERVICE:I

.field public static final MOVEMENT_SERVICE:I

.field public static final MOVING_SERVICE:I

.field public static final ORIENTATION_SENSOR_SERVICE:I

.field public static final OTHER_VERSION:I = 0x2

.field public static final PEDOMETER_SERVICE:I

.field public static final POWER_NOTI_SERVICE:I

.field public static final PROPERTY_ABNORMAL_SHOCK_DURATION:I = 0x2d

.field public static final PROPERTY_ABNORMAL_SHOCK_STRENGTH:I = 0x2c

.field public static final PROPERTY_ABNORMAL_SHOCK_USER_ACTION:I = 0x2e

.field public static final PROPERTY_ACTIVITY_TRACKER_EXTANDED_INTTERUPT_MODE_ACTIVITY:I = 0x26

.field public static final PROPERTY_ACTIVITY_TRACKER_EXTANDED_INTTERUPT_MODE_PERIOD:I = 0x27

.field public static final PROPERTY_ACTIVITY_TRACKER_INTTERUPT_MODE_ACTIVITY:I = 0x25

.field public static final PROPERTY_AUTOROTATION_DEVICETYPE:I = 0x8

.field public static final PROPERTY_CAPTURE_MOTION_IN_SAMPLING_NUM:I = 0x29

.field public static final PROPERTY_CAPTURE_MOTION_ORIENTATION_MAXIMUM_ANGLE:I = 0x28

.field public static final PROPERTY_CAPTURE_MOTION_ORIENTATION_MINIMUM_ANGLE:I = 0x27

.field public static final PROPERTY_CAPTURE_MOTION_OUT_SAMPLING_NUM:I = 0x2a

.field public static final PROPERTY_CAPTURE_MOTION_TILT_MAXIMUM_ANGLE:I = 0x26

.field public static final PROPERTY_CAPTURE_MOTION_TILT_MINIMUM_ANGLE:I = 0x25

.field public static final PROPERTY_CARE_GIVER_DURATION:I = 0x29

.field public static final PROPERTY_CARE_GIVER_STRENGTH:I = 0x28

.field public static final PROPERTY_ENVIRONMENT_SENSOR_INTERVAL:I = 0xd

.field public static final PROPERTY_LIFE_LOG_COMPONENT_STAYING_AREA_RADIUS:I = 0x1f

.field public static final PROPERTY_LIFE_LOG_COMPONENT_STAYING_RADIUS:I = 0x1e

.field public static final PROPERTY_LIFE_LOG_COMPONENT_STOP_PERIOD:I = 0x1c

.field public static final PROPERTY_LIFE_LOG_COMPONENT_WAIT_PERIOD:I = 0x1d

.field public static final PROPERTY_LIFE_LOG_LPP_RESOLUTION:I = 0x20

.field public static final PROPERTY_LIFE_LOG_STAYING_AREA_RADIUS:I = 0x1f

.field public static final PROPERTY_LIFE_LOG_STAYING_RADIUS:I = 0x1e

.field public static final PROPERTY_LIFE_LOG_STAYING_STOP_PERIOD:I = 0x1c

.field public static final PROPERTY_LIFE_LOG_STAYING_WAIT_PERIOD:I = 0x1d

.field public static final PROPERTY_LOCATION_ACCURACY:I = 0x1

.field public static final PROPERTY_LOCATION_HEIGHT:I = 0x3

.field public static final PROPERTY_LOCATION_WEIGHT:I = 0x2

.field public static final PROPERTY_LPP_RESOLUTION:I = 0x20

.field public static final PROPERTY_MOVEMENT_FOR_POSITIONING_MOVE_DISTANCE:I = 0xc

.field public static final PROPERTY_MOVEMENT_FOR_POSITIONING_MOVE_DURATION:I = 0xa

.field public static final PROPERTY_MOVEMENT_FOR_POSITIONING_MOVE_MIN_DURATION:I = 0xb

.field public static final PROPERTY_MOVEMENT_FOR_POSITIONING_NOMOVE_DURATION:I = 0x9

.field public static final PROPERTY_PEDOMETER_CURRENT_INFO_COLLECTION_TIME:I = 0x13

.field public static final PROPERTY_PEDOMETER_DELIVERY_COUNT:I = 0x11

.field public static final PROPERTY_PEDOMETER_GENDER:I = 0x6

.field public static final PROPERTY_PEDOMETER_HEIGHT:I = 0x5

.field public static final PROPERTY_PEDOMETER_WEIGHT:I = 0x4

.field public static final PROPERTY_POI_CREATION_DB_SETTING:I = 0x1b

.field public static final PROPERTY_SENSORHUB_TIMER_COUNT:I = 0x1a

.field public static final PROPERTY_SHAKE_MOTION_DURATION:I = 0xf

.field public static final PROPERTY_SHAKE_MOTION_STRENGTH:I = 0xe

.field public static final PROPERTY_SLEEP_MONITOR_SAMPLING_INTERVAL:I = 0x2b

.field public static final PROPERTY_SLEEP_MONITOR_SENSIBILITY:I = 0x2a

.field public static final PROPERTY_SPECIFIC_POSE_ALERT_MAXIMUM_ANGLE:I = 0x23

.field public static final PROPERTY_SPECIFIC_POSE_ALERT_MINUMUM_ANGLE:I = 0x22

.field public static final PROPERTY_SPECIFIC_POSE_ALERT_MOVING_THRS:I = 0x24

.field public static final PROPERTY_SPECIFIC_POSE_ALERT_RETENTION_TIME:I = 0x21

.field public static final PROPERTY_STAYING_ALERT_STOP_PERIOD:I = 0x17

.field public static final PROPERTY_STAYING_ALERT_WAIT_PERIOD:I = 0x18

.field public static final PROPERTY_STEPCOUNTALERT_STEPCOUNT:I = 0x7

.field public static final PROPERTY_STEP_COUNT_TIMER_STEPCOUNT:I = 0x19

.field public static final PROPERTY_TEMPERATURE_ALERT_HIGH_TEMPERATURE:I = 0x15

.field public static final PROPERTY_TEMPERATURE_ALERT_IS_INCLUDING:I = 0x16

.field public static final PROPERTY_TEMPERATURE_ALERT_LOW_TEMPERATURE:I = 0x14

.field public static final PROPERTY_TEST_AGGREATION_SHAKE_MOTION_DURATION:I = 0xf

.field public static final PROPERTY_TEST_AGGREATION_SHAKE_MOTION_STRENGTH:I = 0xe

.field public static final PROPERTY_WAKE_UP_VOICE_SOUND_SOURCE_AM:I = 0x10

.field public static final PROPERTY_WAKE_UP_VOICE_SOUND_SOURCE_GRAMMER:I = 0x12

.field public static final PUT_DOWN_MOTION_SERVICE:I

.field public static final RAW_BAROMETER_SENSOR_SERVICE:I

.field public static final RAW_GPS_SERVICE:I

.field public static final RAW_SATELLITE_SERVICE:I

.field public static final RAW_TEMPERATURE_HUMIDITY_SENSOR_SERVICE:I

.field public static final RAW_WPS_SERVICE:I

.field public static final REQUEST_ACTIVITY_TRACKER_CURRENT_INFO:I

.field public static final REQUEST_MOVEMENT_FOR_POSITIONING_CURRENT_STATUS:I

.field public static final REQUEST_PEDOMETER_CURRENT_INFO:I

.field public static final REQUEST_SLEEP_MONITOR_CURRENT_INFO:I

.field public static final SHAKE_MOTION_SERVICE:I

.field public static final SIDE_PRESS_MOTION_SERVICE:I

.field public static final SLEEP_MONITOR_SERVICE:I

.field public static final SPECIFIC_POSE_ALERT_SERVICE:I

.field public static final STAYING_ALERT_SERVICE:I

.field public static final STEP_COUNT_ALERT_SERVICE:I

.field public static final STOP_ALERT_SERVICE:I

.field private static final TAG:Ljava/lang/String; = "CAE"

.field public static final TEMPERATURE_ALERT_SERVICE:I

.field public static final TEMPERATURE_HUMIDITY_SERVICE:I

.field public static final TEST_FLAT_MOTION_SERVICE:I

.field public static final WAKE_UP_VOICE_SERVICE:I

.field public static final WRIST_UP_MOTION_SERVICE:I


# instance fields
.field private final mCaListenerForTest:Landroid/hardware/contextaware/manager/ContextAwareListener;

.field private final mContextAwareService:Landroid/hardware/contextaware/manager/IContextAwareService;

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_LOCATION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->LOCATION_SERVICE:I

    .line 53
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_MOVING:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->MOVING_SERVICE:I

    .line 57
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_LPP:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->LPP_SERVICE:I

    .line 60
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_TEMPERATURE_HUMIDITY:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_HUMIDITY_SERVICE:I

    .line 64
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_LIFE_LOG:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    .line 68
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PEDOMETER:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    .line 72
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_GPS:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->RAW_GPS_SERVICE:I

    .line 76
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_SATELLITE:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->RAW_SATELLITE_SERVICE:I

    .line 80
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_WPS:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->RAW_WPS_SERVICE:I

    .line 84
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_BEST_LOCATION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->BEST_LOCATION_SERVICE:I

    .line 88
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_ACCELEROMETER_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->ACCELEROMETER_SENSOR_SERVICE:I

    .line 92
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_ORIENTATION_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->ORIENTATION_SENSOR_SERVICE:I

    .line 96
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_MAGNETIC_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->MAGNETIC_SENSOR_SERVICE:I

    .line 100
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_GYROSCOPE_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->GYROSCOPE_SENSOR_SERVICE:I

    .line 104
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_GESTURE_APPROACH:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:I

    .line 108
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_STEP_COUNT_ALERT:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    .line 112
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MOTION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->MOTION_SERVICE:I

    .line 116
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MOVEMENT:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_SERVICE:I

    .line 120
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_AUTO_ROTATION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    .line 124
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_POWER_NOTI:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->POWER_NOTI_SERVICE:I

    .line 128
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->APDR_SERVICE:I

    .line 132
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MOVEMENT_FOR_POSITIONING:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    .line 136
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_DIRECT_CALL:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->DIRECT_CALL_SERVICE:I

    .line 140
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_STOP_ALERT:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->STOP_ALERT_SERVICE:I

    .line 144
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_RAW_TEMPERATURE_HUMIDITY_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->RAW_TEMPERATURE_HUMIDITY_SENSOR_SERVICE:I

    .line 148
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_RAW_BAROMETER_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->RAW_BAROMETER_SENSOR_SERVICE:I

    .line 152
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CALL_POSE:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->CALL_POSE_SERVICE:I

    .line 156
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SHAKE_MOTION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    .line 160
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CARE_GIVER:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->CARE_GIVER_SERVICE:I

    .line 164
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ABNORMAL_SHOCK:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->ABNORMAL_SHOCK_SERVICE:I

    .line 168
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_FLIP_COVER_ACTION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->FLIP_COVER_ACTION_SERVICE:I

    .line 172
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_GYRO_TEMPERATURE:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->GYRO_TEMPERATURE_SERVICE:I

    .line 176
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PUT_DOWN_MOTION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->PUT_DOWN_MOTION_SERVICE:I

    .line 180
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_WAKE_UP_VOICE:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    .line 184
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_BOUNCE_SHORT_MOTION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->BOUNCE_SHORT_MOTION_SERVICE:I

    .line 188
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_BOUNCE_LONG_MOTION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->BOUNCE_LONG_MOTION_SERVICE:I

    .line 192
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_WRIST_UP_MOTION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->WRIST_UP_MOTION_SERVICE:I

    .line 196
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_FLAT_MOTION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->FLAT_MOTION_SERVICE:I

    .line 200
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MOVEMENT_ALERT:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_ALERT_SERVICE:I

    .line 204
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_TEST_FLAT_MOTION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->TEST_FLAT_MOTION_SERVICE:I

    .line 208
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_TEMPERATURE_ALERT:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    .line 212
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_STAYING_ALERT:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->STAYING_ALERT_SERVICE:I

    .line 216
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_LIFE_LOG_COMPONENT:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->LIFE_LOG_COMPONENT_SERVICE:I

    .line 220
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_SERVICE:I

    .line 224
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER_INTERRUPT:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    .line 228
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER_BATCH:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_BATCH_SERVICE:I

    .line 232
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER_EXTANDED_INTERRUPT:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

    .line 236
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SPECIFIC_POSE_ALERT:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    .line 240
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SLEEP_MONITOR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->SLEEP_MONITOR_SERVICE:I

    .line 244
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CAPTURE_MOTION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->CAPTURE_MOTION_SERVICE:I

    .line 248
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CALL_MOTION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->CALL_MOTION_SERVICE:I

    .line 252
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SIDE_PRESS_MOTION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->SIDE_PRESS_MOTION_SERVICE:I

    .line 256
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_DOUBLE_TAP_MOTION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->DOUBLE_TAP_MOTION_SERVICE:I

    .line 260
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->CMD_PROCESS_FAULT_DETECTION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->CMD_PROCESS_FAULT_DETECTION:I

    .line 264
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->REQUEST_SENSORHUB_MOVEMENT_FOR_POSITIONING_CURRENT_STATUS:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->REQUEST_MOVEMENT_FOR_POSITIONING_CURRENT_STATUS:I

    .line 268
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->REQUEST_SENSORHUB_PEDOMETER_CURRENT_INFO:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->REQUEST_PEDOMETER_CURRENT_INFO:I

    .line 272
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->REQUEST_SENSORHUB_ACTIVITY_TRACKER_CURRENT_INFO:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->REQUEST_ACTIVITY_TRACKER_CURRENT_INFO:I

    .line 276
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->REQUEST_SENSORHUB_SLEEP_MONITOR_CURRENT_INFO:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->REQUEST_SLEEP_MONITOR_CURRENT_INFO:I

    .line 460
    sget-object v0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->TRACE:Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->LOG_LEVEL_TRACE:I

    .line 463
    sget-object v0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->DEBUG:Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->LOG_LEVEL_DEBUG:I

    .line 466
    sget-object v0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->INFO:Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->LOG_LEVEL_INFO:I

    .line 469
    sget-object v0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->WARN:Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->LOG_LEVEL_WARN:I

    .line 472
    sget-object v0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->ERROR:Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->LOG_LEVEL_ERROR:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/ContextAwareManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1129
    new-instance v0, Landroid/hardware/contextaware/ContextAwareManager$1;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/ContextAwareManager$1;-><init>(Landroid/hardware/contextaware/ContextAwareManager;)V

    iput-object v0, p0, Landroid/hardware/contextaware/ContextAwareManager;->mCaListenerForTest:Landroid/hardware/contextaware/manager/ContextAwareListener;

    .line 496
    const-string v0, "context_aware"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/manager/IContextAwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/contextaware/manager/IContextAwareService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/contextaware/ContextAwareManager;->mContextAwareService:Landroid/hardware/contextaware/manager/IContextAwareService;

    .line 499
    iput-object p1, p0, Landroid/hardware/contextaware/ContextAwareManager;->mMainLooper:Landroid/os/Looper;

    .line 500
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/contextaware/ContextAwareManager;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/ContextAwareManager;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/hardware/contextaware/ContextAwareManager;->mMainLooper:Landroid/os/Looper;

    return-object v0
.end method

.method private getListnerDelegate(Landroid/hardware/contextaware/manager/ContextAwareListener;)Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;
    .locals 4
    .param p1, "listener"    # Landroid/hardware/contextaware/manager/ContextAwareListener;

    .prologue
    .line 593
    if-nez p1, :cond_1

    .line 594
    const/4 v0, 0x0

    .line 608
    :cond_0
    :goto_0
    return-object v0

    .line 597
    :cond_1
    const/4 v0, 0x0

    .line 599
    .local v0, "caListener":Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;
    iget-object v3, p0, Landroid/hardware/contextaware/ContextAwareManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 600
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 601
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;

    .line 602
    .local v1, "delegate":Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;
    invoke-virtual {v1}, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;->getListener()Landroid/hardware/contextaware/manager/ContextAwareListener;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 603
    move-object v0, v1

    .line 604
    goto :goto_0
.end method

.method private setCAProperty(IILandroid/hardware/contextaware/manager/ContextAwarePropertyBundle;)Z
    .locals 3
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "propertyObj"    # Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .prologue
    .line 895
    const/4 v1, 0x0

    .line 898
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Landroid/hardware/contextaware/ContextAwareManager;->mContextAwareService:Landroid/hardware/contextaware/manager/IContextAwareService;

    invoke-interface {v2, p1, p2, p3}, Landroid/hardware/contextaware/manager/IContextAwareService;->setCAProperty(IILandroid/hardware/contextaware/manager/ContextAwarePropertyBundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 904
    :goto_0
    return v1

    .line 900
    :catch_0
    move-exception v0

    .line 901
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final getContextInfo(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/contextaware/manager/ContextAwareListener;
    .param p2, "askInfo"    # I

    .prologue
    .line 572
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/ContextAwareManager;->getListnerDelegate(Landroid/hardware/contextaware/manager/ContextAwareListener;)Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;

    move-result-object v0

    .line 573
    .local v0, "caListener":Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;
    if-nez v0, :cond_0

    .line 574
    new-instance v0, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;

    .end local v0    # "caListener":Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;
    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;-><init>(Landroid/hardware/contextaware/ContextAwareManager;Landroid/hardware/contextaware/manager/ContextAwareListener;Landroid/os/Handler;)V

    .line 578
    .restart local v0    # "caListener":Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/hardware/contextaware/ContextAwareManager;->mContextAwareService:Landroid/hardware/contextaware/manager/IContextAwareService;

    invoke-interface {v2, v0, p2}, Landroid/hardware/contextaware/manager/IContextAwareService;->getContextInfo(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    :goto_0
    return-void

    .line 579
    :catch_0
    move-exception v1

    .line 580
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CAE"

    const-string v3, "RemoteException in getContextInfo: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final getVersion()I
    .locals 3

    .prologue
    .line 1162
    const/4 v1, 0x0

    .line 1164
    .local v1, "version":I
    :try_start_0
    iget-object v2, p0, Landroid/hardware/contextaware/ContextAwareManager;->mContextAwareService:Landroid/hardware/contextaware/manager/IContextAwareService;

    invoke-interface {v2}, Landroid/hardware/contextaware/manager/IContextAwareService;->getVersion()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1168
    :goto_0
    return v1

    .line 1165
    :catch_0
    move-exception v0

    .line 1166
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final initializeAutoTest()V
    .locals 2

    .prologue
    .line 1036
    :try_start_0
    iget-object v1, p0, Landroid/hardware/contextaware/ContextAwareManager;->mContextAwareService:Landroid/hardware/contextaware/manager/IContextAwareService;

    invoke-interface {v1}, Landroid/hardware/contextaware/manager/IContextAwareService;->initializeAutoTest()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1040
    :goto_0
    return-void

    .line 1037
    :catch_0
    move-exception v0

    .line 1038
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/contextaware/manager/ContextAwareListener;
    .param p2, "service"    # I

    .prologue
    .line 512
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/ContextAwareManager;->getListnerDelegate(Landroid/hardware/contextaware/manager/ContextAwareListener;)Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;

    move-result-object v0

    .line 513
    .local v0, "caListener":Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;
    if-nez v0, :cond_0

    .line 514
    new-instance v0, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;

    .end local v0    # "caListener":Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;
    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;-><init>(Landroid/hardware/contextaware/ContextAwareManager;Landroid/hardware/contextaware/manager/ContextAwareListener;Landroid/os/Handler;)V

    .line 515
    .restart local v0    # "caListener":Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;
    iget-object v2, p0, Landroid/hardware/contextaware/ContextAwareManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/hardware/contextaware/ContextAwareManager;->mContextAwareService:Landroid/hardware/contextaware/manager/IContextAwareService;

    invoke-interface {v2, v0, p2}, Landroid/hardware/contextaware/manager/IContextAwareService;->registerCallback(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :goto_0
    return-void

    .line 520
    :catch_0
    move-exception v1

    .line 521
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CAE"

    const-string v3, "RemoteException in registerListener: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final resetCAService(I)V
    .locals 2
    .param p1, "service"    # I

    .prologue
    .line 915
    :try_start_0
    iget-object v1, p0, Landroid/hardware/contextaware/ContextAwareManager;->mContextAwareService:Landroid/hardware/contextaware/manager/IContextAwareService;

    invoke-interface {v1, p1}, Landroid/hardware/contextaware/manager/IContextAwareService;->resetCAService(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    :goto_0
    return-void

    .line 916
    :catch_0
    move-exception v0

    .line 917
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final setCALogger(ZZIZ)V
    .locals 2
    .param p1, "isConsole"    # Z
    .param p2, "isFile"    # Z
    .param p3, "level"    # I
    .param p4, "isCaller"    # Z

    .prologue
    .line 1024
    :try_start_0
    iget-object v1, p0, Landroid/hardware/contextaware/ContextAwareManager;->mContextAwareService:Landroid/hardware/contextaware/manager/IContextAwareService;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/hardware/contextaware/manager/IContextAwareService;->setCALogger(ZZIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1029
    :goto_0
    return-void

    .line 1026
    :catch_0
    move-exception v0

    .line 1027
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final setCAProperty(IID)Z
    .locals 3
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # D

    .prologue
    .line 696
    new-instance v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 697
    .local v0, "propertyObj":Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getDoubleTypeCode()I

    move-result v1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 698
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IILandroid/hardware/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(IIF)Z
    .locals 3
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # F

    .prologue
    .line 678
    new-instance v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 679
    .local v0, "propertyObj":Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getFloatTypeCode()I

    move-result v1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 680
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IILandroid/hardware/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(III)Z
    .locals 3
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # I

    .prologue
    .line 642
    new-instance v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 643
    .local v0, "propertyObj":Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getIntegerTypeCode()I

    move-result v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 644
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IILandroid/hardware/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(IIJ)Z
    .locals 3
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # J

    .prologue
    .line 660
    new-instance v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 661
    .local v0, "propertyObj":Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getLongTypeCode()I

    move-result v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 662
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IILandroid/hardware/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(IILjava/lang/String;)Z
    .locals 2
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 714
    new-instance v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 715
    .local v0, "propertyObj":Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getStringTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 716
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IILandroid/hardware/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(IILjava/util/ArrayList;)Z
    .locals 2
    .param p1, "service"    # I
    .param p2, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 859
    .local p3, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 860
    .local v0, "propertyObj":Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getIntegerArrayListTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 861
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IILandroid/hardware/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(IILjava/util/HashSet;)Z
    .locals 2
    .param p1, "service"    # I
    .param p2, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 877
    .local p3, "value":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 878
    .local v0, "propertyObj":Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getIntegerHashSetTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 879
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IILandroid/hardware/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(IIZ)Z
    .locals 3
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # Z

    .prologue
    .line 624
    new-instance v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 625
    .local v0, "propertyObj":Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getBooleanTypeCode()I

    move-result v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 626
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IILandroid/hardware/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[B)Z
    .locals 3
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # [B

    .prologue
    .line 732
    new-instance v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 733
    .local v0, "propertyObj":Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getStringTypeCode()I

    move-result v1

    invoke-static {p3}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->byteArrToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 735
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IILandroid/hardware/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[C)Z
    .locals 2
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # [C

    .prologue
    .line 751
    new-instance v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 752
    .local v0, "propertyObj":Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getCharArrayTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 753
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IILandroid/hardware/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[D)Z
    .locals 2
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # [D

    .prologue
    .line 823
    new-instance v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 824
    .local v0, "propertyObj":Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getDoubleArrayTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 825
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IILandroid/hardware/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[F)Z
    .locals 2
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # [F

    .prologue
    .line 805
    new-instance v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 806
    .local v0, "propertyObj":Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getFloatArrayTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 807
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IILandroid/hardware/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[I)Z
    .locals 2
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # [I

    .prologue
    .line 769
    new-instance v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 770
    .local v0, "propertyObj":Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getIntegerArrayTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 771
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IILandroid/hardware/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[J)Z
    .locals 2
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # [J

    .prologue
    .line 787
    new-instance v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 788
    .local v0, "propertyObj":Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getLongArrayTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 789
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IILandroid/hardware/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[Ljava/lang/String;)Z
    .locals 2
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # [Ljava/lang/String;

    .prologue
    .line 841
    new-instance v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 842
    .local v0, "propertyObj":Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getStringArrayTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 843
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IILandroid/hardware/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setScenarioForDebugging(IILjava/util/List;Ljava/util/List;)Z
    .locals 6
    .param p1, "testType"    # I
    .param p2, "delayTime"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<[B>;)Z"
        }
    .end annotation

    .prologue
    .line 1102
    .local p3, "enableService":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "packet":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v3, 0x1

    .line 1104
    .local v3, "result":Z
    if-eqz p3, :cond_0

    .line 1105
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1106
    .local v1, "i":I
    iget-object v4, p0, Landroid/hardware/contextaware/ContextAwareManager;->mCaListenerForTest:Landroid/hardware/contextaware/manager/ContextAwareListener;

    invoke-virtual {p0, v4, v1}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 1111
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    :try_start_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1112
    iget-object v5, p0, Landroid/hardware/contextaware/ContextAwareManager;->mContextAwareService:Landroid/hardware/contextaware/manager/IContextAwareService;

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-interface {v5, p1, p2, v4}, Landroid/hardware/contextaware/manager/IContextAwareService;->setScenarioForDebugging(II[B)Z

    move-result v3

    .line 1114
    if-nez v3, :cond_2

    .line 1115
    const-string v4, "CAE"

    const-string v5, "setScenarioForDebugging error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1116
    const/4 v3, 0x0

    .line 1125
    :cond_1
    :goto_2
    return v3

    .line 1111
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1120
    :catch_0
    move-exception v0

    .line 1121
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 1122
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public final setScenarioForTest(II)Z
    .locals 3
    .param p1, "testType"    # I
    .param p2, "delayTime"    # I

    .prologue
    .line 1076
    const/4 v1, 0x0

    .line 1078
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Landroid/hardware/contextaware/ContextAwareManager;->mContextAwareService:Landroid/hardware/contextaware/manager/IContextAwareService;

    invoke-interface {v2, p1, p2}, Landroid/hardware/contextaware/manager/IContextAwareService;->setScenarioForTest(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1083
    :goto_0
    return v1

    .line 1080
    :catch_0
    move-exception v0

    .line 1081
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final setVersion(I)V
    .locals 2
    .param p1, "version"    # I

    .prologue
    .line 1150
    :try_start_0
    iget-object v1, p0, Landroid/hardware/contextaware/ContextAwareManager;->mContextAwareService:Landroid/hardware/contextaware/manager/IContextAwareService;

    invoke-interface {v1, p1}, Landroid/hardware/contextaware/manager/IContextAwareService;->setVersion(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1154
    :goto_0
    return-void

    .line 1151
    :catch_0
    move-exception v0

    .line 1152
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final startAutoTest()V
    .locals 2

    .prologue
    .line 1047
    :try_start_0
    iget-object v1, p0, Landroid/hardware/contextaware/ContextAwareManager;->mContextAwareService:Landroid/hardware/contextaware/manager/IContextAwareService;

    invoke-interface {v1}, Landroid/hardware/contextaware/manager/IContextAwareService;->startAutoTest()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1051
    :goto_0
    return-void

    .line 1048
    :catch_0
    move-exception v0

    .line 1049
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final stopAutoTest()V
    .locals 2

    .prologue
    .line 1058
    :try_start_0
    iget-object v1, p0, Landroid/hardware/contextaware/ContextAwareManager;->mContextAwareService:Landroid/hardware/contextaware/manager/IContextAwareService;

    invoke-interface {v1}, Landroid/hardware/contextaware/manager/IContextAwareService;->stopAutoTest()V

    .line 1059
    iget-object v1, p0, Landroid/hardware/contextaware/ContextAwareManager;->mCaListenerForTest:Landroid/hardware/contextaware/manager/ContextAwareListener;

    invoke-virtual {p0, v1}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1063
    :goto_0
    return-void

    .line 1060
    :catch_0
    move-exception v0

    .line 1061
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/contextaware/manager/ContextAwareListener;

    .prologue
    .line 532
    invoke-static {}, Landroid/hardware/contextaware/ContextList$ContextType;->values()[Landroid/hardware/contextaware/ContextList$ContextType;

    move-result-object v0

    .local v0, "arr$":[Landroid/hardware/contextaware/ContextList$ContextType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 533
    .local v1, "i":Landroid/hardware/contextaware/ContextList$ContextType;
    invoke-virtual {v1}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    .line 532
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 535
    .end local v1    # "i":Landroid/hardware/contextaware/ContextList$ContextType;
    :cond_0
    return-void
.end method

.method public final unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/contextaware/manager/ContextAwareListener;
    .param p2, "service"    # I

    .prologue
    .line 547
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/ContextAwareManager;->getListnerDelegate(Landroid/hardware/contextaware/manager/ContextAwareListener;)Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;

    move-result-object v0

    .line 548
    .local v0, "caListener":Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;
    if-nez v0, :cond_1

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/hardware/contextaware/ContextAwareManager;->mContextAwareService:Landroid/hardware/contextaware/manager/IContextAwareService;

    invoke-interface {v2, v0, p2}, Landroid/hardware/contextaware/manager/IContextAwareService;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 554
    iget-object v2, p0, Landroid/hardware/contextaware/ContextAwareManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 556
    :catch_0
    move-exception v1

    .line 557
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CAE"

    const-string v3, "RemoteException in unregisterListener: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
