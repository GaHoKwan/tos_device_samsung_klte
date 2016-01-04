.class Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseSSOPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, -0x1

    .line 151
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "action":Ljava/lang/String;
    const/4 v4, 0x0

    .line 154
    .local v4, "result":I
    const-string v7, "enterprise.container.setup.success"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 155
    const-string v7, "containerid"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 156
    .local v2, "containerId":I
    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$000()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "EnterpriseSSOPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CONTAINER_SETUP_SUCCESS - containerId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    if-lez v2, :cond_1

    .line 158
    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    # invokes: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->isSSOServiceInstalled(I)Z
    invoke-static {v7, v2}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$100(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 159
    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    # invokes: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfaces(I)I
    invoke-static {v7, v2}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$200(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;I)I

    move-result v4

    .line 160
    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$000()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "EnterpriseSSOPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bindSSOInterfaces - result : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v2    # "containerId":I
    :cond_1
    :goto_0
    return-void

    .line 163
    :cond_2
    const-string v7, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 165
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 166
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "pkg":Ljava/lang/String;
    const-string v7, "2.0"

    const-string/jumbo v8, "version"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 168
    const-string v7, "com.centrify.sso.samsung"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "com.sec.android.service.singlesignon"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 169
    :cond_3
    const-string v7, "android.intent.extra.user_handle"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 170
    .local v6, "userHandle":I
    const-string v7, "android.intent.extra.UID"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 172
    .local v5, "uID":I
    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$000()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 173
    const-string v7, "EnterpriseSSOPolicyService"

    const-string v8, "ACTION_PACKAGE_REPLACED"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v7, "EnterpriseSSOPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UserHandle : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / UID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    .end local v5    # "uID":I
    .end local v6    # "userHandle":I
    :cond_4
    const-string v7, "com.centrify.sso.samsung"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 180
    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    const/4 v8, 0x1

    # invokes: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfaces(I)I
    invoke-static {v7, v8}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$200(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;I)I

    move-result v4

    .line 181
    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$000()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "EnterpriseSSOPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_PACKAGE_REPLACED - result : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
