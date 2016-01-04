.class Lcom/android/internal/app/ResolverActivity$4;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1160
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 1163
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mDeviceAdapter:Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$1100(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->setLoading(Z)V

    .line 1164
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mDeviceAdapter:Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$1100(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;

    move-result-object v1

    # getter for: Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->mDeviceList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->access$1300(Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mDeviceAdapter:Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$1100(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1166
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mDeviceAdapter:Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$1100(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1167
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mGridDevice:Landroid/widget/ExpandableHeightGridView;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$1400(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/ExpandableHeightGridView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 1168
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mDeviceAdapter:Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$1100(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->setEmpty(Z)V

    .line 1169
    new-instance v0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;II)V

    .line 1170
    .local v0, "mTempInfo":Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mDeviceAdapter:Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$1100(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;

    move-result-object v1

    # getter for: Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->mDeviceList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->access$1300(Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1171
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mDeviceAdapter:Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$1100(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1175
    .end local v0    # "mTempInfo":Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;
    :goto_0
    return-void

    .line 1173
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mDeviceAdapter:Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$1100(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
