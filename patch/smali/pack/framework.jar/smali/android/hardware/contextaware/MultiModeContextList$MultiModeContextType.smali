.class public enum Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;
.super Ljava/lang/Enum;
.source "MultiModeContextList.java"

# interfaces
.implements Landroid/hardware/contextaware/IParserHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/MultiModeContextList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "MultiModeContextType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;",
        ">;",
        "Landroid/hardware/contextaware/IParserHandler;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;

.field public static final enum SENSORHUB_RUNNER_ACTIVITY_TRACKER:Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    new-instance v0, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType$1;

    const-string v1, "SENSORHUB_RUNNER_ACTIVITY_TRACKER"

    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_ACTIVITY_TRACKER:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER:Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;

    sget-object v1, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER:Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;

    aput-object v1, v0, v3

    sput-object v0, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->$VALUES:[Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput-object p3, p0, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->code:Ljava/lang/String;

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Landroid/hardware/contextaware/MultiModeContextList$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Landroid/hardware/contextaware/MultiModeContextList$1;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->code:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;

    return-object v0
.end method

.method public static values()[Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->$VALUES:[Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getParserHandler()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method
