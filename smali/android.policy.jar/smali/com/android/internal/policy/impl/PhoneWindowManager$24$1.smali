.class Lcom/android/internal/policy/impl/PhoneWindowManager$24$1;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$24;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$24;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$24;)V
    .locals 0

    .prologue
    .line 6882
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$24$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$24;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 6884
    if-eq p1, v2, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 6885
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$24$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$24;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$24;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    if-ne v0, v2, :cond_1

    .line 6886
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$24$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$24;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$24;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$24$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$24;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$24;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOldMouseDockedValue:Z

    .line 6887
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$24$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$24;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$24;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    .line 6892
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$24$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$24;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$24;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 6893
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$24$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$24;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$24;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 6894
    return-void

    .line 6890
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$24$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$24;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$24;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$24$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$24;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$24;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOldMouseDockedValue:Z

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    goto :goto_0
.end method
