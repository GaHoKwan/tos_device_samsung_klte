.class Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView$3;
.super Ljava/lang/Object;
.source "NetworkSpeedView.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView$3;->this$0:Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView$3;->this$0:Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;

    # invokes: Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->updateNetworkSpeed()V
    invoke-static {v0}, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->access$400(Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;)V

    return-void
.end method
