.class public Landroid/os/PersonaStateManager;
.super Ljava/lang/Object;
.source "PersonaStateManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PersonaStateManager"


# instance fields
.field private context:Landroid/content/Context;

.field private service:Landroid/content/pm/IPersonaStateHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPersonaStateHandler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/pm/IPersonaStateHandler;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Landroid/os/PersonaStateManager;->context:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Landroid/os/PersonaStateManager;->service:Landroid/content/pm/IPersonaStateHandler;

    .line 20
    return-void
.end method


# virtual methods
.method public mapToNormalizedState(I)I
    .locals 3
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 24
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaStateManager;->service:Landroid/content/pm/IPersonaStateHandler;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaStateHandler;->mapToNormalizedState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 28
    .end local p1    # "state":I
    :goto_0
    return p1

    .line 25
    .restart local p1    # "state":I
    :catch_0
    move-exception v0

    .line 26
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "PersonaStateManager"

    const-string/jumbo v2, "mapToNormalizedState problem"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public postEvent(Landroid/content/pm/PersonaEvent;)I
    .locals 3
    .param p1, "event"    # Landroid/content/pm/PersonaEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 34
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaStateManager;->service:Landroid/content/pm/IPersonaStateHandler;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaStateHandler;->postEvent(Landroid/content/pm/PersonaEvent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 38
    :goto_0
    return v1

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "PersonaStateManager"

    const-string/jumbo v2, "postEvent problem"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    const/4 v1, -0x1

    goto :goto_0
.end method
