.class final Lcom/android/server/SecExternalDisplayService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SecExternalDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SecExternalDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SecExternalDisplayService;


# direct methods
.method public constructor <init>(Lcom/android/server/SecExternalDisplayService;Landroid/os/Handler;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/android/server/SecExternalDisplayService$SettingsObserver;->this$0:Lcom/android/server/SecExternalDisplayService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    # getter for: Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/SecExternalDisplayService;->access$400()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    # setter for: Lcom/android/server/SecExternalDisplayService;->bDreamsEnabledByDefaultConfig:Z
    invoke-static {p1, v2}, Lcom/android/server/SecExternalDisplayService;->access$502(Lcom/android/server/SecExternalDisplayService;Z)Z

    # getter for: Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/SecExternalDisplayService;->access$400()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "screensaver_enabled"

    # getter for: Lcom/android/server/SecExternalDisplayService;->bDreamsEnabledByDefaultConfig:Z
    invoke-static {p1}, Lcom/android/server/SecExternalDisplayService;->access$500(Lcom/android/server/SecExternalDisplayService;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    const/4 v6, -0x2

    invoke-static {v0, v5, v2, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    # setter for: Lcom/android/server/SecExternalDisplayService;->bIsDayDreamEnabled:Z
    invoke-static {p1, v3}, Lcom/android/server/SecExternalDisplayService;->access$602(Lcom/android/server/SecExternalDisplayService;Z)Z

    return-void

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v1, "SecExternalDisplayService_Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SettingsObserver: onChange: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/SecExternalDisplayService;->access$400()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/SecExternalDisplayService$SettingsObserver;->this$0:Lcom/android/server/SecExternalDisplayService;

    const-string/jumbo v5, "screensaver_enabled"

    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService$SettingsObserver;->this$0:Lcom/android/server/SecExternalDisplayService;

    # getter for: Lcom/android/server/SecExternalDisplayService;->bDreamsEnabledByDefaultConfig:Z
    invoke-static {v1}, Lcom/android/server/SecExternalDisplayService;->access$500(Lcom/android/server/SecExternalDisplayService;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    const/4 v6, -0x2

    invoke-static {v0, v5, v1, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    # setter for: Lcom/android/server/SecExternalDisplayService;->bIsDayDreamEnabled:Z
    invoke-static {v4, v1}, Lcom/android/server/SecExternalDisplayService;->access$602(Lcom/android/server/SecExternalDisplayService;Z)Z

    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService$SettingsObserver;->this$0:Lcom/android/server/SecExternalDisplayService;

    # getter for: Lcom/android/server/SecExternalDisplayService;->bIsDayDreamEnabled:Z
    invoke-static {v1}, Lcom/android/server/SecExternalDisplayService;->access$600(Lcom/android/server/SecExternalDisplayService;)Z

    move-result v1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService$SettingsObserver;->this$0:Lcom/android/server/SecExternalDisplayService;

    # invokes: Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetWakeLock(Z)V
    invoke-static {v1, v3}, Lcom/android/server/SecExternalDisplayService;->access$000(Lcom/android/server/SecExternalDisplayService;Z)V

    :goto_2
    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService$SettingsObserver;->this$0:Lcom/android/server/SecExternalDisplayService;

    # invokes: Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetWakeLock(Z)V
    invoke-static {v1, v2}, Lcom/android/server/SecExternalDisplayService;->access$000(Lcom/android/server/SecExternalDisplayService;Z)V

    goto :goto_2
.end method
