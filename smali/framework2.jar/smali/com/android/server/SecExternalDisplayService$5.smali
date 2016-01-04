.class Lcom/android/server/SecExternalDisplayService$5;
.super Landroid/telephony/PhoneStateListener;
.source "SecExternalDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SecExternalDisplayService;->handleSmartDockConnection(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SecExternalDisplayService;


# direct methods
.method constructor <init>(Lcom/android/server/SecExternalDisplayService;)V
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Lcom/android/server/SecExternalDisplayService$5;->this$0:Lcom/android/server/SecExternalDisplayService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 563
    if-eq p1, v2, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService$5;->this$0:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService$5;->this$0:Lcom/android/server/SecExternalDisplayService;

    const-string v1, "Internal"

    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService$5;->this$0:Lcom/android/server/SecExternalDisplayService;

    # getter for: Lcom/android/server/SecExternalDisplayService;->mDockSurfaceWidth:I
    invoke-static {v2}, Lcom/android/server/SecExternalDisplayService;->access$200(Lcom/android/server/SecExternalDisplayService;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/SecExternalDisplayService$5;->this$0:Lcom/android/server/SecExternalDisplayService;

    # getter for: Lcom/android/server/SecExternalDisplayService;->mDockSurfaceHeight:I
    invoke-static {v3}, Lcom/android/server/SecExternalDisplayService;->access$300(Lcom/android/server/SecExternalDisplayService;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayDestroySurface(Ljava/lang/String;II)Z

    .line 574
    :cond_1
    :goto_0
    return-void

    .line 569
    :cond_2
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService$5;->this$0:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService$5;->this$0:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 571
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService$5;->this$0:Lcom/android/server/SecExternalDisplayService;

    const-string v1, "Internal"

    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService$5;->this$0:Lcom/android/server/SecExternalDisplayService;

    # getter for: Lcom/android/server/SecExternalDisplayService;->mDockSurfaceWidth:I
    invoke-static {v2}, Lcom/android/server/SecExternalDisplayService;->access$200(Lcom/android/server/SecExternalDisplayService;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/SecExternalDisplayService$5;->this$0:Lcom/android/server/SecExternalDisplayService;

    # getter for: Lcom/android/server/SecExternalDisplayService;->mDockSurfaceHeight:I
    invoke-static {v3}, Lcom/android/server/SecExternalDisplayService;->access$300(Lcom/android/server/SecExternalDisplayService;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayCreateSurface(Ljava/lang/String;II)Z

    goto :goto_0
.end method
