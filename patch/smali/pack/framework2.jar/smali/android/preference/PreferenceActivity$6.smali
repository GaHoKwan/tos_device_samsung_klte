.class Landroid/preference/PreferenceActivity$6;
.super Ljava/lang/Object;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/PreferenceActivity;


# direct methods
.method constructor <init>(Landroid/preference/PreferenceActivity;)V
    .locals 0

    .prologue
    .line 911
    iput-object p1, p0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 914
    iget-object v3, p0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    # getter for: Landroid/preference/PreferenceActivity;->mEnableSplitBar:Z
    invoke-static {v3}, Landroid/preference/PreferenceActivity;->access$600(Landroid/preference/PreferenceActivity;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 929
    :cond_0
    :goto_0
    return v1

    .line 917
    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 918
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 920
    .local v0, "action":I
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 921
    const/4 v1, 0x4

    const/4 v3, -0x1

    :try_start_0
    invoke-static {v1, v3}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    :cond_2
    :goto_1
    move v1, v2

    .line 927
    goto :goto_0

    .line 922
    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 923
    const/4 v1, 0x1

    const/4 v3, -0x1

    invoke-static {v1, v3}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 925
    :catch_0
    move-exception v1

    goto :goto_1
.end method
