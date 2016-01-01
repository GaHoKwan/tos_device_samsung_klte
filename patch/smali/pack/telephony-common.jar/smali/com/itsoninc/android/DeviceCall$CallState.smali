.class public final enum Lcom/itsoninc/android/DeviceCall$CallState;
.super Ljava/lang/Enum;
.source "DeviceCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsoninc/android/DeviceCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/itsoninc/android/DeviceCall$CallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsoninc/android/DeviceCall$CallState;

.field public static final enum ACTIVE:Lcom/itsoninc/android/DeviceCall$CallState;

.field public static final enum ALERTING:Lcom/itsoninc/android/DeviceCall$CallState;

.field public static final enum DIALING:Lcom/itsoninc/android/DeviceCall$CallState;

.field public static final enum HOLDING:Lcom/itsoninc/android/DeviceCall$CallState;

.field public static final enum INCOMING:Lcom/itsoninc/android/DeviceCall$CallState;

.field public static final enum WAITING:Lcom/itsoninc/android/DeviceCall$CallState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/itsoninc/android/DeviceCall$CallState;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v3}, Lcom/itsoninc/android/DeviceCall$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsoninc/android/DeviceCall$CallState;->ACTIVE:Lcom/itsoninc/android/DeviceCall$CallState;

    .line 6
    new-instance v0, Lcom/itsoninc/android/DeviceCall$CallState;

    const-string v1, "ALERTING"

    invoke-direct {v0, v1, v4}, Lcom/itsoninc/android/DeviceCall$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsoninc/android/DeviceCall$CallState;->ALERTING:Lcom/itsoninc/android/DeviceCall$CallState;

    .line 7
    new-instance v0, Lcom/itsoninc/android/DeviceCall$CallState;

    const-string v1, "HOLDING"

    invoke-direct {v0, v1, v5}, Lcom/itsoninc/android/DeviceCall$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsoninc/android/DeviceCall$CallState;->HOLDING:Lcom/itsoninc/android/DeviceCall$CallState;

    .line 8
    new-instance v0, Lcom/itsoninc/android/DeviceCall$CallState;

    const-string v1, "DIALING"

    invoke-direct {v0, v1, v6}, Lcom/itsoninc/android/DeviceCall$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsoninc/android/DeviceCall$CallState;->DIALING:Lcom/itsoninc/android/DeviceCall$CallState;

    .line 9
    new-instance v0, Lcom/itsoninc/android/DeviceCall$CallState;

    const-string v1, "INCOMING"

    invoke-direct {v0, v1, v7}, Lcom/itsoninc/android/DeviceCall$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsoninc/android/DeviceCall$CallState;->INCOMING:Lcom/itsoninc/android/DeviceCall$CallState;

    .line 10
    new-instance v0, Lcom/itsoninc/android/DeviceCall$CallState;

    const-string v1, "WAITING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/itsoninc/android/DeviceCall$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsoninc/android/DeviceCall$CallState;->WAITING:Lcom/itsoninc/android/DeviceCall$CallState;

    .line 4
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/itsoninc/android/DeviceCall$CallState;

    sget-object v1, Lcom/itsoninc/android/DeviceCall$CallState;->ACTIVE:Lcom/itsoninc/android/DeviceCall$CallState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/itsoninc/android/DeviceCall$CallState;->ALERTING:Lcom/itsoninc/android/DeviceCall$CallState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/itsoninc/android/DeviceCall$CallState;->HOLDING:Lcom/itsoninc/android/DeviceCall$CallState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/itsoninc/android/DeviceCall$CallState;->DIALING:Lcom/itsoninc/android/DeviceCall$CallState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/itsoninc/android/DeviceCall$CallState;->INCOMING:Lcom/itsoninc/android/DeviceCall$CallState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/itsoninc/android/DeviceCall$CallState;->WAITING:Lcom/itsoninc/android/DeviceCall$CallState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/itsoninc/android/DeviceCall$CallState;->$VALUES:[Lcom/itsoninc/android/DeviceCall$CallState;

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
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsoninc/android/DeviceCall$CallState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/itsoninc/android/DeviceCall$CallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itsoninc/android/DeviceCall$CallState;

    return-object v0
.end method

.method public static values()[Lcom/itsoninc/android/DeviceCall$CallState;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/itsoninc/android/DeviceCall$CallState;->$VALUES:[Lcom/itsoninc/android/DeviceCall$CallState;

    invoke-virtual {v0}, [Lcom/itsoninc/android/DeviceCall$CallState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsoninc/android/DeviceCall$CallState;

    return-object v0
.end method
