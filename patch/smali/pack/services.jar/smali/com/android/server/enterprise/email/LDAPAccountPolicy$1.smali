.class Lcom/android/server/enterprise/email/LDAPAccountPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "LDAPAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getLDAPReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$1;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "action":Ljava/lang/String;
    const-string v9, "edm.intent.action.ldap.createacct.internal"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 127
    const-string v9, "LDAPAccountPolicyService"

    const-string v10, "Received intent : ACTION_LDAP_CREATE_ACCT"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 129
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string v9, "edm.intent.action.ldap.createacct.result"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "_intent":Landroid/content/Intent;
    const-string v9, "edm.intent.extra.ldap.user.id"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 132
    .local v8, "userId":I
    const-string v9, "edm.intent.extra.ldap.result"

    const-string v10, "edm.intent.extra.ldap.result"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    const-string v9, "edm.intent.extra.ldap.acct.id"

    const-string v10, "edm.intent.extra.ldap.acct.id"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 134
    const-string v9, "edm.intent.extra.ldap.user.id"

    invoke-virtual {v0, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 136
    .local v4, "token":J
    iget-object v9, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$1;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    iget-object v9, v9, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 148
    .end local v0    # "_intent":Landroid/content/Intent;
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v4    # "token":J
    .end local v8    # "userId":I
    :cond_0
    :goto_0
    return-void

    .line 139
    .restart local v0    # "_intent":Landroid/content/Intent;
    .restart local v2    # "extras":Landroid/os/Bundle;
    .restart local v4    # "token":J
    .restart local v8    # "userId":I
    :cond_1
    iget-object v9, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$1;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    iget-object v9, v9, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;

    .line 140
    .local v3, "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    iget-object v9, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$1;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    invoke-virtual {v3}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->getCallingUserId()I

    move-result v10

    # invokes: Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getUserHandle(I)Landroid/os/UserHandle;
    invoke-static {v9, v10}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->access$000(Lcom/android/server/enterprise/email/LDAPAccountPolicy;I)Landroid/os/UserHandle;

    move-result-object v7

    .line 141
    .local v7, "userHandle":Landroid/os/UserHandle;
    iget-object v9, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$1;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    invoke-virtual {v3}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->getCallingUserId()I

    move-result v10

    # invokes: Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getUserContext(I)Landroid/content/Context;
    invoke-static {v9, v10}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->access$100(Lcom/android/server/enterprise/email/LDAPAccountPolicy;I)Landroid/content/Context;

    move-result-object v6

    .line 142
    .local v6, "userContext":Landroid/content/Context;
    const-string v9, "android.permission.sec.MDM_LDAP"

    invoke-virtual {v6, v0, v7, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 144
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method
