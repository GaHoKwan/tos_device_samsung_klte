.class Lcom/android/internal/policy/impl/GlobalActions$RebootAction$2;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$RebootAction;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/GlobalActions$RebootAction;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$RebootAction;)V
    .locals 0

    .prologue
    .line 1420
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$RebootAction$2;->this$1:Lcom/android/internal/policy/impl/GlobalActions$RebootAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1422
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$RebootAction$2;->this$1:Lcom/android/internal/policy/impl/GlobalActions$RebootAction;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions$RebootAction;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions$RebootAction;->access$2400(Lcom/android/internal/policy/impl/GlobalActions$RebootAction;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1423
    .local v0, "pm":Landroid/os/PowerManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$RebootAction$2;->this$1:Lcom/android/internal/policy/impl/GlobalActions$RebootAction;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions$RebootAction;->action:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions$RebootAction;->access$2500(Lcom/android/internal/policy/impl/GlobalActions$RebootAction;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 1424
    return-void
.end method
