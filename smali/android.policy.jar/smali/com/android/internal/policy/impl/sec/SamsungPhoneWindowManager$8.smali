.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$8;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1349
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    .line 1355
    :cond_0
    return-void
.end method
