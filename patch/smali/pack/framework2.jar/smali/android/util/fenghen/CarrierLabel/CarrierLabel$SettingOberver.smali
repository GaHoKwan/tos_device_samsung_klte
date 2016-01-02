.class Landroid/util/fenghen/CarrierLabel/CarrierLabel$SettingOberver;
.super Landroid/database/ContentObserver;
.source "CarrierLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/fenghen/CarrierLabel/CarrierLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingOberver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/util/fenghen/CarrierLabel/CarrierLabel;


# direct methods
.method public constructor <init>(Landroid/util/fenghen/CarrierLabel/CarrierLabel;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Landroid/util/fenghen/CarrierLabel/CarrierLabel$SettingOberver;->this$0:Landroid/util/fenghen/CarrierLabel/CarrierLabel;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private register(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/util/fenghen/CarrierLabel/CarrierLabel$SettingOberver;->this$0:Landroid/util/fenghen/CarrierLabel/CarrierLabel;

    invoke-virtual {v0}, Landroid/util/fenghen/CarrierLabel/CarrierLabel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public observe()V
    .locals 1

    const-string v0, "db_dormant_fenghenztlyys_icon"

    invoke-direct {p0, v0}, Landroid/util/fenghen/CarrierLabel/CarrierLabel$SettingOberver;->register(Ljava/lang/String;)V

    const-string v0, "db_dormant_fenghenztlyysys_icon"

    invoke-direct {p0, v0}, Landroid/util/fenghen/CarrierLabel/CarrierLabel$SettingOberver;->register(Ljava/lang/String;)V

    const-string v0, "db_dormant_fenghenztlwb_icon"

    invoke-direct {p0, v0}, Landroid/util/fenghen/CarrierLabel/CarrierLabel$SettingOberver;->register(Ljava/lang/String;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Landroid/util/fenghen/CarrierLabel/CarrierLabel$SettingOberver;->this$0:Landroid/util/fenghen/CarrierLabel/CarrierLabel;

    invoke-virtual {v0}, Landroid/util/fenghen/CarrierLabel/CarrierLabel;->updateSetting()V

    return-void
.end method
