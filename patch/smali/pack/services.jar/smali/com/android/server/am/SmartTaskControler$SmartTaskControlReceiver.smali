.class Lcom/android/server/am/SmartTaskControler$SmartTaskControlReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartTaskControler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SmartTaskControler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmartTaskControlReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/SmartTaskControler;


# direct methods
.method constructor <init>(Lcom/android/server/am/SmartTaskControler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/SmartTaskControler$SmartTaskControlReceiver;->this$0:Lcom/android/server/am/SmartTaskControler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kill_task_case_1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/SmartTaskControler$SmartTaskControlReceiver;->this$0:Lcom/android/server/am/SmartTaskControler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/SmartTaskControler;->cleanUpTask(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kill_task_case_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/SmartTaskControler$SmartTaskControlReceiver;->this$0:Lcom/android/server/am/SmartTaskControler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/am/SmartTaskControler;->cleanUpTask(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kill_task_case_3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/SmartTaskControler$SmartTaskControlReceiver;->this$0:Lcom/android/server/am/SmartTaskControler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/am/SmartTaskControler;->cleanUpTask(I)V

    goto :goto_0
.end method
