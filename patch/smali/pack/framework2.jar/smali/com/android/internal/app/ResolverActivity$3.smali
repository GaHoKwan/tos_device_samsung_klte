.class Lcom/android/internal/app/ResolverActivity$3;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$3;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1108
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$3;->this$0:Lcom/android/internal/app/ResolverActivity;

    const/4 v2, 0x1

    # invokes: Lcom/android/internal/app/ResolverActivity;->clearDeviceList(Z)V
    invoke-static {v1, v2}, Lcom/android/internal/app/ResolverActivity;->access$900(Lcom/android/internal/app/ResolverActivity;Z)V

    .line 1109
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$3;->this$0:Lcom/android/internal/app/ResolverActivity;

    # invokes: Lcom/android/internal/app/ResolverActivity;->initDeviceList()V
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$1000(Lcom/android/internal/app/ResolverActivity;)V

    .line 1111
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$3;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mDeviceAdapter:Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$1100(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1113
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$3;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mISconnect:Lcom/samsung/android/sconnect/extern/ISconnect;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$1200(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/sconnect/extern/ISconnect;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1115
    :try_start_0
    const-string v1, "ResolverActivity"

    const-string/jumbo v2, "onClick : refreshDiscovery"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$3;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mISconnect:Lcom/samsung/android/sconnect/extern/ISconnect;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$1200(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/sconnect/extern/ISconnect;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sconnect/extern/ISconnect;->refreshDiscovery()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1121
    :cond_0
    :goto_0
    return-void

    .line 1117
    :catch_0
    move-exception v0

    .line 1118
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
