.class Lcom/android/server/wm/DisplayContent;
.super Ljava/lang/Object;
.source "DisplayContent.java"


# instance fields
.field final isDefaultDisplay:Z

.field layoutNeeded:Z

.field private mAppTopLevelStackBoxes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/StackBox;",
            ">;"
        }
    .end annotation
.end field

.field mBaseDisplayDensity:I

.field mBaseDisplayHeight:I

.field mBaseDisplayRect:Landroid/graphics/Rect;

.field mBaseDisplayWidth:I

.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayId:I

.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field final mDisplaySizeLock:Ljava/lang/Object;

.field mEasyOneHandScaleSpec:Landroid/view/MagnificationSpec;

.field final mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

.field final mExitingTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mHiddenStack:Lcom/android/server/wm/TaskStack;

.field private mHomeStack:Lcom/android/server/wm/TaskStack;

.field mInitialDisplayDensity:I

.field mInitialDisplayHeight:I

.field mInitialDisplayWidth:I

.field mIsolatedWeightList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field private mStackBoxes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/StackBox;",
            ">;"
        }
    .end annotation
.end field

.field mTapDetector:Lcom/android/server/wm/StackTapPointerEventListener;

.field private mTaskHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field mTmpRect:Landroid/graphics/Rect;

.field mTouchExcludeRegion:Landroid/graphics/Region;

.field mWeightList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mWindows:Lcom/android/server/wm/WindowList;

.field pendingLayoutChanges:I


# direct methods
.method constructor <init>(Landroid/view/Display;Lcom/android/server/wm/WindowManagerService;)V
    .locals 9
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v4, Lcom/android/server/wm/WindowList;

    invoke-direct {v4}, Lcom/android/server/wm/WindowList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    .line 86
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplaySizeLock:Ljava/lang/Object;

    .line 87
    iput v6, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 88
    iput v6, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 89
    iput v6, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 90
    iput v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 91
    iput v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 92
    iput v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 93
    new-instance v4, Landroid/view/DisplayInfo;

    invoke-direct {v4}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 96
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    .line 107
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    .line 113
    new-instance v4, Lcom/android/server/wm/AppTokenList;

    invoke-direct {v4}, Lcom/android/server/wm/AppTokenList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 117
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    .line 120
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    .line 121
    iput-object v8, p0, Lcom/android/server/wm/DisplayContent;->mHiddenStack:Lcom/android/server/wm/TaskStack;

    .line 125
    iput-object v8, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    .line 131
    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 134
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    .line 137
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    .line 1025
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWeightList:Ljava/util/ArrayList;

    .line 1026
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mIsolatedWeightList:Ljava/util/ArrayList;

    .line 146
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 147
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 148
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v4}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 149
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v4, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 150
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 153
    new-instance v0, Lcom/android/server/wm/StackBox;

    const/4 v4, 0x4

    invoke-direct {v0, p2, p0, v8, v4}, Lcom/android/server/wm/StackBox;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;I)V

    .line 154
    .local v0, "hiddenBox":Lcom/android/server/wm/StackBox;
    new-instance v1, Lcom/android/server/wm/TaskStack;

    invoke-direct {v1, p2, v6, p0}, Lcom/android/server/wm/TaskStack;-><init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/DisplayContent;)V

    .line 155
    .local v1, "hiddenStack":Lcom/android/server/wm/TaskStack;
    iput-object v0, v1, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    .line 156
    iput-object v1, v0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 157
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mHiddenStack:Lcom/android/server/wm/TaskStack;

    .line 160
    new-instance v2, Lcom/android/server/wm/StackBox;

    invoke-direct {v2, p2, p0, v8, v5}, Lcom/android/server/wm/StackBox;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;I)V

    .line 162
    .local v2, "newBox":Lcom/android/server/wm/StackBox;
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v3, Lcom/android/server/wm/TaskStack;

    invoke-direct {v3, p2, v5, p0}, Lcom/android/server/wm/TaskStack;-><init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/DisplayContent;)V

    .line 164
    .local v3, "newStack":Lcom/android/server/wm/TaskStack;
    iput-object v2, v3, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    .line 165
    iput-object v3, v2, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 166
    iput-object v3, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    .line 169
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWeightList:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, v7}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWeightList:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, v7}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mIsolatedWeightList:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, v7}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mIsolatedWeightList:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, v7}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    return-void

    .end local v0    # "hiddenBox":Lcom/android/server/wm/StackBox;
    .end local v1    # "hiddenStack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "newBox":Lcom/android/server/wm/StackBox;
    .end local v3    # "newStack":Lcom/android/server/wm/TaskStack;
    :cond_0
    move v4, v6

    .line 149
    goto :goto_0
.end method

.method private getAppplicationStackBox()Lcom/android/server/wm/StackBox;
    .locals 3

    .prologue
    .line 700
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/StackBox;

    .line 701
    .local v0, "box":Lcom/android/server/wm/StackBox;
    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->isApplicationStackBox()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 705
    .end local v0    # "box":Lcom/android/server/wm/StackBox;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method addStackBox(Lcom/android/server/wm/StackBox;ZZ)V
    .locals 5
    .param p1, "box"    # Lcom/android/server/wm/StackBox;
    .param p2, "toTop"    # Z
    .param p3, "isRemovedFromAppTopLevelStackBox"    # Z

    .prologue
    const/4 v3, 0x0

    .line 484
    if-eqz p3, :cond_1

    .line 485
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    invoke-virtual {v4, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 503
    :goto_1
    return-void

    :cond_0
    move v2, v3

    .line 485
    goto :goto_0

    .line 487
    :cond_1
    const/4 v1, -0x1

    .line 488
    .local v1, "index":I
    invoke-virtual {p1}, Lcom/android/server/wm/StackBox;->isFloatingStackBox()Z

    move-result v2

    if-nez v2, :cond_4

    .line 489
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_4

    .line 490
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    invoke-virtual {v2}, Lcom/android/server/wm/StackBox;->isFloatingStackBox()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 489
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 493
    :cond_2
    if-eqz p2, :cond_3

    add-int/lit8 v1, v0, 0x1

    :goto_4
    goto :goto_3

    :cond_3
    move v1, v3

    goto :goto_4

    .line 496
    .end local v0    # "i":I
    :cond_4
    if-ltz v1, :cond_5

    .line 497
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 499
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    if-eqz p2, :cond_6

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_6
    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method addTask(Lcom/android/server/wm/Task;Z)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "toTop"    # Z

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/DisplayContent;->addTask(Lcom/android/server/wm/Task;ZZ)V

    .line 237
    return-void
.end method

.method addTask(Lcom/android/server/wm/Task;ZZ)V
    .locals 14
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "toTop"    # Z
    .param p3, "tapOutSide"    # Z

    .prologue
    .line 241
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 243
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v5, "normalFlotingTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    iget v9, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 246
    .local v9, "userId":I
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 247
    .local v6, "numTasks":I
    if-eqz p2, :cond_6

    .line 249
    iget-object v10, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v10, v10, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v10}, Lcom/android/server/wm/StackBox;->isFloatingStackBox()Z

    move-result v2

    .line 250
    .local v2, "isFloatingStack":Z
    iget-object v10, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v10}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    .line 251
    .local v3, "isMinimizedTask":Z
    add-int/lit8 v7, v6, -0x1

    .local v7, "taskNdx":I
    :goto_0
    if-ltz v7, :cond_0

    .line 252
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 253
    .local v0, "historyTask":Lcom/android/server/wm/Task;
    iget v10, v0, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v10, v9, :cond_3

    .line 254
    if-eqz v2, :cond_4

    .line 255
    if-eqz v3, :cond_2

    .line 269
    .end local v0    # "historyTask":Lcom/android/server/wm/Task;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 279
    .end local v2    # "isFloatingStack":Z
    .end local v3    # "isMinimizedTask":Z
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    .line 280
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    .line 281
    .local v4, "normalFlotingTask":Lcom/android/server/wm/Task;
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 282
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "taskNdx":I
    .local v8, "taskNdx":I
    invoke-virtual {v10, v7, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v7, v8

    .end local v8    # "taskNdx":I
    .restart local v7    # "taskNdx":I
    goto :goto_1

    .line 257
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "normalFlotingTask":Lcom/android/server/wm/Task;
    .restart local v0    # "historyTask":Lcom/android/server/wm/Task;
    .restart local v2    # "isFloatingStack":Z
    .restart local v3    # "isMinimizedTask":Z
    :cond_2
    iget-object v10, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v10}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 251
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 261
    :cond_4
    iget-object v10, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v10, v10, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v10}, Lcom/android/server/wm/StackBox;->isFloatingStackBox()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 263
    iget-object v10, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v11, v10, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    if-nez p3, :cond_5

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {v11, v10}, Lcom/android/server/wm/StackBox;->isFloatingStackBox(Z)Z

    move-result v10

    if-nez v10, :cond_3

    .line 264
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 263
    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    .line 272
    .end local v0    # "historyTask":Lcom/android/server/wm/Task;
    .end local v2    # "isFloatingStack":Z
    .end local v3    # "isMinimizedTask":Z
    .end local v7    # "taskNdx":I
    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "taskNdx":I
    :goto_4
    if-ge v7, v6, :cond_1

    .line 273
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/Task;

    iget v10, v10, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v10, v9, :cond_1

    .line 272
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 286
    :cond_7
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, v7, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 287
    const/16 v11, 0x791a

    const/4 v10, 0x3

    new-array v12, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v13, p1, Lcom/android/server/wm/Task;->taskId:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v10

    const/4 v13, 0x1

    if-eqz p2, :cond_8

    const/4 v10, 0x1

    :goto_5
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v12, v13

    const/4 v10, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v10

    invoke-static {v11, v12}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 288
    return-void

    .line 287
    :cond_8
    const/4 v10, 0x0

    goto :goto_5
.end method

.method animateDimLayers()Z
    .locals 3

    .prologue
    .line 877
    const/4 v0, 0x0

    .line 878
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackBoxNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 879
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    invoke-virtual {v2}, Lcom/android/server/wm/StackBox;->animateDimLayers()Z

    move-result v2

    or-int/2addr v0, v2

    .line 878
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 883
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_1

    .line 884
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    invoke-virtual {v2}, Lcom/android/server/wm/StackBox;->animateDimLayers()Z

    move-result v2

    or-int/2addr v0, v2

    .line 883
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 887
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mHiddenStack:Lcom/android/server/wm/TaskStack;

    iget-object v2, v2, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v2}, Lcom/android/server/wm/StackBox;->animateDimLayers()Z

    .line 890
    return v0
.end method

.method close()V
    .locals 2

    .prologue
    .line 930
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "stackBoxNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 931
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->close()V

    .line 930
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 935
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 936
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->close()V

    .line 935
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 939
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mHiddenStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, v1, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->close()V

    .line 941
    return-void
.end method

.method createStack(IIIF)Lcom/android/server/wm/TaskStack;
    .locals 20
    .param p1, "stackId"    # I
    .param p2, "relativeStackBoxId"    # I
    .param p3, "position"    # I
    .param p4, "weight"    # F

    .prologue
    .line 323
    const/4 v10, 0x0

    .line 326
    .local v10, "newStack":Lcom/android/server/wm/TaskStack;
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_3

    .line 327
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_0

    .line 328
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "createStack: HOME_STACK_ID (0) not first."

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 330
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    .line 411
    :cond_1
    :goto_0
    if-eqz v10, :cond_2

    .line 412
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 415
    :cond_2
    const/16 v13, 0x791c

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const/high16 v16, 0x42c80000    # 100.0f

    mul-float v16, v16, p4

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 417
    return-object v10

    .line 331
    :cond_3
    if-nez p1, :cond_4

    .line 332
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mHiddenStack:Lcom/android/server/wm/TaskStack;

    goto :goto_0

    .line 335
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v12, v13, -0x1

    .local v12, "stackBoxNdx":I
    :goto_1
    if-ltz v12, :cond_8

    .line 336
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/StackBox;

    .line 337
    .local v6, "box":Lcom/android/server/wm/StackBox;
    const/4 v13, 0x6

    move/from16 v0, p3

    if-eq v0, v13, :cond_5

    const/4 v13, 0x7

    move/from16 v0, p3

    if-ne v0, v13, :cond_e

    .line 340
    :cond_5
    move/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/android/server/wm/StackBox;->contains(I)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 341
    new-instance v9, Lcom/android/server/wm/StackBox;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v13, v0, v14}, Lcom/android/server/wm/StackBox;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;)V

    .line 342
    .local v9, "newBox":Lcom/android/server/wm/StackBox;
    new-instance v10, Lcom/android/server/wm/TaskStack;

    .end local v10    # "newStack":Lcom/android/server/wm/TaskStack;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v10, v13, v0, v1}, Lcom/android/server/wm/TaskStack;-><init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/DisplayContent;)V

    .line 343
    .restart local v10    # "newStack":Lcom/android/server/wm/TaskStack;
    iput-object v9, v10, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    .line 344
    iput-object v10, v9, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 345
    const/4 v13, 0x6

    move/from16 v0, p3

    if-ne v0, v13, :cond_c

    const/4 v11, 0x1

    .line 350
    .local v11, "offset":I
    :goto_2
    const/4 v4, 0x0

    .line 351
    .local v4, "appStackBox":Lcom/android/server/wm/StackBox;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/StackBox;

    .line 352
    .local v5, "b":Lcom/android/server/wm/StackBox;
    invoke-virtual {v5}, Lcom/android/server/wm/StackBox;->isApplicationStackBox()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 353
    move-object v4, v5

    .line 357
    .end local v5    # "b":Lcom/android/server/wm/StackBox;
    :cond_7
    if-eqz v4, :cond_d

    .line 358
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 359
    .local v8, "index":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 360
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v13, v8, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 378
    .end local v4    # "appStackBox":Lcom/android/server/wm/StackBox;
    .end local v6    # "box":Lcom/android/server/wm/StackBox;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "index":I
    .end local v9    # "newBox":Lcom/android/server/wm/StackBox;
    .end local v11    # "offset":I
    :cond_8
    :goto_3
    if-gez v12, :cond_1

    .line 379
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v12, v13, -0x1

    :goto_4
    if-ltz v12, :cond_b

    .line 380
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/StackBox;

    .line 381
    .restart local v6    # "box":Lcom/android/server/wm/StackBox;
    const/4 v13, 0x6

    move/from16 v0, p3

    if-eq v0, v13, :cond_10

    const/4 v13, 0x7

    move/from16 v0, p3

    if-eq v0, v13, :cond_10

    .line 383
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/server/wm/StackBox;->split(IIIF)Lcom/android/server/wm/TaskStack;

    move-result-object v10

    .line 384
    if-eqz v10, :cond_10

    .line 385
    const/4 v4, 0x0

    .line 386
    .restart local v4    # "appStackBox":Lcom/android/server/wm/StackBox;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/StackBox;

    .line 387
    .restart local v5    # "b":Lcom/android/server/wm/StackBox;
    invoke-virtual {v5}, Lcom/android/server/wm/StackBox;->isApplicationStackBox()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 388
    move-object v4, v5

    .line 392
    .end local v5    # "b":Lcom/android/server/wm/StackBox;
    :cond_a
    if-eqz v4, :cond_b

    .line 393
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 394
    .restart local v8    # "index":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 395
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 396
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v13, v8, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 404
    .end local v4    # "appStackBox":Lcom/android/server/wm/StackBox;
    .end local v6    # "box":Lcom/android/server/wm/StackBox;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "index":I
    :cond_b
    if-gez v12, :cond_1

    .line 405
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "createStack: stackBoxId "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " not found."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 345
    .restart local v6    # "box":Lcom/android/server/wm/StackBox;
    .restart local v9    # "newBox":Lcom/android/server/wm/StackBox;
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 366
    .restart local v4    # "appStackBox":Lcom/android/server/wm/StackBox;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v11    # "offset":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    add-int v14, v12, v11

    invoke-virtual {v13, v14, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 371
    .end local v4    # "appStackBox":Lcom/android/server/wm/StackBox;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "newBox":Lcom/android/server/wm/StackBox;
    .end local v11    # "offset":I
    :cond_e
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/server/wm/StackBox;->split(IIIF)Lcom/android/server/wm/TaskStack;

    move-result-object v10

    .line 372
    if-nez v10, :cond_8

    .line 335
    :cond_f
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_1

    .line 379
    :cond_10
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_4
.end method

.method createStack(IILandroid/graphics/Rect;)Lcom/android/server/wm/TaskStack;
    .locals 4
    .param p1, "stackId"    # I
    .param p2, "stackType"    # I
    .param p3, "stackFrame"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x1

    .line 422
    const/4 v1, 0x0

    .line 425
    .local v1, "newStack":Lcom/android/server/wm/TaskStack;
    if-ne p1, v3, :cond_0

    .line 426
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 427
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "createStack: HOME_STACK_ID (0) not available."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 430
    :cond_0
    new-instance v0, Lcom/android/server/wm/StackBox;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    invoke-direct {v0, v2, p0, v3, p2}, Lcom/android/server/wm/StackBox;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;I)V

    .line 431
    .local v0, "newBox":Lcom/android/server/wm/StackBox;
    new-instance v1, Lcom/android/server/wm/TaskStack;

    .end local v1    # "newStack":Lcom/android/server/wm/TaskStack;
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v1, v2, p1, p0}, Lcom/android/server/wm/TaskStack;-><init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/DisplayContent;)V

    .line 432
    .restart local v1    # "newStack":Lcom/android/server/wm/TaskStack;
    iput-object v0, v1, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    .line 433
    iput-object v1, v0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 434
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    .line 436
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 438
    .end local v0    # "newBox":Lcom/android/server/wm/StackBox;
    :cond_1
    return-object v1
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 13
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 944
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "Display: mDisplayId="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 945
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 946
    .local v4, "subPrefix":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "init="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v10, "x"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 947
    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, " "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 948
    const-string v10, "dpi"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 949
    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v11, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-ne v10, v11, :cond_0

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iget v11, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-ne v10, v11, :cond_0

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iget v11, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-eq v10, v11, :cond_1

    .line 952
    :cond_0
    const-string v10, " base="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 953
    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v10, "x"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 954
    const-string v10, " "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, "dpi"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 956
    :cond_1
    const-string v10, " cur="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 957
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 958
    const-string/jumbo v10, "x"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 959
    const-string v10, " app="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 960
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 961
    const-string/jumbo v10, "x"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 962
    const-string v10, " rng="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 963
    const-string/jumbo v10, "x"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 964
    const-string v10, "-"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 965
    const-string/jumbo v10, "x"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 966
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "layoutNeeded="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v10, p0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Z)V

    .line 969
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v0, v10, -0x1

    .local v0, "boxNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 971
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "StackBox #"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 972
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/StackBox;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, p2}, Lcom/android/server/wm/StackBox;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 969
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 976
    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "Hiden StackBox #"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 977
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mHiddenStack:Lcom/android/server/wm/TaskStack;

    iget-object v10, v10, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, p2}, Lcom/android/server/wm/StackBox;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 978
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v0, v10, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 979
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "App Top Level StackBox #"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 980
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/StackBox;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, p2}, Lcom/android/server/wm/StackBox;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 978
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 984
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->numTokens()I

    move-result v2

    .line 985
    .local v2, "ndx":I
    if-lez v2, :cond_5

    .line 986
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 987
    const-string v10, "  Application tokens in Z order:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 988
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    .line 989
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v5, v10, -0x1

    .local v5, "taskNdx":I
    :goto_2
    if-ltz v5, :cond_5

    .line 990
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/Task;

    iget-object v8, v10, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 991
    .local v8, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v7, v10, -0x1

    .local v7, "tokenNdx":I
    move v3, v2

    .end local v2    # "ndx":I
    .local v3, "ndx":I
    :goto_3
    if-ltz v7, :cond_4

    .line 992
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/AppWindowToken;

    .line 993
    .local v9, "wtoken":Lcom/android/server/wm/AppWindowToken;
    const-string v10, "  App #"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v3, -0x1

    .end local v3    # "ndx":I
    .restart local v2    # "ndx":I
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 994
    const/16 v10, 0x20

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v10, ":"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 995
    const-string v10, "    "

    invoke-virtual {v9, p2, v10}, Lcom/android/server/wm/AppWindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 991
    add-int/lit8 v7, v7, -0x1

    move v3, v2

    .end local v2    # "ndx":I
    .restart local v3    # "ndx":I
    goto :goto_3

    .line 989
    .end local v9    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_4
    add-int/lit8 v5, v5, -0x1

    move v2, v3

    .end local v3    # "ndx":I
    .restart local v2    # "ndx":I
    goto :goto_2

    .line 999
    .end local v5    # "taskNdx":I
    .end local v7    # "tokenNdx":I
    .end local v8    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_5
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_6

    .line 1000
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1001
    const-string v10, "  Exiting tokens:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1002
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .local v1, "i":I
    :goto_4
    if-ltz v1, :cond_6

    .line 1003
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowToken;

    .line 1004
    .local v6, "token":Lcom/android/server/wm/WindowToken;
    const-string v10, "  Exiting #"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1005
    const/16 v10, 0x20

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1006
    const/16 v10, 0x3a

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(C)V

    .line 1007
    const-string v10, "    "

    invoke-virtual {v6, p2, v10}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1002
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 1010
    .end local v1    # "i":I
    .end local v6    # "token":Lcom/android/server/wm/WindowToken;
    :cond_6
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_7

    .line 1011
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1012
    const-string v10, "  Exiting application tokens:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1013
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .restart local v1    # "i":I
    :goto_5
    if-ltz v1, :cond_7

    .line 1014
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowToken;

    .line 1015
    .restart local v6    # "token":Lcom/android/server/wm/WindowToken;
    const-string v10, "  Exiting App #"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1016
    const/16 v10, 0x20

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1017
    const/16 v10, 0x3a

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(C)V

    .line 1018
    const-string v10, "    "

    invoke-virtual {v6, p2, v10}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1013
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 1021
    .end local v1    # "i":I
    .end local v6    # "token":Lcom/android/server/wm/WindowToken;
    :cond_7
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1022
    return-void
.end method

.method getDisplay()Landroid/view/Display;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method getDisplayId()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    return v0
.end method

.method getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method getDisplayInfo(I)Landroid/view/DisplayInfo;
    .locals 3
    .param p1, "screenOrientation"    # I

    .prologue
    .line 193
    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    if-nez p1, :cond_1

    .line 195
    :cond_0
    new-instance v0, Landroid/view/DisplayInfo;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-direct {v0, v2}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    .line 196
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 197
    .local v1, "temp":I
    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 198
    iput v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 201
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v1    # "temp":I
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    goto :goto_0
.end method

.method getHomeStack()Lcom/android/server/wm/TaskStack;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method getLogicalDisplayRect(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    .line 305
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 306
    .local v3, "width":I
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    sub-int/2addr v4, v3

    div-int/lit8 v1, v4, 0x2

    .line 307
    .local v1, "left":I
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 308
    .local v0, "height":I
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    sub-int/2addr v4, v0

    div-int/lit8 v2, v4, 0x2

    .line 309
    .local v2, "top":I
    add-int v4, v1, v3

    add-int v5, v2, v0

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 310
    return-void
.end method

.method public getRootCurrentStackBox(I)Lcom/android/server/wm/StackBox;
    .locals 6
    .param p1, "type"    # I

    .prologue
    .line 709
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->getStackOrder(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 710
    .local v1, "orderedStackId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "oderIdx":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 711
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "taskIdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 712
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    iget-object v4, v4, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v5, v4, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v5, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    iget-object v4, v4, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v4, v4, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    iget v4, v4, Lcom/android/server/wm/StackBox;->mStackBoxType:I

    if-ne v4, p1, :cond_0

    .line 714
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    iget-object v4, v4, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v2, v4, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    .line 715
    .local v2, "rootStackBox":Lcom/android/server/wm/StackBox;
    :goto_2
    iget-object v4, v2, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v4, :cond_3

    .line 716
    iget-object v2, v2, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    goto :goto_2

    .line 711
    .end local v2    # "rootStackBox":Lcom/android/server/wm/StackBox;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 710
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 722
    .end local v3    # "taskIdx":I
    :cond_2
    const/4 v2, 0x0

    :cond_3
    return-object v2
.end method

.method public getRootStackBox(I)Lcom/android/server/wm/StackBox;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 1087
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1088
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    iget v1, v1, Lcom/android/server/wm/StackBox;->mStackBoxType:I

    if-ne v1, p1, :cond_0

    .line 1089
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    .line 1092
    :goto_1
    return-object v1

    .line 1087
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1092
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method getStackBounds(I)Landroid/graphics/Rect;
    .locals 3
    .param p1, "stackId"    # I

    .prologue
    .line 757
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackBoxNdx":I
    :goto_0
    if-ltz v1, :cond_2

    .line 758
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/StackBox;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 759
    .local v0, "bounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    .line 772
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_0
    :goto_1
    return-object v0

    .line 757
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 765
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_2
    if-ltz v1, :cond_3

    .line 766
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/StackBox;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 767
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 765
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 772
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getStackBoxInfo(Lcom/android/server/wm/StackBox;)Landroid/app/ActivityManager$StackBoxInfo;
    .locals 4
    .param p1, "box"    # Lcom/android/server/wm/StackBox;

    .prologue
    .line 545
    new-instance v0, Landroid/app/ActivityManager$StackBoxInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$StackBoxInfo;-><init>()V

    .line 546
    .local v0, "info":Landroid/app/ActivityManager$StackBoxInfo;
    iget v1, p1, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    iput v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->stackBoxId:I

    .line 547
    iget v1, p1, Lcom/android/server/wm/StackBox;->mWeight:F

    iput v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->weight:F

    .line 548
    iget-boolean v1, p1, Lcom/android/server/wm/StackBox;->mVertical:Z

    iput-boolean v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->vertical:Z

    .line 550
    iget v1, p1, Lcom/android/server/wm/StackBox;->mStackBoxType:I

    iput v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->stackBoxType:I

    .line 551
    invoke-virtual {p1}, Lcom/android/server/wm/StackBox;->hasIsolatedSplitStackBox()Z

    move-result v1

    iput-boolean v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->isIsolated:Z

    .line 553
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->bounds:Landroid/graphics/Rect;

    .line 554
    iget-object v1, p1, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_0

    .line 555
    iget-object v1, p1, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    iput v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->stackId:I

    .line 563
    :goto_0
    return-object v0

    .line 558
    :cond_0
    const/4 v1, -0x1

    iput v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->stackId:I

    .line 559
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/app/ActivityManager$StackBoxInfo;

    iput-object v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    .line 560
    iget-object v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->getStackBoxInfo(Lcom/android/server/wm/StackBox;)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v3

    aput-object v3, v1, v2

    .line 561
    iget-object v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->getStackBoxInfo(Lcom/android/server/wm/StackBox;)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_0
.end method

.method public getStackBoxInfoByStackId(ILcom/android/server/wm/WindowManagerService$LEVEL;)Landroid/app/ActivityManager$StackBoxInfo;
    .locals 2
    .param p1, "stackId"    # I
    .param p2, "level"    # Lcom/android/server/wm/WindowManagerService$LEVEL;

    .prologue
    .line 1029
    const/4 v0, 0x0

    .line 1030
    .local v0, "info":Landroid/app/ActivityManager$StackBoxInfo;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/wm/DisplayContent;->getStackBoxInfoByStackId(Ljava/util/ArrayList;ILcom/android/server/wm/WindowManagerService$LEVEL;)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v0

    .line 1031
    if-nez v0, :cond_0

    .line 1032
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/wm/DisplayContent;->getStackBoxInfoByStackId(Ljava/util/ArrayList;ILcom/android/server/wm/WindowManagerService$LEVEL;)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v0

    .line 1034
    :cond_0
    return-object v0
.end method

.method public getStackBoxInfoByStackId(Ljava/util/ArrayList;ILcom/android/server/wm/WindowManagerService$LEVEL;)Landroid/app/ActivityManager$StackBoxInfo;
    .locals 4
    .param p2, "stackId"    # I
    .param p3, "level"    # Lcom/android/server/wm/WindowManagerService$LEVEL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/StackBox;",
            ">;I",
            "Lcom/android/server/wm/WindowManagerService$LEVEL;",
            ")",
            "Landroid/app/ActivityManager$StackBoxInfo;"
        }
    .end annotation

    .prologue
    .line 1038
    .local p1, "stackBoxes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/StackBox;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "stackBoxNdx":I
    :goto_0
    if-ltz v1, :cond_6

    .line 1039
    const/4 v0, 0x0

    .line 1040
    .local v0, "box":Lcom/android/server/wm/StackBox;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/StackBox;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/StackBox;->getStackBoxForStackId(I)Lcom/android/server/wm/StackBox;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1041
    sget-object v3, Lcom/android/server/wm/WindowManagerService$LEVEL;->SELF:Lcom/android/server/wm/WindowManagerService$LEVEL;

    if-ne p3, v3, :cond_0

    .line 1042
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getStackBoxInfo(Lcom/android/server/wm/StackBox;)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v3

    .line 1064
    .end local v0    # "box":Lcom/android/server/wm/StackBox;
    :goto_1
    return-object v3

    .line 1043
    .restart local v0    # "box":Lcom/android/server/wm/StackBox;
    :cond_0
    sget-object v3, Lcom/android/server/wm/WindowManagerService$LEVEL;->PARENT:Lcom/android/server/wm/WindowManagerService$LEVEL;

    if-ne p3, v3, :cond_1

    .line 1044
    iget-object v3, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v3, :cond_5

    .line 1045
    iget-object v3, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->getStackBoxInfo(Lcom/android/server/wm/StackBox;)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v3

    goto :goto_1

    .line 1047
    :cond_1
    sget-object v3, Lcom/android/server/wm/WindowManagerService$LEVEL;->SIBLING:Lcom/android/server/wm/WindowManagerService$LEVEL;

    if-ne p3, v3, :cond_3

    .line 1048
    iget-object v3, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v3, :cond_5

    .line 1049
    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1050
    iget-object v3, v0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->getStackBoxInfo(Lcom/android/server/wm/StackBox;)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v3

    goto :goto_1

    .line 1052
    :cond_2
    iget-object v3, v0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->getStackBoxInfo(Lcom/android/server/wm/StackBox;)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v3

    goto :goto_1

    .line 1055
    :cond_3
    sget-object v3, Lcom/android/server/wm/WindowManagerService$LEVEL;->ROOT:Lcom/android/server/wm/WindowManagerService$LEVEL;

    if-ne p3, v3, :cond_5

    .line 1056
    move-object v2, v0

    .line 1057
    .local v2, "temp":Lcom/android/server/wm/StackBox;
    :goto_2
    iget-object v3, v2, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v3, :cond_4

    .line 1058
    iget-object v2, v2, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    goto :goto_2

    .line 1060
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getStackBoxInfo(Lcom/android/server/wm/StackBox;)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v3

    goto :goto_1

    .line 1038
    .end local v2    # "temp":Lcom/android/server/wm/StackBox;
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1064
    .end local v0    # "box":Lcom/android/server/wm/StackBox;
    :cond_6
    const/4 v3, 0x0

    goto :goto_1
.end method

.method getStackBoxInfos()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityManager$StackBoxInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 567
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 568
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$StackBoxInfo;>;"
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackBoxNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 569
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getStackBoxInfo(Lcom/android/server/wm/StackBox;)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 572
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_1

    .line 573
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getStackBoxInfo(Lcom/android/server/wm/StackBox;)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 576
    :cond_1
    return-object v0
.end method

.method public getStackOrder(Z)Ljava/util/ArrayList;
    .locals 7
    .param p1, "bAllStack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1125
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1126
    .local v4, "stackOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 1127
    .local v2, "prevRootStackBox":Lcom/android/server/wm/StackBox;
    const/4 v0, -0x1

    .line 1128
    .local v0, "currStackId":I
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1129
    if-nez p1, :cond_3

    .line 1130
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    iget-object v5, v5, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v5, v5, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v5}, Lcom/android/server/wm/StackBox;->isFloatingStackBox()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1131
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    iget-object v5, v5, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v3, v5, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    .line 1132
    .local v3, "rootStackBox":Lcom/android/server/wm/StackBox;
    :goto_1
    iget-object v5, v3, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v5, :cond_0

    .line 1133
    iget-object v3, v3, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    goto :goto_1

    .line 1136
    :cond_0
    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_2

    .line 1151
    .end local v3    # "rootStackBox":Lcom/android/server/wm/StackBox;
    :cond_1
    return-object v4

    .line 1139
    .restart local v3    # "rootStackBox":Lcom/android/server/wm/StackBox;
    :cond_2
    move-object v2, v3

    .line 1143
    .end local v3    # "rootStackBox":Lcom/android/server/wm/StackBox;
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    iget v5, v5, Lcom/android/server/wm/Task;->mUserId:I

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v6, v6, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    if-ne v5, v6, :cond_4

    .line 1144
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    iget-object v5, v5, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v5, v5, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-eq v0, v5, :cond_4

    .line 1145
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    iget-object v5, v5, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v5, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 1146
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method getTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    return-object v0
.end method

.method getWindowList()Lcom/android/server/wm/WindowList;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    return-object v0
.end method

.method public getWindowOrder(Lcom/android/server/wm/WindowState;)I
    .locals 3
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 1155
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1156
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v1, v1, Lcom/android/server/wm/AppWindowToken;->groupId:I

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v2, v2, Lcom/android/server/wm/AppWindowToken;->groupId:I

    if-ne v1, v2, :cond_0

    .line 1161
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 1155
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1161
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public hasAccess(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, p1}, Landroid/view/Display;->hasAccess(I)Z

    move-result v0

    return v0
.end method

.method public hasIsolatedSplitStackBox()Z
    .locals 3

    .prologue
    .line 726
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/StackBox;

    .line 727
    .local v0, "box":Lcom/android/server/wm/StackBox;
    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->isApplicationStackBox()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 728
    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->hasIsolatedSplitStackBox()Z

    move-result v2

    .line 731
    .end local v0    # "box":Lcom/android/server/wm/StackBox;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method homeOnTop()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 212
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 213
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    iget v1, v1, Lcom/android/server/wm/StackBox;->mStackBoxType:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    .line 212
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    iget-object v1, v1, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    if-ne v1, v4, :cond_1

    move v1, v2

    .line 219
    :goto_1
    return v1

    :cond_1
    move v1, v3

    .line 216
    goto :goto_1

    .line 219
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    iget-object v1, v1, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    if-eq v1, v4, :cond_3

    :goto_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method public isAppTopLevelStackBox(Lcom/android/server/wm/StackBox;)Z
    .locals 3
    .param p1, "stackBox"    # Lcom/android/server/wm/StackBox;

    .prologue
    const/4 v1, 0x0

    .line 1096
    if-nez p1, :cond_1

    .line 1109
    :cond_0
    :goto_0
    return v1

    .line 1100
    :cond_1
    move-object v0, p1

    .line 1101
    .local v0, "rootStackBox":Lcom/android/server/wm/StackBox;
    :goto_1
    iget-object v2, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v2, :cond_2

    .line 1102
    iget-object v0, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    goto :goto_1

    .line 1105
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1106
    const/4 v1, 0x1

    goto :goto_0
.end method

.method isDimming()Z
    .locals 3

    .prologue
    .line 908
    const/4 v0, 0x0

    .line 909
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackBoxNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 910
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    invoke-virtual {v2}, Lcom/android/server/wm/StackBox;->isDimming()Z

    move-result v2

    or-int/2addr v0, v2

    .line 909
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 912
    :cond_0
    return v0
.end method

.method public isPrivate()Z
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method moveHomeStackBox(Z)Z
    .locals 6
    .param p1, "toTop"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 588
    const/16 v5, 0x791d

    if-eqz p1, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v5, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 589
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 607
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->homeOnTop()Z

    move-result v2

    xor-int/2addr v2, p1

    if-eqz v2, :cond_1

    .line 608
    const/4 v1, -0x1

    .line 609
    .local v1, "targetIdx":I
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    iget-object v5, v5, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 610
    if-eqz p1, :cond_5

    .line 611
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_0

    .line 612
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    iget v2, v2, Lcom/android/server/wm/StackBox;->mStackBoxType:I

    const/4 v5, 0x3

    if-eq v2, v5, :cond_3

    .line 613
    move v1, v0

    .line 617
    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 618
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    iget-object v5, v5, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .end local v0    # "i":I
    :goto_2
    move v4, v3

    .line 627
    .end local v1    # "targetIdx":I
    :cond_1
    :pswitch_0
    return v4

    :cond_2
    move v2, v4

    .line 588
    goto :goto_0

    .line 590
    :pswitch_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "moveHomeStackBox: No home StackBox!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 611
    .restart local v0    # "i":I
    .restart local v1    # "targetIdx":I
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 620
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    iget-object v5, v5, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 623
    .end local v0    # "i":I
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    iget-object v5, v5, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 589
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method moveStackBox(Lcom/android/server/wm/StackBox;Z)Z
    .locals 10
    .param p1, "stack"    # Lcom/android/server/wm/StackBox;
    .param p2, "toTop"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 642
    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 646
    invoke-virtual {p1}, Lcom/android/server/wm/StackBox;->isFloatingStackBox()Z

    move-result v9

    if-nez v9, :cond_a

    .line 647
    invoke-virtual {p1}, Lcom/android/server/wm/StackBox;->isHomeStackBox()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 648
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->homeOnTop()Z

    move-result v7

    xor-int/2addr v7, p2

    if-eqz v7, :cond_0

    .line 649
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->moveHomeStackBox(Z)Z

    move-result v8

    .line 687
    :cond_0
    :goto_0
    :pswitch_0
    return v8

    .line 643
    :pswitch_1
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "moveHomeStackBox: No home StackBox!"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 653
    :cond_1
    const/4 v5, 0x0

    .line 654
    .local v5, "result":Z
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->homeOnTop()Z

    move-result v9

    if-nez v9, :cond_4

    move v9, v7

    :goto_1
    xor-int/2addr v9, p2

    if-eqz v9, :cond_2

    .line 655
    if-nez p2, :cond_5

    :goto_2
    invoke-virtual {p0, v7}, Lcom/android/server/wm/DisplayContent;->moveHomeStackBox(Z)Z

    move-result v5

    .line 658
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->getAppplicationStackBox()Lcom/android/server/wm/StackBox;

    move-result-object v1

    .line 659
    .local v1, "currAppStackBox":Lcom/android/server/wm/StackBox;
    if-eqz p2, :cond_3

    if-nez v1, :cond_6

    :cond_3
    move v8, v5

    .line 660
    goto :goto_0

    .end local v1    # "currAppStackBox":Lcom/android/server/wm/StackBox;
    :cond_4
    move v9, v8

    .line 654
    goto :goto_1

    :cond_5
    move v7, v8

    .line 655
    goto :goto_2

    .line 662
    .restart local v1    # "currAppStackBox":Lcom/android/server/wm/StackBox;
    :cond_6
    const/4 v4, 0x0

    .line 663
    .local v4, "nextAppStackBox":Lcom/android/server/wm/StackBox;
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/StackBox;

    .line 664
    .local v0, "box":Lcom/android/server/wm/StackBox;
    iget v7, p1, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    invoke-virtual {v0, v7}, Lcom/android/server/wm/StackBox;->contains(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 665
    move-object v4, v0

    .line 670
    .end local v0    # "box":Lcom/android/server/wm/StackBox;
    :cond_8
    if-eqz v4, :cond_9

    .line 671
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 672
    .local v3, "index":I
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 673
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v7, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 675
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 676
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    const/4 v5, 0x1

    .end local v3    # "index":I
    :cond_9
    move v8, v5

    .line 680
    goto :goto_0

    .line 683
    .end local v1    # "currAppStackBox":Lcom/android/server/wm/StackBox;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "nextAppStackBox":Lcom/android/server/wm/StackBox;
    .end local v5    # "result":Z
    :cond_a
    if-eqz p2, :cond_c

    .line 684
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 685
    .local v6, "stackIndex":I
    if-lez v6, :cond_b

    .line 686
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v7

    .line 687
    goto :goto_0

    .line 689
    :cond_b
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "moveStackBox: stack is not exists in mStackBoxes!"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 693
    .end local v6    # "stackIndex":I
    :cond_c
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "moveStackBox: this case should not be called!"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 642
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method numTokens()I
    .locals 3

    .prologue
    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, "count":I
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 316
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    iget-object v2, v2, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 315
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 318
    :cond_0
    return v0
.end method

.method removeStackBox(Lcom/android/server/wm/StackBox;)Z
    .locals 1
    .param p1, "box"    # Lcom/android/server/wm/StackBox;

    .prologue
    .line 507
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->removeStackBox(Lcom/android/server/wm/StackBox;Z)Z

    move-result v0

    return v0
.end method

.method removeStackBox(Lcom/android/server/wm/StackBox;Z)Z
    .locals 7
    .param p1, "box"    # Lcom/android/server/wm/StackBox;
    .param p2, "replaceParent"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 513
    iget-object v1, p1, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 514
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_1

    iget v4, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v4, v3, :cond_1

    .line 540
    :cond_0
    :goto_0
    return v2

    .line 522
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/StackBox;->isFloatingStackBox()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 523
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 527
    :cond_2
    if-eqz p2, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 528
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 529
    .local v0, "index":I
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 530
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 531
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 537
    .end local v0    # "index":I
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 538
    goto :goto_0

    .line 534
    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method removeTask(Lcom/android/server/wm/Task;)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 292
    return-void
.end method

.method resetAnimationBackgroundAnimator()V
    .locals 2

    .prologue
    .line 863
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "stackBoxNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 864
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->resetAnimationBackgroundAnimator()V

    .line 863
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 868
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 869
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->resetAnimationBackgroundAnimator()V

    .line 868
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 872
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mHiddenStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, v1, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->resetAnimationBackgroundAnimator()V

    .line 874
    return-void
.end method

.method resetDimming()V
    .locals 2

    .prologue
    .line 894
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "stackBoxNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 895
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->resetDimming()V

    .line 894
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 899
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 900
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->resetDimming()V

    .line 899
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 903
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mHiddenStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, v1, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->resetDimming()V

    .line 905
    return-void
.end method

.method resizeStack(IF)Z
    .locals 4
    .param p1, "stackBoxId"    # I
    .param p2, "weight"    # F

    .prologue
    const/4 v2, 0x1

    .line 444
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "stackBoxNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 445
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/StackBox;

    .line 446
    .local v0, "box":Lcom/android/server/wm/StackBox;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/StackBox;->resize(IF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 447
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 460
    .end local v0    # "box":Lcom/android/server/wm/StackBox;
    :goto_1
    return v2

    .line 444
    .restart local v0    # "box":Lcom/android/server/wm/StackBox;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 452
    .end local v0    # "box":Lcom/android/server/wm/StackBox;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_2
    if-ltz v1, :cond_3

    .line 453
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/StackBox;

    .line 454
    .restart local v0    # "box":Lcom/android/server/wm/StackBox;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/StackBox;->resize(IF)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 455
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    goto :goto_1

    .line 452
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 460
    .end local v0    # "box":Lcom/android/server/wm/StackBox;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public resizeWeight(Ljava/util/ArrayList;Z)Z
    .locals 3
    .param p2, "isIsolated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .local p1, "weight":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const/4 v1, 0x0

    .line 1068
    if-eqz p2, :cond_3

    .line 1069
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mIsolatedWeightList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1082
    :cond_0
    :goto_0
    return v1

    .line 1072
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mIsolatedWeightList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1073
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mIsolatedWeightList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1078
    :goto_1
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getRootStackBox(I)Lcom/android/server/wm/StackBox;

    move-result-object v0

    .line 1079
    .local v0, "root":Lcom/android/server/wm/StackBox;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->hasIsolatedSplitStackBox()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/server/wm/StackBox;->resizeWeight(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1080
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    goto :goto_0

    .line 1075
    .end local v0    # "root":Lcom/android/server/wm/StackBox;
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWeightList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1076
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWeightList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public reverseVerticalValue()V
    .locals 5

    .prologue
    .line 1113
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1114
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/StackBox;

    iget v3, v3, Lcom/android/server/wm/StackBox;->mStackBoxType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1115
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/StackBox;

    invoke-virtual {v3}, Lcom/android/server/wm/StackBox;->reverseVerticalValue()V

    .line 1113
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1119
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/StackBox;

    .line 1120
    .local v0, "box":Lcom/android/server/wm/StackBox;
    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->reverseVerticalValue()V

    goto :goto_1

    .line 1122
    .end local v0    # "box":Lcom/android/server/wm/StackBox;
    :cond_2
    return-void
.end method

.method setStackBoxSize(Landroid/graphics/Rect;)Z
    .locals 5
    .param p1, "contentRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x1

    .line 740
    const/4 v1, 0x0

    .line 741
    .local v1, "change":Z
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "stackBoxNdx":I
    :goto_0
    if-ltz v2, :cond_1

    .line 743
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/StackBox;

    invoke-virtual {v3}, Lcom/android/server/wm/StackBox;->isFloatingStackBox()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 741
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 746
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/StackBox;

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_1

    .line 749
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "appStackHBoxNdx":I
    :goto_2
    if-ltz v0, :cond_2

    .line 750
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/StackBox;

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v3

    or-int/2addr v1, v3

    .line 749
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 753
    :cond_2
    return v1
.end method

.method setTouchExcludeRegion(Lcom/android/server/wm/TaskStack;)V
    .locals 8
    .param p1, "focusedStack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    const/4 v7, 0x1

    .line 790
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 791
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .line 804
    .local v3, "windows":Lcom/android/server/wm/WindowList;
    iget-object v4, p1, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v4, v7}, Lcom/android/server/wm/StackBox;->isFloatingStackBox(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 805
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v5, p1, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    iget-object v5, v5, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 806
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 807
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 808
    .local v2, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 810
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7dd

    if-ne v4, v5, :cond_1

    .line 806
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 813
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    if-ne v1, p1, :cond_0

    .line 814
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v4, v7, :cond_0

    .line 815
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 816
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 817
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_1

    .line 822
    .end local v0    # "i":I
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_4

    .line 823
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 824
    .restart local v2    # "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 825
    .restart local v1    # "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    .line 826
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 827
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 828
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 822
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 835
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_4
    return-void
.end method

.method stackIdFromPoint(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, -0x1

    .line 779
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 780
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/StackBox;

    .line 781
    .local v0, "box":Lcom/android/server/wm/StackBox;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/StackBox;->stackIdFromPoint(II)I

    move-result v2

    .line 782
    .local v2, "stackId":I
    if-le v2, v3, :cond_0

    .line 785
    .end local v0    # "box":Lcom/android/server/wm/StackBox;
    .end local v2    # "stackId":I
    :goto_1
    return v2

    .line 779
    .restart local v0    # "box":Lcom/android/server/wm/StackBox;
    .restart local v2    # "stackId":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v0    # "box":Lcom/android/server/wm/StackBox;
    .end local v2    # "stackId":I
    :cond_1
    move v2, v3

    .line 785
    goto :goto_1
.end method

.method stopDimmingIfNeeded()V
    .locals 2

    .prologue
    .line 916
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "stackBoxNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 917
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->stopDimmingIfNeeded()V

    .line 916
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 921
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 922
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->stopDimmingIfNeeded()V

    .line 921
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 925
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mHiddenStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, v1, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->stopDimmingIfNeeded()V

    .line 927
    return-void
.end method

.method switchStack(I)Z
    .locals 4
    .param p1, "stackBoxId"    # I

    .prologue
    const/4 v2, 0x1

    .line 466
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "stackBoxNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 467
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/StackBox;

    .line 468
    .local v0, "box":Lcom/android/server/wm/StackBox;
    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->switchBounds(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 469
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 473
    .end local v0    # "box":Lcom/android/server/wm/StackBox;
    :goto_1
    return v2

    .line 466
    .restart local v0    # "box":Lcom/android/server/wm/StackBox;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 473
    .end local v0    # "box":Lcom/android/server/wm/StackBox;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method switchUserStacks(II)V
    .locals 5
    .param p1, "oldUserId"    # I
    .param p2, "newUserId"    # I

    .prologue
    .line 838
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .line 839
    .local v3, "windows":Lcom/android/server/wm/WindowList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 840
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 841
    .local v2, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 845
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    .line 839
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 849
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "stackBoxNdx":I
    :goto_1
    if-ltz v1, :cond_2

    .line 850
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/StackBox;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/StackBox;->switchUserStacks(I)V

    .line 849
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 854
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_2
    if-ltz v1, :cond_3

    .line 855
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mAppTopLevelStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/StackBox;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/StackBox;->switchUserStacks(I)V

    .line 854
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 858
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mHiddenStack:Lcom/android/server/wm/TaskStack;

    iget-object v4, v4, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/StackBox;->switchUserStacks(I)V

    .line 860
    return-void
.end method

.method updateDisplayInfo()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 300
    return-void
.end method
