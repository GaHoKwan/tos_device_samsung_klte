.class Landroid/webkit/WebSyncManager$SyncHandler;
.super Landroid/os/Handler;
.source "WebSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebSyncManager;


# direct methods
.method private constructor <init>(Landroid/webkit/WebSyncManager;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/WebSyncManager$SyncHandler;->this$0:Landroid/webkit/WebSyncManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebSyncManager;Landroid/webkit/WebSyncManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/WebSyncManager$SyncHandler;-><init>(Landroid/webkit/WebSyncManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/16 v2, 0x65

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/webkit/WebSyncManager$SyncHandler;->this$0:Landroid/webkit/WebSyncManager;

    invoke-virtual {v1}, Landroid/webkit/WebSyncManager;->syncFromRamToFlash()V

    invoke-virtual {p0, v2}, Landroid/webkit/WebSyncManager$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    # getter for: Landroid/webkit/WebSyncManager;->SYNC_LATER_INTERVAL:I
    invoke-static {}, Landroid/webkit/WebSyncManager;->access$000()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/webkit/WebSyncManager$SyncHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method
