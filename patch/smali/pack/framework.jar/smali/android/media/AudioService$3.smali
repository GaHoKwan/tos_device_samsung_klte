.class Landroid/media/AudioService$3;
.super Landroid/os/UEventObserver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .locals 0

    .prologue
    .line 6746
    iput-object p1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    const/16 v1, 0x1b

    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6749
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBootCompleted:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$10200(Landroid/media/AudioService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6778
    :cond_0
    :goto_0
    return-void

    .line 6752
    :cond_1
    const-string v0, "USB_CONNECTION"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6753
    .local v7, "USB_CONNECTION":Ljava/lang/String;
    const-string v0, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUEvent(device) :: USB_CONNECTION = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6754
    const-string v0, "READY"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6755
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->isUSBCheckStreamActive()Z
    invoke-static {v0}, Landroid/media/AudioService;->access$11400(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->isInCommunication()Z
    invoke-static {v0}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mFakeState:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$9200(Landroid/media/AudioService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mUSBDetected:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$11500(Landroid/media/AudioService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6756
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->getCurOutDevice()I
    invoke-static {v0}, Landroid/media/AudioService;->access$9300(Landroid/media/AudioService;)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    .line 6757
    const-string v0, "AudioService"

    const-string v4, "### set usb check device"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6758
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    # setter for: Landroid/media/AudioService;->mFakeState:Z
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$9202(Landroid/media/AudioService;Z)Z

    .line 6759
    const-string v0, ""

    invoke-static {v6, v2, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 6760
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v0}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    const/4 v5, 0x0

    const/16 v6, 0xdac

    move v4, v3

    # invokes: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    .line 6763
    :cond_2
    const-string v0, "CONNECTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "DISCONNECTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6764
    :cond_3
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mFakeState:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$9200(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6765
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v0}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 6766
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    # setter for: Landroid/media/AudioService;->mFakeState:Z
    invoke-static {v0, v3}, Landroid/media/AudioService;->access$9202(Landroid/media/AudioService;Z)Z

    .line 6767
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->getCurOutDevice()I
    invoke-static {v0}, Landroid/media/AudioService;->access$9300(Landroid/media/AudioService;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 6768
    const-string v0, "AudioService"

    const-string v1, "### release usb check device"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6769
    const-string v0, ""

    invoke-static {v6, v3, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 6773
    :cond_4
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mUSBDetected:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$11500(Landroid/media/AudioService;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "CONNECTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    # setter for: Landroid/media/AudioService;->mUSBDetected:Z
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$11502(Landroid/media/AudioService;Z)Z

    .line 6774
    :cond_5
    const-string v0, "DISCONNECTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    # setter for: Landroid/media/AudioService;->mUSBDetected:Z
    invoke-static {v0, v3}, Landroid/media/AudioService;->access$11502(Landroid/media/AudioService;Z)Z

    goto/16 :goto_0

    .line 6776
    :cond_6
    const-string v0, "AudioService"

    const-string v1, "Other USB event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
