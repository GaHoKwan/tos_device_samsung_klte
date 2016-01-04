.class Lcom/samsung/android/airbutton/AirButtonImpl$4;
.super Landroid/content/BroadcastReceiver;
.source "AirButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/airbutton/AirButtonImpl;->createKeypadHideReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/airbutton/AirButtonImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V
    .locals 0

    .prologue
    .line 1295
    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$4;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1298
    const-string v1, "AxT9IME.isVisibleWindow"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1299
    .local v0, "isKeypadVisible":Z
    const-string v1, "AirButtonImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receive BR visibility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    if-nez v0, :cond_0

    .line 1301
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$4;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$600(Lcom/samsung/android/airbutton/AirButtonImpl;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl$4;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mKeypadHideRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$500(Lcom/samsung/android/airbutton/AirButtonImpl;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1302
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$4;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$600(Lcom/samsung/android/airbutton/AirButtonImpl;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl$4;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mKeypadHideRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$500(Lcom/samsung/android/airbutton/AirButtonImpl;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1304
    :cond_0
    return-void
.end method
