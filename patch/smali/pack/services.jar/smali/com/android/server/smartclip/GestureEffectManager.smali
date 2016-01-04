.class Lcom/android/server/smartclip/GestureEffectManager;
.super Ljava/lang/Object;
.source "SmartClipView.java"


# static fields
.field private static final GESTURE_EFFECT_BACK:S = 0x1s

.field private static final GESTURE_EFFECT_MENU:S = 0x0s

.field private static final GESTURE_EFFECT_QUICKCOMMAND:S = 0x2s

.field private static final TAG:Ljava/lang/String; = "GestureEffectManager"


# instance fields
.field private DEBUG:Z

.field private final ESTIMATE_CHECK_GESTURE_AREA_HEIGHT:I

.field private final ESTIMATE_CHECK_GESTURE_AREA_WIDTH:I

.field private final ESTIMATE_FULL_SCREEN_MATRIX_HEIGHT:I

.field private final ESTIMATE_FULL_SCREEN_MATRIX_WIDTH:I

.field private final GESTURE_RECOGNITION_MAX_DISTANCE:I

.field private final GESTURE_RECOGNITION_MAX_DISTANCE_FOR_BACK:I

.field private final GESTURE_RECOGNITION_MIN_DISTANCE:I

.field private mDisplay:Landroid/view/Display;

.field private mGestureEffectImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureEffectImgView:Landroid/widget/ImageView;

.field mGesturePad:Ljava/lang/Runnable;

.field mHandler:Landroid/os/Handler;

.field mInstrumentation:Landroid/app/Instrumentation;

.field private mIsShowingGestureEffect:Z

.field mPenDoubleTap:Ljava/lang/Runnable;

.field mPenLongPress:Ljava/lang/Runnable;

.field private mSPenGestureEventDispatchThread:Ljava/lang/Thread;

.field private mSPenVibrator:Lcom/android/server/smartclip/SmartClipView$SPenVibrator;

.field mSmartClipView:Lcom/android/server/smartclip/SmartClipView;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x320

    const/16 v2, 0x12c

    const/4 v1, 0x0

    .line 2581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2584
    iput v3, p0, Lcom/android/server/smartclip/GestureEffectManager;->ESTIMATE_FULL_SCREEN_MATRIX_WIDTH:I

    .line 2585
    const/16 v0, 0x500

    iput v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->ESTIMATE_FULL_SCREEN_MATRIX_HEIGHT:I

    .line 2586
    iput v2, p0, Lcom/android/server/smartclip/GestureEffectManager;->ESTIMATE_CHECK_GESTURE_AREA_WIDTH:I

    .line 2587
    iput v2, p0, Lcom/android/server/smartclip/GestureEffectManager;->ESTIMATE_CHECK_GESTURE_AREA_HEIGHT:I

    .line 2590
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->GESTURE_RECOGNITION_MIN_DISTANCE:I

    .line 2591
    iput v3, p0, Lcom/android/server/smartclip/GestureEffectManager;->GESTURE_RECOGNITION_MAX_DISTANCE:I

    .line 2592
    const/16 v0, 0x4b0

    iput v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->GESTURE_RECOGNITION_MAX_DISTANCE_FOR_BACK:I

    .line 2599
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    .line 2601
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mIsShowingGestureEffect:Z

    .line 2602
    iput-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mDisplay:Landroid/view/Display;

    .line 2604
    iput-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mSPenVibrator:Lcom/android/server/smartclip/SmartClipView$SPenVibrator;

    .line 2606
    iput-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    .line 2608
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImageList:Ljava/util/ArrayList;

    .line 2609
    iput-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    .line 2611
    iput-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    .line 2612
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mInstrumentation:Landroid/app/Instrumentation;

    .line 2614
    iput-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mHandler:Landroid/os/Handler;

    .line 2615
    iput-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mPenLongPress:Ljava/lang/Runnable;

    .line 2616
    iput-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mPenDoubleTap:Ljava/lang/Runnable;

    .line 2617
    iput-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGesturePad:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/smartclip/GestureEffectManager;)Lcom/android/server/smartclip/SmartClipView$SPenVibrator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/GestureEffectManager;

    .prologue
    .line 2581
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mSPenVibrator:Lcom/android/server/smartclip/SmartClipView$SPenVibrator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/GestureEffectManager;

    .prologue
    .line 2581
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/smartclip/GestureEffectManager;)Landroid/view/Display;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/GestureEffectManager;

    .prologue
    .line 2581
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/smartclip/GestureEffectManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/GestureEffectManager;

    .prologue
    .line 2581
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/smartclip/GestureEffectManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/GestureEffectManager;
    .param p1, "x1"    # I

    .prologue
    .line 2581
    invoke-direct {p0, p1}, Lcom/android/server/smartclip/GestureEffectManager;->injectionKeyEvent(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/smartclip/GestureEffectManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/GestureEffectManager;

    .prologue
    .line 2581
    iget-boolean v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mIsShowingGestureEffect:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/smartclip/GestureEffectManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/GestureEffectManager;
    .param p1, "x1"    # Z

    .prologue
    .line 2581
    iput-boolean p1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mIsShowingGestureEffect:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/smartclip/GestureEffectManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/GestureEffectManager;

    .prologue
    .line 2581
    iget-boolean v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/smartclip/GestureEffectManager;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/GestureEffectManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 2581
    invoke-direct {p0, p1, p2}, Lcom/android/server/smartclip/GestureEffectManager;->sendKeyDownUpSync(II)V

    return-void
.end method

.method private injectionKeyEvent(I)V
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 2991
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2992
    iget-boolean v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2993
    const-string v0, "GestureEffectManager"

    const-string v1, "send interrupt to previous mSPenGestureEventDispatchThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    :cond_0
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 2997
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/smartclip/GestureEffectManager$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/smartclip/GestureEffectManager$2;-><init>(Lcom/android/server/smartclip/GestureEffectManager;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    .line 3017
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3018
    return-void
.end method

.method private sendKeyDownUpSync(II)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "source"    # I

    .prologue
    .line 3021
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 3022
    .local v0, "eventDown":Landroid/view/KeyEvent;
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent;->setSource(I)V

    .line 3023
    iget-object v2, p0, Lcom/android/server/smartclip/GestureEffectManager;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 3025
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 3026
    .local v1, "eventUp":Landroid/view/KeyEvent;
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent;->setSource(I)V

    .line 3027
    iget-object v2, p0, Lcom/android/server/smartclip/GestureEffectManager;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 3028
    return-void
.end method


# virtual methods
.method public checkDirectionGesture(FFFFLjava/util/ArrayList;)Z
    .locals 31
    .param p1, "mStartPointX"    # F
    .param p2, "mStartPointY"    # F
    .param p3, "mEndPointX"    # F
    .param p4, "mEndPointY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/smartclip/SmartClipView$PointerState;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2672
    .local p5, "pointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/smartclip/SmartClipView$PointerState;>;"
    const-string v25, "GestureEffectManager"

    const-string v26, "checkDirectionGesture"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2673
    const/4 v5, 0x0

    .line 2674
    .local v5, "distance":I
    const/16 v21, 0x0

    .line 2675
    .local v21, "vertexX":I
    const/16 v22, 0x0

    .line 2676
    .local v22, "vertexY":I
    const/4 v6, 0x0

    .line 2677
    .local v6, "distanceMax":I
    const/4 v7, 0x0

    .line 2678
    .local v7, "distanceStartAndEnd":I
    const/4 v12, 0x0

    .line 2679
    .local v12, "minX":I
    const/4 v13, 0x0

    .line 2680
    .local v13, "minY":I
    const/4 v10, 0x0

    .line 2681
    .local v10, "maxX":I
    const/4 v11, 0x0

    .line 2682
    .local v11, "maxY":I
    const/16 v16, 0x0

    .line 2683
    .local v16, "result1":F
    const/16 v17, 0x0

    .line 2684
    .local v17, "result2":F
    const/16 v18, 0x0

    .line 2685
    .local v18, "slope":F
    const/4 v9, 0x0

    .line 2688
    .local v9, "interceptY":F
    sub-float v25, p3, p1

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v3, v0

    .line 2689
    .local v3, "Xdistance":I
    sub-float v25, p4, p2

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v4, v0

    .line 2695
    .local v4, "Ydistance":I
    sub-float v25, p3, p1

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x4000000000000000L    # 2.0

    invoke-static/range {v25 .. v28}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v25, v0

    sub-float v26, p4, p2

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-int v7, v0

    .line 2697
    cmpl-float v25, p1, p3

    if-eqz v25, :cond_0

    cmpl-float v25, p2, p4

    if-nez v25, :cond_2

    .line 2698
    :cond_0
    const/16 v18, 0x0

    .line 2702
    :goto_0
    mul-float v25, p1, v18

    sub-float v9, p2, v25

    .line 2706
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 2707
    .local v19, "totalPointerCount":I
    const/4 v14, 0x0

    .local v14, "p":I
    :goto_1
    move/from16 v0, v19

    if-ge v14, v0, :cond_4

    .line 2708
    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/smartclip/SmartClipView$PointerState;

    .line 2709
    .local v15, "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    invoke-virtual {v15}, Lcom/android/server/smartclip/SmartClipView$PointerState;->getTraceCount()I

    move-result v20

    .line 2710
    .local v20, "traceCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    move/from16 v0, v20

    if-ge v8, v0, :cond_3

    .line 2711
    invoke-virtual {v15, v8}, Lcom/android/server/smartclip/SmartClipView$PointerState;->getTraceX(I)F

    move-result v23

    .line 2712
    .local v23, "x":F
    invoke-virtual {v15, v8}, Lcom/android/server/smartclip/SmartClipView$PointerState;->getTraceY(I)F

    move-result v24

    .line 2715
    .local v24, "y":F
    mul-float v25, v18, v23

    const/high16 v26, -0x40800000    # -1.0f

    mul-float v26, v26, v24

    add-float v25, v25, v26

    add-float v25, v25, v9

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 2716
    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x4000000000000000L    # 2.0

    invoke-static/range {v25 .. v28}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v25

    const-wide/high16 v27, -0x4010000000000000L    # -1.0

    const-wide/high16 v29, 0x4000000000000000L    # 2.0

    invoke-static/range {v27 .. v30}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v27

    add-double v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-float v0, v0

    move/from16 v17, v0

    .line 2719
    div-float v25, v16, v17

    move/from16 v0, v25

    float-to-int v5, v0

    .line 2721
    if-ge v6, v5, :cond_1

    .line 2722
    move v6, v5

    .line 2723
    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v21, v0

    .line 2724
    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v22, v0

    .line 2710
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2700
    .end local v8    # "i":I
    .end local v14    # "p":I
    .end local v15    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    .end local v19    # "totalPointerCount":I
    .end local v20    # "traceCount":I
    .end local v23    # "x":F
    .end local v24    # "y":F
    :cond_2
    sub-float v25, p4, p2

    sub-float v26, p3, p1

    div-float v18, v25, v26

    goto :goto_0

    .line 2707
    .restart local v8    # "i":I
    .restart local v14    # "p":I
    .restart local v15    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    .restart local v19    # "totalPointerCount":I
    .restart local v20    # "traceCount":I
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 2733
    .end local v8    # "i":I
    .end local v15    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    .end local v20    # "traceCount":I
    :cond_4
    cmpl-float v25, p1, p3

    if-ltz v25, :cond_6

    .line 2734
    move/from16 v0, p1

    float-to-int v10, v0

    .line 2735
    move/from16 v0, p3

    float-to-int v12, v0

    .line 2740
    :goto_3
    cmpl-float v25, p2, p4

    if-ltz v25, :cond_7

    .line 2741
    move/from16 v0, p2

    float-to-int v11, v0

    .line 2742
    move/from16 v0, p4

    float-to-int v13, v0

    .line 2748
    :goto_4
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v6, v0, :cond_5

    const/16 v25, 0x320

    move/from16 v0, v25

    if-ge v6, v0, :cond_5

    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v7, v0, :cond_5

    const/16 v25, 0x4b0

    move/from16 v0, v25

    if-ge v7, v0, :cond_5

    .line 2750
    const/high16 v25, 0x3f800000    # 1.0f

    cmpg-float v25, v18, v25

    if-gtz v25, :cond_f

    const/high16 v25, -0x40800000    # -1.0f

    cmpl-float v25, v18, v25

    if-ltz v25, :cond_f

    .line 2751
    move/from16 v0, v21

    if-gt v10, v0, :cond_8

    .line 2752
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    move/from16 v25, v0

    if-eqz v25, :cond_5

    .line 2753
    const-string v25, "GestureEffectManager"

    const-string v26, "addSPenEvent : direction : Right"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    :cond_5
    :goto_5
    const/16 v25, 0x0

    :goto_6
    return v25

    .line 2737
    :cond_6
    move/from16 v0, p3

    float-to-int v10, v0

    .line 2738
    move/from16 v0, p1

    float-to-int v12, v0

    goto :goto_3

    .line 2744
    :cond_7
    move/from16 v0, p4

    float-to-int v11, v0

    .line 2745
    move/from16 v0, p2

    float-to-int v13, v0

    goto :goto_4

    .line 2755
    :cond_8
    move/from16 v0, v21

    if-le v12, v0, :cond_b

    .line 2756
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    move/from16 v25, v0

    if-eqz v25, :cond_9

    .line 2757
    const-string v25, "GestureEffectManager"

    const-string v26, "addSPenEvent : direction : Left"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    :cond_9
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v4, v0, :cond_a

    .line 2760
    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/smartclip/GestureEffectManager;->startEffectForGesture(IZ)V

    .line 2761
    :cond_a
    const/16 v25, 0x1

    goto :goto_6

    .line 2763
    :cond_b
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v25, v0

    cmpl-float v25, p2, v25

    if-ltz v25, :cond_e

    .line 2764
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    move/from16 v25, v0

    if-eqz v25, :cond_c

    .line 2765
    const-string v25, "GestureEffectManager"

    const-string v26, "addSPenEvent : direction : Top"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    :cond_c
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v3, v0, :cond_d

    .line 2768
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/smartclip/GestureEffectManager;->startEffectForGesture(IZ)V

    .line 2769
    :cond_d
    const/16 v25, 0x1

    goto :goto_6

    .line 2771
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    move/from16 v25, v0

    if-eqz v25, :cond_5

    .line 2772
    const-string v25, "GestureEffectManager"

    const-string v26, "addSPenEvent : direction : Down"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2777
    :cond_f
    move/from16 v0, v22

    if-gt v11, v0, :cond_10

    .line 2778
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    move/from16 v25, v0

    if-eqz v25, :cond_5

    .line 2779
    const-string v25, "GestureEffectManager"

    const-string v26, "addSPenEvent : direction : Down"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2781
    :cond_10
    move/from16 v0, v22

    if-le v13, v0, :cond_13

    .line 2782
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    move/from16 v25, v0

    if-eqz v25, :cond_11

    .line 2783
    const-string v25, "GestureEffectManager"

    const-string v26, "addSPenEvent : direction : Top"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    :cond_11
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v3, v0, :cond_12

    .line 2786
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/smartclip/GestureEffectManager;->startEffectForGesture(IZ)V

    .line 2787
    :cond_12
    const/16 v25, 0x1

    goto/16 :goto_6

    .line 2789
    :cond_13
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    cmpl-float v25, p1, v25

    if-ltz v25, :cond_16

    .line 2790
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    move/from16 v25, v0

    if-eqz v25, :cond_14

    .line 2791
    const-string v25, "GestureEffectManager"

    const-string v26, "addSPenEvent : direction : Left"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    :cond_14
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v4, v0, :cond_15

    .line 2794
    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/smartclip/GestureEffectManager;->startEffectForGesture(IZ)V

    .line 2795
    :cond_15
    const/16 v25, 0x1

    goto/16 :goto_6

    .line 2797
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    move/from16 v25, v0

    if-eqz v25, :cond_5

    .line 2798
    const-string v25, "GestureEffectManager"

    const-string v26, "addSPenEvent : direction : Right"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method public checkDownGesture(IIII)V
    .locals 10
    .param p1, "mStartPointX"    # I
    .param p2, "mStartPointY"    # I
    .param p3, "mEndPointX"    # I
    .param p4, "mEndPointY"    # I

    .prologue
    const/16 v9, 0x320

    const/16 v8, 0x280

    const/16 v7, 0x1f4

    const/16 v6, 0x12c

    const/4 v5, 0x1

    .line 2632
    iget-boolean v2, p0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 2633
    const-string v2, "GestureEffectManager"

    const-string v3, "checkDownGesture"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    :cond_0
    const/4 v1, 0x0

    .line 2636
    .local v1, "distanceY":I
    const/4 v0, 0x0

    .line 2638
    .local v0, "distanceX":I
    iget-boolean v2, p0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 2639
    const-string v2, "GestureEffectManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkDownGesture : mStartPointX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mStartPointY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2640
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 2641
    const-string v2, "GestureEffectManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkDownGesture : mEndPointX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mEndPointY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2643
    :cond_2
    if-le p2, v8, :cond_5

    const/16 v2, 0x500

    if-gt p2, v2, :cond_5

    if-le p4, v8, :cond_5

    const/16 v2, 0x500

    if-gt p4, v2, :cond_5

    .line 2648
    sub-int v1, p4, p2

    .line 2649
    sub-int v2, p3, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2650
    iget-boolean v2, p0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 2651
    const-string v2, "GestureEffectManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkDownGesture : distanceX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", distanceY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2653
    :cond_3
    const/16 v2, 0xc8

    if-le v1, v2, :cond_5

    .line 2654
    if-lez p1, :cond_6

    if-gt p1, v6, :cond_6

    if-lez p3, :cond_6

    if-gt p3, v6, :cond_6

    .line 2656
    iget-boolean v2, p0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 2657
    const-string v2, "GestureEffectManager"

    const-string v3, "checkDownGesture : menu start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v5}, Lcom/android/server/smartclip/GestureEffectManager;->startEffectForGesture(IZ)V

    .line 2669
    :cond_5
    :goto_0
    return-void

    .line 2659
    :cond_6
    if-le p1, v7, :cond_5

    if-gt p1, v9, :cond_5

    if-le p3, v7, :cond_5

    if-gt p3, v9, :cond_5

    .line 2663
    iget-boolean v2, p0, Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z

    if-eqz v2, :cond_7

    .line 2664
    const-string v2, "GestureEffectManager"

    const-string v3, "checkDownGesture : back start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    :cond_7
    invoke-virtual {p0, v5, v5}, Lcom/android/server/smartclip/GestureEffectManager;->startEffectForGesture(IZ)V

    goto :goto_0
.end method

.method public init(Lcom/android/server/smartclip/SmartClipView;Landroid/os/Handler;Lcom/android/server/smartclip/SmartClipView$SPenVibrator;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "view"    # Lcom/android/server/smartclip/SmartClipView;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "vibrator"    # Lcom/android/server/smartclip/SmartClipView$SPenVibrator;
    .param p4, "penLongPress"    # Ljava/lang/Runnable;
    .param p5, "penDoubleTap"    # Ljava/lang/Runnable;
    .param p6, "gesturePad"    # Ljava/lang/Runnable;

    .prologue
    .line 2620
    iput-object p1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    .line 2621
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mDisplay:Landroid/view/Display;

    .line 2623
    iput-object p3, p0, Lcom/android/server/smartclip/GestureEffectManager;->mSPenVibrator:Lcom/android/server/smartclip/SmartClipView$SPenVibrator;

    .line 2624
    iput-object p2, p0, Lcom/android/server/smartclip/GestureEffectManager;->mHandler:Landroid/os/Handler;

    .line 2626
    iput-object p4, p0, Lcom/android/server/smartclip/GestureEffectManager;->mPenLongPress:Ljava/lang/Runnable;

    .line 2627
    iput-object p5, p0, Lcom/android/server/smartclip/GestureEffectManager;->mPenDoubleTap:Ljava/lang/Runnable;

    .line 2628
    iput-object p6, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGesturePad:Ljava/lang/Runnable;

    .line 2629
    return-void
.end method

.method public isShowingGestureEffect()Z
    .locals 1

    .prologue
    .line 2967
    iget-boolean v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mIsShowingGestureEffect:Z

    return v0
.end method

.method public onAttachedToWindow(Lcom/android/server/smartclip/SmartClipView;)V
    .locals 4
    .param p1, "view"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    const/4 v3, -0x2

    .line 2977
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080445

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2978
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080446

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2979
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080444

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2980
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080447

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2981
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108044a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2982
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080449

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2984
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    .line 2985
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2986
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2987
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2988
    return-void
.end method

.method public setPhoneWindowMangerFlag(Z)V
    .locals 1
    .param p1, "isInvisible"    # Z

    .prologue
    .line 2971
    iget-boolean v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mIsShowingGestureEffect:Z

    if-nez v0, :cond_0

    .line 2972
    iput-boolean p1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mIsShowingGestureEffect:Z

    .line 2974
    :cond_0
    return-void
.end method

.method public startEffectForGesture(IZ)V
    .locals 6
    .param p1, "key"    # I
    .param p2, "isDownGesture"    # Z

    .prologue
    const/high16 v5, 0x41100000    # 9.0f

    const/4 v4, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 2820
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v0}, Lcom/android/server/smartclip/SmartClipView;->isLockScreenShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2964
    :cond_0
    :goto_0
    return-void

    .line 2824
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mIsShowingGestureEffect:Z

    if-eqz v0, :cond_2

    .line 2825
    const-string v0, "GestureEffectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " couldn\'t execute!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2829
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mIsShowingGestureEffect:Z

    .line 2831
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2832
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2833
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 2834
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 2835
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2837
    if-eqz p2, :cond_3

    .line 2838
    iget-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2839
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x42040000    # 33.0f

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 2842
    packed-switch p1, :pswitch_data_0

    .line 2860
    :goto_1
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2861
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/server/smartclip/GestureEffectManager$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/smartclip/GestureEffectManager$1;-><init>(Lcom/android/server/smartclip/GestureEffectManager;ZI)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2958
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2960
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2961
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGesturePad:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2844
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setX(F)V

    goto :goto_1

    .line 2847
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto :goto_1

    .line 2854
    :cond_3
    iget-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImageList:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2855
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 2857
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/android/server/smartclip/GestureEffectManager;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    goto/16 :goto_1

    .line 2842
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
