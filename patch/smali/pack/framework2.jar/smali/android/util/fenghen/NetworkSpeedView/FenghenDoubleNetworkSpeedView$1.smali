.class Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkSpeedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;


# direct methods
.method constructor <init>(Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;)V
    .locals 0

    iput-object p1, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView$1;->this$0:Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v2, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView$1;->this$0:Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;

    # getter for: Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->access$000(Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView$1;->this$0:Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;

    const/4 v3, 0x1

    # setter for: Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mIsNetworkConnected:Z
    invoke-static {v2, v3}, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->access$102(Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;Z)Z

    :goto_0
    iget-object v2, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView$1;->this$0:Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;

    # invokes: Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->updateNetworkSpeed()V
    invoke-static {v2}, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->access$200(Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;)V

    return-void

    :cond_0
    iget-object v2, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView$1;->this$0:Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;

    const/4 v3, 0x0

    # setter for: Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mIsNetworkConnected:Z
    invoke-static {v2, v3}, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->access$102(Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;Z)Z

    goto :goto_0
.end method
