.class Lcom/sec/knox/container/EnterpriseContainerService$WakeLockHandler;
.super Landroid/os/Handler;
.source "EnterpriseContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/EnterpriseContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WakeLockHandler"
.end annotation


# static fields
.field public static final ENTERPRISE_CONTAINER_START_TIMER:I = 0xc

.field public static final ENTERPRISE_CONTAINER_STOP_TIMER:I = 0xb


# instance fields
.field final synthetic this$0:Lcom/sec/knox/container/EnterpriseContainerService;


# direct methods
.method constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 0

    .prologue
    .line 1374
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$WakeLockHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1381
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1382
    .local v1, "containerId":I
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WakeLockHandler + containerId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 1425
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WakeLockHandler invalid message recieved: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    :cond_0
    :goto_0
    return-void

    .line 1385
    :pswitch_0
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WakeLockHandler ENTERPRISE_CONTAINER_STOP_TIMER : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$WakeLockHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->getWakeLockCounter()I
    invoke-static {v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1300(Lcom/sec/knox/container/EnterpriseContainerService;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    .line 1389
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService$WakeLockHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mRIdGenerator:Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;
    invoke-static {v6}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1400(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;->getNextContainerRequestId()I

    move-result v5

    .line 1390
    .local v5, "requestId":I
    new-instance v4, Lcom/sec/knox/container/EnterpriseContainerService$DeathBinder;

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService$WakeLockHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {v4, v6, v5}, Lcom/sec/knox/container/EnterpriseContainerService$DeathBinder;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    .line 1391
    .local v4, "obj":Landroid/os/IBinder$DeathRecipient;
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService$WakeLockHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mIBinderMap:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1500(Lcom/sec/knox/container/EnterpriseContainerService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService$WakeLockHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mDeathCallbackMap:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1600(Lcom/sec/knox/container/EnterpriseContainerService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1394
    const/4 v6, 0x0

    :try_start_1
    invoke-interface {v0, v4, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1406
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v4    # "obj":Landroid/os/IBinder$DeathRecipient;
    .end local v5    # "requestId":I
    :goto_1
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService$WakeLockHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->incrementWakeLock()V
    invoke-static {v6}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1700(Lcom/sec/knox/container/EnterpriseContainerService;)V

    .line 1407
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService$WakeLockHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->killTimer(I)V
    invoke-static {v6, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1800(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    goto :goto_0

    .line 1395
    .restart local v0    # "binder":Landroid/os/IBinder;
    .restart local v4    # "obj":Landroid/os/IBinder$DeathRecipient;
    .restart local v5    # "requestId":I
    :catch_0
    move-exception v3

    .line 1396
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "binder.linkToDeath Failed. IBinder\'s process has already died. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1403
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v3    # "ex":Landroid/os/RemoteException;
    .end local v4    # "obj":Landroid/os/IBinder$DeathRecipient;
    .end local v5    # "requestId":I
    :catch_1
    move-exception v2

    .line 1404
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "EnterpriseContainerService"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1399
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "binder":Landroid/os/IBinder;
    .restart local v4    # "obj":Landroid/os/IBinder$DeathRecipient;
    .restart local v5    # "requestId":I
    :catch_2
    move-exception v3

    .line 1400
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "binder.linkToDeath Failed. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1411
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v4    # "obj":Landroid/os/IBinder$DeathRecipient;
    .end local v5    # "requestId":I
    :pswitch_1
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WakeLockHandler ENTERPRISE_CONTAINER_START_TIMER : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$WakeLockHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->getWakeLockCounter()I
    invoke-static {v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1300(Lcom/sec/knox/container/EnterpriseContainerService;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService$WakeLockHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->getWakeLockCounter()I
    invoke-static {v6}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1300(Lcom/sec/knox/container/EnterpriseContainerService;)I

    move-result v6

    if-lez v6, :cond_0

    .line 1414
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService$WakeLockHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->decrementWakeLock()V
    invoke-static {v6}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1900(Lcom/sec/knox/container/EnterpriseContainerService;)V

    .line 1415
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService$WakeLockHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->getWakeLockCounter()I
    invoke-static {v6}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1300(Lcom/sec/knox/container/EnterpriseContainerService;)I

    move-result v6

    if-nez v6, :cond_0

    .line 1416
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WakeLockHandler START_TIMER start :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$WakeLockHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->getWakeLockCounter()I
    invoke-static {v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1300(Lcom/sec/knox/container/EnterpriseContainerService;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "for container"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService$WakeLockHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService$WakeLockHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v7

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->scheduleTimer(Landroid/content/Context;I)V
    invoke-static {v6, v7, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2000(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/content/Context;I)V

    .line 1419
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService$WakeLockHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->cleanUpBinder()V
    invoke-static {v6}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2100(Lcom/sec/knox/container/EnterpriseContainerService;)V

    goto/16 :goto_0

    .line 1383
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
