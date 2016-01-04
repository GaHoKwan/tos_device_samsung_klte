.class public final enum Lcom/movial/ipphone/IPUtils$EmergencyState;
.super Ljava/lang/Enum;
.source "IPUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/movial/ipphone/IPUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmergencyState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/movial/ipphone/IPUtils$EmergencyState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/movial/ipphone/IPUtils$EmergencyState;

.field public static final enum CS_CALL_CONNECTED:Lcom/movial/ipphone/IPUtils$EmergencyState;

.field public static final enum CS_CALL_DIALING:Lcom/movial/ipphone/IPUtils$EmergencyState;

.field public static final enum CS_CALL_DISCONNECTED:Lcom/movial/ipphone/IPUtils$EmergencyState;

.field public static final enum CS_CALL_FAILED:Lcom/movial/ipphone/IPUtils$EmergencyState;

.field public static final enum CS_TURNING_ON_RADIO:Lcom/movial/ipphone/IPUtils$EmergencyState;

.field public static final enum IDLE:Lcom/movial/ipphone/IPUtils$EmergencyState;

.field public static final enum IMS_CALL_CONNECTED:Lcom/movial/ipphone/IPUtils$EmergencyState;

.field public static final enum IMS_CALL_DIALING:Lcom/movial/ipphone/IPUtils$EmergencyState;

.field public static final enum IMS_CALL_DISCONNECTED:Lcom/movial/ipphone/IPUtils$EmergencyState;

.field public static final enum IMS_CALL_FAILED:Lcom/movial/ipphone/IPUtils$EmergencyState;

.field public static final enum NOT_INITIALIZED:Lcom/movial/ipphone/IPUtils$EmergencyState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 140
    new-instance v0, Lcom/movial/ipphone/IPUtils$EmergencyState;

    const-string v1, "NOT_INITIALIZED"

    invoke-direct {v0, v1, v3}, Lcom/movial/ipphone/IPUtils$EmergencyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/movial/ipphone/IPUtils$EmergencyState;->NOT_INITIALIZED:Lcom/movial/ipphone/IPUtils$EmergencyState;

    .line 141
    new-instance v0, Lcom/movial/ipphone/IPUtils$EmergencyState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v4}, Lcom/movial/ipphone/IPUtils$EmergencyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/movial/ipphone/IPUtils$EmergencyState;->IDLE:Lcom/movial/ipphone/IPUtils$EmergencyState;

    .line 142
    new-instance v0, Lcom/movial/ipphone/IPUtils$EmergencyState;

    const-string v1, "CS_TURNING_ON_RADIO"

    invoke-direct {v0, v1, v5}, Lcom/movial/ipphone/IPUtils$EmergencyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/movial/ipphone/IPUtils$EmergencyState;->CS_TURNING_ON_RADIO:Lcom/movial/ipphone/IPUtils$EmergencyState;

    .line 143
    new-instance v0, Lcom/movial/ipphone/IPUtils$EmergencyState;

    const-string v1, "CS_CALL_DIALING"

    invoke-direct {v0, v1, v6}, Lcom/movial/ipphone/IPUtils$EmergencyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/movial/ipphone/IPUtils$EmergencyState;->CS_CALL_DIALING:Lcom/movial/ipphone/IPUtils$EmergencyState;

    .line 144
    new-instance v0, Lcom/movial/ipphone/IPUtils$EmergencyState;

    const-string v1, "CS_CALL_CONNECTED"

    invoke-direct {v0, v1, v7}, Lcom/movial/ipphone/IPUtils$EmergencyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/movial/ipphone/IPUtils$EmergencyState;->CS_CALL_CONNECTED:Lcom/movial/ipphone/IPUtils$EmergencyState;

    .line 145
    new-instance v0, Lcom/movial/ipphone/IPUtils$EmergencyState;

    const-string v1, "CS_CALL_DISCONNECTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/movial/ipphone/IPUtils$EmergencyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/movial/ipphone/IPUtils$EmergencyState;->CS_CALL_DISCONNECTED:Lcom/movial/ipphone/IPUtils$EmergencyState;

    .line 146
    new-instance v0, Lcom/movial/ipphone/IPUtils$EmergencyState;

    const-string v1, "CS_CALL_FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/movial/ipphone/IPUtils$EmergencyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/movial/ipphone/IPUtils$EmergencyState;->CS_CALL_FAILED:Lcom/movial/ipphone/IPUtils$EmergencyState;

    .line 147
    new-instance v0, Lcom/movial/ipphone/IPUtils$EmergencyState;

    const-string v1, "IMS_CALL_DIALING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/movial/ipphone/IPUtils$EmergencyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/movial/ipphone/IPUtils$EmergencyState;->IMS_CALL_DIALING:Lcom/movial/ipphone/IPUtils$EmergencyState;

    .line 148
    new-instance v0, Lcom/movial/ipphone/IPUtils$EmergencyState;

    const-string v1, "IMS_CALL_CONNECTED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/movial/ipphone/IPUtils$EmergencyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/movial/ipphone/IPUtils$EmergencyState;->IMS_CALL_CONNECTED:Lcom/movial/ipphone/IPUtils$EmergencyState;

    .line 149
    new-instance v0, Lcom/movial/ipphone/IPUtils$EmergencyState;

    const-string v1, "IMS_CALL_DISCONNECTED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/movial/ipphone/IPUtils$EmergencyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/movial/ipphone/IPUtils$EmergencyState;->IMS_CALL_DISCONNECTED:Lcom/movial/ipphone/IPUtils$EmergencyState;

    .line 150
    new-instance v0, Lcom/movial/ipphone/IPUtils$EmergencyState;

    const-string v1, "IMS_CALL_FAILED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/movial/ipphone/IPUtils$EmergencyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/movial/ipphone/IPUtils$EmergencyState;->IMS_CALL_FAILED:Lcom/movial/ipphone/IPUtils$EmergencyState;

    .line 139
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/movial/ipphone/IPUtils$EmergencyState;

    sget-object v1, Lcom/movial/ipphone/IPUtils$EmergencyState;->NOT_INITIALIZED:Lcom/movial/ipphone/IPUtils$EmergencyState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/movial/ipphone/IPUtils$EmergencyState;->IDLE:Lcom/movial/ipphone/IPUtils$EmergencyState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/movial/ipphone/IPUtils$EmergencyState;->CS_TURNING_ON_RADIO:Lcom/movial/ipphone/IPUtils$EmergencyState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/movial/ipphone/IPUtils$EmergencyState;->CS_CALL_DIALING:Lcom/movial/ipphone/IPUtils$EmergencyState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/movial/ipphone/IPUtils$EmergencyState;->CS_CALL_CONNECTED:Lcom/movial/ipphone/IPUtils$EmergencyState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/movial/ipphone/IPUtils$EmergencyState;->CS_CALL_DISCONNECTED:Lcom/movial/ipphone/IPUtils$EmergencyState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/movial/ipphone/IPUtils$EmergencyState;->CS_CALL_FAILED:Lcom/movial/ipphone/IPUtils$EmergencyState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/movial/ipphone/IPUtils$EmergencyState;->IMS_CALL_DIALING:Lcom/movial/ipphone/IPUtils$EmergencyState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/movial/ipphone/IPUtils$EmergencyState;->IMS_CALL_CONNECTED:Lcom/movial/ipphone/IPUtils$EmergencyState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/movial/ipphone/IPUtils$EmergencyState;->IMS_CALL_DISCONNECTED:Lcom/movial/ipphone/IPUtils$EmergencyState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/movial/ipphone/IPUtils$EmergencyState;->IMS_CALL_FAILED:Lcom/movial/ipphone/IPUtils$EmergencyState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/movial/ipphone/IPUtils$EmergencyState;->$VALUES:[Lcom/movial/ipphone/IPUtils$EmergencyState;

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
    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/movial/ipphone/IPUtils$EmergencyState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 139
    const-class v0, Lcom/movial/ipphone/IPUtils$EmergencyState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/movial/ipphone/IPUtils$EmergencyState;

    return-object v0
.end method

.method public static values()[Lcom/movial/ipphone/IPUtils$EmergencyState;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/movial/ipphone/IPUtils$EmergencyState;->$VALUES:[Lcom/movial/ipphone/IPUtils$EmergencyState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/movial/ipphone/IPUtils$EmergencyState;

    return-object v0
.end method
