.class Landroid/util/fenghen/quicklaunch/QuickLaunchContainer$SettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "QuickLaunchContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/fenghen/quicklaunch/QuickLaunchContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/util/fenghen/quicklaunch/QuickLaunchContainer;


# direct methods
.method private constructor <init>(Landroid/util/fenghen/quicklaunch/QuickLaunchContainer;)V
    .locals 0

    iput-object p1, p0, Landroid/util/fenghen/quicklaunch/QuickLaunchContainer$SettingsReceiver;->this$0:Landroid/util/fenghen/quicklaunch/QuickLaunchContainer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/util/fenghen/quicklaunch/QuickLaunchContainer;Landroid/util/fenghen/quicklaunch/QuickLaunchContainer$SettingsReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/fenghen/quicklaunch/QuickLaunchContainer$SettingsReceiver;-><init>(Landroid/util/fenghen/quicklaunch/QuickLaunchContainer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Landroid/util/fenghen/quicklaunch/QuickLaunchContainer$SettingsReceiver;->this$0:Landroid/util/fenghen/quicklaunch/QuickLaunchContainer;

    # invokes: Landroid/util/fenghen/quicklaunch/QuickLaunchContainer;->loadSettings()V
    invoke-static {v0}, Landroid/util/fenghen/quicklaunch/QuickLaunchContainer;->access$1(Landroid/util/fenghen/quicklaunch/QuickLaunchContainer;)V

    return-void
.end method
