.class Landroid/util/fenghen/wppd/systemui/killer/MemCleanView$1;
.super Landroid/database/ContentObserver;
.source "MemCleanView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/fenghen/wppd/systemui/killer/MemCleanView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/util/fenghen/wppd/systemui/killer/MemCleanView;


# direct methods
.method constructor <init>(Landroid/util/fenghen/wppd/systemui/killer/MemCleanView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Landroid/util/fenghen/wppd/systemui/killer/MemCleanView$1;->this$0:Landroid/util/fenghen/wppd/systemui/killer/MemCleanView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Landroid/util/fenghen/wppd/systemui/killer/MemCleanView$1;->this$0:Landroid/util/fenghen/wppd/systemui/killer/MemCleanView;

    # getter for: Landroid/util/fenghen/wppd/systemui/killer/MemCleanView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/util/fenghen/wppd/systemui/killer/MemCleanView;->access$000(Landroid/util/fenghen/wppd/systemui/killer/MemCleanView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/util/fenghen/wppd/systemui/killer/MemCleanView$1$1;

    invoke-direct {v1, p0}, Landroid/util/fenghen/wppd/systemui/killer/MemCleanView$1$1;-><init>(Landroid/util/fenghen/wppd/systemui/killer/MemCleanView$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method