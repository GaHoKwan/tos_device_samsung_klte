.class Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$3;
.super Ljava/lang/Object;
.source "CaPassiveCurrentPositionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->enable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$3;->this$0:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$3;->this$0:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    # invokes: Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->registerGpsListener()V
    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->access$200(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V

    .line 369
    return-void
.end method
