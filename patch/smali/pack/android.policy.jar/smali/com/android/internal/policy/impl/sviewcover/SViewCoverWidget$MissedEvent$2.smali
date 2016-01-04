.class Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$2;
.super Landroid/content/BroadcastReceiver;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 312
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 314
    :cond_0
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->DBG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "received MISSED_EVENT intent !! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->access$500(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x12c2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 317
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->access$500(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 319
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    return-void
.end method
