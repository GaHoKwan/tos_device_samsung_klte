.class Landroid/util/fenghen/wppd/systemui/killer/MemCleanView$1$1;
.super Ljava/lang/Object;
.source "MemCleanView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/util/fenghen/wppd/systemui/killer/MemCleanView$1;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/util/fenghen/wppd/systemui/killer/MemCleanView$1;


# direct methods
.method constructor <init>(Landroid/util/fenghen/wppd/systemui/killer/MemCleanView$1;)V
    .locals 0

    iput-object p1, p0, Landroid/util/fenghen/wppd/systemui/killer/MemCleanView$1$1;->this$1:Landroid/util/fenghen/wppd/systemui/killer/MemCleanView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/util/fenghen/wppd/systemui/killer/MemCleanView$1$1;->this$1:Landroid/util/fenghen/wppd/systemui/killer/MemCleanView$1;

    iget-object v0, v0, Landroid/util/fenghen/wppd/systemui/killer/MemCleanView$1;->this$0:Landroid/util/fenghen/wppd/systemui/killer/MemCleanView;

    invoke-virtual {v0}, Landroid/util/fenghen/wppd/systemui/killer/MemCleanView;->updateSettings()V

    return-void
.end method
