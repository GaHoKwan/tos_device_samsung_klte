.class public abstract Lcom/itsoninc/android/ItsOnOemApiBase;
.super Ljava/lang/Object;
.source "ItsOnOemApiBase.java"


# static fields
.field private static final DEFAULT_PATH:Ljava/lang/String; = "/system/framework/"

.field private static FRAMEWORK_INTEGRATION_VERSION:Ljava/lang/String; = null

.field private static final ITSON_RESOURCES_DIR:Ljava/lang/String; = "/resources"

.field static final OEM_CLASS:Ljava/lang/String; = "com.itsoninc.android.impl.ItsOnOem"

.field private static final PATH_PROPERTY:Ljava/lang/String; = "ro.itson.path"


# instance fields
.field final LOGTAG:Ljava/lang/String;

.field context:Landroid/content/Context;

.field frameworkIf:Lcom/itsoninc/android/ItsOnFrameworkInterface;

.field mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "14"

    sput-object v0, Lcom/itsoninc/android/ItsOnOemApiBase;->FRAMEWORK_INTEGRATION_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "ItsOnAPI"

    iput-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->LOGTAG:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    .line 25
    iput-object v1, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->context:Landroid/content/Context;

    .line 26
    iput-object v1, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->frameworkIf:Lcom/itsoninc/android/ItsOnFrameworkInterface;

    return-void
.end method

.method public static getFrameworkIntegrationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/itsoninc/android/ItsOnOemApiBase;->FRAMEWORK_INTEGRATION_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static getItsOnPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 197
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    .line 198
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .end local p0    # "path":Ljava/lang/String;
    .local v0, "path":Ljava/lang/String;
    move-object p0, v0

    .line 202
    .end local v0    # "path":Ljava/lang/String;
    .restart local p0    # "path":Ljava/lang/String;
    :cond_0
    const-string v1, "/resources"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "/resources"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .end local p0    # "path":Ljava/lang/String;
    .restart local v0    # "path":Ljava/lang/String;
    move-object p0, v0

    .line 206
    .end local v0    # "path":Ljava/lang/String;
    .restart local p0    # "path":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public static getItsOnResourcesPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 184
    const-string v1, "ro.itson.path"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    :cond_0
    const-string v1, "/system/framework/"

    .line 191
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/itsoninc/android/ItsOnOemApiBase;->getItsOnPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/resources"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getJarFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsoninc/android/ItsOnOemApiBase;->getItsOnResourcesPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "itson-oem.jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public acceptCall()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0}, Lcom/itsoninc/android/ItsOnOemInterface;->acceptCall()V

    .line 166
    return-void
.end method

.method public accountMms(Ljava/lang/String;)V
    .locals 1
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0, p1}, Lcom/itsoninc/android/ItsOnOemInterface;->accountMms(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public authorizeIncomingMms(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0, p1, p2}, Lcom/itsoninc/android/ItsOnOemInterface;->authorizeIncomingMms(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method authorizeIncomingSms(Ljava/lang/String;Lcom/itsoninc/android/SmsType;Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/itsoninc/android/SmsType;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/itsoninc/android/ItsOnOemInterface;->authorizeIncomingSms(Ljava/lang/String;Lcom/itsoninc/android/SmsType;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method authorizeIncomingSms([B)Z
    .locals 1
    .param p1, "pdu"    # [B

    .prologue
    .line 122
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0, p1}, Lcom/itsoninc/android/ItsOnOemInterface;->authorizeIncomingSms([B)Z

    move-result v0

    return v0
.end method

.method public authorizeIncomingVoice(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0, p1}, Lcom/itsoninc/android/ItsOnOemInterface;->authorizeIncomingVoice(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public authorizeOutgoingMms(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0, p1, p2}, Lcom/itsoninc/android/ItsOnOemInterface;->authorizeOutgoingMms(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public authorizeOutgoingMms(Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .param p2, "transactionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0, p1, p2}, Lcom/itsoninc/android/ItsOnOemInterface;->authorizeOutgoingMms(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method authorizeOutgoingSms(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "serial"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0, p1, p2}, Lcom/itsoninc/android/ItsOnOemInterface;->authorizeOutgoingSms(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method authorizeOutgoingSms([BI)Z
    .locals 1
    .param p1, "pdu"    # [B
    .param p2, "serial"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0, p1, p2}, Lcom/itsoninc/android/ItsOnOemInterface;->authorizeOutgoingSms([BI)Z

    move-result v0

    return v0
.end method

.method public authorizeOutgoingVoice(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0, p1}, Lcom/itsoninc/android/ItsOnOemInterface;->authorizeOutgoingVoice(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public callWaiting(Ljava/lang/String;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0, p1}, Lcom/itsoninc/android/ItsOnOemInterface;->callWaiting(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public cleanupMms(Ljava/lang/String;)V
    .locals 1
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0, p1}, Lcom/itsoninc/android/ItsOnOemInterface;->cleanupMms(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0}, Lcom/itsoninc/android/ItsOnOemInterface;->destroy()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->context:Landroid/content/Context;

    .line 72
    return-void
.end method

.method public dial(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0, p1}, Lcom/itsoninc/android/ItsOnOemInterface;->dial(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public flash(Ljava/lang/String;)Z
    .locals 1
    .param p1, "featureCode"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0, p1}, Lcom/itsoninc/android/ItsOnOemInterface;->flash(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public initFramework(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0, p1}, Lcom/itsoninc/android/ItsOnOemInterface;->initFramework(Landroid/content/Context;)V

    .line 61
    iput-object p1, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->context:Landroid/content/Context;

    .line 62
    return-void
.end method

.method public initTelephony(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0, p1}, Lcom/itsoninc/android/ItsOnOemInterface;->initTelephony(Landroid/content/Context;)V

    .line 66
    iput-object p1, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->context:Landroid/content/Context;

    .line 67
    return-void
.end method

.method public isDataAllowed(JLjava/lang/String;)Z
    .locals 1
    .param p1, "systemId"    # J
    .param p3, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/itsoninc/android/ItsOnOemInterface;->isDataAllowed(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method abstract loadOemImpl()Z
.end method

.method public nitzTimeReceived(Ljava/lang/String;J)V
    .locals 1
    .param p1, "time"    # Ljava/lang/String;
    .param p2, "nitzReceiveTime"    # J

    .prologue
    .line 153
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/itsoninc/android/ItsOnOemInterface;->nitzTimeReceived(Ljava/lang/String;J)V

    .line 154
    return-void
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    .line 83
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/itsoninc/android/ItsOnOemInterface;->onForegroundActivitiesChanged(IIZ)V

    .line 84
    return-void
.end method

.method public onImportanceChanged(III)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "importance"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/itsoninc/android/ItsOnOemInterface;->onImportanceChanged(III)V

    .line 88
    return-void
.end method

.method public onNewDataSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/itsoninc/android/ItsOnOemInterface;->onNewDataSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public onProcessDied(II)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0, p1, p2}, Lcom/itsoninc/android/ItsOnOemInterface;->onProcessDied(II)V

    .line 92
    return-void
.end method

.method public processCDMACallList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itsoninc/android/DeviceCall;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "callList":Ljava/util/List;, "Ljava/util/List<Lcom/itsoninc/android/DeviceCall;>;"
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0, p1}, Lcom/itsoninc/android/ItsOnOemInterface;->processCDMACallList(Ljava/util/List;)V

    .line 174
    return-void
.end method

.method public processCallList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itsoninc/android/DeviceCall;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "callList":Ljava/util/List;, "Ljava/util/List<Lcom/itsoninc/android/DeviceCall;>;"
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0, p1}, Lcom/itsoninc/android/ItsOnOemInterface;->processCallList(Ljava/util/List;)V

    .line 107
    return-void
.end method

.method public registerActivityMapping(Ljava/lang/String;I)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0, p1, p2}, Lcom/itsoninc/android/ItsOnOemInterface;->registerActivityMapping(Ljava/lang/String;I)V

    .line 46
    return-void
.end method

.method public registerDownloadMapping(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0, p1}, Lcom/itsoninc/android/ItsOnOemInterface;->registerDownloadMapping(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public registerMediaMapping(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0, p1}, Lcom/itsoninc/android/ItsOnOemInterface;->registerMediaMapping(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public rejectCall()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0}, Lcom/itsoninc/android/ItsOnOemInterface;->rejectCall()V

    .line 104
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0, p1}, Lcom/itsoninc/android/ItsOnOemInterface;->setContext(Landroid/content/Context;)V

    .line 56
    iput-object p1, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->context:Landroid/content/Context;

    .line 57
    return-void
.end method

.method public setDataConnectionHandler(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "trySetupDataMessage"    # Landroid/os/Message;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0, p1, p2}, Lcom/itsoninc/android/ItsOnOemInterface;->setDataConnectionHandler(Landroid/os/Handler;Landroid/os/Message;)V

    .line 219
    return-void
.end method

.method public setEmergencyMode(Z)V
    .locals 1
    .param p1, "inEmergencyMode"    # Z

    .prologue
    .line 177
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0, p1}, Lcom/itsoninc/android/ItsOnOemInterface;->setEmergencyMode(Z)V

    .line 178
    return-void
.end method

.method public setFrameworkInterface(Lcom/itsoninc/android/ItsOnFrameworkInterface;)V
    .locals 1
    .param p1, "frameworkIf"    # Lcom/itsoninc/android/ItsOnFrameworkInterface;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0, p1}, Lcom/itsoninc/android/ItsOnOemInterface;->setFrameworkInterface(Lcom/itsoninc/android/ItsOnFrameworkInterface;)V

    .line 76
    iput-object p1, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->frameworkIf:Lcom/itsoninc/android/ItsOnFrameworkInterface;

    .line 77
    return-void
.end method

.method public smsDone(I)V
    .locals 1
    .param p1, "serial"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0, p1}, Lcom/itsoninc/android/ItsOnOemInterface;->smsDone(I)V

    .line 131
    return-void
.end method

.method public smsError(I)V
    .locals 1
    .param p1, "serial"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnOemApiBase;->mIfImpl:Lcom/itsoninc/android/ItsOnOemInterface;

    invoke-interface {v0, p1}, Lcom/itsoninc/android/ItsOnOemInterface;->smsError(I)V

    .line 127
    return-void
.end method
