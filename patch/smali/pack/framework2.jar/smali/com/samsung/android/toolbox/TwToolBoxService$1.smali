.class Lcom/samsung/android/toolbox/TwToolBoxService$1;
.super Landroid/database/ContentObserver;
.source "TwToolBoxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/toolbox/TwToolBoxService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxService;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxService$1;->this$0:Lcom/samsung/android/toolbox/TwToolBoxService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxService$1;->this$0:Lcom/samsung/android/toolbox/TwToolBoxService;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/samsung/android/toolbox/TwToolBoxService;->access$000(Lcom/samsung/android/toolbox/TwToolBoxService;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "toolbox_onoff"

    const/4 v6, -0x2

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    :goto_0
    const/4 v0, 0x1

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxService$1;->this$0:Lcom/samsung/android/toolbox/TwToolBoxService;

    if-eqz v1, :cond_1

    :goto_1
    # setter for: Lcom/samsung/android/toolbox/TwToolBoxService;->mVisibleFloatingStyle:Z
    invoke-static {v4, v2}, Lcom/samsung/android/toolbox/TwToolBoxService;->access$102(Lcom/samsung/android/toolbox/TwToolBoxService;Z)Z

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method
