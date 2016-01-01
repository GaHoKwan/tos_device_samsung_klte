.class Landroid/util/fenghen/quicklaunch/QuickLaunchContainer$AddButton$1;
.super Ljava/lang/Object;
.source "QuickLaunchContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/util/fenghen/quicklaunch/QuickLaunchContainer$AddButton;-><init>(Landroid/util/fenghen/quicklaunch/QuickLaunchContainer;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/util/fenghen/quicklaunch/QuickLaunchContainer$AddButton;


# direct methods
.method constructor <init>(Landroid/util/fenghen/quicklaunch/QuickLaunchContainer$AddButton;)V
    .locals 0

    iput-object p1, p0, Landroid/util/fenghen/quicklaunch/QuickLaunchContainer$AddButton$1;->this$1:Landroid/util/fenghen/quicklaunch/QuickLaunchContainer$AddButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/util/fenghen/quicklaunch/QuickLaunchContainer$AddButton$1;->this$1:Landroid/util/fenghen/quicklaunch/QuickLaunchContainer$AddButton;

    # getter for: Landroid/util/fenghen/quicklaunch/QuickLaunchContainer$AddButton;->this$0:Landroid/util/fenghen/quicklaunch/QuickLaunchContainer;
    invoke-static {v0}, Landroid/util/fenghen/quicklaunch/QuickLaunchContainer$AddButton;->access$0(Landroid/util/fenghen/quicklaunch/QuickLaunchContainer$AddButton;)Landroid/util/fenghen/quicklaunch/QuickLaunchContainer;

    move-result-object v0

    # invokes: Landroid/util/fenghen/quicklaunch/QuickLaunchContainer;->showAppDialog(IZ)V
    invoke-static {v0, v1, v1}, Landroid/util/fenghen/quicklaunch/QuickLaunchContainer;->access$0(Landroid/util/fenghen/quicklaunch/QuickLaunchContainer;IZ)V

    return-void
.end method
