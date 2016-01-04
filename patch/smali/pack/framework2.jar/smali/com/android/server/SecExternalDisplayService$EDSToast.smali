.class final enum Lcom/android/server/SecExternalDisplayService$EDSToast;
.super Ljava/lang/Enum;
.source "SecExternalDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SecExternalDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EDSToast"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/SecExternalDisplayService$EDSToast;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/SecExternalDisplayService$EDSToast;

.field public static final enum EDS_TOAST_HDMI_CONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

.field public static final enum EDS_TOAST_HDMI_DISCONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

.field public static final enum EDS_TOAST_HOMETHEATRE_CONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

.field public static final enum EDS_TOAST_HOMETHEATRE_DISCONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

.field public static final enum EDS_TOAST_WFD_DISCONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    new-instance v0, Lcom/android/server/SecExternalDisplayService$EDSToast;

    const-string v1, "EDS_TOAST_HDMI_CONNECTED"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/SecExternalDisplayService$EDSToast;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSToast;->EDS_TOAST_HDMI_CONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

    .line 110
    new-instance v0, Lcom/android/server/SecExternalDisplayService$EDSToast;

    const-string v1, "EDS_TOAST_HDMI_DISCONNECTED"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/server/SecExternalDisplayService$EDSToast;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSToast;->EDS_TOAST_HDMI_DISCONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

    .line 111
    new-instance v0, Lcom/android/server/SecExternalDisplayService$EDSToast;

    const-string v1, "EDS_TOAST_WFD_DISCONNECTED"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/server/SecExternalDisplayService$EDSToast;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSToast;->EDS_TOAST_WFD_DISCONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

    .line 112
    new-instance v0, Lcom/android/server/SecExternalDisplayService$EDSToast;

    const-string v1, "EDS_TOAST_HOMETHEATRE_CONNECTED"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/server/SecExternalDisplayService$EDSToast;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSToast;->EDS_TOAST_HOMETHEATRE_CONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

    .line 113
    new-instance v0, Lcom/android/server/SecExternalDisplayService$EDSToast;

    const-string v1, "EDS_TOAST_HOMETHEATRE_DISCONNECTED"

    invoke-direct {v0, v1, v6, v6}, Lcom/android/server/SecExternalDisplayService$EDSToast;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSToast;->EDS_TOAST_HOMETHEATRE_DISCONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

    .line 108
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/SecExternalDisplayService$EDSToast;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSToast;->EDS_TOAST_HDMI_CONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSToast;->EDS_TOAST_HDMI_DISCONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSToast;->EDS_TOAST_WFD_DISCONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSToast;->EDS_TOAST_HOMETHEATRE_CONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSToast;->EDS_TOAST_HOMETHEATRE_DISCONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/SecExternalDisplayService$EDSToast;->$VALUES:[Lcom/android/server/SecExternalDisplayService$EDSToast;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    iput p3, p0, Lcom/android/server/SecExternalDisplayService$EDSToast;->value:I

    .line 118
    return-void
.end method

.method public static toStatus(I)Lcom/android/server/SecExternalDisplayService$EDSToast;
    .locals 6
    .param p0, "value"    # I

    .prologue
    .line 123
    const/4 v3, 0x0

    .line 124
    .local v3, "retStatus":Lcom/android/server/SecExternalDisplayService$EDSToast;
    invoke-static {}, Lcom/android/server/SecExternalDisplayService$EDSToast;->values()[Lcom/android/server/SecExternalDisplayService$EDSToast;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/server/SecExternalDisplayService$EDSToast;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 125
    .local v4, "tempVal":Lcom/android/server/SecExternalDisplayService$EDSToast;
    invoke-virtual {v4}, Lcom/android/server/SecExternalDisplayService$EDSToast;->getValue()I

    move-result v5

    if-ne v5, p0, :cond_1

    .line 126
    move-object v3, v4

    .line 130
    .end local v4    # "tempVal":Lcom/android/server/SecExternalDisplayService$EDSToast;
    :cond_0
    return-object v3

    .line 124
    .restart local v4    # "tempVal":Lcom/android/server/SecExternalDisplayService$EDSToast;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/SecExternalDisplayService$EDSToast;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 108
    const-class v0, Lcom/android/server/SecExternalDisplayService$EDSToast;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/SecExternalDisplayService$EDSToast;

    return-object v0
.end method

.method public static values()[Lcom/android/server/SecExternalDisplayService$EDSToast;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSToast;->$VALUES:[Lcom/android/server/SecExternalDisplayService$EDSToast;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/SecExternalDisplayService$EDSToast;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/android/server/SecExternalDisplayService$EDSToast;->value:I

    return v0
.end method
