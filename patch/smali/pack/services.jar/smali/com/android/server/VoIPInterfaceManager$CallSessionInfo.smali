.class public Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
.super Ljava/lang/Object;
.source "VoIPInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VoIPInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallSessionInfo"
.end annotation


# instance fields
.field private actionName:Ljava/lang/String;

.field private callCountInThisSession:I

.field private callNumber:Ljava/lang/String;

.field clientCallback:Landroid/os/IVoIPCallbackInterface;

.field private isIncoming:Ljava/lang/Boolean;

.field private mCurrCallState:Lcom/android/server/VoIPInterfaceManager$CallState;

.field private packageName:Ljava/lang/String;

.field private remotePartyNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/VoIPInterfaceManager;

.field private useBTCall:Ljava/lang/Boolean;

.field private useHoldCall:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/android/server/VoIPInterfaceManager;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    iput-object p1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->this$0:Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    sget-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->IDLE:Lcom/android/server/VoIPInterfaceManager$CallState;

    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->mCurrCallState:Lcom/android/server/VoIPInterfaceManager$CallState;

    .line 95
    iput-object v1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->packageName:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->actionName:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callNumber:Ljava/lang/String;

    .line 98
    iput-object v1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->remotePartyNumber:Ljava/lang/String;

    .line 100
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->useBTCall:Ljava/lang/Boolean;

    .line 101
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->useHoldCall:Ljava/lang/Boolean;

    .line 103
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->isIncoming:Ljava/lang/Boolean;

    .line 106
    iput v2, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callCountInThisSession:I

    .line 108
    iput-object v1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->clientCallback:Landroid/os/IVoIPCallbackInterface;

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->useBTCall:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->useHoldCall:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->isIncoming:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->remotePartyNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;)Lcom/android/server/VoIPInterfaceManager$CallState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->mCurrCallState:Lcom/android/server/VoIPInterfaceManager$CallState;

    return-object v0
.end method


# virtual methods
.method public clearCallSessionInfo()V
    .locals 2

    .prologue
    .line 120
    const-class v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v1

    .line 121
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->packageName:Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->actionName:Ljava/lang/String;

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callNumber:Ljava/lang/String;

    .line 124
    monitor-exit v1

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBTStatus()Z
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->this$0:Lcom/android/server/VoIPInterfaceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBTStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->useBTCall:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/VoIPInterfaceManager;->access$000(Lcom/android/server/VoIPInterfaceManager;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->useBTCall:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getCallCountInThisSession()I
    .locals 2

    .prologue
    .line 198
    const-class v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v1

    .line 199
    :try_start_0
    iget v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callCountInThisSession:I

    monitor-exit v1

    return v0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getClientCallbackInstance()Landroid/os/IVoIPCallbackInterface;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->clientCallback:Landroid/os/IVoIPCallbackInterface;

    return-object v0
.end method

.method public getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;
    .locals 2

    .prologue
    .line 168
    const-class v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v1

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->mCurrCallState:Lcom/android/server/VoIPInterfaceManager$CallState;

    monitor-exit v1

    return-object v0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDirection()Z
    .locals 2

    .prologue
    .line 224
    const-class v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v1

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->isIncoming:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHoldStatus()Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->useHoldCall:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    const-class v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v1

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->packageName:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRegisteredCallNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    const-class v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v1

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callNumber:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRemotePartyNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    const-class v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v1

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->remotePartyNumber:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getactionName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    const-class v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v1

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->actionName:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isValidSessionInfo()Z
    .locals 4

    .prologue
    .line 145
    const-class v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->actionName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->clientCallback:Landroid/os/IVoIPCallbackInterface;

    if-nez v0, :cond_1

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->this$0:Lcom/android/server/VoIPInterfaceManager;

    const-string v2, "    ** YOU SHOULD FILL OUT ALL FIELD ** "

    # invokes: Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/server/VoIPInterfaceManager;->access$000(Lcom/android/server/VoIPInterfaceManager;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->this$0:Lcom/android/server/VoIPInterfaceManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    isValidSessionInfo() : pakageName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actionName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->actionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", callNumber :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", clientCallback : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->clientCallback:Landroid/os/IVoIPCallbackInterface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/server/VoIPInterfaceManager;->access$000(Lcom/android/server/VoIPInterfaceManager;Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    monitor-exit v1

    .line 156
    :goto_0
    return v0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->this$0:Lcom/android/server/VoIPInterfaceManager;

    const-string v2, "    isValidSessionInfo() : All session field is valid"

    # invokes: Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/server/VoIPInterfaceManager;->access$000(Lcom/android/server/VoIPInterfaceManager;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->this$0:Lcom/android/server/VoIPInterfaceManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    isValidSessionInfo() : pakageName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actionName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->actionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", callNumber :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", clientCallback : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->clientCallback:Landroid/os/IVoIPCallbackInterface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/server/VoIPInterfaceManager;->access$000(Lcom/android/server/VoIPInterfaceManager;Ljava/lang/String;)V

    .line 156
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBTStatus(Z)V
    .locals 3
    .param p1, "useBT"    # Z

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->this$0:Lcom/android/server/VoIPInterfaceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBTStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/VoIPInterfaceManager;->access$000(Lcom/android/server/VoIPInterfaceManager;Ljava/lang/String;)V

    .line 175
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->useBTCall:Ljava/lang/Boolean;

    .line 176
    return-void
.end method

.method public setCallCountInThisSession(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 192
    const-class v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v1

    .line 193
    :try_start_0
    iput p1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callCountInThisSession:I

    .line 194
    monitor-exit v1

    .line 195
    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCallSessionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoIPCallbackInterface;)V
    .locals 2
    .param p1, "packName"    # Ljava/lang/String;
    .param p2, "actionName"    # Ljava/lang/String;
    .param p3, "callNumber"    # Ljava/lang/String;
    .param p4, "cb"    # Landroid/os/IVoIPCallbackInterface;

    .prologue
    .line 111
    const-class v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v1

    .line 112
    :try_start_0
    iput-object p1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->packageName:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->actionName:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callNumber:Ljava/lang/String;

    .line 115
    iput-object p4, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->clientCallback:Landroid/os/IVoIPCallbackInterface;

    .line 116
    monitor-exit v1

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V
    .locals 2
    .param p1, "mCallState"    # Lcom/android/server/VoIPInterfaceManager$CallState;

    .prologue
    .line 162
    const-class v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v1

    .line 163
    :try_start_0
    iput-object p1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->mCurrCallState:Lcom/android/server/VoIPInterfaceManager$CallState;

    .line 164
    monitor-exit v1

    .line 165
    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDirection(Z)V
    .locals 3
    .param p1, "direction"    # Z

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->this$0:Lcom/android/server/VoIPInterfaceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDirection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/VoIPInterfaceManager;->access$000(Lcom/android/server/VoIPInterfaceManager;Ljava/lang/String;)V

    .line 221
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->isIncoming:Ljava/lang/Boolean;

    .line 222
    return-void
.end method

.method public setRemotePartyNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 204
    const-class v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v1

    .line 205
    :try_start_0
    iput-object p1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->remotePartyNumber:Ljava/lang/String;

    .line 206
    monitor-exit v1

    .line 207
    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
