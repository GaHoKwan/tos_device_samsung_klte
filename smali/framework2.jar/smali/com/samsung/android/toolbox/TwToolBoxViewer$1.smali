.class Lcom/samsung/android/toolbox/TwToolBoxViewer$1;
.super Landroid/content/BroadcastReceiver;
.source "TwToolBoxViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/toolbox/TwToolBoxViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxViewer;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxViewer;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer$1;->this$0:Lcom/samsung/android/toolbox/TwToolBoxViewer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 109
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer$1;->this$0:Lcom/samsung/android/toolbox/TwToolBoxViewer;

    const-string/jumbo v4, "state"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_1

    :goto_0
    # setter for: Lcom/samsung/android/toolbox/TwToolBoxViewer;->mEarphonesPlugged:Z
    invoke-static {v3, v1}, Lcom/samsung/android/toolbox/TwToolBoxViewer;->access$002(Lcom/samsung/android/toolbox/TwToolBoxViewer;Z)Z

    .line 110
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer$1;->this$0:Lcom/samsung/android/toolbox/TwToolBoxViewer;

    new-instance v2, Lcom/samsung/android/toolbox/TwToolBoxViewer$1$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/toolbox/TwToolBoxViewer$1$1;-><init>(Lcom/samsung/android/toolbox/TwToolBoxViewer$1;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 109
    goto :goto_0

    .line 117
    :cond_2
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    # getter for: Lcom/samsung/android/toolbox/TwToolBoxViewer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/toolbox/TwToolBoxViewer;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer$1;->this$0:Lcom/samsung/android/toolbox/TwToolBoxViewer;

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxViewer;->reloadContentObserver()V
    invoke-static {v1}, Lcom/samsung/android/toolbox/TwToolBoxViewer;->access$400(Lcom/samsung/android/toolbox/TwToolBoxViewer;)V

    .line 120
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer$1;->this$0:Lcom/samsung/android/toolbox/TwToolBoxViewer;

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer$1;->this$0:Lcom/samsung/android/toolbox/TwToolBoxViewer;

    iget-object v2, v2, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    invoke-virtual {v2}, Lcom/samsung/android/toolbox/TwToolBoxManager;->getToolList()[Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxViewer;->createPackageList([Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxViewer;->access$100(Lcom/samsung/android/toolbox/TwToolBoxViewer;[Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer$1;->this$0:Lcom/samsung/android/toolbox/TwToolBoxViewer;

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxViewer;->updateVisibility()V
    invoke-static {v1}, Lcom/samsung/android/toolbox/TwToolBoxViewer;->access$200(Lcom/samsung/android/toolbox/TwToolBoxViewer;)V

    goto :goto_1
.end method
