.class Lcom/movial/ipphone/WifiCallCheckBoxPreference$3;
.super Ljava/lang/Thread;
.source "WifiCallCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/movial/ipphone/WifiCallCheckBoxPreference;->registerToIPRegistry(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/movial/ipphone/WifiCallCheckBoxPreference;

.field final synthetic val$register:Z


# direct methods
.method constructor <init>(Lcom/movial/ipphone/WifiCallCheckBoxPreference;Z)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference$3;->this$0:Lcom/movial/ipphone/WifiCallCheckBoxPreference;

    iput-boolean p2, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference$3;->val$register:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 168
    :try_start_0
    iget-boolean v1, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference$3;->val$register:Z

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference$3;->this$0:Lcom/movial/ipphone/WifiCallCheckBoxPreference;

    # getter for: Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mIPManager:Lcom/movial/ipphone/IPManager;
    invoke-static {v1}, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->access$300(Lcom/movial/ipphone/WifiCallCheckBoxPreference;)Lcom/movial/ipphone/IPManager;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference$3;->this$0:Lcom/movial/ipphone/WifiCallCheckBoxPreference;

    # getter for: Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mIPStateListener:Lcom/movial/ipphone/IPStateListener;
    invoke-static {v3}, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->access$200(Lcom/movial/ipphone/WifiCallCheckBoxPreference;)Lcom/movial/ipphone/IPStateListener;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/movial/ipphone/IPManager;->listen(ZLcom/movial/ipphone/IPStateListener;I)V

    .line 175
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference$3;->this$0:Lcom/movial/ipphone/WifiCallCheckBoxPreference;

    # getter for: Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mIPManager:Lcom/movial/ipphone/IPManager;
    invoke-static {v1}, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->access$300(Lcom/movial/ipphone/WifiCallCheckBoxPreference;)Lcom/movial/ipphone/IPManager;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference$3;->this$0:Lcom/movial/ipphone/WifiCallCheckBoxPreference;

    # getter for: Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mIPStateListener:Lcom/movial/ipphone/IPStateListener;
    invoke-static {v3}, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->access$200(Lcom/movial/ipphone/WifiCallCheckBoxPreference;)Lcom/movial/ipphone/IPStateListener;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/movial/ipphone/IPManager;->listen(ZLcom/movial/ipphone/IPStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiCallCheckBoxPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register IPStateListener failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
