.class Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;
.super Ljava/lang/Object;
.source "PalmMotionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/palmMotion/PalmMotionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceTouchSharingData"
.end annotation


# instance fields
.field Actiond:[I

.field Major:[I

.field Minor:[I

.field Nd:[I

.field SSsd:[[I

.field Sed:[[F

.field SmeanX:F

.field SmeanY:F

.field Ssd:[[I

.field SsumEccen:F

.field SsumMajor:F

.field SsumMinor:F

.field SsumSize:F

.field SsumX:F

.field SsumY:F

.field SvarX:F

.field SvarY:F

.field Sxd:[[I

.field Syd:[[I

.field public isPrintDebugLog:Z

.field mAction:I

.field mIsRotated:Z

.field mLastGetSettingVariableTime:D

.field mLastPalmSweepTouchUpTime:D

.field mMaxSize:F

.field public mMotionEvent:Landroid/view/MotionEvent;

.field mScreenHeight:I

.field mScreenWidth:I

.field public mSettingPalmSweep:I

.field public mSettingPalmTouch:I

.field public mSettingSurfaceMotionEngine:I

.field mTimeGapUPDown:D

.field mTouchCnt:I

.field preSumSize:F

.field tCurrentTime:D

.field final synthetic this$0:Lcom/android/server/palmMotion/PalmMotionService;


# direct methods
.method private constructor <init>(Lcom/android/server/palmMotion/PalmMotionService;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/16 v5, 0xa

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 182
    iput-object p1, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    filled-new-array {v5, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Sxd:[[I

    .line 184
    filled-new-array {v5, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Syd:[[I

    .line 185
    filled-new-array {v5, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Ssd:[[I

    .line 186
    filled-new-array {v5, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Sed:[[F

    .line 188
    filled-new-array {v5, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SSsd:[[I

    .line 189
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Major:[I

    .line 190
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Minor:[I

    .line 191
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Nd:[I

    .line 192
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Actiond:[I

    .line 194
    iput v2, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SvarX:F

    .line 195
    iput v2, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SvarY:F

    .line 197
    iput v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mTouchCnt:I

    .line 198
    iput v2, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mMaxSize:F

    .line 201
    iput v2, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumX:F

    .line 202
    iput v2, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumY:F

    .line 203
    iput v2, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumSize:F

    .line 205
    iput v2, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumEccen:F

    .line 206
    iput v2, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumMajor:F

    .line 207
    iput v2, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumMinor:F

    .line 208
    iput v2, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SmeanX:F

    .line 209
    iput v2, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SmeanY:F

    .line 210
    iput v2, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->preSumSize:F

    .line 213
    iput-boolean v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mIsRotated:Z

    .line 215
    iput v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingSurfaceMotionEngine:I

    .line 216
    iput v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingPalmSweep:I

    .line 217
    iput v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingPalmTouch:I

    .line 219
    iput v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mScreenWidth:I

    .line 220
    iput v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mScreenHeight:I

    .line 222
    iput-wide v6, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->tCurrentTime:D

    .line 223
    iput-wide v6, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mLastPalmSweepTouchUpTime:D

    .line 225
    iput-wide v6, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mTimeGapUPDown:D

    .line 226
    iput-wide v6, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mLastGetSettingVariableTime:D

    .line 229
    iput-boolean v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->isPrintDebugLog:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/palmMotion/PalmMotionService;Lcom/android/server/palmMotion/PalmMotionService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/palmMotion/PalmMotionService;
    .param p2, "x1"    # Lcom/android/server/palmMotion/PalmMotionService$1;

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;-><init>(Lcom/android/server/palmMotion/PalmMotionService;)V

    return-void
.end method


# virtual methods
.method public Initialize()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 386
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    const/16 v5, 0xa

    if-ge v2, v5, :cond_1

    .line 387
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v5, 0x3

    if-ge v1, v5, :cond_0

    .line 388
    iget-object v5, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v5, v5, v2

    aput v10, v5, v1

    .line 389
    iget-object v5, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Syd:[[I

    aget-object v5, v5, v2

    aput v10, v5, v1

    .line 390
    iget-object v5, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Ssd:[[I

    aget-object v5, v5, v2

    aput v10, v5, v1

    .line 391
    iget-object v5, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Sed:[[F

    aget-object v5, v5, v2

    aput v11, v5, v1

    .line 387
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 394
    :cond_0
    iget-object v5, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Major:[I

    aput v10, v5, v2

    .line 386
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    .end local v1    # "i":I
    :cond_1
    iget-object v5, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Nd:[I

    iget-object v6, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Nd:[I

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Nd:[I

    const/4 v9, 0x2

    aput v10, v8, v9

    aput v10, v6, v7

    aput v10, v5, v10

    .line 398
    iput v10, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mTouchCnt:I

    .line 399
    iput v11, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->preSumSize:F

    .line 400
    iput v11, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mMaxSize:F

    .line 402
    iget-object v5, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    # getter for: Lcom/android/server/palmMotion/PalmMotionService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/palmMotion/PalmMotionService;->access$400(Lcom/android/server/palmMotion/PalmMotionService;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 403
    .local v4, "wm":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 404
    .local v0, "disp":Landroid/view/Display;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 405
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 407
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v5, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mScreenWidth:I

    .line 408
    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v5, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mScreenHeight:I

    .line 409
    return-void
.end method

.method public PreUpdate(Landroid/view/MotionEvent;)V
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    iput v7, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mAction:I

    .line 233
    iget-object v7, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Actiond:[I

    iget-object v8, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Actiond:[I

    aget v8, v8, v11

    aput v8, v7, v13

    .line 234
    iget-object v7, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Actiond:[I

    iget-object v8, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Actiond:[I

    aget v8, v8, v12

    aput v8, v7, v11

    .line 235
    iget-object v7, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Actiond:[I

    iget v8, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mAction:I

    aput v8, v7, v12

    .line 237
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumSize:F

    .line 238
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 239
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 240
    iget-object v7, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Ssd:[[I

    aget-object v7, v7, v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getSurfaceSize(I)F

    move-result v8

    float-to-int v8, v8

    aput v8, v7, v12

    .line 239
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 242
    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    .line 243
    iget v7, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumSize:F

    iget-object v8, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Ssd:[[I

    aget-object v8, v8, v4

    aget v8, v8, v12

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumSize:F

    .line 242
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 245
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSumSize()Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSumSize()Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iput v7, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumSize:F

    .line 250
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_5

    .line 252
    :try_start_0
    iget-object v7, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    # getter for: Lcom/android/server/palmMotion/PalmMotionService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/palmMotion/PalmMotionService;->access$400(Lcom/android/server/palmMotion/PalmMotionService;)Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 253
    .local v6, "wm":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 255
    .local v2, "disp":Landroid/view/Display;
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 256
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v2, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 258
    const/4 v1, 0x1

    .line 259
    .local v1, "bitMask":I
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_4

    .line 260
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mIsRotated:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v1    # "bitMask":I
    .end local v2    # "disp":Landroid/view/Display;
    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .end local v6    # "wm":Landroid/view/WindowManager;
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    long-to-double v7, v7

    iput-wide v7, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->tCurrentTime:D

    .line 270
    iget-wide v7, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->tCurrentTime:D

    iget-wide v9, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mLastPalmSweepTouchUpTime:D

    sub-double/2addr v7, v9

    iput-wide v7, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mTimeGapUPDown:D

    .line 271
    iget-wide v7, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mTimeGapUPDown:D

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-ltz v7, :cond_3

    iget-wide v7, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mTimeGapUPDown:D

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    cmpg-double v7, v7, v9

    if-gez v7, :cond_3

    iget-object v7, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Actiond:[I

    aget v7, v7, v12

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Actiond:[I

    aget v7, v7, v11

    if-ne v7, v11, :cond_3

    .line 273
    iput v13, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mAction:I

    .line 274
    iget-object v7, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    # getter for: Lcom/android/server/palmMotion/PalmMotionService;->mPalmSweepRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;
    invoke-static {v7}, Lcom/android/server/palmMotion/PalmMotionService;->access$500(Lcom/android/server/palmMotion/PalmMotionService;)Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;

    move-result-object v7

    # getter for: Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mPreSweepDown:Z
    invoke-static {v7}, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->access$600(Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 275
    iget-object v7, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    # getter for: Lcom/android/server/palmMotion/PalmMotionService;->mPalmSweepRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;
    invoke-static {v7}, Lcom/android/server/palmMotion/PalmMotionService;->access$500(Lcom/android/server/palmMotion/PalmMotionService;)Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;

    move-result-object v7

    # setter for: Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepDown:Z
    invoke-static {v7, v11}, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->access$702(Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;Z)Z

    .line 276
    iget-object v7, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    # setter for: Lcom/android/server/palmMotion/PalmMotionService;->mPalmMotionRecognizer:Z
    invoke-static {v7, v11}, Lcom/android/server/palmMotion/PalmMotionService;->access$802(Lcom/android/server/palmMotion/PalmMotionService;Z)Z

    .line 277
    const-string v7, "PalmMotionService"

    const-string v8, "[Surface Touch] MotionEvent change to ACTION_MOVE"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_3
    :goto_3
    return-void

    .line 262
    .restart local v1    # "bitMask":I
    .restart local v2    # "disp":Landroid/view/Display;
    .restart local v5    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v6    # "wm":Landroid/view/WindowManager;
    :cond_4
    const/4 v7, 0x1

    :try_start_1
    iput-boolean v7, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mIsRotated:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 264
    .end local v1    # "bitMask":I
    .end local v2    # "disp":Landroid/view/Display;
    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .end local v6    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v3

    .line 265
    .local v3, "e":Ljava/lang/Exception;
    iput-boolean v12, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mIsRotated:Z

    .line 266
    const-string v7, "PalmMotionService"

    const-string v8, "[Surface Touch] Default Rotate = false"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 280
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v11, :cond_3

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    long-to-double v7, v7

    iput-wide v7, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mLastPalmSweepTouchUpTime:D

    goto :goto_3
.end method

.method public Update(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 286
    iput-object p1, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mMotionEvent:Landroid/view/MotionEvent;

    .line 289
    iput v6, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumX:F

    .line 290
    iput v6, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumY:F

    .line 293
    iput v6, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumEccen:F

    .line 294
    iput v6, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SmeanX:F

    .line 295
    iput v6, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SmeanY:F

    .line 296
    iput v6, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumMajor:F

    .line 297
    iput v6, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumMinor:F

    .line 299
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 301
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 302
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 303
    iget-object v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v5, v5, v2

    aget v5, v5, v1

    aput v5, v3, v4

    .line 304
    iget-object v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Syd:[[I

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Syd:[[I

    aget-object v5, v5, v2

    aget v5, v5, v1

    aput v5, v3, v4

    .line 305
    iget-object v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Ssd:[[I

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Ssd:[[I

    aget-object v5, v5, v2

    aget v5, v5, v1

    aput v5, v3, v4

    .line 306
    iget-object v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Sed:[[F

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Sed:[[F

    aget-object v5, v5, v2

    aget v5, v5, v1

    aput v5, v3, v4

    .line 308
    iget-object v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SSsd:[[I

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SSsd:[[I

    aget-object v5, v5, v2

    aget v5, v5, v1

    aput v5, v3, v4

    .line 302
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 301
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 312
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 313
    iget-object v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v3, v3, v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v3, v7

    .line 314
    iget-object v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Syd:[[I

    aget-object v3, v3, v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v3, v7

    .line 317
    iget-object v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Sed:[[F

    aget-object v3, v3, v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getEccen(I)F

    move-result v4

    aput v4, v3, v7

    .line 318
    iget-object v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Major:[I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getSurfaceMajor(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v3, v1

    .line 319
    iget-object v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Minor:[I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getSurfaceMinor(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v3, v1

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 322
    :cond_2
    iget-object v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Nd:[I

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Nd:[I

    aget v4, v4, v8

    aput v4, v3, v9

    .line 323
    iget-object v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Nd:[I

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Nd:[I

    aget v4, v4, v7

    aput v4, v3, v8

    .line 324
    iget-object v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Nd:[I

    aput v0, v3, v7

    .line 326
    iget v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mTouchCnt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mTouchCnt:I

    .line 328
    iget v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mTouchCnt:I

    if-ne v3, v8, :cond_3

    .line 329
    iget-object v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v4, v4, v7

    aget v4, v4, v7

    aput v4, v3, v8

    .line 330
    iget-object v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Syd:[[I

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Syd:[[I

    aget-object v4, v4, v7

    aget v4, v4, v7

    aput v4, v3, v8

    .line 331
    iget-object v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v4, v4, v7

    aget v4, v4, v8

    aput v4, v3, v9

    .line 332
    iget-object v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Syd:[[I

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Syd:[[I

    aget-object v4, v4, v7

    aget v4, v4, v8

    aput v4, v3, v9

    .line 335
    :cond_3
    const/4 v1, 0x0

    :goto_3
    iget-object v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Nd:[I

    aget v3, v3, v7

    if-ge v1, v3, :cond_4

    .line 336
    iget v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumX:F

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v4, v4, v1

    aget v4, v4, v7

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumX:F

    .line 337
    iget v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumY:F

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Syd:[[I

    aget-object v4, v4, v1

    aget v4, v4, v7

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumY:F

    .line 340
    iget v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumMajor:F

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Major:[I

    aget v4, v4, v1

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumMajor:F

    .line 341
    iget v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumMinor:F

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Minor:[I

    aget v4, v4, v1

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumMinor:F

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 343
    :cond_4
    iget v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumX:F

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Nd:[I

    aget v4, v4, v7

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SmeanX:F

    .line 344
    iget v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumY:F

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Nd:[I

    aget v4, v4, v7

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SmeanY:F

    .line 345
    iget v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumMajor:F

    iget v4, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumMinor:F

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumEccen:F

    .line 347
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEccen()F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    .line 350
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEccen()F

    move-result v3

    iput v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumEccen:F

    .line 354
    :cond_5
    iget-object v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Actiond:[I

    aget v3, v3, v7

    if-ne v3, v8, :cond_6

    iget-object v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Actiond:[I

    aget v3, v3, v8

    const/4 v4, 0x6

    if-ne v3, v4, :cond_6

    .line 355
    iget v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->preSumSize:F

    iput v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumSize:F

    .line 358
    :cond_6
    iget v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumSize:F

    iput v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->preSumSize:F

    .line 360
    iput v6, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SvarX:F

    .line 361
    iput v6, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SvarY:F

    .line 363
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Nd:[I

    aget v3, v3, v7

    if-ge v1, v3, :cond_7

    .line 364
    iget v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SvarX:F

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v4, v4, v1

    aget v4, v4, v7

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SmeanX:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v5, v5, v1

    aget v5, v5, v7

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SmeanX:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SvarX:F

    .line 365
    iget v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SvarY:F

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Syd:[[I

    aget-object v4, v4, v1

    aget v4, v4, v7

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SmeanY:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Syd:[[I

    aget-object v5, v5, v1

    aget v5, v5, v7

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SmeanY:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SvarY:F

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 368
    :cond_7
    iget v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SvarX:F

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Nd:[I

    aget v4, v4, v7

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SvarX:F

    .line 369
    iget v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SvarY:F

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Nd:[I

    aget v4, v4, v7

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SvarY:F

    .line 371
    iget-boolean v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->isPrintDebugLog:Z

    if-nez v3, :cond_8

    const/4 v3, 0x5

    if-lt v0, v3, :cond_8

    .line 372
    iput-boolean v8, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->isPrintDebugLog:Z

    .line 374
    :cond_8
    sget-boolean v3, Lcom/android/server/palmMotion/PalmMotionService;->DEBUG:Z

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mTouchCnt:I

    const/16 v4, 0x32

    if-ge v3, v4, :cond_9

    iget-boolean v3, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->isPrintDebugLog:Z

    if-eqz v3, :cond_9

    .line 375
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_9

    .line 376
    const-string v3, "PalmMotionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ST] cnt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mTouchCnt:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " N:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " x:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v5, v5, v1

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " y:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Syd:[[I

    aget-object v5, v5, v1

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " s:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Ssd:[[I

    aget-object v5, v5, v1

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SsumEccen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumEccen:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pa:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPalm()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sumMajor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumMajor:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sumMinor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumMinor:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SumSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumSize:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SvarX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SvarX:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SvarY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SvarY:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 382
    :cond_9
    return-void
.end method
