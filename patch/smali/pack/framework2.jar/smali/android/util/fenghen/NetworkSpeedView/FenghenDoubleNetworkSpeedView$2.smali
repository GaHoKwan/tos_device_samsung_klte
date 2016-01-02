.class Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView$2;
.super Ljava/lang/Object;
.source "NetworkSpeedView.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView$2;->this$0:Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView$2;->this$0:Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;

    # invokes: Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->updateNetworkSpeed()V
    invoke-static {v0}, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->access$200(Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;)V

    return-void
.end method
