.class Lcom/android/server/pm/HandlerCacheManager$4;
.super Ljava/lang/Object;
.source "HandlerCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/HandlerCacheManager;->onFirstBoot(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/HandlerCacheManager;

.field final synthetic val$personaId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/HandlerCacheManager;I)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/server/pm/HandlerCacheManager$4;->this$0:Lcom/android/server/pm/HandlerCacheManager;

    iput p2, p0, Lcom/android/server/pm/HandlerCacheManager$4;->val$personaId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 330
    const-class v7, Lcom/android/server/pm/HandlerCacheManager;

    monitor-enter v7

    .line 331
    :try_start_0
    new-instance v4, Ljava/lang/Integer;

    iget v6, p0, Lcom/android/server/pm/HandlerCacheManager$4;->val$personaId:I

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 332
    .local v4, "personInt":Ljava/lang/Integer;
    # getter for: Lcom/android/server/pm/HandlerCacheManager;->observerCacheSets:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/pm/HandlerCacheManager;->access$000()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 334
    .local v2, "observerCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/IPersonaObserver;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 335
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 337
    .local v3, "observers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/IPersonaObserver;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/IPersonaObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    .local v1, "observer":Landroid/content/pm/IPersonaObserver;
    :try_start_1
    invoke-interface {v1}, Landroid/content/pm/IPersonaObserver;->onFirstBoot()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 341
    :catch_0
    move-exception v5

    .line 342
    .local v5, "re":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 346
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "observer":Landroid/content/pm/IPersonaObserver;
    .end local v2    # "observerCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/IPersonaObserver;>;"
    .end local v3    # "observers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/IPersonaObserver;>;"
    .end local v4    # "personInt":Ljava/lang/Integer;
    .end local v5    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .restart local v2    # "observerCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/IPersonaObserver;>;"
    .restart local v4    # "personInt":Ljava/lang/Integer;
    :cond_0
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 347
    return-void
.end method
