.class Landroid/util/fenghen/quicklaunch/QuickLaunchContainer$4;
.super Ljava/lang/Object;
.source "QuickLaunchContainer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/util/fenghen/quicklaunch/QuickLaunchContainer;->showAppDialog(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/util/fenghen/quicklaunch/QuickLaunchContainer;


# direct methods
.method constructor <init>(Landroid/util/fenghen/quicklaunch/QuickLaunchContainer;)V
    .locals 0

    iput-object p1, p0, Landroid/util/fenghen/quicklaunch/QuickLaunchContainer$4;->this$0:Landroid/util/fenghen/quicklaunch/QuickLaunchContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Landroid/util/fenghen/quicklaunch/QuickLaunchContainer$4;->this$0:Landroid/util/fenghen/quicklaunch/QuickLaunchContainer;

    iget-object v0, v0, Landroid/util/fenghen/quicklaunch/QuickLaunchContainer;->mAppDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
