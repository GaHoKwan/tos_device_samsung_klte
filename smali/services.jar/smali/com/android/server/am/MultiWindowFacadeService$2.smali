.class Lcom/android/server/am/MultiWindowFacadeService$2;
.super Landroid/content/BroadcastReceiver;
.source "MultiWindowFacadeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MultiWindowFacadeService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowFacadeService;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowFacadeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MultiWindowFacadeService$2;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$2;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    iget-object v0, v0, Lcom/android/server/am/MultiWindowFacadeService;->mHandler:Lcom/android/server/am/MultiWindowFacadeService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService$2;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    iget-object v1, v1, Lcom/android/server/am/MultiWindowFacadeService;->mHandler:Lcom/android/server/am/MultiWindowFacadeService$H;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowFacadeService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowFacadeService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
