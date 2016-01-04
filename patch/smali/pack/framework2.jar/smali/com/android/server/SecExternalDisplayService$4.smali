.class Lcom/android/server/SecExternalDisplayService$4;
.super Ljava/lang/Thread;
.source "SecExternalDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayToast(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SecExternalDisplayService;

.field final synthetic val$theatre:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/android/server/SecExternalDisplayService;Landroid/widget/Toast;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/server/SecExternalDisplayService$4;->this$0:Lcom/android/server/SecExternalDisplayService;

    iput-object p2, p0, Lcom/android/server/SecExternalDisplayService$4;->val$theatre:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 362
    :goto_0
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService$4;->this$0:Lcom/android/server/SecExternalDisplayService;

    # getter for: Lcom/android/server/SecExternalDisplayService;->bIsHomeTheatreConnected:Z
    invoke-static {v0}, Lcom/android/server/SecExternalDisplayService;->access$100(Lcom/android/server/SecExternalDisplayService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService$4;->val$theatre:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 364
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService$4;->val$theatre:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 365
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService$4;->val$theatre:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 367
    :cond_0
    return-void
.end method
