.class Lcom/android/internal/app/ResolverActivity$5;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivity;->DeviceListUpdate()V
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
    .line 1179
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$5;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$5;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mGridDevice:Landroid/widget/ExpandableHeightGridView;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$1400(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/ExpandableHeightGridView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$5;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$1500(Lcom/android/internal/app/ResolverActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 1183
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$5;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mDeviceAdapter:Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$1100(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1184
    return-void
.end method
