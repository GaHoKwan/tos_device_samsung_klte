.class public final enum Lcom/movial/ipphone/SessionCall$State;
.super Ljava/lang/Enum;
.source "SessionCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/movial/ipphone/SessionCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/movial/ipphone/SessionCall$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/movial/ipphone/SessionCall$State;

.field public static final enum ACTIVE:Lcom/movial/ipphone/SessionCall$State;

.field public static final enum ALERTING:Lcom/movial/ipphone/SessionCall$State;

.field public static final enum DIALING:Lcom/movial/ipphone/SessionCall$State;

.field public static final enum DISCONNECTED:Lcom/movial/ipphone/SessionCall$State;

.field public static final enum HOLDING:Lcom/movial/ipphone/SessionCall$State;

.field public static final enum INCOMING:Lcom/movial/ipphone/SessionCall$State;

.field public static final enum UNKNOWN:Lcom/movial/ipphone/SessionCall$State;

.field public static final enum WAITING:Lcom/movial/ipphone/SessionCall$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    new-instance v0, Lcom/movial/ipphone/SessionCall$State;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v3}, Lcom/movial/ipphone/SessionCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/movial/ipphone/SessionCall$State;->ACTIVE:Lcom/movial/ipphone/SessionCall$State;

    .line 64
    new-instance v0, Lcom/movial/ipphone/SessionCall$State;

    const-string v1, "HOLDING"

    invoke-direct {v0, v1, v4}, Lcom/movial/ipphone/SessionCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/movial/ipphone/SessionCall$State;->HOLDING:Lcom/movial/ipphone/SessionCall$State;

    .line 65
    new-instance v0, Lcom/movial/ipphone/SessionCall$State;

    const-string v1, "DIALING"

    invoke-direct {v0, v1, v5}, Lcom/movial/ipphone/SessionCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/movial/ipphone/SessionCall$State;->DIALING:Lcom/movial/ipphone/SessionCall$State;

    .line 66
    new-instance v0, Lcom/movial/ipphone/SessionCall$State;

    const-string v1, "ALERTING"

    invoke-direct {v0, v1, v6}, Lcom/movial/ipphone/SessionCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/movial/ipphone/SessionCall$State;->ALERTING:Lcom/movial/ipphone/SessionCall$State;

    .line 67
    new-instance v0, Lcom/movial/ipphone/SessionCall$State;

    const-string v1, "INCOMING"

    invoke-direct {v0, v1, v7}, Lcom/movial/ipphone/SessionCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/movial/ipphone/SessionCall$State;->INCOMING:Lcom/movial/ipphone/SessionCall$State;

    .line 68
    new-instance v0, Lcom/movial/ipphone/SessionCall$State;

    const-string v1, "WAITING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/movial/ipphone/SessionCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/movial/ipphone/SessionCall$State;->WAITING:Lcom/movial/ipphone/SessionCall$State;

    .line 69
    new-instance v0, Lcom/movial/ipphone/SessionCall$State;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/movial/ipphone/SessionCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/movial/ipphone/SessionCall$State;->DISCONNECTED:Lcom/movial/ipphone/SessionCall$State;

    .line 70
    new-instance v0, Lcom/movial/ipphone/SessionCall$State;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/movial/ipphone/SessionCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/movial/ipphone/SessionCall$State;->UNKNOWN:Lcom/movial/ipphone/SessionCall$State;

    .line 62
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/movial/ipphone/SessionCall$State;

    sget-object v1, Lcom/movial/ipphone/SessionCall$State;->ACTIVE:Lcom/movial/ipphone/SessionCall$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/movial/ipphone/SessionCall$State;->HOLDING:Lcom/movial/ipphone/SessionCall$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/movial/ipphone/SessionCall$State;->DIALING:Lcom/movial/ipphone/SessionCall$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/movial/ipphone/SessionCall$State;->ALERTING:Lcom/movial/ipphone/SessionCall$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/movial/ipphone/SessionCall$State;->INCOMING:Lcom/movial/ipphone/SessionCall$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/movial/ipphone/SessionCall$State;->WAITING:Lcom/movial/ipphone/SessionCall$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/movial/ipphone/SessionCall$State;->DISCONNECTED:Lcom/movial/ipphone/SessionCall$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/movial/ipphone/SessionCall$State;->UNKNOWN:Lcom/movial/ipphone/SessionCall$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/movial/ipphone/SessionCall$State;->$VALUES:[Lcom/movial/ipphone/SessionCall$State;

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
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/movial/ipphone/SessionCall$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 62
    const-class v0, Lcom/movial/ipphone/SessionCall$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/movial/ipphone/SessionCall$State;

    return-object v0
.end method

.method public static values()[Lcom/movial/ipphone/SessionCall$State;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/movial/ipphone/SessionCall$State;->$VALUES:[Lcom/movial/ipphone/SessionCall$State;

    invoke-virtual {v0}, [Lcom/movial/ipphone/SessionCall$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/movial/ipphone/SessionCall$State;

    return-object v0
.end method
