.class public final enum Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;
.super Ljava/lang/Enum;
.source "AndroidProviderErrors.java"

# interfaces
.implements Landroid/hardware/contextaware/manager/fault/IContextAwareErrors;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;",
        ">;",
        "Landroid/hardware/contextaware/manager/fault/IContextAwareErrors;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

.field public static final enum ERROR_UNKNOWN:Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

.field public static final enum SUCCESS:Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;


# instance fields
.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    const-string v1, "SUCCESS"

    const-string v2, "Success"

    invoke-direct {v0, v1, v3, v2}, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->SUCCESS:Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    .line 29
    new-instance v0, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    const-string v1, "ERROR_UNKNOWN"

    const-string v2, "ERROR : Unknown"

    invoke-direct {v0, v1, v4, v2}, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->ERROR_UNKNOWN:Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    sget-object v1, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->SUCCESS:Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->ERROR_UNKNOWN:Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    aput-object v1, v0, v4

    sput-object v0, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->$VALUES:[Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput-object p3, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->message:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static final getMessage(I)Ljava/lang/String;
    .locals 6
    .param p0, "code"    # I

    .prologue
    .line 70
    const-string v4, ""

    .line 72
    .local v4, "msg":Ljava/lang/String;
    invoke-static {}, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->values()[Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    move-result-object v0

    .local v0, "arr$":[Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 73
    .local v1, "i":Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-ne v5, p0, :cond_2

    .line 74
    iget-object v4, v1, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->message:Ljava/lang/String;

    .line 79
    .end local v1    # "i":Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 80
    const-string v5, "Message code is fault"

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 83
    :cond_1
    return-object v4

    .line 72
    .restart local v1    # "i":Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    return-object v0
.end method

.method public static values()[Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->$VALUES:[Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->message:Ljava/lang/String;

    return-object v0
.end method

.method public notifyFatalError()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method
