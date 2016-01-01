.class public Landroid/hardware/scontext/SContext;
.super Ljava/lang/Object;
.source "SContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContext;",
            ">;"
        }
    .end annotation
.end field

.field static final REPORTING_MODE_BATCH:I = 0x5

.field static final REPORTING_MODE_CONTINUOUS:I = 0x1

.field static final REPORTING_MODE_ONE_SHOT:I = 0x2

.field static final REPORTING_MODE_ON_CHANGE:I = 0x3

.field static final REPORTING_MODE_ON_CHANGE_AND_INITIAL_INFO:I = 0x4

.field public static final TYPE_ACTIVITY_BATCH:I = 0x1a

.field public static final TYPE_ACTIVITY_LOCATION_LOGGING:I = 0x18

.field public static final TYPE_ACTIVITY_NOTIFICATION:I = 0x1b

.field public static final TYPE_ACTIVITY_NOTIFICATION_EX:I = 0x1e

.field public static final TYPE_ACTIVITY_TRACKER:I = 0x19

.field public static final TYPE_AIRMOTION:I = 0x7

.field public static final TYPE_APPROACH:I = 0x1

.field public static final TYPE_AUTO_ROTATION:I = 0x6

.field public static final TYPE_BOUNCE_LONG_MOTION:I = 0x12

.field public static final TYPE_BOUNCE_SHORT_MOTION:I = 0x11

.field public static final TYPE_CALL_MOTION:I = 0x20

.field public static final TYPE_CALL_POSE:I = 0xb

.field public static final TYPE_CAPTURE_MOTION:I = 0x1f

.field public static final TYPE_CURRENT_STATUS_FOR_POSITIONING:I = 0xa

.field public static final TYPE_DOUBLE_TAP_MOTION:I = 0x21

.field public static final TYPE_ENVIRONMENT:I = 0x8

.field public static final TYPE_FLAT_MOTION:I = 0x14

.field public static final TYPE_FLIP_COVER_ACTION:I = 0xd

.field public static final TYPE_GYRO_TEMPERATURE:I = 0xe

.field public static final TYPE_MOTION:I = 0x4

.field public static final TYPE_MOVEMENT:I = 0x5

.field public static final TYPE_MOVEMENT_ALERT:I = 0x15

.field public static final TYPE_MOVEMENT_FOR_POSITIONING:I = 0x9

.field public static final TYPE_PEDOMETER:I = 0x2

.field public static final TYPE_PUT_DOWN_MOTION:I = 0xf

.field public static final TYPE_SHAKE_MOTION:I = 0xc

.field public static final TYPE_SIDE_PRESS_MOTION:I = 0x22

.field public static final TYPE_SLEEP_MONITOR:I = 0x1d

.field public static final TYPE_SPECIFIC_POSE_ALERT:I = 0x1c

.field public static final TYPE_STEP_COUNT_ALERT:I = 0x3

.field public static final TYPE_TEMPERATURE_ALERT:I = 0x17

.field public static final TYPE_TEST_FLAT_MOTION:I = 0x16

.field public static final TYPE_WAKE_UP_VOICE:I = 0x10

.field public static final TYPE_WRIST_UP_MOTION:I = 0x13

.field private static final sServiceList:[Ljava/lang/String;

.field private static final sServiceReportingModes:[I


# instance fields
.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x22

    .line 145
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Approach"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Pedometer"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Step Count Alert"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Motion"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Movement"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Auto Rotation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Air Motion"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Environment"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Movemnt For Positioning"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Current Status For Positioning"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Call Pose"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Shake Motion"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Flip Cover Action"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Gyro Temperature"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Put Down Motion"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Wake Up Voice"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Bounce Short Motion"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Bounce Long Motion"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Wrist Up Motion"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Flat Motion"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Movement Alert"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Test Flat Motion"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Temperature Alert"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Activity Location Logging"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Activity Tracker"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Activity Batch"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Activity Notification"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Specific Pose Alert"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Sleep Monitor"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Activity Notification Ex"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Capture Motion"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Call Motion"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Double Tap Motion"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Side Press Motion"

    aput-object v2, v0, v1

    sput-object v0, Landroid/hardware/scontext/SContext;->sServiceList:[Ljava/lang/String;

    .line 158
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/hardware/scontext/SContext;->sServiceReportingModes:[I

    .line 261
    new-instance v0, Landroid/hardware/scontext/SContext$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContext$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 158
    nop

    :array_0
    .array-data 4
        0x3
        0x3
        0x2
        0x3
        0x2
        0x4
        0x3
        0x1
        0x3
        0x3
        0x3
        0x3
        0x3
        0x1
        0x3
        0x3
        0x3
        0x3
        0x3
        0x4
        0x2
        0x3
        0x2
        0x3
        0x3
        0x5
        0x3
        0x3
        0x5
        0x3
        0x3
        0x3
        0x3
        0x3
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContext;->mType:I

    .line 178
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContext;->readFromParcel(Landroid/os/Parcel;)V

    .line 185
    return-void
.end method

.method static getReportingMode(I)I
    .locals 2
    .param p0, "service"    # I

    .prologue
    .line 208
    sget-object v0, Landroid/hardware/scontext/SContext;->sServiceReportingModes:[I

    array-length v0, v0

    if-gt p0, v0, :cond_0

    .line 209
    sget-object v0, Landroid/hardware/scontext/SContext;->sServiceReportingModes:[I

    add-int/lit8 v1, p0, -0x1

    aget v0, v0, v1

    .line 211
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getServiceName(I)Ljava/lang/String;
    .locals 2
    .param p0, "service"    # I

    .prologue
    .line 194
    sget-object v0, Landroid/hardware/scontext/SContext;->sServiceList:[Ljava/lang/String;

    array-length v0, v0

    if-gt p0, v0, :cond_0

    .line 195
    sget-object v0, Landroid/hardware/scontext/SContext;->sServiceList:[Ljava/lang/String;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    .line 197
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContext;->mType:I

    .line 258
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Landroid/hardware/scontext/SContext;->mType:I

    return v0
.end method

.method setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 230
    iput p1, p0, Landroid/hardware/scontext/SContext;->mType:I

    .line 231
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 248
    iget v0, p0, Landroid/hardware/scontext/SContext;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    return-void
.end method
