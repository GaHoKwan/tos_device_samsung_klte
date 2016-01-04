.class Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1UnenrollRunnable;
.super Ljava/lang/Object;
.source "EnterpriseSSOPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->onPreAdminRemoval(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnenrollRunnable"
.end annotation


# instance fields
.field private ContainerId:Ljava/lang/String;

.field private item:Ljava/lang/String;

.field private sso:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

.field private uid:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "u"    # I
    .param p3, "cid"    # Ljava/lang/String;
    .param p4, "s"    # Ljava/lang/String;
    .param p5, "i"    # Ljava/lang/String;

    .prologue
    .line 1302
    iput-object p1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1UnenrollRunnable;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1303
    iput p2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1UnenrollRunnable;->uid:I

    .line 1304
    iput-object p3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1UnenrollRunnable;->ContainerId:Ljava/lang/String;

    .line 1305
    iput-object p4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1UnenrollRunnable;->sso:Ljava/lang/String;

    .line 1306
    iput-object p5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1UnenrollRunnable;->item:Ljava/lang/String;

    .line 1307
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1UnenrollRunnable;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    new-instance v1, Landroid/app/enterprise/ContextInfo;

    iget v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1UnenrollRunnable;->uid:I

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1UnenrollRunnable;->ContainerId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1UnenrollRunnable;->ContainerId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1UnenrollRunnable;->sso:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->unenroll(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    .line 1310
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1UnenrollRunnable;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$600(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1UnenrollRunnable;->item:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1311
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1UnenrollRunnable;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    # invokes: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->writeListToFile()V
    invoke-static {v0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$700(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    .line 1313
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1UnenrollRunnable;->ContainerId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$800()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$800()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1UnenrollRunnable;->ContainerId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1314
    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$800()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1UnenrollRunnable;->ContainerId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    const-string v0, "EnterpriseSSOPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " after removed mSSOInterfaceMap= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$800()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    :cond_0
    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOTypeMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$900()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1UnenrollRunnable;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    return-void
.end method
