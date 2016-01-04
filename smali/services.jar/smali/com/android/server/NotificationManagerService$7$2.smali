.class Lcom/android/server/NotificationManagerService$7$2;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NotificationManagerService$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/NotificationManagerService$7;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService$7;)V
    .locals 0

    .prologue
    .line 2291
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$7$2;->this$1:Lcom/android/server/NotificationManagerService$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2293
    const-string v0, "STATUSBAR-NotificationService"

    const-string v1, "binderDied()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$7$2;->this$1:Lcom/android/server/NotificationManagerService$7;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$4800(Lcom/android/server/NotificationManagerService;)Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2295
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$7$2;->this$1:Lcom/android/server/NotificationManagerService$7;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;
    invoke-static {v0, v1}, Lcom/android/server/NotificationManagerService;->access$4802(Lcom/android/server/NotificationManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 2297
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$7$2;->this$1:Lcom/android/server/NotificationManagerService$7;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$900(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2298
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$7$2;->this$1:Lcom/android/server/NotificationManagerService$7;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$900(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 2300
    :cond_0
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$7$2;->this$1:Lcom/android/server/NotificationManagerService$7;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # setter for: Lcom/android/server/NotificationManagerService;->mIsPlaying:Z
    invoke-static {v0, v2}, Lcom/android/server/NotificationManagerService;->access$1002(Lcom/android/server/NotificationManagerService;Z)Z

    .line 2301
    return-void
.end method
