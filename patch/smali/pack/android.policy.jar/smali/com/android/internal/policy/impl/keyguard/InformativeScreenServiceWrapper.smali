.class public Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;
.super Ljava/lang/Object;
.source "InformativeScreenServiceWrapper.java"

# interfaces
.implements Lcom/android/internal/policy/IInformativeScreenService;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mService:Lcom/android/internal/policy/IInformativeScreenService;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/IInformativeScreenService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/internal/policy/IInformativeScreenService;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "InformativeScreenServiceWrapper"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;->TAG:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;->mService:Lcom/android/internal/policy/IInformativeScreenService;

    .line 35
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;->mService:Lcom/android/internal/policy/IInformativeScreenService;

    invoke-interface {v0}, Lcom/android/internal/policy/IInformativeScreenService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onBootCompleted()V
    .locals 3

    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;->mService:Lcom/android/internal/policy/IInformativeScreenService;

    invoke-interface {v1}, Lcom/android/internal/policy/IInformativeScreenService;->onBootCompleted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onScreenTurnedOff(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;->mService:Lcom/android/internal/policy/IInformativeScreenService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IInformativeScreenService;->onScreenTurnedOff(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 3
    .param p1, "result"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;->mService:Lcom/android/internal/policy/IInformativeScreenService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IInformativeScreenService;->onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSystemReady()V
    .locals 3

    .prologue
    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;->mService:Lcom/android/internal/policy/IInformativeScreenService;

    invoke-interface {v1}, Lcom/android/internal/policy/IInformativeScreenService;->onSystemReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
