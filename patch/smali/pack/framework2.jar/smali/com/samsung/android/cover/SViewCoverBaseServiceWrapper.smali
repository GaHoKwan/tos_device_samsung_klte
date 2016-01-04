.class public Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;
.super Ljava/lang/Object;
.source "SViewCoverBaseServiceWrapper.java"

# interfaces
.implements Lcom/samsung/android/cover/ISViewCoverBaseService;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mService:Lcom/samsung/android/cover/ISViewCoverBaseService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/cover/ISViewCoverBaseService;)V
    .locals 1
    .param p1, "service"    # Lcom/samsung/android/cover/ISViewCoverBaseService;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "SViewCoverBaseServiceWrapper"

    iput-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->TAG:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->mService:Lcom/samsung/android/cover/ISViewCoverBaseService;

    .line 31
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->mService:Lcom/samsung/android/cover/ISViewCoverBaseService;

    invoke-interface {v0}, Lcom/samsung/android/cover/ISViewCoverBaseService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onSViewCoverHide()V
    .locals 3

    .prologue
    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->mService:Lcom/samsung/android/cover/ISViewCoverBaseService;

    invoke-interface {v1}, Lcom/samsung/android/cover/ISViewCoverBaseService;->onSViewCoverHide()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSViewCoverShow()V
    .locals 3

    .prologue
    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->mService:Lcom/samsung/android/cover/ISViewCoverBaseService;

    invoke-interface {v1}, Lcom/samsung/android/cover/ISViewCoverBaseService;->onSViewCoverShow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSystemReady()V
    .locals 3

    .prologue
    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->mService:Lcom/samsung/android/cover/ISViewCoverBaseService;

    invoke-interface {v1}, Lcom/samsung/android/cover/ISViewCoverBaseService;->onSystemReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->mService:Lcom/samsung/android/cover/ISViewCoverBaseService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cover/ISViewCoverBaseService;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
