.class Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView$1;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView$1;->this$0:Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView$1;->this$0:Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;

    iget-object v2, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView$1;->this$0:Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;

    # getter for: Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->access$100(Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "db_pen_hovering_fenghenztlws_ink_effect"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    # setter for: Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mDisabled:Z
    invoke-static {v1, v0}, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->access$002(Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;Z)Z

    iget-object v0, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView$1;->this$0:Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;

    iget-object v1, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView$1;->this$0:Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;

    # getter for: Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->access$300(Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "db_inkeffect_fenghenztlwssxsl_picker"

    const/16 v3, 0x1f4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    # setter for: Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mNetworkUpdateInterval:I
    invoke-static {v0, v3}, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->access$202(Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;I)I

    iget-object v0, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView$1;->this$0:Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;

    # invokes: Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->updateNetworkSpeed()V
    invoke-static {v0}, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->access$400(Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;)V

    return-void
.end method
