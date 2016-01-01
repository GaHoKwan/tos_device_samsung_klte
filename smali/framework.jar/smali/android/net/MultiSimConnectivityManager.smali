.class public Landroid/net/MultiSimConnectivityManager;
.super Landroid/net/ConnectivityManager;
.source "MultiSimConnectivityManager.java"


# static fields
.field public static final ACTION_DATA_CONNECTION_CHANGE_FAIL:Ljava/lang/String; = "android.net.conn.DATA_CONNECTION_CHANGE_FAIL"

.field public static final ACTION_DATA_CONNECTION_CHANGE_SUCCESS:Ljava/lang/String; = "android.net.conn.DATA_CONNECTION_CHANGE_SUCCESS"

.field public static final ACTION_DATA_RECONNECTION_FAIL:Ljava/lang/String; = "android.net.conn.DATA_RECONNECTION_FAIL"

.field public static final EXTRA_DATA_CONNECTION_SIMSLOT:Ljava/lang/String; = "simSlot"

.field private static final TAG:Ljava/lang/String; = "MultiSimConnectivityManager"


# instance fields
.field private final mService:Landroid/net/IConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/net/IConnectivityManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "service"    # Landroid/net/IConnectivityManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Landroid/net/ConnectivityManager;-><init>(Landroid/net/IConnectivityManager;Ljava/lang/String;)V

    .line 89
    iput-object p1, p0, Landroid/net/MultiSimConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    .line 90
    return-void
.end method


# virtual methods
.method public getMobileDataEnabled()Z
    .locals 2

    .prologue
    .line 182
    :try_start_0
    iget-object v1, p0, Landroid/net/MultiSimConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getMobileDataEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 185
    :goto_0
    return v1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 185
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onSwitchDataNetworkCallback(IZ)V
    .locals 2
    .param p1, "simSlot"    # I
    .param p2, "success"    # Z

    .prologue
    .line 136
    :try_start_0
    iget-object v1, p0, Landroid/net/MultiSimConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->onSwitchDataNetworkCallback(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onSwitchToSim1DataNetworkCallback(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/net/MultiSimConnectivityManager;->onSwitchDataNetworkCallback(IZ)V

    .line 149
    return-void
.end method

.method public onSwitchToSim2DataNetworkCallback(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 156
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/net/MultiSimConnectivityManager;->onSwitchDataNetworkCallback(IZ)V

    .line 157
    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 168
    :try_start_0
    iget-object v1, p0, Landroid/net/MultiSimConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setMobileDataEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public switchDataNetwork(I)V
    .locals 1
    .param p1, "simSlot"    # I

    .prologue
    .line 97
    :try_start_0
    iget-object v0, p0, Landroid/net/MultiSimConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->switchDataNetwork(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public switchDataNetworkForMMS(I)V
    .locals 1
    .param p1, "simSlot"    # I

    .prologue
    .line 123
    :try_start_0
    iget-object v0, p0, Landroid/net/MultiSimConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->switchDataNetworkForMMS(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public switchToSim1DataNetwork()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/MultiSimConnectivityManager;->switchDataNetwork(I)V

    .line 108
    return-void
.end method

.method public switchToSim2DataNetwork()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/MultiSimConnectivityManager;->switchDataNetwork(I)V

    .line 116
    return-void
.end method
