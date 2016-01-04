.class public final enum Landroid/security/TimaKeyStoreWrapper$State;
.super Ljava/lang/Enum;
.source "TimaKeyStoreWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/TimaKeyStoreWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/security/TimaKeyStoreWrapper$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/security/TimaKeyStoreWrapper$State;

.field public static final enum LOCKED:Landroid/security/TimaKeyStoreWrapper$State;

.field public static final enum UNINITIALIZED:Landroid/security/TimaKeyStoreWrapper$State;

.field public static final enum UNLOCKED:Landroid/security/TimaKeyStoreWrapper$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Landroid/security/TimaKeyStoreWrapper$State;

    const-string v1, "UNLOCKED"

    invoke-direct {v0, v1, v2}, Landroid/security/TimaKeyStoreWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/security/TimaKeyStoreWrapper$State;->UNLOCKED:Landroid/security/TimaKeyStoreWrapper$State;

    new-instance v0, Landroid/security/TimaKeyStoreWrapper$State;

    const-string v1, "LOCKED"

    invoke-direct {v0, v1, v3}, Landroid/security/TimaKeyStoreWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/security/TimaKeyStoreWrapper$State;->LOCKED:Landroid/security/TimaKeyStoreWrapper$State;

    new-instance v0, Landroid/security/TimaKeyStoreWrapper$State;

    const-string v1, "UNINITIALIZED"

    invoke-direct {v0, v1, v4}, Landroid/security/TimaKeyStoreWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/security/TimaKeyStoreWrapper$State;->UNINITIALIZED:Landroid/security/TimaKeyStoreWrapper$State;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/security/TimaKeyStoreWrapper$State;

    sget-object v1, Landroid/security/TimaKeyStoreWrapper$State;->UNLOCKED:Landroid/security/TimaKeyStoreWrapper$State;

    aput-object v1, v0, v2

    sget-object v1, Landroid/security/TimaKeyStoreWrapper$State;->LOCKED:Landroid/security/TimaKeyStoreWrapper$State;

    aput-object v1, v0, v3

    sget-object v1, Landroid/security/TimaKeyStoreWrapper$State;->UNINITIALIZED:Landroid/security/TimaKeyStoreWrapper$State;

    aput-object v1, v0, v4

    sput-object v0, Landroid/security/TimaKeyStoreWrapper$State;->$VALUES:[Landroid/security/TimaKeyStoreWrapper$State;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/security/TimaKeyStoreWrapper$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    const-class v0, Landroid/security/TimaKeyStoreWrapper$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/security/TimaKeyStoreWrapper$State;

    return-object v0
.end method

.method public static values()[Landroid/security/TimaKeyStoreWrapper$State;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Landroid/security/TimaKeyStoreWrapper$State;->$VALUES:[Landroid/security/TimaKeyStoreWrapper$State;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/security/TimaKeyStoreWrapper$State;

    return-object v0
.end method
