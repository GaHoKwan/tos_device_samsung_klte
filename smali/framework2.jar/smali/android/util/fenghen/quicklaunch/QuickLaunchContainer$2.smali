.class Landroid/util/fenghen/quicklaunch/QuickLaunchContainer$2;
.super Ljava/lang/Object;
.source "QuickLaunchContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/util/fenghen/quicklaunch/QuickLaunchContainer;->showMainDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/util/fenghen/quicklaunch/QuickLaunchContainer;

.field private final synthetic val$id:I


# direct methods
.method constructor <init>(Landroid/util/fenghen/quicklaunch/QuickLaunchContainer;I)V
    .locals 0

    iput-object p1, p0, Landroid/util/fenghen/quicklaunch/QuickLaunchContainer$2;->this$0:Landroid/util/fenghen/quicklaunch/QuickLaunchContainer;

    iput p2, p0, Landroid/util/fenghen/quicklaunch/QuickLaunchContainer$2;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroid/util/fenghen/quicklaunch/QuickLaunchContainer$2;->this$0:Landroid/util/fenghen/quicklaunch/QuickLaunchContainer;

    iget-object v0, v0, Landroid/util/fenghen/quicklaunch/QuickLaunchContainer;->mMainDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Landroid/util/fenghen/quicklaunch/QuickLaunchContainer$2;->this$0:Landroid/util/fenghen/quicklaunch/QuickLaunchContainer;

    iget v1, p0, Landroid/util/fenghen/quicklaunch/QuickLaunchContainer$2;->val$id:I

    const/4 v2, 0x1

    # invokes: Landroid/util/fenghen/quicklaunch/QuickLaunchContainer;->showAppDialog(IZ)V
    invoke-static {v0, v1, v2}, Landroid/util/fenghen/quicklaunch/QuickLaunchContainer;->access$0(Landroid/util/fenghen/quicklaunch/QuickLaunchContainer;IZ)V

    return-void
.end method
