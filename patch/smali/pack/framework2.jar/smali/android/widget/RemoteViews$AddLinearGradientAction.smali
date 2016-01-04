.class Landroid/widget/RemoteViews$AddLinearGradientAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddLinearGradientAction"
.end annotation


# static fields
.field public static final TAG:I = 0x16


# instance fields
.field alphas:[F

.field angle:F

.field blendingOpacity:F

.field colors:[I

.field final methodName:Ljava/lang/String;

.field positions:[F

.field scale:F

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IFF[I[F[FF)V
    .locals 1
    .param p2, "viewId"    # I
    .param p3, "angle"    # F
    .param p4, "scale"    # F
    .param p5, "colors"    # [I
    .param p6, "alphas"    # [F
    .param p7, "positions"    # [F
    .param p8, "blendingOpacity"    # F

    .prologue
    .line 1734
    iput-object p1, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1783
    const-string v0, "addLinearGradientTextEffect"

    iput-object v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->methodName:Ljava/lang/String;

    .line 1735
    iput p2, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    .line 1736
    iput p3, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->angle:F

    .line 1737
    iput p4, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->scale:F

    .line 1738
    iput-object p5, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->colors:[I

    .line 1739
    iput-object p6, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->alphas:[F

    .line 1740
    iput-object p7, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->positions:[F

    .line 1741
    iput p8, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->blendingOpacity:F

    .line 1742
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1744
    iput-object p1, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1783
    const-string v0, "addLinearGradientTextEffect"

    iput-object v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->methodName:Ljava/lang/String;

    .line 1745
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    .line 1746
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->angle:F

    .line 1747
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->scale:F

    .line 1748
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->colors:[I

    .line 1749
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->alphas:[F

    .line 1750
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->positions:[F

    .line 1751
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->blendingOpacity:F

    .line 1752
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 1767
    iget v1, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1768
    .local v0, "target":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 1770
    :goto_0
    return-void

    .line 1769
    :cond_0
    iget v1, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->angle:F

    iget v2, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->scale:F

    iget-object v3, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->colors:[I

    iget-object v4, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->alphas:[F

    iget-object v5, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->positions:[F

    iget v6, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->blendingOpacity:F

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->addLinearGradientTextEffect(FF[I[F[FF)I

    goto :goto_0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1773
    const-string v0, "AddLinearGradientAction"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1755
    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1756
    iget v0, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1757
    iget v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->angle:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1758
    iget v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->scale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1759
    iget-object v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->colors:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1760
    iget-object v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->alphas:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 1761
    iget-object v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->positions:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 1762
    iget v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->blendingOpacity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1763
    return-void
.end method
