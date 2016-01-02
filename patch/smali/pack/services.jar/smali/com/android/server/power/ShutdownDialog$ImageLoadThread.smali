.class Lcom/android/server/power/ShutdownDialog$ImageLoadThread;
.super Lcom/android/server/power/ShutdownDialog$RunningCheckable;
.source "ShutdownDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageLoadThread"
.end annotation


# instance fields
.field private final coverBrReceiver:Landroid/content/BroadcastReceiver;

.field private coverStateDirty:Z

.field private coverStateOpen:Z

.field final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method private constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/ShutdownDialog$RunningCheckable;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverStateOpen:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverStateDirty:Z

    new-instance v0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread$1;-><init>(Lcom/android/server/power/ShutdownDialog$ImageLoadThread;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverBrReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/power/ShutdownDialog$ImageLoadThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverStateOpen:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/power/ShutdownDialog$ImageLoadThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverStateOpen:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/android/server/power/ShutdownDialog$ImageLoadThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverStateDirty:Z

    return p1
.end method

.method private frameLoadLoop(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)V
    .locals 7

    move-object v2, p1

    if-eqz p2, :cond_0

    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->whetherQmgForCover(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)Lcom/android/server/power/LibQmg;

    move-result-object v2

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$1300(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/power/LibQmg;->getDelayTime()I

    move-result v4

    add-int/lit8 v4, v4, 0x64

    invoke-virtual {v3, v4}, Lcom/android/server/power/ShutdownDialog$DrawHandler;->sendEmptyMessage(I)Z

    const-string v3, "ShutdownDialog"

    invoke-virtual {v2}, Lcom/android/server/power/LibQmg;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    if-lez v1, :cond_3

    if-eqz p2, :cond_1

    iget-boolean v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverStateDirty:Z

    if-eqz v3, :cond_1

    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->whetherQmgForCover(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)Lcom/android/server/power/LibQmg;

    move-result-object v2

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$500(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I
    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->access$2200(Lcom/android/server/power/ShutdownDialog;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/server/power/LibQmg;->loadFrame(Landroid/graphics/Bitmap;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const-string v3, "ShutdownDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load frame: ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$2300(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_1
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I
    invoke-static {v5}, Lcom/android/server/power/ShutdownDialog;->access$2200(Lcom/android/server/power/ShutdownDialog;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x3

    # setter for: Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I
    invoke-static {v3, v5}, Lcom/android/server/power/ShutdownDialog;->access$2202(Lcom/android/server/power/ShutdownDialog;I)I

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$2200(Lcom/android/server/power/ShutdownDialog;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x3

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I
    invoke-static {v5}, Lcom/android/server/power/ShutdownDialog;->access$2400(Lcom/android/server/power/ShutdownDialog;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-ne v3, v5, :cond_2

    :try_start_2
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$2300(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    :try_start_3
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    :catch_0
    move-exception v0

    const-string v3, "ShutdownDialog"

    const-string v4, "qmgLoadFrame return < 0"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/power/LibQmg;->close()I

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/server/power/LibQmg;->close()I

    :cond_4
    return-void

    :catch_1
    move-exception v0

    :try_start_4
    const-string v3, "ShutdownDialog"

    const-string v5, "InterruptedException"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private registerCoverReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.cover.OPEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$1000(Lcom/android/server/power/ShutdownDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverBrReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unRegisterCoverReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$1000(Lcom/android/server/power/ShutdownDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverBrReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private whetherQmgForCover(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)Lcom/android/server/power/LibQmg;
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverStateOpen:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverStateDirty:Z

    if-eqz v0, :cond_0

    if-eq p1, p2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-ne p1, p3, :cond_2

    :cond_1
    move-object v1, p1

    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/power/LibQmg;->getCurrentFrame()I

    move-result v2

    if-eqz v0, :cond_4

    move-object p1, p2

    :cond_3
    :goto_1
    invoke-virtual {p1, v2}, Lcom/android/server/power/LibQmg;->setCurrentFrame(I)I

    move-object v1, p1

    goto :goto_0

    :cond_4
    if-nez v0, :cond_3

    move-object p1, p3

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->registerCoverReceiver()V

    const-string v3, "ShutdownDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImageLoadThread.run(), qmgList.size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/power/ShutdownDialog;->access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$1300(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/server/power/ShutdownDialog$DrawHandler;->sendEmptyMessage(I)Z

    :goto_0
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/LibQmg;

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$1900(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/LibQmg;

    invoke-direct {p0, v2, v0}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->frameLoadLoop(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)V

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$1900(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iput-boolean v6, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->running:Z

    new-instance v3, Ljava/io/File;

    const-string v4, "//system/media/shutdownloop.qmg"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->doLoopAnim:Z
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$2000(Lcom/android/server/power/ShutdownDialog;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    const-string v4, "//system/media/shutdownloop.qmg"

    # invokes: Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z
    invoke-static {v3, v4}, Lcom/android/server/power/ShutdownDialog;->access$2100(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/LibQmg;

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$1900(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/LibQmg;

    invoke-direct {p0, v2, v0}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->frameLoadLoop(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)V

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$1900(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$1300(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/server/power/ShutdownDialog$DrawHandler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->unRegisterCoverReceiver()V

    return-void
.end method
