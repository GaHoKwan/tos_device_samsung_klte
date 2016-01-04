.class Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;
.super Lcom/sec/enterprise/knox/EnterpriseContainerCallback;
.source "EnterpriseContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerServiceCallback"
.end annotation


# instance fields
.field private final mAdminCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

.field private final mAdminUid:I

.field private final mContainerId:I

.field final synthetic this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;IILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V
    .locals 0
    .param p2, "adminUid"    # I
    .param p3, "containerId"    # I
    .param p4, "mAdminCallback"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    invoke-direct {p0}, Lcom/sec/enterprise/knox/EnterpriseContainerCallback;-><init>()V

    .line 209
    iput p2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mAdminUid:I

    .line 210
    iput p3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mContainerId:I

    .line 211
    iput-object p4, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mAdminCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .line 212
    return-void
.end method


# virtual methods
.method public updateStatus(ILandroid/os/Bundle;)V
    .locals 11
    .param p1, "errorcode"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 216
    # getter for: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ContainerServiceCallback:updateStatus( "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    packed-switch p1, :pswitch_data_0

    .line 257
    :pswitch_0
    # getter for: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Container("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mContainerId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") - errorCode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mAdminCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    if-eqz v8, :cond_3

    .line 263
    :try_start_0
    iget v8, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mContainerId:I

    if-lez v8, :cond_1

    const-string v8, "containerid"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 264
    const-string v8, "containerid"

    iget v9, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mContainerId:I

    invoke-virtual {p2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 267
    :cond_1
    const-string v8, "packageName"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 268
    const-string v8, "packageName"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 269
    .local v6, "pkgName":Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getNonContainerizedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 270
    const-string v8, "packageName"

    invoke-virtual {p2, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mAdminCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    invoke-interface {v8, p1, p2}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 278
    :cond_3
    :goto_1
    return-void

    .line 220
    :pswitch_1
    const-string v8, "containerid"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 221
    .local v2, "containerId":I
    # getter for: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Container created with Id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    if-lez v2, :cond_0

    .line 223
    iget-object v8, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v8}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$500(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v1

    .line 224
    .local v1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 225
    .local v5, "isAdminActive":Z
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 226
    .local v0, "admin":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v9, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mAdminUid:I

    if-ne v8, v9, :cond_4

    .line 227
    const/4 v5, 0x1

    .line 231
    .end local v0    # "admin":Ljava/lang/Integer;
    :cond_5
    if-eqz v5, :cond_6

    .line 232
    iget-object v8, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    iget v9, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mAdminUid:I

    # invokes: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->addContainerToDB(II)Z
    invoke-static {v8, v2, v9}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$600(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;II)Z

    goto/16 :goto_0

    .line 234
    :cond_6
    # getter for: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin is no more active: DELETE CONTAINER "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :try_start_1
    iget-object v8, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;
    invoke-static {v8}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$700(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;)Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v8

    invoke-interface {v8, v2, p0}, Lcom/sec/knox/container/IEnterpriseContainerService;->removeContainer(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    move-result v7

    .line 238
    .local v7, "retVal":Z
    # getter for: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ContainerService.removeContainer("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") -"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 240
    .end local v7    # "retVal":Z
    :catch_0
    move-exception v3

    .line 241
    .local v3, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Exception:"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 249
    .end local v1    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "containerId":I
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "isAdminActive":Z
    :pswitch_2
    # getter for: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Container Removed with Id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mContainerId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget v8, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mContainerId:I

    if-lez v8, :cond_0

    .line 251
    iget-object v8, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    iget v9, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mContainerId:I

    # invokes: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->removeContainerFromDB(I)Z
    invoke-static {v8, v9}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$300(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;I)Z

    goto/16 :goto_0

    .line 274
    :catch_1
    move-exception v3

    .line 275
    .local v3, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RemoteException in updateStatus"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 218
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
