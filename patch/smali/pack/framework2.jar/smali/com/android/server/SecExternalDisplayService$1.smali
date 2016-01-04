.class Lcom/android/server/SecExternalDisplayService$1;
.super Landroid/os/Handler;
.source "SecExternalDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SecExternalDisplayService;
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
    .line 165
    iput-object p1, p0, Lcom/android/server/SecExternalDisplayService$1;->this$0:Lcom/android/server/SecExternalDisplayService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 169
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService$1;->this$0:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    .line 170
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService$1;->this$0:Lcom/android/server/SecExternalDisplayService;

    # invokes: Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetWakeLock(Z)V
    invoke-static {v0, v2}, Lcom/android/server/SecExternalDisplayService;->access$000(Lcom/android/server/SecExternalDisplayService;Z)V

    .line 171
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService$1;->this$0:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSToast;->EDS_TOAST_HDMI_CONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayToast(I)V

    .line 173
    return-void
.end method
