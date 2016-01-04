.class Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender;
.super Landroid/os/HandlerThread;
.source "MarvellFALImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/MarvellFALImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DVFSLockIntentSender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/MarvellFALImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/ssrm/MarvellFALImpl;Ljava/lang/String;I)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "priority"    # I

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender;->this$0:Lcom/android/server/ssrm/MarvellFALImpl;

    .line 402
    invoke-direct {p0, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 403
    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 3

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender;->this$0:Lcom/android/server/ssrm/MarvellFALImpl;

    new-instance v1, Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender$1;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender$1;-><init>(Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender;)V

    iput-object v1, v0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    .line 503
    iget-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender;->this$0:Lcom/android/server/ssrm/MarvellFALImpl;

    iget-object v1, v0, Lcom/android/server/ssrm/MarvellFALImpl;->mDvfsThreadSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender;->this$0:Lcom/android/server/ssrm/MarvellFALImpl;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/ssrm/MarvellFALImpl;->mInitComplete:Z

    .line 505
    iget-object v0, p0, Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender;->this$0:Lcom/android/server/ssrm/MarvellFALImpl;

    iget-object v0, v0, Lcom/android/server/ssrm/MarvellFALImpl;->mDvfsThreadSyncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 506
    monitor-exit v1

    .line 507
    return-void

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
