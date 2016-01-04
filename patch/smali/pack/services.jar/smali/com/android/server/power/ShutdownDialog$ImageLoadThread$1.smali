.class Lcom/android/server/power/ShutdownDialog$ImageLoadThread$1;
.super Landroid/content/BroadcastReceiver;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog$ImageLoadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/ShutdownDialog$ImageLoadThread;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownDialog$ImageLoadThread;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread$1;->this$1:Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 398
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread$1;->this$1:Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

    const-string v1, "coverOpen"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverStateOpen:Z
    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->access$1702(Lcom/android/server/power/ShutdownDialog$ImageLoadThread;Z)Z

    .line 399
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread$1;->this$1:Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

    # setter for: Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverStateDirty:Z
    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->access$1802(Lcom/android/server/power/ShutdownDialog$ImageLoadThread;Z)Z

    .line 400
    const-string v0, "ShutdownDialog"

    const-string v1, "cover state : %b"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread$1;->this$1:Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

    # getter for: Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverStateOpen:Z
    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->access$1700(Lcom/android/server/power/ShutdownDialog$ImageLoadThread;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-void
.end method
