.class Landroid/media/WFDUibcManager$EventDispatcher;
.super Landroid/media/WFDUibcManager$EventQueue;
.source "WFDUibcManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventDispatcher"
.end annotation


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/MotionEvent$PointerCoords;",
            ">;"
        }
    .end annotation
.end field

.field public volatile running:Z

.field final synthetic this$0:Landroid/media/WFDUibcManager;


# direct methods
.method constructor <init>(Landroid/media/WFDUibcManager;)V
    .locals 1

    .prologue
    .line 250
    iput-object p1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/WFDUibcManager$EventQueue;-><init>(Landroid/media/WFDUibcManager;Landroid/media/WFDUibcManager$1;)V

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->running:Z

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 65

    .prologue
    .line 257
    const/16 v2, 0xa

    new-array v8, v2, [Landroid/view/MotionEvent$PointerProperties;

    .line 258
    .local v8, "aPonterProp":[Landroid/view/MotionEvent$PointerProperties;
    const/16 v2, 0xa

    new-array v9, v2, [Landroid/view/MotionEvent$PointerCoords;

    .line 259
    .local v9, "aPtrCoords":[Landroid/view/MotionEvent$PointerCoords;
    const/16 v44, 0x0

    .local v44, "i":I
    :goto_0
    const/16 v2, 0xa

    move/from16 v0, v44

    if-ge v0, v2, :cond_0

    .line 260
    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v8, v44

    .line 261
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v9, v44

    .line 259
    add-int/lit8 v44, v44, 0x1

    goto :goto_0

    .line 263
    :cond_0
    new-instance v38, Landroid/util/DisplayMetrics;

    invoke-direct/range {v38 .. v38}, Landroid/util/DisplayMetrics;-><init>()V

    .line 264
    .local v38, "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$200(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Landroid/view/WindowManager;

    .line 265
    .local v64, "wm":Landroid/view/WindowManager;
    const v50, 0x38d1b717    # 1.0E-4f

    .line 266
    .local v50, "kX":F
    const v51, 0x38d1b717    # 1.0E-4f

    .line 269
    .local v51, "kY":F
    const/high16 v27, 0x3f800000    # 1.0f

    .line 270
    .local v27, "Me_X":F
    const/high16 v28, 0x3f800000    # 1.0f

    .line 272
    .local v28, "Me_Y":F
    const/16 v54, 0x0

    .line 273
    .local v54, "me":Landroid/view/MotionEvent;
    const/16 v52, 0x0

    .line 275
    .local v52, "ke":Landroid/view/KeyEvent;
    const/16 v43, 0x0

    .line 276
    .local v43, "foregroundCamera":Z
    const/16 v42, 0x0

    .line 278
    .local v42, "forceAbsoluteValue":Z
    const/16 v41, 0x1

    .line 279
    .local v41, "first_KeyDown":Z
    sget-object v29, Landroid/media/WFDUibcManager$UIBC_Mode;->normal:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 281
    .local v29, "Mode":Landroid/media/WFDUibcManager$UIBC_Mode;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->running:Z

    if-eqz v2, :cond_27

    .line 282
    invoke-virtual/range {p0 .. p0}, Landroid/media/WFDUibcManager$EventDispatcher;->getNextEvent()Landroid/view/InputEvent;

    move-result-object v40

    .line 283
    .local v40, "ev":Landroid/view/InputEvent;
    if-eqz v40, :cond_1

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$200(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v36

    .line 292
    .local v36, "configuration":Landroid/content/res/Configuration;
    move-object/from16 v0, v36

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 299
    :cond_2
    sget-object v29, Landroid/media/WFDUibcManager$UIBC_Mode;->normal:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$200(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$200(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/app/ActivityManager;

    .line 301
    .local v34, "activityManager":Landroid/app/ActivityManager;
    const/16 v2, 0x14

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v47

    .line 302
    .local v47, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface/range {v47 .. v47}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 303
    const/4 v2, 0x0

    move-object/from16 v0, v47

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 304
    .local v63, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, v63

    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sec.android.app.camera"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    .line 306
    if-eqz v43, :cond_3

    .line 307
    sget-object v29, Landroid/media/WFDUibcManager$UIBC_Mode;->Camera:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 310
    .end local v63    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_3
    move-object/from16 v0, v40

    instance-of v2, v0, Landroid/view/MotionEvent;

    if-eqz v2, :cond_1a

    .line 312
    invoke-interface/range {v64 .. v64}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 313
    invoke-interface/range {v64 .. v64}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v62

    .line 314
    .local v62, "rotation":I
    const v2, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, v38

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    mul-float v50, v2, v3

    .line 315
    const v2, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, v38

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    mul-float v51, v2, v3

    .line 317
    move-object/from16 v0, v38

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    move-object/from16 v0, v38

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    div-float v32, v2, v3

    .line 318
    .local v32, "Ratio_WFD":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v3

    div-float v31, v2, v3

    .line 320
    .local v31, "Ratio_LCD":F
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, v38

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    mul-float v48, v2, v3

    .line 321
    .local v48, "kH":F
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, v38

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    mul-float v49, v2, v3

    .local v49, "kW":F
    move-object/from16 v56, v40

    .line 326
    check-cast v56, Landroid/view/MotionEvent;

    .line 327
    .local v56, "newEv":Landroid/view/MotionEvent;
    invoke-virtual/range {v56 .. v56}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v37

    .line 328
    .local v37, "count":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager;->mSPCOrientation:Z
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$502(Landroid/media/WFDUibcManager;Z)Z

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, -0x1

    # setter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$602(Landroid/media/WFDUibcManager;I)I

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/WFDUibcManager;->test(Z)V

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$200(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sidesync_source_connect"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCoupleShot:Z
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$700(Landroid/media/WFDUibcManager;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 339
    :cond_4
    const/16 v42, 0x1

    .line 340
    sget-object v29, Landroid/media/WFDUibcManager$UIBC_Mode;->forceValue:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 344
    :cond_5
    const/16 v44, 0x0

    :goto_2
    move/from16 v0, v44

    move/from16 v1, v37

    if-ge v0, v1, :cond_16

    .line 345
    aget-object v2, v8, v44

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 346
    aget-object v2, v9, v44

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 347
    aget-object v2, v8, v44

    move-object/from16 v0, v56

    move/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 348
    aget-object v2, v9, v44

    move-object/from16 v0, v56

    move/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 351
    sget-object v2, Landroid/media/WFDUibcManager$2;->$SwitchMap$android$media$WFDUibcManager$UIBC_Mode:[I

    invoke-virtual/range {v29 .. v29}, Landroid/media/WFDUibcManager$UIBC_Mode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 448
    move-object/from16 v0, v36

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_15

    .line 449
    cmpg-float v2, v32, v31

    if-gez v2, :cond_13

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v2

    mul-float v2, v2, v49

    div-float v58, v2, v48

    .line 452
    .local v58, "newWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v2

    sub-float v2, v2, v58

    const/high16 v3, 0x40000000    # 2.0f

    div-float v61, v2, v3

    .line 453
    .local v61, "pad":F
    const v2, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v3

    mul-float/2addr v2, v3

    aget-object v3, v9, v44

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v59, v2, v3

    .line 457
    .local v59, "normX":F
    move-object/from16 v0, v38

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    sub-float v3, v59, v61

    div-float v3, v3, v58

    mul-float v27, v2, v3

    .line 458
    aget-object v2, v9, v44

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v28, v51, v2

    .line 460
    aget-object v2, v9, v44

    const/4 v3, 0x0

    move/from16 v0, v27

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 461
    aget-object v2, v9, v44

    const/4 v3, 0x1

    move/from16 v0, v28

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 344
    .end local v58    # "newWidth":F
    .end local v59    # "normX":F
    .end local v61    # "pad":F
    :cond_6
    :goto_3
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_2

    .line 354
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$000(Landroid/media/WFDUibcManager;)I

    move-result v2

    if-lez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$000(Landroid/media/WFDUibcManager;)I

    move-result v2

    const/16 v3, 0x2d

    if-lt v2, v3, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$000(Landroid/media/WFDUibcManager;)I

    move-result v2

    const/16 v3, 0x13b

    if-le v2, v3, :cond_a

    .line 356
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$602(Landroid/media/WFDUibcManager;I)I

    .line 370
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    move/from16 v0, v62

    # += operator for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2, v0}, Landroid/media/WFDUibcManager;->access$612(Landroid/media/WFDUibcManager;I)I

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$600(Landroid/media/WFDUibcManager;)I

    move-result v3

    rem-int/lit8 v3, v3, 0x4

    # setter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$602(Landroid/media/WFDUibcManager;I)I

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$600(Landroid/media/WFDUibcManager;)I

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$600(Landroid/media/WFDUibcManager;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_10

    .line 374
    :cond_9
    cmpg-float v2, v32, v31

    if-gez v2, :cond_d

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v2

    mul-float v2, v2, v49

    div-float v58, v2, v48

    .line 377
    .restart local v58    # "newWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v2

    sub-float v2, v2, v58

    const/high16 v3, 0x40000000    # 2.0f

    div-float v61, v2, v3

    .line 378
    .restart local v61    # "pad":F
    const v2, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v3

    mul-float/2addr v2, v3

    aget-object v3, v9, v44

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v59, v2, v3

    .line 381
    .restart local v59    # "normX":F
    move-object/from16 v0, v38

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    sub-float v3, v59, v61

    div-float v3, v3, v58

    mul-float v27, v2, v3

    .line 382
    aget-object v2, v9, v44

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v28, v51, v2

    .line 400
    .end local v58    # "newWidth":F
    .end local v59    # "normX":F
    .end local v61    # "pad":F
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$600(Landroid/media/WFDUibcManager;)I

    move-result v2

    if-nez v2, :cond_f

    .line 401
    aget-object v2, v9, v44

    const/4 v3, 0x0

    move/from16 v0, v27

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 402
    aget-object v2, v9, v44

    const/4 v3, 0x1

    move/from16 v0, v28

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_3

    .line 358
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$000(Landroid/media/WFDUibcManager;)I

    move-result v2

    const/16 v3, 0x2d

    if-lt v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$000(Landroid/media/WFDUibcManager;)I

    move-result v2

    const/16 v3, 0x73

    if-ge v2, v3, :cond_b

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x1

    # setter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$602(Landroid/media/WFDUibcManager;I)I

    goto/16 :goto_4

    .line 362
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$000(Landroid/media/WFDUibcManager;)I

    move-result v2

    const/16 v3, 0x73

    if-lt v2, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$000(Landroid/media/WFDUibcManager;)I

    move-result v2

    const/16 v3, 0xe1

    if-ge v2, v3, :cond_c

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x2

    # setter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$602(Landroid/media/WFDUibcManager;I)I

    goto/16 :goto_4

    .line 368
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x3

    # setter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$602(Landroid/media/WFDUibcManager;I)I

    goto/16 :goto_4

    .line 385
    :cond_d
    cmpl-float v2, v32, v31

    if-lez v2, :cond_e

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v2

    mul-float v2, v2, v48

    div-float v57, v2, v49

    .line 388
    .local v57, "newHeight":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v2

    sub-float v2, v2, v57

    const/high16 v3, 0x40000000    # 2.0f

    div-float v61, v2, v3

    .line 389
    .restart local v61    # "pad":F
    const v2, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v3

    mul-float/2addr v2, v3

    aget-object v3, v9, v44

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v60, v2, v3

    .line 391
    .local v60, "normY":F
    aget-object v2, v9, v44

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v27, v50, v2

    .line 392
    move-object/from16 v0, v38

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    sub-float v3, v60, v61

    div-float v3, v3, v57

    mul-float v28, v2, v3

    .line 394
    goto/16 :goto_5

    .line 397
    .end local v57    # "newHeight":F
    .end local v60    # "normY":F
    .end local v61    # "pad":F
    :cond_e
    aget-object v2, v9, v44

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v27, v50, v2

    .line 398
    aget-object v2, v9, v44

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v28, v51, v2

    goto/16 :goto_5

    .line 406
    :cond_f
    aget-object v2, v9, v44

    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    sub-float v4, v4, v27

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 407
    aget-object v2, v9, v44

    const/4 v3, 0x1

    move-object/from16 v0, v38

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    sub-float v4, v4, v28

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_3

    .line 411
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$600(Landroid/media/WFDUibcManager;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$600(Landroid/media/WFDUibcManager;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 414
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v2

    mul-float v2, v2, v48

    div-float v58, v2, v49

    .line 415
    .restart local v58    # "newWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v2

    sub-float v2, v2, v58

    const/high16 v3, 0x40000000    # 2.0f

    div-float v61, v2, v3

    .line 416
    .restart local v61    # "pad":F
    const v2, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v3

    mul-float/2addr v2, v3

    aget-object v3, v9, v44

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v59, v2, v3

    .line 419
    .restart local v59    # "normX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$600(Landroid/media/WFDUibcManager;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 420
    move-object/from16 v0, v38

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    move-object/from16 v0, v38

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    sub-float v4, v59, v61

    div-float v4, v4, v58

    mul-float/2addr v3, v4

    sub-float v28, v2, v3

    .line 421
    aget-object v2, v9, v44

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v27, v50, v2

    .line 429
    :goto_6
    aget-object v2, v9, v44

    const/4 v3, 0x0

    move/from16 v0, v27

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 430
    aget-object v2, v9, v44

    const/4 v3, 0x1

    move/from16 v0, v28

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_3

    .line 425
    :cond_12
    move-object/from16 v0, v38

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    sub-float v3, v59, v61

    div-float v3, v3, v58

    mul-float v28, v2, v3

    .line 426
    move-object/from16 v0, v38

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    aget-object v3, v9, v44

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v3, v3, v50

    sub-float v27, v2, v3

    goto :goto_6

    .line 439
    .end local v58    # "newWidth":F
    .end local v59    # "normX":F
    .end local v61    # "pad":F
    :pswitch_1
    aget-object v2, v9, v44

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v27, v50, v2

    .line 440
    aget-object v2, v9, v44

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v28, v51, v2

    .line 441
    aget-object v2, v9, v44

    const/4 v3, 0x0

    aget-object v4, v9, v44

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v4, v4, v50

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 442
    aget-object v2, v9, v44

    const/4 v3, 0x1

    aget-object v4, v9, v44

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v4, v4, v51

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_3

    .line 464
    :cond_13
    cmpl-float v2, v32, v31

    if-lez v2, :cond_14

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v2

    mul-float v2, v2, v48

    div-float v57, v2, v49

    .line 467
    .restart local v57    # "newHeight":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v2

    sub-float v2, v2, v57

    const/high16 v3, 0x40000000    # 2.0f

    div-float v61, v2, v3

    .line 468
    .restart local v61    # "pad":F
    const v2, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v3

    mul-float/2addr v2, v3

    aget-object v3, v9, v44

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v60, v2, v3

    .line 471
    .restart local v60    # "normY":F
    aget-object v2, v9, v44

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v27, v50, v2

    .line 472
    move-object/from16 v0, v38

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    sub-float v3, v60, v61

    div-float v3, v3, v57

    mul-float v28, v2, v3

    .line 473
    aget-object v2, v9, v44

    const/4 v3, 0x0

    move/from16 v0, v27

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 474
    aget-object v2, v9, v44

    const/4 v3, 0x1

    move/from16 v0, v28

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_3

    .line 479
    .end local v57    # "newHeight":F
    .end local v60    # "normY":F
    .end local v61    # "pad":F
    :cond_14
    aget-object v2, v9, v44

    const/4 v3, 0x0

    aget-object v4, v9, v44

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v4, v4, v50

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 480
    aget-object v2, v9, v44

    const/4 v3, 0x1

    aget-object v4, v9, v44

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v4, v4, v51

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_3

    .line 484
    :cond_15
    const-string v2, "WFDUibcManager"

    const-string v3, "6"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    cmpg-float v2, v32, v31

    if-gez v2, :cond_6

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v2

    mul-float v2, v2, v49

    div-float v58, v2, v48

    .line 488
    .restart local v58    # "newWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v2

    sub-float v2, v2, v58

    const/high16 v3, 0x40000000    # 2.0f

    div-float v61, v2, v3

    .line 489
    .restart local v61    # "pad":F
    const v2, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$300(Landroid/media/WFDUibcManager;)F

    move-result v3

    mul-float/2addr v2, v3

    aget-object v3, v9, v44

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v59, v2, v3

    .line 492
    .restart local v59    # "normX":F
    move-object/from16 v0, v38

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    sub-float v3, v59, v61

    mul-float/2addr v2, v3

    div-float v27, v2, v58

    .line 493
    aget-object v2, v9, v44

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v28, v51, v2

    .line 495
    aget-object v2, v9, v44

    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    sub-float v5, v59, v61

    mul-float/2addr v4, v5

    div-float v4, v4, v58

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 496
    aget-object v2, v9, v44

    const/4 v3, 0x1

    aget-object v4, v9, v44

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v4, v4, v51

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_3

    .line 507
    .end local v58    # "newWidth":F
    .end local v59    # "normX":F
    .end local v61    # "pad":F
    :cond_16
    const/4 v12, 0x0

    .line 508
    .local v12, "displayId":I
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v39

    .line 509
    .local v39, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    invoke-virtual/range {v39 .. v39}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v35

    .local v35, "arr$":[I
    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v53, v0

    .local v53, "len$":I
    const/16 v45, 0x0

    .local v45, "i$":I
    :goto_7
    move/from16 v0, v45

    move/from16 v1, v53

    if-ge v0, v1, :cond_17

    aget v46, v35, v45

    .line 510
    .local v46, "id":I
    if-eqz v46, :cond_19

    .line 511
    move/from16 v12, v46

    .line 517
    .end local v46    # "id":I
    :cond_17
    invoke-virtual/range {v56 .. v56}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_18

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    # setter for: Landroid/media/WFDUibcManager;->mTouchDownTime:J
    invoke-static {v2, v3, v4}, Landroid/media/WFDUibcManager;->access$802(Landroid/media/WFDUibcManager;J)J

    .line 523
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mTouchDownTime:J
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$800(Landroid/media/WFDUibcManager;)J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v56 .. v56}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {v56 .. v56}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual/range {v56 .. v56}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v56 .. v56}, Landroid/view/MotionEvent;->getSource()I

    move-result v17

    const/16 v18, 0x0

    invoke-static/range {v2 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v54

    .line 527
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v54

    invoke-virtual {v2, v0, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 529
    const/16 v54, 0x0

    .line 530
    goto/16 :goto_1

    .line 509
    .restart local v46    # "id":I
    :cond_19
    add-int/lit8 v45, v45, 0x1

    goto :goto_7

    .line 531
    .end local v12    # "displayId":I
    .end local v31    # "Ratio_LCD":F
    .end local v32    # "Ratio_WFD":F
    .end local v35    # "arr$":[I
    .end local v37    # "count":I
    .end local v39    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v45    # "i$":I
    .end local v46    # "id":I
    .end local v48    # "kH":F
    .end local v49    # "kW":F
    .end local v53    # "len$":I
    .end local v56    # "newEv":Landroid/view/MotionEvent;
    .end local v62    # "rotation":I
    :cond_1a
    move-object/from16 v0, v40

    instance-of v2, v0, Landroid/view/KeyEvent;

    if-eqz v2, :cond_1

    move-object/from16 v30, v40

    .line 534
    check-cast v30, Landroid/view/KeyEvent;

    .line 535
    .local v30, "NewKE":Landroid/view/KeyEvent;
    const/16 v33, 0x0

    .line 537
    .local v33, "RepeatCnt":I
    const/4 v12, 0x0

    .line 538
    .restart local v12    # "displayId":I
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v39

    .line 539
    .restart local v39    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    invoke-virtual/range {v39 .. v39}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v35

    .restart local v35    # "arr$":[I
    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v53, v0

    .restart local v53    # "len$":I
    const/16 v45, 0x0

    .restart local v45    # "i$":I
    :goto_8
    move/from16 v0, v45

    move/from16 v1, v53

    if-ge v0, v1, :cond_1b

    aget v46, v35, v45

    .line 540
    .restart local v46    # "id":I
    if-eqz v46, :cond_24

    .line 541
    move/from16 v12, v46

    .line 546
    .end local v46    # "id":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCoupleShot:Z
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$700(Landroid/media/WFDUibcManager;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 553
    :cond_1c
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_25

    .line 555
    if-eqz v41, :cond_1d

    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    # setter for: Landroid/media/WFDUibcManager;->mKeyDownTime:J
    invoke-static {v2, v3, v4}, Landroid/media/WFDUibcManager;->access$902(Landroid/media/WFDUibcManager;J)J

    .line 557
    const/16 v41, 0x0

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager;->mRepeatCnt:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1002(Landroid/media/WFDUibcManager;I)I

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager;->mFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1102(Landroid/media/WFDUibcManager;I)I

    .line 562
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    iget-object v2, v2, Landroid/media/WFDUibcManager;->last_Ke:Landroid/view/KeyEvent;

    if-eqz v2, :cond_1e

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    iget-object v2, v2, Landroid/media/WFDUibcManager;->last_Ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1e

    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # operator++ for: Landroid/media/WFDUibcManager;->mRepeatCnt:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1008(Landroid/media/WFDUibcManager;)I

    .line 567
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mRepeatCnt:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1000(Landroid/media/WFDUibcManager;)I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1f

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, 0x80

    # |= operator for: Landroid/media/WFDUibcManager;->mFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1176(Landroid/media/WFDUibcManager;I)I

    .line 581
    :cond_1f
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mKeyDownTime:J
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$900(Landroid/media/WFDUibcManager;)J

    move-result-wide v13

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v15

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getAction()I

    move-result v17

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mRepeatCnt:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1000(Landroid/media/WFDUibcManager;)I

    move-result v19

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v20

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v21

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mFlag:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1100(Landroid/media/WFDUibcManager;)I

    move-result v23

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getSource()I

    move-result v25

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v26

    move/from16 v24, v12

    invoke-static/range {v13 .. v26}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v52

    .line 586
    invoke-virtual/range {v52 .. v52}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_20

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    move-object/from16 v0, v52

    iput-object v0, v2, Landroid/media/WFDUibcManager;->last_Ke:Landroid/view/KeyEvent;

    .line 588
    :cond_20
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v2, v0, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 592
    invoke-virtual/range {v52 .. v52}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    .line 593
    invoke-virtual/range {v52 .. v52}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_21

    invoke-virtual/range {v52 .. v52}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_23

    .line 596
    :cond_21
    new-instance v55, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.PRESENTATION_FOCUS_CHANGED"

    move-object/from16 v0, v55

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 597
    .local v55, "mintent":Landroid/content/Intent;
    const-string v2, "app_name"

    const-string v3, "finish"

    move-object/from16 v0, v55

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    invoke-virtual/range {v52 .. v52}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_26

    .line 600
    const-string v2, "launch_home"

    const/4 v3, 0x1

    move-object/from16 v0, v55

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 609
    :cond_22
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$200(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v55

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 612
    .end local v55    # "mintent":Landroid/content/Intent;
    :cond_23
    const/16 v52, 0x0

    goto/16 :goto_1

    .line 539
    .restart local v46    # "id":I
    :cond_24
    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_8

    .line 572
    .end local v46    # "id":I
    :cond_25
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    .line 574
    if-nez v41, :cond_1f

    .line 575
    const/16 v41, 0x1

    .line 576
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/media/WFDUibcManager;->last_Ke:Landroid/view/KeyEvent;

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager;->mRepeatCnt:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1002(Landroid/media/WFDUibcManager;I)I

    goto/16 :goto_9

    .line 602
    .restart local v55    # "mintent":Landroid/content/Intent;
    :cond_26
    invoke-virtual/range {v52 .. v52}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_22

    .line 604
    const-string v2, "launch_home"

    const/4 v3, 0x0

    move-object/from16 v0, v55

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_a

    .line 615
    .end local v12    # "displayId":I
    .end local v30    # "NewKE":Landroid/view/KeyEvent;
    .end local v33    # "RepeatCnt":I
    .end local v34    # "activityManager":Landroid/app/ActivityManager;
    .end local v35    # "arr$":[I
    .end local v36    # "configuration":Landroid/content/res/Configuration;
    .end local v39    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v40    # "ev":Landroid/view/InputEvent;
    .end local v45    # "i$":I
    .end local v47    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v53    # "len$":I
    .end local v55    # "mintent":Landroid/content/Intent;
    :cond_27
    return-void

    .line 351
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
