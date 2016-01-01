.class Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView$2;
.super Landroid/content/BroadcastReceiver;
.source "NetworkSpeedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;


# direct methods
.method constructor <init>(Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;)V
    .locals 0

    iput-object p1, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView$2;->this$0:Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v2, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView$2;->this$0:Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;

    # getter for: Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->access$500(Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    iget-object v3, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView$2;->this$0:Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    # setter for: Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mIsNetworkConnected:Z
    invoke-static {v3, v2}, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->access$602(Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;Z)Z

    iget-object v2, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView$2;->this$0:Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;

    # invokes: Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->updateNetworkSpeed()V
    invoke-static {v2}, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->access$400(Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
