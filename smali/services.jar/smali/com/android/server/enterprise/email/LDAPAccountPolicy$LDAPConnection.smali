.class Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;
.super Ljava/lang/Object;
.source "LDAPAccountPolicy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/LDAPAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LDAPConnection"
.end annotation


# instance fields
.field mUserId:I

.field final synthetic this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;I)V
    .locals 0
    .param p2, "userId"    # I

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput p2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;->mUserId:I

    .line 159
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 163
    invoke-static {p2}, Landroid/app/enterprise/ILDAPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/ILDAPInterface;

    move-result-object v0

    .line 165
    .local v0, "service":Landroid/app/enterprise/ILDAPInterface;
    iget-object v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    iget-object v2, v2, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    iget v3, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;->mUserId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    iget-object v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    iget-object v2, v2, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    iget v3, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;->mUserId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;

    .line 167
    .local v1, "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    if-nez v0, :cond_0

    .line 168
    const-string v2, "LDAPAccountPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Null service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_0
    iput-object v0, v1, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mService:Landroid/app/enterprise/ILDAPInterface;

    .line 171
    iget-object v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    iget-object v2, v2, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    iget v3, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;->mUserId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v2, v1, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mBindComplete:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->open()V

    .line 174
    .end local v1    # "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    :cond_1
    const-string v2, "LDAPAccountPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EDM LDAP Service connected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    iget-object v1, v1, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    iget v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;->mUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    iget v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;->mUserId:I

    # invokes: Lcom/android/server/enterprise/email/LDAPAccountPolicy;->unregisterReceiver(I)Z
    invoke-static {v1, v2}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->access$200(Lcom/android/server/enterprise/email/LDAPAccountPolicy;I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    iget-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    iget-object v1, v1, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    iget v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;->mUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_0
    const-string v1, "LDAPAccountPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EDM LDAP Service disconnected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    iget-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    iget-object v1, v1, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    iget v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;->mUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    iget-object v2, v2, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    iget v3, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;->mUserId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v1
.end method
