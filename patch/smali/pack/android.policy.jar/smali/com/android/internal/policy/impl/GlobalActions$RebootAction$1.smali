.class Lcom/android/internal/policy/impl/GlobalActions$RebootAction$1;
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
    .line 1413
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$RebootAction$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$RebootAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1415
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$RebootAction$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$RebootAction;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions$RebootAction;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions$RebootAction;->access$2400(Lcom/android/internal/policy/impl/GlobalActions$RebootAction;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1416
    .local v0, "actions":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$RebootAction$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$RebootAction;

    aget-object v2, v0, p2

    # setter for: Lcom/android/internal/policy/impl/GlobalActions$RebootAction;->action:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$RebootAction;->access$2502(Lcom/android/internal/policy/impl/GlobalActions$RebootAction;Ljava/lang/String;)Ljava/lang/String;

    .line 1417
    return-void
.end method
