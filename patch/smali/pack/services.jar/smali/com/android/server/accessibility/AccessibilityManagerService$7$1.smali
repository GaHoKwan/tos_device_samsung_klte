.class Lcom/android/server/accessibility/AccessibilityManagerService$7$1;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService$7;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/AccessibilityManagerService$7;

.field final synthetic val$checkScreenCurtain:I


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$7;I)V
    .locals 0

    .prologue
    .line 964
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$7;

    iput p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7$1;->val$checkScreenCurtain:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 967
    const/4 v0, 0x0

    .line 968
    .local v0, "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$7;

    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$7;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 969
    const/16 v2, 0x20

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 970
    .local v1, "mTalkbackEvent":Landroid/view/accessibility/AccessibilityEvent;
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7$1;->val$checkScreenCurtain:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 971
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$7;

    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$7;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040af7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 974
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 975
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 977
    :cond_1
    return-void

    .line 972
    :cond_2
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7$1;->val$checkScreenCurtain:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 973
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$7;

    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$7;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040af8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
