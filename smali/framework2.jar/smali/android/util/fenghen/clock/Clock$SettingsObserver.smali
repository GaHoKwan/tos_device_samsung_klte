.class Landroid/util/fenghen/clock/Clock$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/fenghen/clock/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/util/fenghen/clock/Clock;


# direct methods
.method constructor <init>(Landroid/util/fenghen/clock/Clock;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Landroid/util/fenghen/clock/Clock$SettingsObserver;->this$0:Landroid/util/fenghen/clock/Clock;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/util/fenghen/clock/Clock$SettingsObserver;->this$0:Landroid/util/fenghen/clock/Clock;

    # getter for: Landroid/util/fenghen/clock/Clock;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/util/fenghen/clock/Clock;->access$0(Landroid/util/fenghen/clock/Clock;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "db_dormant_fenghenztlampm_icon"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "db_inkeffect_fenghenztlszwz_picker"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "db_dormant_fenghenztlszys_icon"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "db_dormant_fenghenztlxq_icon"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "simp_clock_leadzero"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "db_dormant_fenghenztlrq_icon"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "time_12_24"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Landroid/util/fenghen/clock/Clock$SettingsObserver;->this$0:Landroid/util/fenghen/clock/Clock;

    invoke-virtual {v1}, Landroid/util/fenghen/clock/Clock;->updateSettings()V

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Landroid/util/fenghen/clock/Clock$SettingsObserver;->this$0:Landroid/util/fenghen/clock/Clock;

    invoke-virtual {v0}, Landroid/util/fenghen/clock/Clock;->updateSettings()V

    return-void
.end method
