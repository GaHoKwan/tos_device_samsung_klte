.class final enum Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;
.super Ljava/lang/Enum;
.source "LppLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LocValidity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

.field public static final enum INVALID_ACC:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

.field public static final enum INVALID_TIME:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

.field public static final enum VALID:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    const-string v1, "VALID"

    invoke-direct {v0, v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->VALID:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    .line 95
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    const-string v1, "INVALID_TIME"

    invoke-direct {v0, v1, v3}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->INVALID_TIME:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    .line 96
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    const-string v1, "INVALID_ACC"

    invoke-direct {v0, v1, v4}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->INVALID_ACC:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    .line 93
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->VALID:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    aput-object v1, v0, v2

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->INVALID_TIME:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->INVALID_ACC:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    aput-object v1, v0, v4

    sput-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->$VALUES:[Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 93
    const-class v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    return-object v0
.end method

.method public static values()[Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->$VALUES:[Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    return-object v0
.end method
