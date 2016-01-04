.class Lcom/android/internal/widget/ActionBarContextView$4;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarContextView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ActionBarContextView;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView$4;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 431
    new-array v5, v13, [I

    .line 432
    .local v5, "screenPos":[I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 433
    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 434
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 436
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 437
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 438
    .local v7, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 439
    .local v3, "height":I
    const/4 v6, 0x0

    .line 441
    .local v6, "statusBarHeight":I
    const-string/jumbo v9, "window"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v8

    .line 443
    .local v8, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v8}, Landroid/view/IWindowManager;->isStatusBarVisible()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 444
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x105000c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 450
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarContextView$4;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/internal/widget/ActionBarContextView;->access$100(Lcom/android/internal/widget/ActionBarContextView;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    .line 451
    .local v4, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v9

    if-ne v9, v13, :cond_1

    .line 452
    const/4 v6, 0x0

    .line 456
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v1, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 458
    .local v0, "cheatSheet":Landroid/widget/Toast;
    const/16 v9, 0x33

    aget v10, v5, v11

    aget v11, v5, v12

    add-int/2addr v11, v3

    sub-int/2addr v11, v6

    invoke-virtual {v0, v9, v10, v11}, Landroid/widget/Toast;->setGravity(III)V

    .line 460
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 461
    return v12

    .line 446
    .end local v0    # "cheatSheet":Landroid/widget/Toast;
    .end local v4    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :catch_0
    move-exception v9

    goto :goto_0
.end method
