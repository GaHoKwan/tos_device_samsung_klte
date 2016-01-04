.class Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SViewCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 102
    const-string v3, "suppressCoverUI"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 103
    .local v1, "isSupress":Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # setter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z
    invoke-static {v3, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$102(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;Z)Z

    .line 104
    const-string v3, "SViewCoverManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive() : ACTION_CLEAR_COVER_STATE_CHANGE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$100(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$100(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 133
    .end local v1    # "isSupress":Z
    :cond_0
    :goto_0
    return-void

    .line 110
    .restart local v1    # "isSupress":Z
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 112
    .end local v1    # "isSupress":Z
    :cond_2
    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 113
    const-string v3, "state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "state":Ljava/lang/String;
    const-string v3, "SViewCoverManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive() : ACTION_PHONE_STATE_CHANGED = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 116
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # setter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPhoneState:I
    invoke-static {v3, v6}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$302(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;I)I

    .line 117
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 118
    :cond_3
    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # setter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPhoneState:I
    invoke-static {v3, v7}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$302(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;I)I

    .line 120
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 122
    .end local v2    # "state":Ljava/lang/String;
    :cond_4
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    const-string v3, "SViewCoverManager"

    const-string v4, "onReceive() : ACTION_SCREEN_ON "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsCoverOpen:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$400(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 125
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 127
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$500(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mGoToSleepRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$600(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 129
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mGoToSleepRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$600(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0x1f40

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
