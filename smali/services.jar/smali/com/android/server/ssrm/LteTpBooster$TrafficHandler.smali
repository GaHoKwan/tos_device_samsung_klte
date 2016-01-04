.class Lcom/android/server/ssrm/LteTpBooster$TrafficHandler;
.super Landroid/os/Handler;
.source "LteTpBooster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/LteTpBooster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrafficHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/LteTpBooster;


# direct methods
.method private constructor <init>(Lcom/android/server/ssrm/LteTpBooster;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/server/ssrm/LteTpBooster$TrafficHandler;->this$0:Lcom/android/server/ssrm/LteTpBooster;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ssrm/LteTpBooster;Lcom/android/server/ssrm/LteTpBooster$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/ssrm/LteTpBooster;
    .param p2, "x1"    # Lcom/android/server/ssrm/LteTpBooster$1;

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/LteTpBooster$TrafficHandler;-><init>(Lcom/android/server/ssrm/LteTpBooster;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 157
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 159
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/ssrm/LteTpBooster$TrafficHandler;->this$0:Lcom/android/server/ssrm/LteTpBooster;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_1

    :goto_1
    # setter for: Lcom/android/server/ssrm/LteTpBooster;->mEnableTrafficStatsPoll:Z
    invoke-static {v2, v0}, Lcom/android/server/ssrm/LteTpBooster;->access$402(Lcom/android/server/ssrm/LteTpBooster;Z)Z

    .line 160
    iget-object v0, p0, Lcom/android/server/ssrm/LteTpBooster$TrafficHandler;->this$0:Lcom/android/server/ssrm/LteTpBooster;

    # operator++ for: Lcom/android/server/ssrm/LteTpBooster;->mTrafficStatsPollToken:I
    invoke-static {v0}, Lcom/android/server/ssrm/LteTpBooster;->access$508(Lcom/android/server/ssrm/LteTpBooster;)I

    .line 161
    iget-object v0, p0, Lcom/android/server/ssrm/LteTpBooster$TrafficHandler;->this$0:Lcom/android/server/ssrm/LteTpBooster;

    # getter for: Lcom/android/server/ssrm/LteTpBooster;->mEnableTrafficStatsPoll:Z
    invoke-static {v0}, Lcom/android/server/ssrm/LteTpBooster;->access$400(Lcom/android/server/ssrm/LteTpBooster;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/server/ssrm/LteTpBooster$TrafficHandler;->this$0:Lcom/android/server/ssrm/LteTpBooster;

    invoke-virtual {v0}, Lcom/android/server/ssrm/LteTpBooster;->notifyOnDataActivity()V

    .line 163
    iget-object v0, p0, Lcom/android/server/ssrm/LteTpBooster$TrafficHandler;->this$0:Lcom/android/server/ssrm/LteTpBooster;

    # getter for: Lcom/android/server/ssrm/LteTpBooster;->mTrafficStatsPollToken:I
    invoke-static {v0}, Lcom/android/server/ssrm/LteTpBooster;->access$500(Lcom/android/server/ssrm/LteTpBooster;)I

    move-result v0

    invoke-static {p0, v4, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ssrm/LteTpBooster$TrafficHandler;->this$0:Lcom/android/server/ssrm/LteTpBooster;

    # getter for: Lcom/android/server/ssrm/LteTpBooster;->mPollingPeriod:I
    invoke-static {v1}, Lcom/android/server/ssrm/LteTpBooster;->access$600(Lcom/android/server/ssrm/LteTpBooster;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 159
    goto :goto_1

    .line 169
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/ssrm/LteTpBooster$TrafficHandler;->this$0:Lcom/android/server/ssrm/LteTpBooster;

    # getter for: Lcom/android/server/ssrm/LteTpBooster;->mTrafficStatsPollToken:I
    invoke-static {v2}, Lcom/android/server/ssrm/LteTpBooster;->access$500(Lcom/android/server/ssrm/LteTpBooster;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/server/ssrm/LteTpBooster$TrafficHandler;->this$0:Lcom/android/server/ssrm/LteTpBooster;

    invoke-virtual {v0}, Lcom/android/server/ssrm/LteTpBooster;->notifyOnDataActivity()V

    .line 171
    iget-object v0, p0, Lcom/android/server/ssrm/LteTpBooster$TrafficHandler;->this$0:Lcom/android/server/ssrm/LteTpBooster;

    # getter for: Lcom/android/server/ssrm/LteTpBooster;->mTrafficStatsPollToken:I
    invoke-static {v0}, Lcom/android/server/ssrm/LteTpBooster;->access$500(Lcom/android/server/ssrm/LteTpBooster;)I

    move-result v0

    invoke-static {p0, v4, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ssrm/LteTpBooster$TrafficHandler;->this$0:Lcom/android/server/ssrm/LteTpBooster;

    # getter for: Lcom/android/server/ssrm/LteTpBooster;->mPollingPeriod:I
    invoke-static {v1}, Lcom/android/server/ssrm/LteTpBooster;->access$600(Lcom/android/server/ssrm/LteTpBooster;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 177
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/ssrm/LteTpBooster$TrafficHandler;->this$0:Lcom/android/server/ssrm/LteTpBooster;

    # getter for: Lcom/android/server/ssrm/LteTpBooster;->mClients:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/ssrm/LteTpBooster;->access$700(Lcom/android/server/ssrm/LteTpBooster;)Ljava/util/List;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Messenger;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/ssrm/LteTpBooster$TrafficHandler;->this$0:Lcom/android/server/ssrm/LteTpBooster;

    # getter for: Lcom/android/server/ssrm/LteTpBooster;->mClients:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/ssrm/LteTpBooster;->access$700(Lcom/android/server/ssrm/LteTpBooster;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
