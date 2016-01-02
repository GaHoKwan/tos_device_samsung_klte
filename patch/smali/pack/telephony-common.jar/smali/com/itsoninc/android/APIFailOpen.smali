.class public Lcom/itsoninc/android/APIFailOpen;
.super Ljava/lang/Object;
.source "APIFailOpen.java"

# interfaces
.implements Lcom/itsoninc/android/ItsOnOemInterface;


# instance fields
.field final DEBUG:Z

.field final LOGTAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsoninc/android/APIFailOpen;->DEBUG:Z

    .line 12
    const-class v0, Lcom/itsoninc/android/APIFailOpen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsoninc/android/APIFailOpen;->LOGTAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public acceptCall()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public accountMms(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 104
    return-void
.end method

.method public authorizeIncomingMms(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public authorizeIncomingSms(Ljava/lang/String;Lcom/itsoninc/android/SmsType;Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/itsoninc/android/SmsType;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public authorizeIncomingSms([B)Z
    .locals 1
    .param p1, "pdu"    # [B

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public authorizeIncomingVoice(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public authorizeOutgoingMms(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 90
    const/4 v0, 0x1

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
    .line 95
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public authorizeOutgoingSms(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "serial"    # I

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public authorizeOutgoingSms([BI)Z
    .locals 1
    .param p1, "pdu"    # [B
    .param p2, "serial"    # I

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public authorizeOutgoingVoice(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public callWaiting(Ljava/lang/String;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public cleanupMms(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 108
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public dial(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public flash(Ljava/lang/String;)Z
    .locals 1
    .param p1, "featureCode"    # Ljava/lang/String;

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public initFramework(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    return-void
.end method

.method public initTelephony(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    return-void
.end method

.method public isDataAllowed(JLjava/lang/String;)Z
    .locals 1
    .param p1, "systemId"    # J
    .param p3, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method public nitzTimeReceived(Ljava/lang/String;J)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;
    .param p2, "nitzReceiveTime"    # J

    .prologue
    .line 143
    return-void
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    .line 148
    return-void
.end method

.method public onImportanceChanged(III)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "importance"    # I

    .prologue
    .line 152
    return-void
.end method

.method public onNewDataSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;

    .prologue
    .line 177
    return-void
.end method

.method public onProcessDied(II)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 156
    return-void
.end method

.method public processCDMACallList(Ljava/util/List;)V
    .locals 0
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
    .line 132
    .local p1, "callList":Ljava/util/List;, "Ljava/util/List<Lcom/itsoninc/android/DeviceCall;>;"
    return-void
.end method

.method public processCallList(Ljava/util/List;)V
    .locals 0
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
    .line 43
    .local p1, "callList":Ljava/util/List;, "Ljava/util/List<Lcom/itsoninc/android/DeviceCall;>;"
    return-void
.end method

.method public registerActivityMapping(Ljava/lang/String;I)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 24
    return-void
.end method

.method public registerDownloadMapping(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 16
    return-void
.end method

.method public registerMediaMapping(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 20
    return-void
.end method

.method public rejectCall()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    return-void
.end method

.method public setDataConnectionHandler(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "trySetupDataMessage"    # Landroid/os/Message;

    .prologue
    .line 173
    return-void
.end method

.method public setEmergencyMode(Z)V
    .locals 0
    .param p1, "inEmergencyMode"    # Z

    .prologue
    .line 136
    return-void
.end method

.method public setFrameworkInterface(Lcom/itsoninc/android/ItsOnFrameworkInterface;)V
    .locals 0
    .param p1, "fwIf"    # Lcom/itsoninc/android/ItsOnFrameworkInterface;

    .prologue
    .line 34
    return-void
.end method

.method public smsDone(I)V
    .locals 0
    .param p1, "serial"    # I

    .prologue
    .line 77
    return-void
.end method

.method public smsError(I)V
    .locals 0
    .param p1, "serial"    # I

    .prologue
    .line 81
    return-void
.end method
