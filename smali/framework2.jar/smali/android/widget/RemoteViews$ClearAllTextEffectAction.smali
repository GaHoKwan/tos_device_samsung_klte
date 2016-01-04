.class Landroid/widget/RemoteViews$ClearAllTextEffectAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearAllTextEffectAction"
.end annotation


# static fields
.field public static final TAG:I = 0x12


# instance fields
.field final methodName:Ljava/lang/String;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;I)V
    .locals 1
    .param p2, "viewId"    # I

    .prologue
    .line 1551
    iput-object p1, p0, Landroid/widget/RemoteViews$ClearAllTextEffectAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1575
    const-string v0, "clearAllTextEffect"

    iput-object v0, p0, Landroid/widget/RemoteViews$ClearAllTextEffectAction;->methodName:Ljava/lang/String;

    .line 1552
    iput p2, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    .line 1553
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1555
    iput-object p1, p0, Landroid/widget/RemoteViews$ClearAllTextEffectAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1575
    const-string v0, "clearAllTextEffect"

    iput-object v0, p0, Landroid/widget/RemoteViews$ClearAllTextEffectAction;->methodName:Ljava/lang/String;

    .line 1556
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    .line 1557
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 1566
    iget v1, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1567
    .local v0, "target":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 1569
    :goto_0
    return-void

    .line 1568
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->clearAllTextEffect()V

    goto :goto_0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1572
    const-string v0, "ClearAllTextEffectAction"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1560
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1561
    iget v0, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1562
    return-void
.end method
