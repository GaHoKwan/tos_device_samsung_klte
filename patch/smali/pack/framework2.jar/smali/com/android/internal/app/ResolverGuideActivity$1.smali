.class Lcom/android/internal/app/ResolverGuideActivity$1;
.super Ljava/lang/Object;
.source "ResolverGuideActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverGuideActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverGuideActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverGuideActivity;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/internal/app/ResolverGuideActivity$1;->this$0:Lcom/android/internal/app/ResolverGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/internal/app/ResolverGuideActivity$1;->this$0:Lcom/android/internal/app/ResolverGuideActivity;

    # invokes: Lcom/android/internal/app/ResolverGuideActivity;->makeMyIntent()Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/internal/app/ResolverGuideActivity;->access$000(Lcom/android/internal/app/ResolverGuideActivity;)Landroid/content/Intent;

    move-result-object v0

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 80
    iget-object v1, p0, Lcom/android/internal/app/ResolverGuideActivity$1;->this$0:Lcom/android/internal/app/ResolverGuideActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverGuideActivity$1;->this$0:Lcom/android/internal/app/ResolverGuideActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    .line 83
    return-void
.end method
