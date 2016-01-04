.class Lcom/android/server/WallpaperManagerService$PersonaObserver;
.super Landroid/content/pm/IPersonaObserver$Stub;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaObserver"
.end annotation


# instance fields
.field private mContainerId:I

.field final synthetic this$0:Lcom/android/server/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/WallpaperManagerService;I)V
    .locals 1
    .param p2, "userId"    # I

    .prologue
    .line 2308
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$PersonaObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-direct {p0}, Landroid/content/pm/IPersonaObserver$Stub;-><init>()V

    .line 2306
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/WallpaperManagerService$PersonaObserver;->mContainerId:I

    .line 2309
    iput p2, p0, Lcom/android/server/WallpaperManagerService$PersonaObserver;->mContainerId:I

    .line 2310
    return-void
.end method


# virtual methods
.method public onFirstBoot()V
    .locals 2

    .prologue
    .line 2328
    const-string v0, "WallpaperService"

    const-string v1, "PersonaObserver.onFirstBoot()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    return-void
.end method

.method public onInit()V
    .locals 2

    .prologue
    .line 2323
    const-string v0, "WallpaperService"

    const-string v1, "PersonaObserver.onInit()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    return-void
.end method

.method public onKeyGuardStateChanged(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 2343
    return-void
.end method

.method public onPersonaSwitch()V
    .locals 4

    .prologue
    .line 2314
    const-string v1, "WallpaperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PersonaObserver.onPersonaSwitch() handler container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/WallpaperManagerService$PersonaObserver;->mContainerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$PersonaObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2316
    .local v0, "msg":Landroid/os/Message;
    iget v1, p0, Lcom/android/server/WallpaperManagerService$PersonaObserver;->mContainerId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2317
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$PersonaObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2319
    return-void
.end method

.method public onSessionExpired()V
    .locals 2

    .prologue
    .line 2333
    const-string v0, "WallpaperService"

    const-string v1, "PersonaObserver.onSessionExpired()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    return-void
.end method

.method public onStateChange(II)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "oldState"    # I

    .prologue
    .line 2338
    return-void
.end method
