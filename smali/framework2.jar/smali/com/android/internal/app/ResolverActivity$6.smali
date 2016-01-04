.class Lcom/android/internal/app/ResolverActivity$6;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0

    .prologue
    .line 1387
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$6;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1402
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$6;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {p2}, Lcom/samsung/android/sconnect/extern/ISconnect$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sconnect/extern/ISconnect;

    move-result-object v2

    # setter for: Lcom/android/internal/app/ResolverActivity;->mISconnect:Lcom/samsung/android/sconnect/extern/ISconnect;
    invoke-static {v1, v2}, Lcom/android/internal/app/ResolverActivity;->access$1202(Lcom/android/internal/app/ResolverActivity;Lcom/samsung/android/sconnect/extern/ISconnect;)Lcom/samsung/android/sconnect/extern/ISconnect;

    .line 1403
    const-string v1, "ResolverActivity"

    const-string/jumbo v2, "onServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$6;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mISconnect:Lcom/samsung/android/sconnect/extern/ISconnect;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$1200(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/sconnect/extern/ISconnect;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1406
    const-string v1, "ResolverActivity"

    const-string/jumbo v2, "onServiceConnected mISconnect == null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    :goto_0
    return-void

    .line 1410
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$6;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mISconnect:Lcom/samsung/android/sconnect/extern/ISconnect;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$1200(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/sconnect/extern/ISconnect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$6;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mCallback:Lcom/samsung/android/sconnect/extern/ISconnectCallback;
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->access$1600(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/sconnect/extern/ISconnectCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sconnect/extern/ISconnect;->registerCallback(Lcom/samsung/android/sconnect/extern/ISconnectCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1411
    :catch_0
    move-exception v0

    .line 1412
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ResolverActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceConnected RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1391
    const-string v1, "ResolverActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceDisconnected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$6;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mISconnect:Lcom/samsung/android/sconnect/extern/ISconnect;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$1200(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/sconnect/extern/ISconnect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$6;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mCallback:Lcom/samsung/android/sconnect/extern/ISconnectCallback;
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->access$1600(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/sconnect/extern/ISconnectCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sconnect/extern/ISconnect;->unregisterCallback(Lcom/samsung/android/sconnect/extern/ISconnectCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1398
    :goto_0
    return-void

    .line 1395
    :catch_0
    move-exception v0

    .line 1396
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
