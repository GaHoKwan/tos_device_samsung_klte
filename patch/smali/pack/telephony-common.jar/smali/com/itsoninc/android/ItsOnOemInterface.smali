.class public interface abstract Lcom/itsoninc/android/ItsOnOemInterface;
.super Ljava/lang/Object;
.source "ItsOnOemInterface.java"


# virtual methods
.method public abstract acceptCall()V
.end method

.method public abstract accountMms(Ljava/lang/String;)V
.end method

.method public abstract authorizeIncomingMms(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract authorizeIncomingSms(Ljava/lang/String;Lcom/itsoninc/android/SmsType;Ljava/lang/String;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract authorizeIncomingSms([B)Z
.end method

.method public abstract authorizeIncomingVoice(Ljava/lang/String;)Z
.end method

.method public abstract authorizeOutgoingMms(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract authorizeOutgoingMms(Ljava/util/List;Ljava/lang/String;)Z
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
.end method

.method public abstract authorizeOutgoingSms(Ljava/lang/String;I)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract authorizeOutgoingSms([BI)Z
.end method

.method public abstract authorizeOutgoingVoice(Ljava/lang/String;)Z
.end method

.method public abstract callWaiting(Ljava/lang/String;)Z
.end method

.method public abstract cleanupMms(Ljava/lang/String;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract dial(Ljava/lang/String;)Z
.end method

.method public abstract flash(Ljava/lang/String;)Z
.end method

.method public abstract initFramework(Landroid/content/Context;)V
.end method

.method public abstract initTelephony(Landroid/content/Context;)V
.end method

.method public abstract isDataAllowed(JLjava/lang/String;)Z
.end method

.method public abstract nitzTimeReceived(Ljava/lang/String;J)V
.end method

.method public abstract onForegroundActivitiesChanged(IIZ)V
.end method

.method public abstract onImportanceChanged(III)V
.end method

.method public abstract onNewDataSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onProcessDied(II)V
.end method

.method public abstract processCDMACallList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itsoninc/android/DeviceCall;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract processCallList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itsoninc/android/DeviceCall;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerActivityMapping(Ljava/lang/String;I)V
.end method

.method public abstract registerDownloadMapping(Ljava/lang/String;)V
.end method

.method public abstract registerMediaMapping(Ljava/lang/String;)V
.end method

.method public abstract rejectCall()V
.end method

.method public abstract setContext(Landroid/content/Context;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setDataConnectionHandler(Landroid/os/Handler;Landroid/os/Message;)V
.end method

.method public abstract setEmergencyMode(Z)V
.end method

.method public abstract setFrameworkInterface(Lcom/itsoninc/android/ItsOnFrameworkInterface;)V
.end method

.method public abstract smsDone(I)V
.end method

.method public abstract smsError(I)V
.end method
