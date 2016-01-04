.class Landroid/widget/RemoteViews$AddStrokeAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddStrokeAction"
.end annotation


# static fields
.field public static final TAG:I = 0x15


# instance fields
.field blendingOpacity:F

.field color:I

.field final methodName:Ljava/lang/String;

.field size:F

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IFIF)V
    .locals 1
    .param p2, "viewId"    # I
    .param p3, "size"    # F
    .param p4, "color"    # I
    .param p5, "blendingOpacity"    # F

    .prologue
    .line 1689
    iput-object p1, p0, Landroid/widget/RemoteViews$AddStrokeAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1726
    const-string v0, "addStrokeTextEffect"

    iput-object v0, p0, Landroid/widget/RemoteViews$AddStrokeAction;->methodName:Ljava/lang/String;

    .line 1690
    iput p2, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    .line 1691
    iput p3, p0, Landroid/widget/RemoteViews$AddStrokeAction;->size:F

    .line 1692
    iput p4, p0, Landroid/widget/RemoteViews$AddStrokeAction;->color:I

    .line 1693
    iput p5, p0, Landroid/widget/RemoteViews$AddStrokeAction;->blendingOpacity:F

    .line 1694
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1696
    iput-object p1, p0, Landroid/widget/RemoteViews$AddStrokeAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1726
    const-string v0, "addStrokeTextEffect"

    iput-object v0, p0, Landroid/widget/RemoteViews$AddStrokeAction;->methodName:Ljava/lang/String;

    .line 1697
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    .line 1698
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddStrokeAction;->size:F

    .line 1699
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddStrokeAction;->color:I

    .line 1700
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddStrokeAction;->blendingOpacity:F

    .line 1701
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 1713
    iget v1, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1714
    .local v0, "target":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 1716
    :goto_0
    return-void

    .line 1715
    :cond_0
    iget v1, p0, Landroid/widget/RemoteViews$AddStrokeAction;->size:F

    iget v2, p0, Landroid/widget/RemoteViews$AddStrokeAction;->color:I

    iget v3, p0, Landroid/widget/RemoteViews$AddStrokeAction;->blendingOpacity:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    goto :goto_0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1719
    const-string v0, "AddStrokeAction"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1704
    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1705
    iget v0, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1706
    iget v0, p0, Landroid/widget/RemoteViews$AddStrokeAction;->size:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1707
    iget v0, p0, Landroid/widget/RemoteViews$AddStrokeAction;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1708
    iget v0, p0, Landroid/widget/RemoteViews$AddStrokeAction;->blendingOpacity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1709
    return-void
.end method
