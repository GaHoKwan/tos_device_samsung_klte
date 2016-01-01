.class Landroid/hardware/scontext/SContextService$Listener$CustomTimer;
.super Ljava/util/TimerTask;
.source "SContextService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextService$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomTimer"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/scontext/SContextService$Listener;


# direct methods
.method private constructor <init>(Landroid/hardware/scontext/SContextService$Listener;)V
    .locals 0

    .prologue
    .line 1573
    iput-object p1, p0, Landroid/hardware/scontext/SContextService$Listener$CustomTimer;->this$1:Landroid/hardware/scontext/SContextService$Listener;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/scontext/SContextService$Listener;Landroid/hardware/scontext/SContextService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/hardware/scontext/SContextService$Listener;
    .param p2, "x1"    # Landroid/hardware/scontext/SContextService$1;

    .prologue
    .line 1573
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextService$Listener$CustomTimer;-><init>(Landroid/hardware/scontext/SContextService$Listener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1576
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$Listener$CustomTimer;->this$1:Landroid/hardware/scontext/SContextService$Listener;

    iget-object v0, v0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    # getter for: Landroid/hardware/scontext/SContextService;->mPedometerExceptionMode:I
    invoke-static {v0}, Landroid/hardware/scontext/SContextService;->access$900(Landroid/hardware/scontext/SContextService;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1577
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$Listener$CustomTimer;->this$1:Landroid/hardware/scontext/SContextService$Listener;

    iget-object v0, v0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    const/4 v1, 0x2

    # invokes: Landroid/hardware/scontext/SContextService;->removeSContextService(I)V
    invoke-static {v0, v1}, Landroid/hardware/scontext/SContextService;->access$1100(Landroid/hardware/scontext/SContextService;I)V

    .line 1578
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$Listener$CustomTimer;->this$1:Landroid/hardware/scontext/SContextService$Listener;

    iget-object v0, v0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    const/4 v1, 0x0

    # setter for: Landroid/hardware/scontext/SContextService;->mPedometerExceptionMode:I
    invoke-static {v0, v1}, Landroid/hardware/scontext/SContextService;->access$902(Landroid/hardware/scontext/SContextService;I)I

    .line 1579
    const-string v0, "SContextService"

    const-string v1, "handleDiedBinder(): we waited 60000 sec, but the app doesn\'t resume."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    :cond_0
    return-void
.end method
