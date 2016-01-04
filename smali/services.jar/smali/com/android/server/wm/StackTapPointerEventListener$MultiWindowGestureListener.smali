.class Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "StackTapPointerEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/StackTapPointerEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiWindowGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/StackTapPointerEventListener;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/StackTapPointerEventListener;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/StackTapPointerEventListener;Lcom/android/server/wm/StackTapPointerEventListener$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/StackTapPointerEventListener;
    .param p2, "x1"    # Lcom/android/server/wm/StackTapPointerEventListener$1;

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;-><init>(Lcom/android/server/wm/StackTapPointerEventListener;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 199
    iget-object v7, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    # invokes: Lcom/android/server/wm/StackTapPointerEventListener;->findTargetWindow(FFZ)Lcom/android/server/wm/WindowState;
    invoke-static {v7, v8, v9, v6}, Lcom/android/server/wm/StackTapPointerEventListener;->access$100(Lcom/android/server/wm/StackTapPointerEventListener;FFZ)Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 200
    .local v4, "targetWin":Lcom/android/server/wm/WindowState;
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/server/wm/TaskStack;->mFixedBound:Z

    if-eqz v6, :cond_e

    .line 201
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x898

    if-ne v6, v7, :cond_1

    .line 202
    const/4 v6, 0x0

    .line 254
    :goto_1
    return v6

    .line 199
    .end local v4    # "targetWin":Lcom/android/server/wm/WindowState;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 204
    .restart local v4    # "targetWin":Lcom/android/server/wm/WindowState;
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    .line 205
    .local v3, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v3, :cond_e

    .line 206
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    .line 207
    .local v5, "zone":I
    iget-object v6, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v6}, Lcom/android/server/wm/StackTapPointerEventListener;->access$200(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getCenterBarPoint()Landroid/graphics/Point;

    move-result-object v1

    .line 208
    .local v1, "point":Landroid/graphics/Point;
    iget-object v6, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v6}, Lcom/android/server/wm/StackTapPointerEventListener;->access$300(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 210
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v6, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v6}, Lcom/android/server/wm/StackTapPointerEventListener;->access$400(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    .line 211
    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 212
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    .line 247
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v6}, Lcom/android/server/wm/StackTapPointerEventListener;->access$200(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setCenterBarPoint(Landroid/graphics/Point;)V

    .line 248
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.android.action.ARRANGE_CONTROLL_BAR"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v2, "refreshCenterbarIntent":Landroid/content/Intent;
    const-string v6, "com.sec.android.extra.CONTROL_BAR_POS"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 250
    iget-object v6, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v6}, Lcom/android/server/wm/StackTapPointerEventListener;->access$400(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 251
    const/4 v6, 0x1

    goto :goto_1

    .line 213
    .end local v2    # "refreshCenterbarIntent":Landroid/content/Intent;
    :cond_3
    const/16 v6, 0xc

    if-ne v5, v6, :cond_4

    .line 214
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 215
    :cond_4
    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 216
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 217
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 218
    :cond_5
    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 219
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 220
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 221
    :cond_6
    const/4 v6, 0x4

    if-ne v5, v6, :cond_7

    .line 222
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 223
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 224
    :cond_7
    const/16 v6, 0x8

    if-ne v5, v6, :cond_2

    .line 225
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 226
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 229
    :cond_8
    const/4 v6, 0x3

    if-ne v5, v6, :cond_9

    .line 230
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    goto/16 :goto_2

    .line 231
    :cond_9
    const/16 v6, 0xc

    if-ne v5, v6, :cond_a

    .line 232
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    goto/16 :goto_2

    .line 233
    :cond_a
    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 234
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 235
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto/16 :goto_2

    .line 236
    :cond_b
    const/4 v6, 0x2

    if-ne v5, v6, :cond_c

    .line 237
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 238
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto/16 :goto_2

    .line 239
    :cond_c
    const/4 v6, 0x4

    if-ne v5, v6, :cond_d

    .line 240
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 241
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto/16 :goto_2

    .line 242
    :cond_d
    const/16 v6, 0x8

    if-ne v5, v6, :cond_2

    .line 243
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 244
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto/16 :goto_2

    .line 254
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v1    # "point":Landroid/graphics/Point;
    .end local v3    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v5    # "zone":I
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 258
    iget-object v8, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    :goto_0
    # invokes: Lcom/android/server/wm/StackTapPointerEventListener;->findTargetWindow(FFZ)Lcom/android/server/wm/WindowState;
    invoke-static {v8, v9, v10, v5}, Lcom/android/server/wm/StackTapPointerEventListener;->access$100(Lcom/android/server/wm/StackTapPointerEventListener;FFZ)Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 259
    .local v4, "targetWin":Lcom/android/server/wm/WindowState;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/server/wm/TaskStack;->mFixedBound:Z

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v5}, Lcom/android/server/wm/StackBox;->checkFixedBound()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 261
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x898

    if-ne v5, v8, :cond_3

    .line 288
    :cond_1
    :goto_1
    return v7

    .end local v4    # "targetWin":Lcom/android/server/wm/WindowState;
    :cond_2
    move v5, v7

    .line 258
    goto :goto_0

    .line 265
    .restart local v4    # "targetWin":Lcom/android/server/wm/WindowState;
    :cond_3
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    .line 266
    .local v3, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v3, :cond_1

    .line 270
    const/16 v5, 0x1000

    invoke-virtual {v3, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 274
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZoneLevel()I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 275
    iget-object v5, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v5}, Lcom/android/server/wm/StackTapPointerEventListener;->access$200(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getCenterBarPoint()Landroid/graphics/Point;

    move-result-object v1

    .line 276
    .local v1, "point":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v5}, Lcom/android/server/wm/StackTapPointerEventListener;->access$300(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 278
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    div-int/lit8 v5, v5, 0x2

    iput v5, v1, Landroid/graphics/Point;->x:I

    .line 279
    iget v5, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    div-int/lit8 v5, v5, 0x2

    iput v5, v1, Landroid/graphics/Point;->y:I

    .line 281
    iget-object v5, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v5}, Lcom/android/server/wm/StackTapPointerEventListener;->access$200(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setCenterBarPoint(Landroid/graphics/Point;)V

    .line 282
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.sec.android.action.ARRANGE_CONTROLL_BAR"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .local v2, "refreshCenterbarIntent":Landroid/content/Intent;
    const-string v5, "com.sec.android.extra.CONTROL_BAR_POS"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 284
    iget-object v5, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v5}, Lcom/android/server/wm/StackTapPointerEventListener;->access$400(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v7, v6

    .line 285
    goto :goto_1
.end method
