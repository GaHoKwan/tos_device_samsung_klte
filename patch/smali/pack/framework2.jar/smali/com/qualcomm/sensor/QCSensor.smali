.class public Lcom/qualcomm/sensor/QCSensor;
.super Ljava/lang/Object;
.source "QCSensor.java"

# interfaces
.implements Lcom/qualcomm/snapdragon/util/QCCapabilitiesInterface;


# static fields
.field public static BASIC_GESTURE_PULL_V01:I

.field public static BASIC_GESTURE_PUSH_V01:I

.field public static BASIC_GESTURE_SHAKE_AXIS_BOTTOM_V01:I

.field public static BASIC_GESTURE_SHAKE_AXIS_LEFT_V01:I

.field public static BASIC_GESTURE_SHAKE_AXIS_RIGHT_V01:I

.field public static BASIC_GESTURE_SHAKE_AXIS_TOP_V01:I

.field public static FACING_DOWN_V01:I

.field public static FACING_UP_V01:I

.field public static GYRO_TAP_BOTTOM_V01:I

.field public static GYRO_TAP_LEFT_V01:I

.field public static GYRO_TAP_RIGHT_V01:I

.field public static GYRO_TAP_TOP_V01:I

.field private static KEY_EVENT_TYPES:Ljava/lang/String;

.field private static KEY_SENSOR_TYPES:Ljava/lang/String;

.field private static QC_SENSOR_TYPE_BASE:I

.field public static SENSOR_TYPE_BASIC_GESTURES:I

.field public static SENSOR_TYPE_FACING:I

.field public static SENSOR_TYPE_TAP:I

.field public static SENSOR_TYPE_TILT:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const-string v0, "key_sensor_types"

    sput-object v0, Lcom/qualcomm/sensor/QCSensor;->KEY_SENSOR_TYPES:Ljava/lang/String;

    const-string v0, "key_event_types"

    sput-object v0, Lcom/qualcomm/sensor/QCSensor;->KEY_EVENT_TYPES:Ljava/lang/String;

    const v0, 0x1fa2638

    sput v0, Lcom/qualcomm/sensor/QCSensor;->QC_SENSOR_TYPE_BASE:I

    sget v0, Lcom/qualcomm/sensor/QCSensor;->QC_SENSOR_TYPE_BASE:I

    sput v0, Lcom/qualcomm/sensor/QCSensor;->SENSOR_TYPE_BASIC_GESTURES:I

    sget v0, Lcom/qualcomm/sensor/QCSensor;->QC_SENSOR_TYPE_BASE:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/qualcomm/sensor/QCSensor;->SENSOR_TYPE_TAP:I

    sget v0, Lcom/qualcomm/sensor/QCSensor;->QC_SENSOR_TYPE_BASE:I

    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/qualcomm/sensor/QCSensor;->SENSOR_TYPE_FACING:I

    sget v0, Lcom/qualcomm/sensor/QCSensor;->QC_SENSOR_TYPE_BASE:I

    add-int/lit8 v0, v0, 0x3

    sput v0, Lcom/qualcomm/sensor/QCSensor;->SENSOR_TYPE_TILT:I

    sput v1, Lcom/qualcomm/sensor/QCSensor;->BASIC_GESTURE_PUSH_V01:I

    sput v2, Lcom/qualcomm/sensor/QCSensor;->BASIC_GESTURE_PULL_V01:I

    sput v3, Lcom/qualcomm/sensor/QCSensor;->BASIC_GESTURE_SHAKE_AXIS_LEFT_V01:I

    sput v4, Lcom/qualcomm/sensor/QCSensor;->BASIC_GESTURE_SHAKE_AXIS_RIGHT_V01:I

    const/4 v0, 0x5

    sput v0, Lcom/qualcomm/sensor/QCSensor;->BASIC_GESTURE_SHAKE_AXIS_TOP_V01:I

    const/4 v0, 0x6

    sput v0, Lcom/qualcomm/sensor/QCSensor;->BASIC_GESTURE_SHAKE_AXIS_BOTTOM_V01:I

    sput v1, Lcom/qualcomm/sensor/QCSensor;->GYRO_TAP_LEFT_V01:I

    sput v2, Lcom/qualcomm/sensor/QCSensor;->GYRO_TAP_RIGHT_V01:I

    sput v3, Lcom/qualcomm/sensor/QCSensor;->GYRO_TAP_TOP_V01:I

    sput v4, Lcom/qualcomm/sensor/QCSensor;->GYRO_TAP_BOTTOM_V01:I

    sput v1, Lcom/qualcomm/sensor/QCSensor;->FACING_UP_V01:I

    sput v2, Lcom/qualcomm/sensor/QCSensor;->FACING_DOWN_V01:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCapabilities()Landroid/os/Bundle;
    .locals 5

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "SENSOR_TYPE_BASIC_GESTURES"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "SENSOR_TYPE_TAP"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "SENSOR_TYPE_FACING"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "SENSOR_TYPE_TILT"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/qualcomm/sensor/QCSensor;->KEY_SENSOR_TYPES:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "BASIC_GESTURE_PUSH_V01"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "BASIC_GESTURE_PULL_V01"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "BASIC_GESTURE_SHAKE_AXIS_LEFT_V01"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "BASIC_GESTURE_SHAKE_AXIS_RIGHT_V01"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "BASIC_GESTURE_SHAKE_AXIS_TOP_V01"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "BASIC_GESTURE_SHAKE_AXIS_BOTTOM_V01"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "GYRO_TAP_LEFT_V01"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "GYRO_TAP_RIGHT_V01"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "GYRO_TAP_TOP_V01"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "GYRO_TAP_BOTTOM_V01"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "FACING_UP_V01"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "FACING_DOWN_V01"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/qualcomm/sensor/QCSensor;->KEY_EVENT_TYPES:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "key_constant_field_values"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method
