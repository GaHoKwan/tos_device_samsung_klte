.class Lcom/android/internal/policy/impl/MultiPhoneWindow$1;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 20
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 167
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v11, v0, [I

    .line 168
    .local v11, "screenPos":[I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 169
    .local v6, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 170
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 173
    .local v4, "context":Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v15

    .line 174
    .local v15, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 175
    .local v7, "height":I
    const/16 v17, 0x1

    aget v17, v11, v17

    div-int/lit8 v18, v7, 0x2

    add-int v8, v17, v18

    .line 176
    .local v8, "midy":I
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v12, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 178
    .local v12, "screenWidth":I
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v10, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 183
    .local v10, "screenHeight":I
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    .line 184
    .local v5, "density":F
    const/high16 v17, 0x42200000    # 40.0f

    mul-float v17, v17, v5

    move/from16 v0, v17

    float-to-int v14, v0

    .line 188
    .local v14, "tempToastHeight":I
    const/4 v13, 0x0

    .line 189
    .local v13, "statusBarHeight":I
    const-string v17, "window"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v16

    .line 191
    .local v16, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/view/IWindowManager;->isStatusBarVisible()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 192
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x105000c

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 199
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v17, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v9

    .line 200
    .local v9, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 201
    const/4 v13, 0x0

    .line 205
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v4, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 207
    .local v3, "cheatSheet":Landroid/widget/Toast;
    const/16 v17, 0x1

    aget v17, v11, v17

    add-int v17, v17, v7

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v18, v18, v14

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 209
    const/16 v17, 0x35

    const/16 v18, 0x0

    aget v18, v11, v18

    sub-int v18, v12, v18

    div-int/lit8 v19, v15, 0x2

    sub-int v18, v18, v19

    const/16 v19, 0x1

    aget v19, v11, v19

    add-int v19, v19, v7

    sub-int v19, v19, v13

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v3, v0, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 218
    :goto_1
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 219
    const/16 v17, 0x1

    return v17

    .line 213
    :cond_2
    const/16 v17, 0x51

    const/16 v18, 0x0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v19, v10, v19

    add-int v19, v19, v7

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v3, v0, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1

    .line 194
    .end local v3    # "cheatSheet":Landroid/widget/Toast;
    .end local v9    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :catch_0
    move-exception v17

    goto :goto_0
.end method
