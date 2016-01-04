.class Lcom/android/server/enterprise/application/ApplicationPolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;->registerUserSwitchedReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 0

    .prologue
    .line 4823
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$2;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4825
    const-string v17, "ApplicationPolicy"

    const-string v18, "User switched"

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4826
    const-string v17, "android.intent.extra.user_handle"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 4830
    .local v16, "userId":I
    const/4 v5, 0x0

    .line 4831
    .local v5, "adminLuids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1700()Ljava/util/Map;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 4832
    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1700()Ljava/util/Map;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 4835
    :cond_0
    if-eqz v5, :cond_3

    .line 4836
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 4837
    .local v3, "adminLuid":J
    invoke-static {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v6

    .line 4838
    .local v6, "adminUid":I
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 4842
    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1700()Ljava/util/Map;

    move-result-object v17

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    .line 4843
    .local v8, "componentList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v8, :cond_1

    .line 4844
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 4845
    .local v9, "componentName":Ljava/lang/String;
    const/4 v14, 0x0

    .line 4846
    .local v14, "packageName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 4847
    .local v7, "className":Ljava/lang/String;
    const/16 v17, 0x2f

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 4848
    .local v15, "sep":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_2

    .line 4851
    move-object v14, v9

    .line 4856
    :goto_1
    invoke-static {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getContainerIdFromLUID(J)I

    move-result v10

    .line 4857
    .local v10, "containerId":I
    new-instance v11, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v11, v6, v10}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 4859
    .local v11, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$2;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v14, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->startApp(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 4853
    .end local v10    # "containerId":I
    .end local v11    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_2
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 4854
    add-int/lit8 v17, v15, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 4865
    .end local v3    # "adminLuid":J
    .end local v6    # "adminUid":I
    .end local v7    # "className":Ljava/lang/String;
    .end local v8    # "componentList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "componentName":Ljava/lang/String;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "sep":I
    :cond_3
    return-void
.end method
