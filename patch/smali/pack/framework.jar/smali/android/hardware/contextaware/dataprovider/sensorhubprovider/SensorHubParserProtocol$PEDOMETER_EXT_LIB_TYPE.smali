.class public final enum Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;
.super Ljava/lang/Enum;
.source "SensorHubParserProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PEDOMETER_EXT_LIB_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;

.field public static final enum PEDOMETER_CURRENT_INFO:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;


# instance fields
.field protected value:B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 367
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;

    const-string v1, "PEDOMETER_CURRENT_INFO"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;->PEDOMETER_CURRENT_INFO:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;

    .line 364
    new-array v0, v3, [Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;

    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;->PEDOMETER_CURRENT_INFO:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;

    aput-object v1, v0, v2

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;->$VALUES:[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .param p3, "value"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .prologue
    .line 378
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 379
    iput-byte p3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;->value:B

    .line 380
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 364
    const-class v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;

    return-object v0
.end method

.method public static values()[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;
    .locals 1

    .prologue
    .line 364
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;->$VALUES:[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;

    invoke-virtual {v0}, [Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;

    return-object v0
.end method
