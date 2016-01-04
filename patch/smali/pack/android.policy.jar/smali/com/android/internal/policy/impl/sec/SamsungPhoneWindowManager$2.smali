.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v7, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 432
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 434
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iput-boolean v4, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBootCompleted:Z

    .line 436
    invoke-static {p1}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 437
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getPenState()I

    move-result v2

    .line 438
    .local v2, "penState":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenState:I

    if-eq v2, v3, :cond_0

    .line 439
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    if-ne v2, v4, :cond_3

    move v3, v4

    :goto_0
    invoke-virtual {v6, v7, v8, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->notifyPenSwitchChanged(JZ)V

    .line 444
    .end local v2    # "penState":I
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getGloveState()I

    move-result v1

    .line 445
    .local v1, "gloveState":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveState:I

    if-eq v1, v3, :cond_1

    .line 446
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    if-ne v1, v4, :cond_4

    move v3, v4

    :goto_1
    invoke-virtual {v6, v7, v8, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->notifyGloveSwitchChanged(JZ)V

    .line 450
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getCoverState()I

    move-result v6

    if-nez v6, :cond_5

    :goto_2
    invoke-virtual {v3, v5, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyCoverSwitchState(ZZ)Z

    .line 454
    .end local v1    # "gloveState":I
    :cond_2
    return-void

    .restart local v2    # "penState":I
    :cond_3
    move v3, v5

    .line 439
    goto :goto_0

    .end local v2    # "penState":I
    .restart local v1    # "gloveState":I
    :cond_4
    move v3, v5

    .line 446
    goto :goto_1

    :cond_5
    move v5, v4

    .line 450
    goto :goto_2
.end method
