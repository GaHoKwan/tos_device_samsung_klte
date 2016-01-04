.class public Lcom/android/server/pm/PersonaPolicyManagerService;
.super Landroid/content/pm/IPersonaPolicyManager$Stub;
.source "PersonaPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyReceiver;,
        Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;,
        Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    }
.end annotation


# static fields
.field private static final INVALID_UID:I = -0x1

.field private static final PERSONA_POLICIES_XML:Ljava/lang/String; = "persona_policies.xml"

.field private static SEANDROID_SECURITY_VERIFICATION:Z = false

.field private static final TAG:Ljava/lang/String; = "PersonaPolicyManagerService"

.field private static sContext:Landroid/content/Context;


# instance fields
.field mContext:Landroid/content/Context;

.field mLocalPkgAddedCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPersona:Lcom/android/server/pm/PersonaManagerService;

.field final mPersonaData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;",
            ">;"
        }
    .end annotation
.end field

.field mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/PersonaPolicyManagerService;->sContext:Landroid/content/Context;

    .line 72
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/pm/PersonaPolicyManagerService;->SEANDROID_SECURITY_VERIFICATION:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    invoke-direct {p0}, Landroid/content/pm/IPersonaPolicyManager$Stub;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService;->mLocalPkgAddedCache:Ljava/util/List;

    .line 180
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService;->mPersonaData:Landroid/util/SparseArray;

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService;->mPersona:Lcom/android/server/pm/PersonaManagerService;

    .line 189
    new-instance v0, Lcom/android/server/pm/PersonaPolicyManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PersonaPolicyManagerService$1;-><init>(Lcom/android/server/pm/PersonaPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 185
    iput-object p1, p0, Lcom/android/server/pm/PersonaPolicyManagerService;->mContext:Landroid/content/Context;

    .line 186
    sput-object p1, Lcom/android/server/pm/PersonaPolicyManagerService;->sContext:Landroid/content/Context;

    .line 187
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/PersonaPolicyManagerService;)Lcom/android/server/pm/PersonaManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaPolicyManagerService;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/PersonaPolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PersonaPolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->removePersonaData(I)V

    return-void
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 5
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string v1, "PersonaPolicyManagerService"

    .line 77
    .local v1, "serviceName":Ljava/lang/String;
    sget-object v2, Lcom/android/server/pm/PersonaPolicyManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    sget-boolean v2, Lcom/android/server/pm/PersonaPolicyManagerService;->SEANDROID_SECURITY_VERIFICATION:Z

    if-eqz v2, :cond_0

    .line 79
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 82
    throw v0

    .line 84
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    const-string v2, "PersonaPolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Security Exception Occurred while pid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] with uid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] trying to access methodName ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] in ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private checkReturnStatus(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 233
    if-eqz p1, :cond_0

    .line 234
    const-string/jumbo v0, "status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 236
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dumpRCPSettings(Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;)V
    .locals 4
    .param p1, "policy"    # Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    .prologue
    .line 140
    const-string v1, "PersonaPolicyManagerService"

    const-string v2, "********************START dump RCPSettings ********************"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    if-eqz p1, :cond_0

    .line 143
    :try_start_0
    iget-object v1, p1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->dumpRCPSettings(Ljava/util/HashMap;)V

    .line 144
    iget-object v1, p1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->dumpRCPSettings(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_0
    :goto_0
    const-string v1, "PersonaPolicyManagerService"

    const-string v2, "--------------------END dump RCPSettings--------------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PersonaPolicyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dumpRCPSettings(Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 156
    .local v6, "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v7, "PersonaPolicyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "names:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-interface {v6}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 158
    .local v2, "keys":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v3, v2

    .line 159
    .local v3, "length":I
    const-string v7, "PersonaPolicyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v7, "PersonaPolicyManagerService"

    const-string/jumbo v8, "{"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_3

    .line 162
    aget-object v7, v2, v0

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 163
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    if-eqz v4, :cond_2

    .line 164
    const-string v7, "PersonaPolicyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v2, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " :[ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 166
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;

    .line 167
    .local v5, "object":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    if-eqz v5, :cond_0

    .line 168
    const-string v7, "PersonaPolicyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "   { name : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "},"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 171
    :cond_0
    const-string v7, "PersonaPolicyManagerService"

    const-string v8, "List contains NULL object."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 174
    .end local v5    # "object":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    :cond_1
    const-string v7, "PersonaPolicyManagerService"

    const-string v8, " ],"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .end local v1    # "j":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :cond_3
    const-string v7, "PersonaPolicyManagerService"

    const-string/jumbo v8, "}"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method

.method private final enforceSystemService()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 1276
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 1277
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only system can call this API. Are you Process.SYSTEM_UID!!"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1279
    :cond_0
    return-void
.end method

.method private getDataSyncPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "userId"    # I
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "policyProperty"    # Ljava/lang/String;

    .prologue
    .line 1306
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v5, 0x1

    .line 1307
    .local v5, "isPersona":Z
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getDefaultRCPPolicy(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1308
    .local v3, "defaultValue":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 1346
    .end local v3    # "defaultValue":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v3

    .line 1306
    .end local v5    # "isPersona":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1311
    .restart local v3    # "defaultValue":Ljava/lang/String;
    .restart local v5    # "isPersona":Z
    :cond_2
    const/4 v7, 0x0

    .line 1312
    .local v7, "mdmValue":Ljava/lang/String;
    const-string v13, "mum_container_rcp_policy"

    invoke-static {v13}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;

    .line 1314
    .local v9, "rcpPolicy":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    if-eqz v9, :cond_3

    .line 1315
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v9, v0, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getDataSyncPolicyByUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1318
    :cond_3
    if-eqz v7, :cond_4

    const-string/jumbo v13, "true"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1319
    :cond_4
    monitor-enter p0

    .line 1320
    if-eqz v5, :cond_6

    .line 1321
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v8

    .line 1322
    .local v8, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    if-eqz v8, :cond_6

    .line 1323
    iget-object v13, v8, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1325
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    if-eqz v6, :cond_6

    .line 1326
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;

    .line 1327
    .local v10, "setting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    iget-object v13, v10, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1328
    iget-object v13, v10, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    if-eqz v13, :cond_5

    iget-object v13, v10, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 1329
    iget-object v3, v10, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    .end local v3    # "defaultValue":Ljava/lang/String;
    monitor-exit p0

    goto :goto_1

    .line 1336
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v8    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    .end local v10    # "setting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    :catchall_0
    move-exception v13

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .restart local v3    # "defaultValue":Ljava/lang/String;
    :cond_6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1338
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getConfigurationType(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v11

    .line 1339
    .local v11, "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v11, :cond_0

    .line 1340
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v11, v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getDataSyncPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1341
    .local v12, "value":Ljava/lang/String;
    const-string v13, "PersonaPolicyManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "configuration value set by MDM : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    if-eqz v12, :cond_0

    move-object v3, v12

    .line 1343
    goto/16 :goto_1
.end method

.method private final getDefaultRCPPolicy(ZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "isPersona"    # Z
    .param p2, "policyProperty"    # Ljava/lang/String;

    .prologue
    .line 1282
    const-string v0, "knox-import-data"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1283
    if-eqz p1, :cond_0

    .line 1284
    const-string v0, "false"

    .line 1301
    :goto_0
    return-object v0

    .line 1286
    :cond_0
    const-string/jumbo v0, "true"

    goto :goto_0

    .line 1288
    :cond_1
    const-string v0, "knox-export-data"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1289
    if-eqz p1, :cond_2

    .line 1290
    const-string v0, "false"

    goto :goto_0

    .line 1292
    :cond_2
    const-string/jumbo v0, "true"

    goto :goto_0

    .line 1294
    :cond_3
    const-string v0, "knox-sanitize-data"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1295
    if-eqz p1, :cond_4

    .line 1296
    const-string/jumbo v0, "true"

    goto :goto_0

    .line 1298
    :cond_4
    const-string v0, "false"

    goto :goto_0

    .line 1301
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNotificationSyncPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "policyProperty"    # Ljava/lang/String;

    .prologue
    .line 1350
    invoke-direct {p0}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-direct {p0}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v1, 0x1

    .line 1351
    .local v1, "isPersona":Z
    :goto_0
    if-nez v1, :cond_2

    .line 1352
    invoke-direct {p0, v1, p3}, Lcom/android/server/pm/PersonaPolicyManagerService;->getDefaultRCPPolicy(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1383
    :cond_0
    :goto_1
    return-object v3

    .line 1350
    .end local v1    # "isPersona":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1355
    .restart local v1    # "isPersona":Z
    :cond_2
    const/4 v3, 0x0

    .line 1356
    .local v3, "mdmValue":Ljava/lang/String;
    const-string v7, "mum_container_rcp_policy"

    invoke-static {v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;

    .line 1358
    .local v5, "rcpPolicy":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    if-eqz v5, :cond_3

    .line 1359
    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getNotificationSyncPolicyByUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1362
    :cond_3
    if-nez v3, :cond_0

    .line 1363
    monitor-enter p0

    .line 1364
    if-eqz v1, :cond_5

    .line 1365
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v4

    .line 1366
    .local v4, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    if-eqz v4, :cond_5

    .line 1367
    iget-object v7, v4, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {v7, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1369
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    if-eqz v2, :cond_5

    .line 1370
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;

    .line 1371
    .local v6, "setting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    iget-object v7, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1372
    iget-object v7, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1373
    iget-object v3, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    .end local v3    # "mdmValue":Ljava/lang/String;
    monitor-exit p0

    goto :goto_1

    .line 1381
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v4    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    .end local v6    # "setting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1380
    .restart local v3    # "mdmValue":Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-direct {p0, v1, p3}, Lcom/android/server/pm/PersonaPolicyManagerService;->getDefaultRCPPolicy(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .end local v3    # "mdmValue":Ljava/lang/String;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService;->mPersona:Lcom/android/server/pm/PersonaManagerService;

    if-nez v0, :cond_0

    .line 1270
    const-string v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    iput-object v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService;->mPersona:Lcom/android/server/pm/PersonaManagerService;

    .line 1272
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService;->mPersona:Lcom/android/server/pm/PersonaManagerService;

    return-object v0
.end method

.method private loadSettingsLocked(Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;I)V
    .locals 17
    .param p1, "policy"    # Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    .param p2, "userHandle"    # I

    .prologue
    .line 771
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PersonaPolicyManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v3

    .line 772
    .local v3, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v9, 0x0

    .line 773
    .local v9, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v2

    .line 775
    .local v2, "file":Ljava/io/File;
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_7

    .line 776
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .local v10, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 777
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v14, 0x0

    invoke-interface {v5, v10, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 781
    :cond_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    .local v12, "type":I
    const/4 v14, 0x1

    if-eq v12, v14, :cond_1

    const/4 v14, 0x2

    if-ne v12, v14, :cond_0

    .line 783
    :cond_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 784
    .local v11, "tag":Ljava/lang/String;
    const-string v14, "policies"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 785
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Settings do not start with policies tag: found "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_5

    .line 920
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_0
    move-exception v1

    move-object v9, v10

    .line 921
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/lang/NullPointerException;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :goto_0
    const-string v14, "PersonaPolicyManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "failed parsing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_1
    if-eqz v9, :cond_2

    .line 935
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 940
    :cond_2
    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->dumpRCPSettings(Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;)V

    .line 941
    return-void

    .line 788
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "tag":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_3
    const/4 v4, 0x0

    .line 789
    .local v4, "name":Ljava/lang/String;
    const/4 v8, 0x0

    .line 790
    .local v8, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :cond_4
    :goto_3
    :try_start_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    const/4 v14, 0x1

    if-eq v12, v14, :cond_1e

    .line 791
    packed-switch v12, :pswitch_data_0

    goto :goto_3

    .line 793
    :pswitch_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 794
    const-string v14, "passwordLockEnabled"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 796
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mPasswordLockEnabled:Z
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_3

    .line 922
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_1
    move-exception v1

    move-object v9, v10

    .line 923
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/lang/NumberFormatException;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :goto_4
    const-string v14, "PersonaPolicyManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "failed parsing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 798
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "tag":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_5
    :try_start_4
    const-string v14, "encryptionEnabled"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 800
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mEncryptionEnabled:Z
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_3

    .line 924
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_2
    move-exception v1

    move-object v9, v10

    .line 925
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :goto_5
    const-string v14, "PersonaPolicyManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "failed parsing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 802
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "tag":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_6
    :try_start_5
    const-string v14, "secureKeystoreEnabled"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 804
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mSecureKeystoreEnabled:Z

    goto/16 :goto_3

    .line 926
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_3
    move-exception v14

    move-object v9, v10

    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 806
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "tag":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_7
    const-string v14, "cameraModeChangeEnabled"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 808
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mCameraModeChangeEnabled:Z
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_3

    .line 928
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_4
    move-exception v1

    move-object v9, v10

    .line 929
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :goto_6
    const-string v14, "PersonaPolicyManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "failed parsing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 810
    .end local v1    # "e":Ljava/io/IOException;
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "tag":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_8
    :try_start_6
    const-string v14, "allowCustomBadgeIcon"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 812
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomBadgeIcon:Z
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_3

    .line 930
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_5
    move-exception v1

    move-object v9, v10

    .line 931
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :goto_7
    const-string v14, "PersonaPolicyManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "failed parsing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 814
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "tag":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_9
    :try_start_7
    const-string v14, "disableSwitchWidget"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 816
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mDisableSwitchWidgetOnLockScreen:Z

    goto/16 :goto_3

    .line 818
    :cond_a
    const-string v14, "allowCustomPersonaIcon"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 820
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomPersonaIcon:Z

    goto/16 :goto_3

    .line 822
    :cond_b
    const-string v14, "allowCustomColorId"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 824
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomColorIdentification:Z

    goto/16 :goto_3

    .line 826
    :cond_c
    const-string v14, "allowContainerReset"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 828
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowContainerReset:Z

    goto/16 :goto_3

    .line 830
    :cond_d
    const-string v14, "allowShortcutCreation"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 832
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowShortCutCreation:Z

    goto/16 :goto_3

    .line 834
    :cond_e
    const-string v14, "allowDLNADataTransfer"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 836
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowDLNADataTransfer:Z

    goto/16 :goto_3

    .line 838
    :cond_f
    const-string v14, "allowPrint"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 840
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowPrint:Z

    goto/16 :goto_3

    .line 842
    :cond_10
    const-string v14, "modifyLockscreenTimeout"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 844
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mModifyLockScreenTimeout:Z

    goto/16 :goto_3

    .line 846
    :cond_11
    const-string v14, "allowAllshare"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 848
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowAllShare:Z

    goto/16 :goto_3

    .line 850
    :cond_12
    const-string v14, "gearSupportEnabled"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 852
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mGearSupportEnabled:Z

    goto/16 :goto_3

    .line 854
    :cond_13
    const-string v14, "penWindowEnabled"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 856
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mPenWindowEnabled:Z

    goto/16 :goto_3

    .line 858
    :cond_14
    const-string v14, "airCommandEnabled"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 860
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAirCommandEnabled:Z

    goto/16 :goto_3

    .line 862
    :cond_15
    const-string v14, "allowUniversalCallerId"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 864
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowUniversalCallerId:Z

    goto/16 :goto_3

    .line 866
    :cond_16
    const-string v14, "allowImportFiles"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 868
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowImportFiles:Z

    goto/16 :goto_3

    .line 870
    :cond_17
    const-string v14, "allowExportFiles"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 872
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowExportFiles:Z

    goto/16 :goto_3

    .line 874
    :cond_18
    const-string v14, "allowExportAndDeleteFiles"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 876
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowExportAndDeleteFiles:Z

    goto/16 :goto_3

    .line 878
    :cond_19
    const-string/jumbo v14, "switchNotifEnabled"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 880
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mSwitchNotifEnabled:Z

    goto/16 :goto_3

    .line 882
    :cond_1a
    const-string v14, "rcp-data-settings"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 884
    const-string v14, "application"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 885
    const/4 v14, 0x0

    const-string v15, "name"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 886
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 887
    .restart local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-virtual {v14, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 888
    :cond_1b
    const-string v14, "rcp-notif-settings"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 890
    const-string v14, "package"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1c

    .line 892
    const/4 v14, 0x0

    const-string v15, "name"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 893
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 894
    .restart local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {v14, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 896
    :cond_1c
    const-string v14, "property"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 898
    const/4 v14, 0x0

    const-string v15, "name"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 899
    .local v6, "property":Ljava/lang/String;
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 900
    .local v13, "value":Ljava/lang/String;
    new-instance v7, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;

    invoke-direct {v7}, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;-><init>()V

    .line 901
    .local v7, "setting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    iput-object v6, v7, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    .line 902
    iput-object v13, v7, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    .line 903
    if-eqz v8, :cond_4

    .line 904
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 909
    .end local v6    # "property":Ljava/lang/String;
    .end local v7    # "setting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    .end local v13    # "value":Ljava/lang/String;
    :cond_1d
    const-string v14, "PersonaPolicyManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown tag: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_3

    :cond_1e
    move-object v9, v10

    .line 932
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 937
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_6
    move-exception v14

    goto/16 :goto_2

    .line 930
    :catch_7
    move-exception v1

    goto/16 :goto_7

    .line 928
    :catch_8
    move-exception v1

    goto/16 :goto_6

    .line 926
    :catch_9
    move-exception v14

    goto/16 :goto_1

    .line 924
    :catch_a
    move-exception v1

    goto/16 :goto_5

    .line 922
    :catch_b
    move-exception v1

    goto/16 :goto_4

    .line 920
    :catch_c
    move-exception v1

    goto/16 :goto_0

    .line 791
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .locals 6
    .param p0, "userId"    # I

    .prologue
    .line 764
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "persona_policies.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, "base":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private removePersonaData(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    .line 1179
    monitor-enter p0

    .line 1180
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 1181
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    if-eqz v0, :cond_0

    .line 1182
    iget-object v2, p0, Lcom/android/server/pm/PersonaPolicyManagerService;->mPersonaData:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1184
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "persona_policies.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1186
    .local v1, "policyFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1187
    const-string v2, "PersonaPolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed persona policy file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    monitor-exit p0

    .line 1189
    return-void

    .line 1188
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    .end local v1    # "policyFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private saveSettingsLocked(I)V
    .locals 14
    .param p1, "userHandle"    # I

    .prologue
    .line 944
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v6

    .line 945
    .local v6, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    invoke-static {p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v3

    .line 946
    .local v3, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v9, 0x0

    .line 948
    .local v9, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 949
    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .local v10, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 950
    .local v5, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v11, "utf-8"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 951
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 953
    const-string v11, "\n\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 954
    const/4 v11, 0x0

    const-string v12, "policies"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 956
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mPasswordLockEnabled:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_0

    .line 958
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 959
    const/4 v11, 0x0

    const-string v12, "passwordLockEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 960
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mPasswordLockEnabled:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 961
    const/4 v11, 0x0

    const-string v12, "passwordLockEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 963
    :cond_0
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mEncryptionEnabled:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_1

    .line 965
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 966
    const/4 v11, 0x0

    const-string v12, "encryptionEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 967
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mEncryptionEnabled:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 968
    const/4 v11, 0x0

    const-string v12, "encryptionEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 970
    :cond_1
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mSecureKeystoreEnabled:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_2

    .line 972
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 973
    const/4 v11, 0x0

    const-string v12, "secureKeystoreEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 974
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mSecureKeystoreEnabled:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 975
    const/4 v11, 0x0

    const-string v12, "secureKeystoreEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 977
    :cond_2
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mCameraModeChangeEnabled:Z

    if-eqz v11, :cond_3

    .line 979
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 980
    const/4 v11, 0x0

    const-string v12, "cameraModeChangeEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 981
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mCameraModeChangeEnabled:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 982
    const/4 v11, 0x0

    const-string v12, "cameraModeChangeEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 984
    :cond_3
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomBadgeIcon:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_4

    .line 986
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 987
    const/4 v11, 0x0

    const-string v12, "allowCustomBadgeIcon"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 988
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomBadgeIcon:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 989
    const/4 v11, 0x0

    const-string v12, "allowCustomBadgeIcon"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 991
    :cond_4
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mDisableSwitchWidgetOnLockScreen:Z

    if-eqz v11, :cond_5

    .line 993
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 994
    const/4 v11, 0x0

    const-string v12, "disableSwitchWidget"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 995
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mDisableSwitchWidgetOnLockScreen:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 996
    const/4 v11, 0x0

    const-string v12, "disableSwitchWidget"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 998
    :cond_5
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomPersonaIcon:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_6

    .line 1000
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1001
    const/4 v11, 0x0

    const-string v12, "allowCustomPersonaIcon"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1002
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomPersonaIcon:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1003
    const/4 v11, 0x0

    const-string v12, "allowCustomPersonaIcon"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1005
    :cond_6
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomColorIdentification:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_7

    .line 1007
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1008
    const/4 v11, 0x0

    const-string v12, "allowCustomColorId"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1009
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomColorIdentification:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1010
    const/4 v11, 0x0

    const-string v12, "allowCustomColorId"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1012
    :cond_7
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowContainerReset:Z

    if-eqz v11, :cond_8

    .line 1014
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1015
    const/4 v11, 0x0

    const-string v12, "allowContainerReset"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1016
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowContainerReset:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1017
    const/4 v11, 0x0

    const-string v12, "allowContainerReset"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1019
    :cond_8
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowShortCutCreation:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_9

    .line 1021
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1022
    const/4 v11, 0x0

    const-string v12, "allowShortcutCreation"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1023
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowShortCutCreation:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1024
    const/4 v11, 0x0

    const-string v12, "allowShortcutCreation"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1026
    :cond_9
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowDLNADataTransfer:Z

    if-eqz v11, :cond_a

    .line 1028
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1029
    const/4 v11, 0x0

    const-string v12, "allowDLNADataTransfer"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1030
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowDLNADataTransfer:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1031
    const/4 v11, 0x0

    const-string v12, "allowDLNADataTransfer"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1033
    :cond_a
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowPrint:Z

    if-eqz v11, :cond_b

    .line 1035
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1036
    const/4 v11, 0x0

    const-string v12, "allowPrint"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1037
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowPrint:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1038
    const/4 v11, 0x0

    const-string v12, "allowPrint"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1040
    :cond_b
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mModifyLockScreenTimeout:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_c

    .line 1042
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1043
    const/4 v11, 0x0

    const-string v12, "modifyLockscreenTimeout"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1044
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mModifyLockScreenTimeout:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1045
    const/4 v11, 0x0

    const-string v12, "modifyLockscreenTimeout"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1047
    :cond_c
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowAllShare:Z

    if-eqz v11, :cond_d

    .line 1049
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1050
    const/4 v11, 0x0

    const-string v12, "allowAllshare"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1051
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowAllShare:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1052
    const/4 v11, 0x0

    const-string v12, "allowAllshare"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1054
    :cond_d
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mGearSupportEnabled:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_e

    .line 1056
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1057
    const/4 v11, 0x0

    const-string v12, "gearSupportEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1058
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mGearSupportEnabled:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1059
    const/4 v11, 0x0

    const-string v12, "gearSupportEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1061
    :cond_e
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mPenWindowEnabled:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_f

    .line 1063
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1064
    const/4 v11, 0x0

    const-string v12, "penWindowEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1065
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mPenWindowEnabled:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1066
    const/4 v11, 0x0

    const-string v12, "penWindowEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1068
    :cond_f
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAirCommandEnabled:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_10

    .line 1070
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1071
    const/4 v11, 0x0

    const-string v12, "airCommandEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1072
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAirCommandEnabled:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1073
    const/4 v11, 0x0

    const-string v12, "airCommandEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1075
    :cond_10
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowUniversalCallerId:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_11

    .line 1077
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1078
    const/4 v11, 0x0

    const-string v12, "allowUniversalCallerId"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1079
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowUniversalCallerId:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1080
    const/4 v11, 0x0

    const-string v12, "allowUniversalCallerId"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1082
    :cond_11
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowImportFiles:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_12

    .line 1084
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1085
    const/4 v11, 0x0

    const-string v12, "allowImportFiles"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1086
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowImportFiles:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1087
    const/4 v11, 0x0

    const-string v12, "allowImportFiles"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1089
    :cond_12
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowExportFiles:Z

    if-eqz v11, :cond_13

    .line 1091
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1092
    const/4 v11, 0x0

    const-string v12, "allowExportFiles"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1093
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowExportFiles:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1094
    const/4 v11, 0x0

    const-string v12, "allowExportFiles"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1096
    :cond_13
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowExportAndDeleteFiles:Z

    if-eqz v11, :cond_14

    .line 1098
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1099
    const/4 v11, 0x0

    const-string v12, "allowExportAndDeleteFiles"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1100
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowExportAndDeleteFiles:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1101
    const/4 v11, 0x0

    const-string v12, "allowExportAndDeleteFiles"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1103
    :cond_14
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mSwitchNotifEnabled:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_15

    .line 1105
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1106
    const/4 v11, 0x0

    const-string/jumbo v12, "switchNotifEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1107
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mSwitchNotifEnabled:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1108
    const/4 v11, 0x0

    const-string/jumbo v12, "switchNotifEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1110
    :cond_15
    iget-object v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    if-eqz v11, :cond_1a

    iget-object v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1a

    .line 1112
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1113
    const/4 v11, 0x0

    const-string v12, "rcp-data-settings"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1114
    iget-object v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1115
    .local v4, "key":Ljava/lang/String;
    const-string v11, "PersonaPolicyManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "key : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    iget-object v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 1117
    .local v8, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    if-eqz v8, :cond_16

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_16

    .line 1118
    const-string v11, "\n\t\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1119
    const/4 v11, 0x0

    const-string v12, "application"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1120
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v5, v11, v12, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1121
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;

    .line 1122
    .local v7, "rcpSetting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    const-string v11, "\n\t\t\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1123
    const/4 v11, 0x0

    const-string v12, "property"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1124
    const/4 v11, 0x0

    const-string v12, "name"

    iget-object v13, v7, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1125
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-object v13, v7, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1126
    const/4 v11, 0x0

    const-string v12, "property"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1166
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v7    # "rcpSetting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    .end local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :catch_0
    move-exception v0

    move-object v9, v10

    .line 1168
    .end local v10    # "stream":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v9    # "stream":Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v9, :cond_17

    .line 1169
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1174
    :cond_17
    :goto_3
    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 1176
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4
    return-void

    .line 1128
    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .restart local v10    # "stream":Ljava/io/FileOutputStream;
    :cond_18
    :try_start_3
    const-string v11, "\n\t\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1129
    const/4 v11, 0x0

    const-string v12, "application"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    .line 1132
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :cond_19
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1133
    const/4 v11, 0x0

    const-string v12, "rcp-data-settings"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1135
    :cond_1a
    iget-object v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    if-eqz v11, :cond_1e

    iget-object v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1e

    .line 1137
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1138
    const/4 v11, 0x0

    const-string v12, "rcp-notif-settings"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1139
    iget-object v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1140
    .restart local v4    # "key":Ljava/lang/String;
    const-string v11, "PersonaPolicyManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "key : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    iget-object v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 1142
    .restart local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    if-eqz v8, :cond_1b

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1b

    .line 1143
    const-string v11, "\n\t\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1144
    const/4 v11, 0x0

    const-string v12, "package"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1145
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v5, v11, v12, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1146
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;

    .line 1147
    .restart local v7    # "rcpSetting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    const-string v11, "\n\t\t\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1148
    const/4 v11, 0x0

    const-string v12, "property"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1149
    const/4 v11, 0x0

    const-string v12, "name"

    iget-object v13, v7, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1150
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-object v13, v7, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1151
    const/4 v11, 0x0

    const-string v12, "property"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_6

    .line 1153
    .end local v7    # "rcpSetting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    :cond_1c
    const-string v11, "\n\t\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1154
    const/4 v11, 0x0

    const-string v12, "package"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_5

    .line 1157
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :cond_1d
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1158
    const/4 v11, 0x0

    const-string v12, "rcp-notif-settings"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1160
    :cond_1e
    const-string v11, "\n\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1161
    const/4 v11, 0x0

    const-string v12, "policies"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1163
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1164
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 1165
    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v9, v10

    .line 1175
    .end local v10    # "stream":Ljava/io/FileOutputStream;
    .restart local v9    # "stream":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 1171
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v11

    goto/16 :goto_3

    .line 1166
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    goto/16 :goto_2
.end method

.method private setRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "userId"    # I
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "policyProperty"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1437
    monitor-enter p0

    .line 1438
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-direct {p0}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1439
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v3

    .line 1440
    .local v3, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    if-eqz v3, :cond_3

    .line 1441
    iget-object v6, v3, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1443
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    if-nez v1, :cond_0

    .line 1444
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1455
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :goto_0
    new-instance v4, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;

    invoke-direct {v4}, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;-><init>()V

    .line 1456
    .local v4, "setting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    iput-object p3, v4, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    .line 1457
    iput-object p4, v4, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    .line 1458
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1459
    iget-object v6, v3, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-virtual {v6, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1460
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 1461
    const/4 v6, 0x1

    monitor-exit p0

    .line 1466
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v3    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    .end local v4    # "setting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    :goto_1
    return v6

    .line 1446
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .restart local v3    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1447
    .local v5, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;

    .line 1448
    .local v2, "listItem":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    iget-object v6, v2, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1449
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1468
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v2    # "listItem":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    .end local v3    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    .end local v5    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1452
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .restart local v3    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    .restart local v5    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1463
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v5    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :cond_3
    monitor-exit p0

    goto :goto_1

    .line 1466
    .end local v3    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private setRCPNotificationPolicyForUser(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "policyProperty"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1480
    monitor-enter p0

    .line 1481
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-direct {p0}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1482
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v3

    .line 1483
    .local v3, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    if-eqz v3, :cond_3

    .line 1484
    iget-object v6, v3, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1486
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    if-nez v1, :cond_0

    .line 1487
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1498
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :goto_0
    new-instance v4, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;

    invoke-direct {v4}, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;-><init>()V

    .line 1499
    .local v4, "setting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    iput-object p3, v4, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    .line 1500
    iput-object p4, v4, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    .line 1501
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1502
    iget-object v6, v3, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {v6, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1503
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 1504
    const/4 v6, 0x1

    monitor-exit p0

    .line 1509
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v3    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    .end local v4    # "setting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    :goto_1
    return v6

    .line 1489
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .restart local v3    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1490
    .local v5, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;

    .line 1491
    .local v2, "listItem":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    iget-object v6, v2, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1492
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1511
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v2    # "listItem":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    .end local v3    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    .end local v5    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1495
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .restart local v3    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    .restart local v5    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1506
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v5    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :cond_3
    monitor-exit p0

    goto :goto_1

    .line 1509
    .end local v3    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1250
    const-string v1, "addLockOnImage"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1251
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaPolicyManagerService;->getCurrentHandler()Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 1252
    .local v0, "mPersonaHandler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    .line 1253
    invoke-interface {v0, p1}, Landroid/content/pm/IPersonaPolicyHandler;->addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1255
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAirCommandEnabled(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 641
    const-string v1, "getAirCommandEnabled"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 642
    monitor-enter p0

    .line 643
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 644
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAirCommandEnabled:Z

    monitor-exit p0

    return v1

    .line 645
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllowAllShare(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 572
    const-string v1, "getAllowAllShare"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 573
    monitor-enter p0

    .line 574
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 575
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowAllShare:Z

    monitor-exit p0

    return v1

    .line 576
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllowContainerReset(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 457
    const-string v1, "getAllowContainerReset"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 458
    monitor-enter p0

    .line 459
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 460
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowContainerReset:Z

    monitor-exit p0

    return v1

    .line 461
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllowCustomBadgeIcon(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 364
    const-string v1, "getAllowCustomBadgeIcon"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 365
    monitor-enter p0

    .line 366
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 367
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomBadgeIcon:Z

    monitor-exit p0

    return v1

    .line 368
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllowCustomColorIdentification(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 434
    const-string v1, "getAllowCustomColorIdentification"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 435
    monitor-enter p0

    .line 436
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 437
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomColorIdentification:Z

    monitor-exit p0

    return v1

    .line 438
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllowCustomPersonaIcon(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 410
    const-string v1, "getAllowCustomPersonaIcon"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 411
    monitor-enter p0

    .line 412
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 413
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomPersonaIcon:Z

    monitor-exit p0

    return v1

    .line 414
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllowDLNADataTransfer(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 503
    const-string v1, "getAllowDLNADataTransfer"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 504
    monitor-enter p0

    .line 505
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 506
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowDLNADataTransfer:Z

    monitor-exit p0

    return v1

    .line 507
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllowExportAndDeleteFiles(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 733
    const-string v1, "getAllowExportAndDeleteFiles"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 734
    monitor-enter p0

    .line 735
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 736
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowExportAndDeleteFiles:Z

    monitor-exit p0

    return v1

    .line 737
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllowExportFiles(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 710
    const-string v1, "getAllowExportFiles"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 711
    monitor-enter p0

    .line 712
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 713
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowExportFiles:Z

    monitor-exit p0

    return v1

    .line 714
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllowImportFiles(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 687
    const-string v1, "getAllowImportFiles"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 688
    monitor-enter p0

    .line 689
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 690
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowImportFiles:Z

    monitor-exit p0

    return v1

    .line 691
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllowPrint(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 526
    const-string v1, "getAllowPrint"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 527
    monitor-enter p0

    .line 528
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 529
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowPrint:Z

    monitor-exit p0

    return v1

    .line 530
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllowShortCutCreation(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 480
    const-string v1, "getAllowShortCutCreation"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 481
    monitor-enter p0

    .line 482
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 483
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowShortCutCreation:Z

    monitor-exit p0

    return v1

    .line 484
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllowUniversalCallerId(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 664
    const-string v1, "getAllowUniversalCallerId"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 665
    monitor-enter p0

    .line 666
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 667
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowUniversalCallerId:Z

    monitor-exit p0

    return v1

    .line 668
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCameraModeChangeEnabled(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 341
    const-string v1, "getCameraModeChangeEnabled"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 342
    monitor-enter p0

    .line 343
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 344
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mCameraModeChangeEnabled:Z

    monitor-exit p0

    return v1

    .line 345
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentHandler()Landroid/content/pm/IPersonaPolicyHandler;
    .locals 1

    .prologue
    .line 1260
    const-string v0, "getCurrentHandler"

    invoke-static {v0}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1261
    const-string v0, "persona_policy"

    invoke-static {v0}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Landroid/content/pm/IPersonaPolicyHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    return-object v0
.end method

.method public getDisableSwitchWidgetOnLockScreen(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 387
    const-string v1, "getDisableSwitchWidgetOnLockScreen"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 388
    monitor-enter p0

    .line 389
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 390
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mDisableSwitchWidgetOnLockScreen:Z

    monitor-exit p0

    return v1

    .line 391
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEncryptionStatus(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 295
    const-string v1, "getEncryptionStatus"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 296
    monitor-enter p0

    .line 297
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 298
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mEncryptionEnabled:Z

    monitor-exit p0

    return v1

    .line 299
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGearSupportEnabled(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 595
    const-string v1, "getGearSupportEnabled"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 596
    monitor-enter p0

    .line 597
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 598
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mGearSupportEnabled:Z

    monitor-exit p0

    return v1

    .line 599
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getModifyLockScreenTimeout(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 549
    const-string v1, "getModifyLockScreenTimeout"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 550
    monitor-enter p0

    .line 551
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 552
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mModifyLockScreenTimeout:Z

    monitor-exit p0

    return v1

    .line 553
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPasswordLockPolicy(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 272
    const-string v1, "getPasswordLockPolicy"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 273
    monitor-enter p0

    .line 274
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 275
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mPasswordLockEnabled:Z

    monitor-exit p0

    return v1

    .line 276
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPenWindowEnabled(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 618
    const-string v1, "getPenWindowEnabled"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 619
    monitor-enter p0

    .line 620
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 621
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mPenWindowEnabled:Z

    monitor-exit p0

    return v1

    .line 622
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    .line 245
    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PersonaPolicyManagerService;->mPersonaData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    .line 247
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    if-nez v0, :cond_0

    .line 248
    new-instance v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    invoke-direct {v0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;-><init>(I)V

    .line 249
    .restart local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-object v1, p0, Lcom/android/server/pm/PersonaPolicyManagerService;->mPersonaData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 250
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->loadSettingsLocked(Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;I)V

    .line 252
    :cond_0
    monitor-exit p0

    return-object v0

    .line 253
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;

    .prologue
    .line 1401
    const-string v4, "getRCPDataPolicy"

    invoke-static {v4}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1402
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1403
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1405
    .local v3, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1408
    .local v1, "token":J
    :try_start_0
    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/pm/PersonaPolicyManagerService;->getDataSyncPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1410
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "policyProperty"    # Ljava/lang/String;

    .prologue
    .line 1388
    const-string v0, "getRCPDataPolicyForUser"

    invoke-static {v0}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1389
    invoke-direct {p0}, Lcom/android/server/pm/PersonaPolicyManagerService;->enforceSystemService()V

    .line 1390
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PersonaPolicyManagerService;->getDataSyncPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRCPNotificationPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;

    .prologue
    .line 1416
    const-string v4, "getRCPNotificationPolicy"

    invoke-static {v4}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1417
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1418
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1420
    .local v3, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1422
    .local v1, "token":J
    :try_start_0
    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/pm/PersonaPolicyManagerService;->getNotificationSyncPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1424
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getRCPNotificationPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "policyProperty"    # Ljava/lang/String;

    .prologue
    .line 1394
    const-string v0, "getRCPNotificationPolicyForUser"

    invoke-static {v0}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1395
    invoke-direct {p0}, Lcom/android/server/pm/PersonaPolicyManagerService;->enforceSystemService()V

    .line 1396
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PersonaPolicyManagerService;->getNotificationSyncPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecureKeystoreEnabled(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 318
    const-string v1, "getSecureKeystoreEnabled"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 319
    monitor-enter p0

    .line 320
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 321
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mSecureKeystoreEnabled:Z

    monitor-exit p0

    return v1

    .line 322
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSwitchNotifEnabled(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 756
    const-string v1, "getSwitchNotifEnabled"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 757
    monitor-enter p0

    .line 758
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 759
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mSwitchNotifEnabled:Z

    monitor-exit p0

    return v1

    .line 760
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isBadgeRequired()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1193
    const-string v0, "isBadgeRequired"

    invoke-static {v0}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1203
    const/4 v0, 0x0

    return v0
.end method

.method public isBadgeRequiredFromOwner(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1208
    const-string v0, "isBadgeRequiredFromOwner"

    invoke-static {v0}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1231
    const/4 v0, 0x0

    return v0
.end method

.method public registerReceivers()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1236
    const-string v0, "registerReceivers"

    invoke-static {v0}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1238
    new-instance v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyReceiver;-><init>(Lcom/android/server/pm/PersonaPolicyManagerService;)V

    .line 1239
    .local v1, "receiver":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1240
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1241
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1242
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1243
    iget-object v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1245
    iget-object v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/PersonaPolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_REMOVED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1246
    return-void
.end method

.method public setAirCommandEnabled(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 627
    const-string v2, "setAirCommandEnabled"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 628
    const-string v2, "persona_policy"

    invoke-static {v2}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Landroid/content/pm/IPersonaPolicyHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 631
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string v2, "airCommand"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 632
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 633
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAirCommandEnabled:Z

    .line 634
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 636
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowAllShare(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 558
    const-string v2, "setAllowAllShare"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 559
    const-string v2, "persona_policy"

    invoke-static {v2}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Landroid/content/pm/IPersonaPolicyHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 562
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string v2, "allShare"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 563
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 564
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowAllShare:Z

    .line 565
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 567
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowContainerReset(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 443
    const-string v2, "setAllowContainerReset"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 444
    const-string v2, "persona_policy"

    invoke-static {v2}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Landroid/content/pm/IPersonaPolicyHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 447
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string v2, "containerReset"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 448
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 449
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowContainerReset:Z

    .line 450
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 452
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowCustomBadgeIcon(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 350
    const-string v2, "setAllowCustomBadgeIcon"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 351
    const-string v2, "persona_policy"

    invoke-static {v2}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Landroid/content/pm/IPersonaPolicyHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 354
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string v2, "customBadgeIcon"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 355
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 356
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomBadgeIcon:Z

    .line 357
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 359
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowCustomColorIdentification(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 420
    const-string v2, "setAllowCustomColorIdentification"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 421
    const-string v2, "persona_policy"

    invoke-static {v2}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Landroid/content/pm/IPersonaPolicyHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 424
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string v2, "customColorIdentification"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 425
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 426
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomColorIdentification:Z

    .line 427
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 429
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowCustomPersonaIcon(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 396
    const-string v2, "setAllowCustomPersonaIcon"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 397
    const-string v2, "persona_policy"

    invoke-static {v2}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Landroid/content/pm/IPersonaPolicyHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 400
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string v2, "customPersonaIcon"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 401
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 402
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomPersonaIcon:Z

    .line 403
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 405
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowDLNADataTransfer(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 489
    const-string v2, "setAllowDLNADataTransfer"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 490
    const-string v2, "persona_policy"

    invoke-static {v2}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Landroid/content/pm/IPersonaPolicyHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 493
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string v2, "dlnaDataTransfer"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 495
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowDLNADataTransfer:Z

    .line 496
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 498
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowExportAndDeleteFiles(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 719
    const-string v2, "setAllowExportAndDeleteFiles"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 720
    const-string v2, "persona_policy"

    invoke-static {v2}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Landroid/content/pm/IPersonaPolicyHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 723
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string v2, "exportAndDeleteFiles"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 724
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 725
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowExportAndDeleteFiles:Z

    .line 726
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 728
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowExportFiles(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 696
    const-string v2, "setAllowExportFiles"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 697
    const-string v2, "persona_policy"

    invoke-static {v2}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Landroid/content/pm/IPersonaPolicyHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 700
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string v2, "exportFiles"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 701
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 702
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowExportFiles:Z

    .line 703
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 705
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowImportFiles(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 673
    const-string v2, "setAllowImportFiles"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 674
    const-string v2, "persona_policy"

    invoke-static {v2}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Landroid/content/pm/IPersonaPolicyHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 677
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string v2, "importFiles"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 678
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 679
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowImportFiles:Z

    .line 680
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 682
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowPrint(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 512
    const-string v2, "setAllowPrint"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 513
    const-string v2, "persona_policy"

    invoke-static {v2}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Landroid/content/pm/IPersonaPolicyHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 516
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string v2, "print"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 517
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 518
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowPrint:Z

    .line 519
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 521
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowShortCutCreation(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 466
    const-string v2, "setAllowShortCutCreation"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 467
    const-string v2, "persona_policy"

    invoke-static {v2}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Landroid/content/pm/IPersonaPolicyHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 470
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "shortcutCreation"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 471
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 472
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowShortCutCreation:Z

    .line 473
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 475
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowUniversalCallerId(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 650
    const-string v2, "setAllowUniversalCallerId"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 651
    const-string v2, "persona_policy"

    invoke-static {v2}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Landroid/content/pm/IPersonaPolicyHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 654
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "universalCallerId"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 655
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 656
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowUniversalCallerId:Z

    .line 657
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 659
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setCameraModeChangeEnabled(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 327
    const-string v2, "setCameraModeChangeEnabled"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 328
    const-string v2, "persona_policy"

    invoke-static {v2}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Landroid/content/pm/IPersonaPolicyHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 331
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string v2, "cameraMode"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 333
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mCameraModeChangeEnabled:Z

    .line 334
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 336
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setDisableSwitchWidgetOnLockScreen(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 373
    const-string v2, "setDisableSwitchWidgetOnLockScreen"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 374
    const-string v2, "persona_policy"

    invoke-static {v2}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Landroid/content/pm/IPersonaPolicyHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 377
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string v2, "disableSwitchWidget"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 379
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mDisableSwitchWidgetOnLockScreen:Z

    .line 380
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 382
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setEncryptionStatus(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 281
    const-string v2, "setEncryptionStatus"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 282
    const-string v2, "persona_policy"

    invoke-static {v2}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Landroid/content/pm/IPersonaPolicyHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 285
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string v2, "encryption"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 287
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mEncryptionEnabled:Z

    .line 288
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 290
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setGearSupportEnabled(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 581
    const-string v2, "setGearSupportEnabled"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 582
    const-string v2, "persona_policy"

    invoke-static {v2}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Landroid/content/pm/IPersonaPolicyHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 585
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string v2, "gearSupport"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 586
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 587
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mGearSupportEnabled:Z

    .line 588
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 590
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setModifyLockScreenTimeout(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 535
    const-string v2, "setModifyLockScreenTimeout"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 536
    const-string v2, "persona_policy"

    invoke-static {v2}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Landroid/content/pm/IPersonaPolicyHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 539
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string v2, "modifyTimeout"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 540
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 541
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mModifyLockScreenTimeout:Z

    .line 542
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 544
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setPasswordLockPolicy(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 258
    const-string v2, "setPasswordLockPolicy"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 259
    const-string v2, "persona_policy"

    invoke-static {v2}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Landroid/content/pm/IPersonaPolicyHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 262
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string v2, "passwordLock"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 264
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mPasswordLockEnabled:Z

    .line 265
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 267
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setPenWindowEnabled(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 604
    const-string v2, "setPenWindowEnabled"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 605
    const-string v2, "persona_policy"

    invoke-static {v2}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Landroid/content/pm/IPersonaPolicyHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 608
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string v2, "penWindow"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 609
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 610
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mPenWindowEnabled:Z

    .line 611
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 613
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1430
    const-string v2, "setRCPDataPolicy"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1431
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1432
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1433
    .local v1, "userHandle":I
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/pm/PersonaPolicyManagerService;->setRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public setRCPNotificationPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1473
    const-string v2, "setRCPNotificationPolicy"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1474
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1475
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1476
    .local v1, "userHandle":I
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/pm/PersonaPolicyManagerService;->setRCPNotificationPolicyForUser(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public setSecureKeystoreEnabled(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 304
    const-string/jumbo v2, "setSecureKeystoreEnabled"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 305
    const-string v2, "persona_policy"

    invoke-static {v2}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Landroid/content/pm/IPersonaPolicyHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 308
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string v2, "secureKeystore"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 310
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mSecureKeystoreEnabled:Z

    .line 311
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 313
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setSwitchNotifEnabled(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 742
    const-string/jumbo v2, "setSwitchNotifEnabled"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 743
    const-string v2, "persona_policy"

    invoke-static {v2}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Landroid/content/pm/IPersonaPolicyHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 746
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "switchNotif"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 747
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 748
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mSwitchNotifEnabled:Z

    .line 749
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 751
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
