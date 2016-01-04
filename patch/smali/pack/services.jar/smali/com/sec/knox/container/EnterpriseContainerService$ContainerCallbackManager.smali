.class Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
.super Ljava/lang/Object;
.source "EnterpriseContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/EnterpriseContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContainerCallbackManager"
.end annotation


# instance fields
.field mContainerCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/knox/container/EnterpriseContainerService;


# direct methods
.method constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 1

    .prologue
    .line 2767
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2768
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->mContainerCallback:Ljava/util/HashMap;

    .line 2769
    return-void
.end method


# virtual methods
.method public add(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "callback"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .prologue
    .line 2772
    if-eqz p2, :cond_0

    if-lez p1, :cond_0

    .line 2773
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->mContainerCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2775
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;>;"
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 2776
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2777
    .restart local v0    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2778
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->mContainerCallback:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2783
    .end local v0    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;>;"
    :cond_0
    :goto_0
    return-void

    .line 2779
    .restart local v0    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;>;"
    :cond_1
    if-eqz p2, :cond_0

    .line 2780
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear(ILandroid/os/Bundle;)V
    .locals 10
    .param p1, "errorcode"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 2802
    const-string v7, "EnterpriseContainerService"

    const-string v8, "clear callback"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2804
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->mContainerCallback:Ljava/util/HashMap;

    if-eqz v7, :cond_3

    .line 2805
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->mContainerCallback:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 2806
    .local v6, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v6, :cond_3

    .line 2807
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2809
    .local v5, "keyIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2810
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 2811
    .local v4, "key":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->mContainerCallback:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2813
    .local v1, "cbList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;>;"
    if-eqz v1, :cond_2

    .line 2814
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .line 2815
    .local v0, "cb":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    if-eqz v0, :cond_1

    .line 2816
    invoke-interface {v0, p1, p2}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2822
    .end local v0    # "cb":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 2823
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "EnterpriseContainerService"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2820
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v7, "EnterpriseContainerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "clear Call Back not found for key "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2847
    .end local v1    # "cbList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;>;"
    .end local v4    # "key":Ljava/lang/Integer;
    .end local v5    # "keyIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v6    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_3
    return-void
.end method

.method public containsKey(I)Z
    .locals 2
    .param p1, "containerId"    # I

    .prologue
    .line 2794
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->mContainerCallback:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2790
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->mContainerCallback:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public remove(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2786
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->mContainerCallback:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 2798
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->mContainerCallback:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
