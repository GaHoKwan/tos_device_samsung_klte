.class abstract enum Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;
.super Ljava/lang/Enum;
.source "AndroidRunnerConcreteCreator.java"

# interfaces
.implements Landroid/hardware/contextaware/creator/IListObjectCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "AndroidRunnerList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;",
        ">;",
        "Landroid/hardware/contextaware/creator/IListObjectCreator;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

.field public static final enum ACCELEROMETER_SENSOR:Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

.field public static final enum BEST_LOCATION:Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

.field public static final enum GYROSCOPE_SENSOR:Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

.field public static final enum MAGNETIC_SENSOR:Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

.field public static final enum ORIENTATION_SENSOR:Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

.field public static final enum RAW_GPS:Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

.field public static final enum RAW_SATELLITE:Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

.field public static final enum RAW_WPS:Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 44
    new-instance v0, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$1;

    const-string v1, "RAW_GPS"

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_GPS:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->RAW_GPS:Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    .line 64
    new-instance v0, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$2;

    const-string v1, "RAW_WPS"

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_WPS:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->RAW_WPS:Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    .line 84
    new-instance v0, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$3;

    const-string v1, "RAW_SATELLITE"

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_SATELLITE:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->RAW_SATELLITE:Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    .line 104
    new-instance v0, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$4;

    const-string v1, "BEST_LOCATION"

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_BEST_LOCATION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->BEST_LOCATION:Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    .line 124
    new-instance v0, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$5;

    const-string v1, "ACCELEROMETER_SENSOR"

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_ACCELEROMETER_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->ACCELEROMETER_SENSOR:Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    .line 168
    new-instance v0, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$6;

    const-string v1, "ORIENTATION_SENSOR"

    const/4 v2, 0x5

    sget-object v3, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_ORIENTATION_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v3}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->ORIENTATION_SENSOR:Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    .line 212
    new-instance v0, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$7;

    const-string v1, "MAGNETIC_SENSOR"

    const/4 v2, 0x6

    sget-object v3, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_MAGNETIC_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v3}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$7;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->MAGNETIC_SENSOR:Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    .line 255
    new-instance v0, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$8;

    const-string v1, "GYROSCOPE_SENSOR"

    const/4 v2, 0x7

    sget-object v3, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_GYROSCOPE_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v3}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->GYROSCOPE_SENSOR:Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    .line 41
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    sget-object v1, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->RAW_GPS:Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    aput-object v1, v0, v4

    sget-object v1, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->RAW_WPS:Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    aput-object v1, v0, v5

    sget-object v1, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->RAW_SATELLITE:Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    aput-object v1, v0, v6

    sget-object v1, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->BEST_LOCATION:Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    aput-object v1, v0, v7

    sget-object v1, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->ACCELEROMETER_SENSOR:Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->ORIENTATION_SENSOR:Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->MAGNETIC_SENSOR:Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->GYROSCOPE_SENSOR:Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    aput-object v2, v0, v1

    sput-object v0, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->$VALUES:[Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 307
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 308
    iput-object p3, p0, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->name:Ljava/lang/String;

    .line 309
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$1;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    return-object v0
.end method

.method public static values()[Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->$VALUES:[Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;

    return-object v0
.end method


# virtual methods
.method public varargs getObject([Ljava/lang/Object;)Landroid/hardware/contextaware/manager/ContextComponent;
    .locals 1
    .param p1, "property"    # [Ljava/lang/Object;

    .prologue
    .line 331
    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->getObject()Landroid/hardware/contextaware/manager/ContextComponent;

    move-result-object v0

    return-object v0
.end method

.method public getObjectForSubCollection()Landroid/hardware/contextaware/manager/ContextComponent;
    .locals 1

    .prologue
    .line 319
    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->getObject()Landroid/hardware/contextaware/manager/ContextComponent;

    move-result-object v0

    return-object v0
.end method

.method public varargs getObjectForSubCollection([Ljava/lang/Object;)Landroid/hardware/contextaware/manager/ContextComponent;
    .locals 1
    .param p1, "property"    # [Ljava/lang/Object;

    .prologue
    .line 343
    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;->getObjectForSubCollection()Landroid/hardware/contextaware/manager/ContextComponent;

    move-result-object v0

    return-object v0
.end method

.method public removeObject(Ljava/lang/String;)V
    .locals 0
    .param p1, "service"    # Ljava/lang/String;

    .prologue
    .line 355
    # invokes: Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->removeObj(Ljava/lang/String;)Z
    invoke-static {p1}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->access$12100(Ljava/lang/String;)Z

    .line 356
    return-void
.end method
