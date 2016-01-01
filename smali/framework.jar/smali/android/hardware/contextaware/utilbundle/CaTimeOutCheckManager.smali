.class public Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;
.super Ljava/lang/Object;
.source "CaTimeOutCheckManager.java"

# interfaces
.implements Landroid/hardware/contextaware/utilbundle/ITimeOutCheckObserverable;
.implements Ljava/lang/Runnable;


# instance fields
.field private mObserver:Landroid/hardware/contextaware/utilbundle/ITimeOutCheckObserver;

.field private final mTimeOut:I


# direct methods
.method public constructor <init>(Landroid/hardware/contextaware/utilbundle/ITimeOutCheckObserver;I)V
    .locals 0
    .param p1, "observer"    # Landroid/hardware/contextaware/utilbundle/ITimeOutCheckObserver;
    .param p2, "time"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;->registerObserver(Landroid/hardware/contextaware/utilbundle/ITimeOutCheckObserver;)V

    .line 42
    iput p2, p0, Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;->mTimeOut:I

    .line 43
    return-void
.end method


# virtual methods
.method public final notifyTimeOut()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;->mObserver:Landroid/hardware/contextaware/utilbundle/ITimeOutCheckObserver;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;->mObserver:Landroid/hardware/contextaware/utilbundle/ITimeOutCheckObserver;

    invoke-interface {v0}, Landroid/hardware/contextaware/utilbundle/ITimeOutCheckObserver;->occurTimeOut()V

    .line 100
    :cond_0
    return-void
.end method

.method public final registerObserver(Landroid/hardware/contextaware/utilbundle/ITimeOutCheckObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/hardware/contextaware/utilbundle/ITimeOutCheckObserver;

    .prologue
    .line 75
    iput-object p1, p0, Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;->mObserver:Landroid/hardware/contextaware/utilbundle/ITimeOutCheckObserver;

    .line 76
    return-void
.end method

.method public final run()V
    .locals 4

    .prologue
    .line 54
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget v2, p0, Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;->mTimeOut:I

    mul-int/lit8 v2, v2, 0xa

    if-ge v1, v2, :cond_0

    .line 55
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "interruped"

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 63
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;->notifyTimeOut()V

    goto :goto_1
.end method

.method public final unregisterObserver()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;->mObserver:Landroid/hardware/contextaware/utilbundle/ITimeOutCheckObserver;

    .line 87
    return-void
.end method
