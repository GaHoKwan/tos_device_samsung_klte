.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$7;
.super Landroid/content/BroadcastReceiver;
.source "TwToolBoxFloatingViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$7;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 477
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    const-string/jumbo v1, "toolbox"

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$7;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$7;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isValidUser()Z
    invoke-static {v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$2400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v2

    # setter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mValidUser:Z
    invoke-static {v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$2302(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z

    .line 481
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$7;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->reloadContentObserver()V
    invoke-static {v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$2500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    .line 482
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$7;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-virtual {v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->reset()V

    .line 484
    :cond_0
    return-void
.end method
