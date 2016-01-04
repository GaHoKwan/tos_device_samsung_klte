.class Lcom/samsung/android/toolbox/TwToolBoxService$4;
.super Landroid/content/BroadcastReceiver;
.source "TwToolBoxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/toolbox/TwToolBoxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxService;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxService;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxService$4;->this$0:Lcom/samsung/android/toolbox/TwToolBoxService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 154
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxService$4;->this$0:Lcom/samsung/android/toolbox/TwToolBoxService;

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxService$4;->this$0:Lcom/samsung/android/toolbox/TwToolBoxService;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/samsung/android/toolbox/TwToolBoxService;->access$000(Lcom/samsung/android/toolbox/TwToolBoxService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "toolbox_apps"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/samsung/android/toolbox/TwToolBoxService;->mPackageList:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxService;->access$202(Lcom/samsung/android/toolbox/TwToolBoxService;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxService$4;->this$0:Lcom/samsung/android/toolbox/TwToolBoxService;

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxService;->reloadContentObserver()V
    invoke-static {v1}, Lcom/samsung/android/toolbox/TwToolBoxService;->access$300(Lcom/samsung/android/toolbox/TwToolBoxService;)V

    .line 159
    :cond_0
    return-void
.end method
