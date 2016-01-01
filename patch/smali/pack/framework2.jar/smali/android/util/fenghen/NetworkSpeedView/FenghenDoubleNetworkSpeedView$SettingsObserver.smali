.class Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NetworkSpeedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;


# direct methods
.method constructor <init>(Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView$SettingsObserver;->this$0:Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView$SettingsObserver;->this$0:Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;

    # getter for: Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->access$000(Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "db_pen_hovering_fenghenztlshws_ink_effect"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView$SettingsObserver;->this$0:Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;

    const/4 v2, 0x1

    # setter for: Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mDisabled:Z
    invoke-static {v1, v2}, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->access$302(Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;Z)Z

    :goto_0
    iget-object v1, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView$SettingsObserver;->this$0:Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;

    const-string v2, "db_inkeffect_fenghenztlshwssxsl_picker"

    const/16 v3, 0xfa0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    # setter for: Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mNetworkUpdateInterval:I
    invoke-static {v1, v2}, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->access$402(Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;I)I

    iget-object v1, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView$SettingsObserver;->this$0:Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;

    # invokes: Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->updateNetworkSpeed()V
    invoke-static {v1}, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->access$200(Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;)V

    return-void

    :cond_0
    iget-object v1, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView$SettingsObserver;->this$0:Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;

    # setter for: Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mDisabled:Z
    invoke-static {v1, v2}, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->access$302(Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;Z)Z

    goto :goto_0
.end method
