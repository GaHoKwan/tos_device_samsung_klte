.class Lcom/movial/ipphone/IPCall;
.super Lcom/android/internal/telephony/Call;
.source "IPCall.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field connections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field owner:Lcom/movial/ipphone/IPCallTracker;


# direct methods
.method constructor <init>(Lcom/movial/ipphone/IPCallTracker;)V
    .locals 1
    .param p1, "owner"    # Lcom/movial/ipphone/IPCallTracker;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/internal/telephony/Call;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/movial/ipphone/IPCall;->connections:Ljava/util/ArrayList;

    .line 194
    const-string v0, "IPCall"

    iput-object v0, p0, Lcom/movial/ipphone/IPCall;->TAG:Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/movial/ipphone/IPCall;->owner:Lcom/movial/ipphone/IPCallTracker;

    .line 83
    return-void
.end method


# virtual methods
.method attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/movial/ipphone/IPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iput-object p2, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    .line 119
    return-void
.end method

.method clearDisconnected()V
    .locals 5

    .prologue
    .line 181
    iget-object v2, p0, Lcom/movial/ipphone/IPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 182
    iget-object v2, p0, Lcom/movial/ipphone/IPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/movial/ipphone/IPConnection;

    .line 184
    .local v0, "cn":Lcom/movial/ipphone/IPConnection;
    invoke-virtual {v0}, Lcom/movial/ipphone/IPConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    .line 185
    iget-object v2, p0, Lcom/movial/ipphone/IPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 181
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 188
    .end local v0    # "cn":Lcom/movial/ipphone/IPConnection;
    :cond_1
    iget-object v2, p0, Lcom/movial/ipphone/IPCall;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearDisconnected. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/movial/ipphone/IPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v2, p0, Lcom/movial/ipphone/IPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 190
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v2, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    .line 192
    :cond_2
    return-void
.end method

.method connectionDisconnected(Lcom/movial/ipphone/IPConnection;)Z
    .locals 6
    .param p1, "conn"    # Lcom/movial/ipphone/IPConnection;

    .prologue
    .line 141
    iget-object v2, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    .line 142
    .local v2, "oldstate":Lcom/android/internal/telephony/Call$State;
    iget-object v4, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_1

    .line 143
    const/4 v0, 0x1

    .line 145
    .local v0, "hasOnlyDisconnectedConnections":Z
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Lcom/movial/ipphone/IPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "s":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 146
    iget-object v4, p0, Lcom/movial/ipphone/IPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_2

    .line 147
    const/4 v0, 0x0

    .line 152
    :cond_0
    if-eqz v0, :cond_1

    .line 153
    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    iput-object v4, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    .line 156
    .end local v0    # "hasOnlyDisconnectedConnections":Z
    .end local v1    # "i":I
    .end local v3    # "s":I
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    return v4

    .line 145
    .restart local v0    # "hasOnlyDisconnectedConnections":Z
    .restart local v1    # "i":I
    .restart local v3    # "s":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v0    # "hasOnlyDisconnectedConnections":Z
    .end local v1    # "i":I
    .end local v3    # "s":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method detach(Lcom/movial/ipphone/IPConnection;)V
    .locals 1
    .param p1, "conn"    # Lcom/movial/ipphone/IPConnection;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/movial/ipphone/IPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/movial/ipphone/IPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 125
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    .line 127
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public fallbackHangupVTCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "fallbackHangupVTCall : Unsupported Action"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/movial/ipphone/IPCall;->connections:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/movial/ipphone/IPCall;->owner:Lcom/movial/ipphone/IPCallTracker;

    iget-object v0, v0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    return-object v0
.end method

.method public hangup()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/movial/ipphone/IPCall;->owner:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v0, p0}, Lcom/movial/ipphone/IPCallTracker;->hangup(Lcom/movial/ipphone/IPCall;)V

    .line 109
    return-void
.end method

.method isFull()Z
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/movial/ipphone/IPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiparty()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 100
    iget-object v1, p0, Lcom/movial/ipphone/IPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoCall()Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method onHangupLocal()V
    .locals 4

    .prologue
    .line 170
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/movial/ipphone/IPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 171
    iget-object v3, p0, Lcom/movial/ipphone/IPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/movial/ipphone/IPConnection;

    .line 172
    .local v0, "cn":Lcom/movial/ipphone/IPConnection;
    invoke-virtual {v0}, Lcom/movial/ipphone/IPConnection;->onHangupLocal()V

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    .end local v0    # "cn":Lcom/movial/ipphone/IPConnection;
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    iput-object v3, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    .line 175
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method update(Lcom/movial/ipphone/IPConnection;Lcom/android/internal/telephony/Call$State;)Z
    .locals 3
    .param p1, "conn"    # Lcom/movial/ipphone/IPConnection;
    .param p2, "newstate"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 130
    move-object v1, p2

    .line 131
    .local v1, "newState":Lcom/android/internal/telephony/Call$State;
    const/4 v0, 0x0

    .line 133
    .local v0, "changed":Z
    iget-object v2, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    .line 134
    iput-object v1, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    .line 135
    const/4 v0, 0x1

    .line 137
    :cond_0
    return v0
.end method
