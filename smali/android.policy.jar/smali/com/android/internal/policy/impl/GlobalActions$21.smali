.class Lcom/android/internal/policy/impl/GlobalActions$21;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0

    .prologue
    .line 1591
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$21;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 1594
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$2600()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1595
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$000()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1596
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1597
    const/4 v0, 0x0

    :try_start_0
    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$202(Z)Z

    .line 1598
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1602
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$21;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->clearSCoverRequestStatus()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$3800(Lcom/android/internal/policy/impl/GlobalActions;)V

    .line 1603
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$21;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$300(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1605
    :cond_0
    return-void

    .line 1598
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1600
    :cond_1
    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$002(Z)Z

    goto :goto_0
.end method
