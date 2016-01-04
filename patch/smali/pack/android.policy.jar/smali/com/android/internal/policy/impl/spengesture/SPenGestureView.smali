.class public Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
.super Landroid/widget/FrameLayout;
.source "SPenGestureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;,
        Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;,
        Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    }
.end annotation


# static fields
.field private static final CONTROL_SPEN_GESTURE_VIEW:Ljava/lang/String; = "android.intent.action.CONTROL_SPEN_GESTURE_VIEW"

.field private static final DEBUG:Z = false

.field private static final ESTIMATE_INVALID_VALUE:I = -0x1

.field private static final EXTRA_ENABLE_SPEN_GESTURE_VIEW:Ljava/lang/String; = "android.intent.extra.enable_spengestureview"

.field private static final GESTURE_EFFECT_BACK:S = 0x1s

.field private static final GESTURE_EFFECT_MENU:S = 0x0s

.field private static final GESTURE_EFFECT_QUICKCOMMAND:S = 0x2s

.field private static final KEY_IS_LOCKSCREEN_SHOWING:Ljava/lang/String; = "is_lockscreen_showing"

.field private static final KEY_IS_SECURE_ENABLED:Ljava/lang/String; = "is_secure_enabled"

.field private static final MEDIA_SCANNER_FINISHED_ACTION:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_FINISHED"

.field private static final MSG_BOOT_COMPLETED:I = 0x12d

.field private static final PEN_GESTURE_LINE_LIMIT:I = 0x64

.field private static final PEN_GESTURE_SPLIT_SCREEN_RATIO:I = 0x4

.field private static final SCREENSHOTS_DIR_NAME:Ljava/lang/String; = "Screenshots"

.field private static final SCREENSHOT_FILE_NAME_TEMPLATE:Ljava/lang/String; = "Screenshot_%s.png"

.field private static final SCREENSHOT_FILE_PATH_TEMPLATE:Ljava/lang/String; = "%s/%s/%s"

.field private static final SCREENSHOT_FILE_PATH_TEMPLATE_FOR_ANIMATION:Ljava/lang/String; = "%s/%s/tmp%s"

.field public static final SINGLE_SCREEN_CAPTURE_OFF:Ljava/lang/String; = "android.intent.action.SINGLE_SCREEN_CAPTURE_OFF"

.field public static final SINGLE_SCREEN_CAPTURE_ON:Ljava/lang/String; = "android.intent.action.SINGLE_SCREEN_CAPTURE_ON"

.field private static final TAG:Ljava/lang/String; = "SPenGesture"

.field private static final TEMP_CROP_IMAGE_FILE_PATH:Ljava/lang/String; = "/data/easyclip/crop_image.png"

.field private static final TEMP_CROP_IMAGE_FILE_PATH_FOR_ANIM:Ljava/lang/String; = "/data/easyclip/crop_image_anim.png"

.field private static final TEMP_CROP_IMAGE_PATH:Ljava/lang/String; = "/data/easyclip"


# instance fields
.field private final BROADCAST_NONE:I

.field private final BROADCAST_VIDEOPLAYER_PAUSE:I

.field private final BROADCAST_VIDEOPLAYER_PLAY:I

.field private final ESTIMATE_CHECK_GESTURE_AREA_HEIGHT:I

.field private final ESTIMATE_CHECK_GESTURE_AREA_WIDTH:I

.field private final ESTIMATE_CROPIMAGE_MARGIN:I

.field private final ESTIMATE_END_CIRCLE_RADIUS:I

.field private final ESTIMATE_FULL_SCREEN_MATRIX_HEIGHT:I

.field private final ESTIMATE_FULL_SCREEN_MATRIX_WIDTH:I

.field private final ESTIMATE_MARGIN_CLOSED_CURVE:I

.field private final ESTIMATE_START_CIRCLE_RADIUS:I

.field private final ESTIMATE_STROKE_WIDTH:I

.field private final GESTURE_RECOGNITION_MAX_DISTANCE:I

.field private final GESTURE_RECOGNITION_MAX_DISTANCE_FOR_BACK:I

.field private final GESTURE_RECOGNITION_MIN_DISTANCE:I

.field private final MSG_CROPPING_IMG_SAVE:S

.field private final MSG_FINISH_LOADING_ANIMATION:S

.field private final MSG_START_LOADING_ANIMATION:S

.field private final MSG_SUGGESTION_SERVICE_START:S

.field private mActivePointerId:I

.field private mBootCompleted:Z

.field private mBrType:I

.field mCaptureReceiver:Landroid/content/BroadcastReceiver;

.field private final mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

.field private final mCirclePaintWhite:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mCropBitmap:Landroid/graphics/Bitmap;

.field private mCropBitmapForAnimation:Landroid/graphics/Bitmap;

.field private mCropHandler:Landroid/os/Handler;

.field private mCropImageHeight:I

.field private mCropImageWidth:I

.field private mCropTempBitmap:Landroid/graphics/Bitmap;

.field private mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

.field private mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

.field private mCurDown:Z

.field private mCurNumPointers:I

.field private mCurrentDisplayHeight:I

.field private mCurrentDisplayWidth:I

.field private mDirectionHandler:Landroid/os/Handler;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayHeightForMatrix:I

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDisplayRoateChanged:Z

.field private mDisplayRoateDegress:I

.field private mDisplayWidthForMatrix:I

.field private mDoubleTapIntent:Landroid/content/Intent;

.field private mEnableCheckClosedCurve:Z

.field private mEndPointX:F

.field private mEndPointY:F

.field private mExistOldCoords:Z

.field private mFinishSaveImg:Z

.field private mFirstIntersectionPointLast:I

.field private mFirstIntersectionPointPrev:I

.field private mFirstIntersectionPointX:I

.field private mFirstIntersectionPointY:I

.field private mFirstStartPointX:I

.field private mFirstStartPointY:I

.field mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field private mGestureDetector:Landroid/view/GestureDetector;

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

.field private mGesturePadBlockTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGesturePadIntent:Landroid/content/Intent;

.field mHandler:Landroid/os/Handler;

.field private mHeaderBottom:I

.field private mImageFilePath:Ljava/lang/String;

.field private mImageFilePathForAnimation:Ljava/lang/String;

.field private mImageUri:Landroid/net/Uri;

.field private mImageUriForAnimation:Landroid/net/Uri;

.field mInstrumentation:Landroid/app/Instrumentation;

.field private mIsClosedCurve:Z

.field private mIsEnableDoubleTapOnLockscreen:Z

.field private mIsEnabledHapticFeedback:Z

.field private mIsFirstMediaScan:Z

.field private mIsFirstPointer:Z

.field private mIsKeyguardOn:Z

.field private mIsLastPointer:Z

.field private mIsLiveCropThread:Z

.field private mIsLiveGlanceView:Z

.field private mIsLiveScreencapture:Z

.field private mIsPhone:Z

.field private mIsSendingBootMsg:Z

.field private mIsShowingGestureEffect:Z

.field private mIsStartingSuggestionService:Z

.field private mIsUsablePath:Z

.field private mIsUsableSecondPath:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLoadingAniImgView:Landroid/widget/ImageView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLongPressIntent:Landroid/content/Intent;

.field private mMaxCoordX:I

.field private mMaxCoordXForIntent:I

.field private mMaxCoordY:I

.field private mMaxCoordYForIntent:I

.field private mMaxNumPointers:I

.field mMediaScanningReceiver:Landroid/content/BroadcastReceiver;

.field private mMedianValueForGesturePosX:I

.field private mMedianValueForGesturePosY:I

.field private mMinCoordX:I

.field private mMinCoordXForIntent:I

.field private mMinCoordY:I

.field private mMinCoordYForIntent:I

.field private mNewCoordsX:F

.field private mNewCoordsY:F

.field private mNumColsedCurves:I

.field private mNumberOfAddTrace:I

.field private mOldCoordsX:F

.field private mOldCoordsY:F

.field private mOutofVerticalThresholdToUp:Z

.field private mPathOfCurve:Landroid/graphics/Path;

.field private mPathOfCurveForDrawing:Landroid/graphics/Path;

.field private final mPathPaintWhite:Landroid/graphics/Paint;

.field mPenDoubleTap:Ljava/lang/Runnable;

.field mPenLongPress:Ljava/lang/Runnable;

.field private mPenMemoActionIntent:Landroid/content/Intent;

.field private final mPointers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevCoordY:I

.field private mSPenGestureCropDispatchThread:Ljava/lang/Thread;

.field private mSPenGestureEventDispatchThread:Ljava/lang/Thread;

.field private mSPenVibrator:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field mScreenCaptureOn:Z

.field private mSecondIntersectionPointLast:I

.field private mSecondIntersectionPointPrev:I

.field private mSecondIntersectionPointX:I

.field private mSecondIntersectionPointY:I

.field private mSecondPathOfCurve:Landroid/graphics/Path;

.field private mStartPointX:F

.field private mStartPointXForCircle:F

.field private mStartPointY:F

.field private mStartPointYForCircle:F

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManager2:Landroid/telephony/TelephonyManager;

.field private final mTempCoords:Landroid/view/MotionEvent$PointerCoords;

.field private final mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mVC:Landroid/view/ViewConfiguration;

.field private mVerticalMovingSlop:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 507
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 153
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOutofVerticalThresholdToUp:Z

    .line 154
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mBootCompleted:Z

    .line 164
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    .line 166
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 168
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsPhone:Z

    .line 171
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    .line 176
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    .line 177
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    .line 179
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveCropThread:Z

    .line 180
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    .line 183
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenCaptureOn:Z

    .line 186
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 194
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsFirstMediaScan:Z

    .line 195
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsSendingBootMsg:Z

    .line 198
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsKeyguardOn:Z

    .line 200
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsEnableDoubleTapOnLockscreen:Z

    .line 201
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveGlanceView:Z

    .line 202
    new-instance v12, Ljava/util/ArrayList;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "com.sec.android.gesturepad"

    aput-object v15, v13, v14

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadBlockTaskList:Ljava/util/ArrayList;

    .line 207
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_STROKE_WIDTH:I

    .line 208
    const/16 v12, 0x320

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_FULL_SCREEN_MATRIX_WIDTH:I

    .line 209
    const/16 v12, 0x500

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_FULL_SCREEN_MATRIX_HEIGHT:I

    .line 210
    const/16 v12, 0x12c

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_CHECK_GESTURE_AREA_WIDTH:I

    .line 211
    const/16 v12, 0x12c

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_CHECK_GESTURE_AREA_HEIGHT:I

    .line 214
    const/16 v12, 0x8

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_START_CIRCLE_RADIUS:I

    .line 215
    const/4 v12, 0x4

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_END_CIRCLE_RADIUS:I

    .line 216
    const/16 v12, 0x14

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_MARGIN_CLOSED_CURVE:I

    .line 218
    const/16 v12, 0xa

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_CROPIMAGE_MARGIN:I

    .line 223
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-short v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->MSG_START_LOADING_ANIMATION:S

    .line 224
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iput-short v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->MSG_FINISH_LOADING_ANIMATION:S

    .line 227
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->BROADCAST_NONE:I

    .line 228
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->BROADCAST_VIDEOPLAYER_PAUSE:I

    .line 229
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->BROADCAST_VIDEOPLAYER_PLAY:I

    .line 232
    const/16 v12, 0x32

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->GESTURE_RECOGNITION_MIN_DISTANCE:I

    .line 233
    const/16 v12, 0x320

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->GESTURE_RECOGNITION_MAX_DISTANCE:I

    .line 234
    const/16 v12, 0x4b0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->GESTURE_RECOGNITION_MAX_DISTANCE_FOR_BACK:I

    .line 279
    new-instance v12, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v12}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 280
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    .line 281
    new-instance v12, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v12}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 385
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    .line 387
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMedianValueForGesturePosX:I

    .line 388
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMedianValueForGesturePosY:I

    .line 414
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    .line 415
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    .line 416
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    .line 417
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 418
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    .line 419
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

    .line 420
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;

    .line 421
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    .line 426
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    .line 427
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageUri:Landroid/net/Uri;

    .line 428
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageUriForAnimation:Landroid/net/Uri;

    .line 430
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFinishSaveImg:Z

    .line 431
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-short v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->MSG_SUGGESTION_SERVICE_START:S

    .line 432
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-short v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->MSG_CROPPING_IMG_SAVE:S

    .line 437
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mBrType:I

    .line 439
    new-instance v12, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$1;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    .line 452
    new-instance v12, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$2;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMediaScanningReceiver:Landroid/content/BroadcastReceiver;

    .line 473
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsEnabledHapticFeedback:Z

    .line 474
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenVibrator:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;

    .line 781
    new-instance v12, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$5;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$5;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPenLongPress:Ljava/lang/Runnable;

    .line 848
    new-instance v12, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$6;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$6;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPenDoubleTap:Ljava/lang/Runnable;

    .line 880
    new-instance v12, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$7;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$7;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePad:Ljava/lang/Runnable;

    .line 508
    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mHandler:Landroid/os/Handler;

    .line 509
    new-instance v12, Landroid/app/Instrumentation;

    invoke-direct {v12}, Landroid/app/Instrumentation;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mInstrumentation:Landroid/app/Instrumentation;

    .line 512
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 513
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v12, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 516
    const-string v12, "keyguard"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/KeyguardManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 517
    const-string v12, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 518
    const-string v12, "phone2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    .line 519
    new-instance v12, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 521
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 522
    .local v10, "size":Landroid/graphics/Point;
    const-string v12, "window"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    .line 523
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v12, v10}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 525
    const-string v12, "window"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v11

    .line 527
    .local v11, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v11}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v12, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsPhone:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :goto_1
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLongPressIntent:Landroid/content/Intent;

    .line 534
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLongPressIntent:Landroid/content/Intent;

    const-string v13, "com.sec.spen.flashannotatesvc"

    const-string v14, "com.sec.spen.flashannotatesvc.flashannotateservice"

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    .line 537
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    const-string v13, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    new-instance v13, Landroid/content/ComponentName;

    const-string v14, "com.diotek.mini_penmemo"

    const-string v15, "com.diotek.mini_penmemo.Mini_PenMemo_Service"

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 540
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.MAIN"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadIntent:Landroid/content/Intent;

    .line 541
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadIntent:Landroid/content/Intent;

    const-string v13, "com.sec.android.gesturepad"

    const-string v14, "com.sec.android.gesturepad.GesturePadActivity"

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadIntent:Landroid/content/Intent;

    const/high16 v13, 0x14000000

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 544
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Common_EnableMobileOfficeMdm"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 545
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 546
    .local v2, "captureFilter":Landroid/content/IntentFilter;
    const-string v12, "android.intent.action.SINGLE_SCREEN_CAPTURE_ON"

    invoke-virtual {v2, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 547
    const-string v12, "android.intent.action.SINGLE_SCREEN_CAPTURE_OFF"

    invoke-virtual {v2, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 548
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 553
    .end local v2    # "captureFilter":Landroid/content/IntentFilter;
    :cond_0
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 554
    .local v7, "mediaFilter":Landroid/content/IntentFilter;
    if-eqz v7, :cond_1

    .line 555
    const-string v12, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v7, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 556
    const-string v12, "file"

    invoke-virtual {v7, v12}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 557
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMediaScanningReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 562
    :cond_1
    new-instance v12, Landroid/view/GestureDetector;

    new-instance v13, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$3;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 639
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    .line 640
    new-instance v12, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$4;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$4;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropHandler:Landroid/os/Handler;

    .line 659
    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDirectionHandler:Landroid/os/Handler;

    .line 660
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 661
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mVC:Landroid/view/ViewConfiguration;

    .line 663
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 664
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->setDisplayDegrees()Z

    .line 667
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 668
    .local v8, "point":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    const-string v13, "window"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 669
    .local v4, "display":Landroid/view/Display;
    invoke-virtual {v4, v8}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 671
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v12, :cond_3

    .line 672
    iget v12, v8, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    .line 673
    iget v12, v8, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    .line 674
    const-string v12, "SPenGesture"

    const-string v13, "Initialized to portrait"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayWidthForMatrix:I

    .line 682
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayHeightForMatrix:I

    .line 684
    new-instance v13, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayHeightForMatrix:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayWidthForMatrix:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v12, :cond_4

    const/4 v12, 0x1

    :goto_3
    invoke-direct {v13, v14, v15, v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;-><init>(IIZ)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    .line 686
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumberOfAddTrace:I

    .line 687
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mExistOldCoords:Z

    .line 688
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLastPointer:Z

    .line 689
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsFirstPointer:Z

    .line 690
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 691
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEnableCheckClosedCurve:Z

    .line 692
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    .line 693
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    .line 694
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    .line 695
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsX:F

    .line 696
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsY:F

    .line 697
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsX:F

    .line 698
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsY:F

    .line 699
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    .line 700
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    .line 701
    const/high16 v12, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    .line 702
    const/high16 v12, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    .line 703
    const/high16 v12, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    .line 704
    const/high16 v12, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    .line 705
    const/high16 v12, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    .line 706
    const/high16 v12, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    .line 707
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordX:I

    .line 708
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordX:I

    .line 709
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordY:I

    .line 710
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordY:I

    .line 711
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordXForIntent:I

    .line 712
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordXForIntent:I

    .line 713
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordYForIntent:I

    .line 714
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordYForIntent:I

    .line 715
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    .line 716
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 717
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 718
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 719
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 720
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    .line 721
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    .line 722
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    .line 723
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    .line 724
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    .line 725
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    .line 726
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    .line 727
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    .line 729
    new-instance v3, Landroid/graphics/DashPathEffect;

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_0

    const/4 v13, 0x0

    invoke-direct {v3, v12, v13}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 730
    .local v3, "dashPath":Landroid/graphics/DashPathEffect;
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    .line 731
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 732
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/16 v13, 0xff

    const/16 v14, 0xff

    const/16 v15, 0xff

    const/16 v16, 0xff

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 733
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 734
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/high16 v13, 0x40000000    # 2.0f

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 735
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    invoke-virtual {v12, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 736
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, -0x1000000

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 745
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    .line 746
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 747
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/16 v13, 0xff

    const/16 v14, 0xff

    const/16 v15, 0xff

    const/16 v16, 0xff

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 748
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 749
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/high16 v13, 0x40400000    # 3.0f

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 750
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, -0x1000000

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 759
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    .line 760
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 761
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    const/16 v13, 0xff

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 763
    new-instance v9, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    invoke-direct {v9}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;-><init>()V

    .line 764
    .local v9, "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mActivePointerId:I

    .line 768
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    .line 770
    new-instance v12, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenVibrator:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;

    .line 772
    return-void

    .line 527
    .end local v3    # "dashPath":Landroid/graphics/DashPathEffect;
    .end local v4    # "display":Landroid/view/Display;
    .end local v7    # "mediaFilter":Landroid/content/IntentFilter;
    .end local v8    # "point":Landroid/graphics/Point;
    .end local v9    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_2
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 528
    :catch_0
    move-exception v5

    .line 529
    .local v5, "ex":Landroid/os/RemoteException;
    const-string v12, "SPenGesture"

    const-string v13, "RemoteException"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsPhone:Z

    goto/16 :goto_1

    .line 676
    .end local v5    # "ex":Landroid/os/RemoteException;
    .restart local v4    # "display":Landroid/view/Display;
    .restart local v7    # "mediaFilter":Landroid/content/IntentFilter;
    .restart local v8    # "point":Landroid/graphics/Point;
    :cond_3
    iget v12, v8, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    .line 677
    iget v12, v8, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    .line 678
    const-string v12, "SPenGesture"

    const-string v13, "Initialized to Landscape"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 684
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 729
    nop

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private GetDefaultDisplayBimap()Landroid/graphics/Bitmap;
    .locals 14

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2153
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v4

    .line 2154
    .local v4, "rp":Landroid/sec/enterprise/RestrictionPolicy;
    if-eqz v4, :cond_0

    .line 2155
    invoke-virtual {v4, v7}, Landroid/sec/enterprise/RestrictionPolicy;->isScreenCaptureEnabled(Z)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2156
    const-string v7, "SPenGesture"

    const-string v8, "MDM: Screen Capture Disabled"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    :goto_0
    return-object v6

    .line 2162
    :cond_0
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 2163
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v9, v10}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 2165
    const/4 v9, 0x2

    new-array v2, v9, [F

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v9, v9

    aput v9, v2, v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v9, v9

    aput v9, v2, v7

    .line 2166
    .local v2, "dims":[F
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->getDegreesForRotation(I)F

    move-result v1

    .line 2167
    .local v1, "degrees":F
    cmpl-float v9, v1, v12

    if-lez v9, :cond_4

    move v3, v7

    .line 2169
    .local v3, "requiresRotation":Z
    :goto_1
    if-eqz v3, :cond_1

    .line 2170
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    .line 2171
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v10, v1

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 2172
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2173
    aget v9, v2, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    aput v9, v2, v8

    .line 2174
    aget v9, v2, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    aput v9, v2, v7

    .line 2177
    :cond_1
    aget v9, v2, v8

    float-to-int v9, v9

    aget v10, v2, v7

    float-to-int v10, v10

    invoke-static {v9, v10}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 2180
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v9, :cond_2

    .line 2181
    aget v9, v2, v8

    float-to-int v9, v9

    aget v10, v2, v7

    float-to-int v10, v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 2185
    :cond_2
    if-eqz v3, :cond_3

    .line 2186
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2188
    .local v5, "ss":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2189
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2190
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2191
    aget v8, v2, v8

    neg-float v8, v8

    div-float/2addr v8, v13

    aget v7, v2, v7

    neg-float v7, v7

    div-float/2addr v7, v13

    invoke-virtual {v0, v8, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2192
    iget-object v7, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v7, v12, v12, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2193
    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2194
    iput-object v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 2196
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v5    # "ss":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .end local v3    # "requiresRotation":Z
    :cond_4
    move v3, v8

    .line 2167
    goto/16 :goto_1
.end method

.method private SaveImage()Z
    .locals 13

    .prologue
    .line 2039
    const-string v9, "SPenGesture"

    const-string v10, "SaveImage"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 2042
    .local v5, "mImageTime":J
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 2043
    .local v2, "imageDate":Ljava/lang/String;
    sget-object v9, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 2044
    .local v3, "imageDir":Ljava/lang/String;
    const-string v9, "Screenshot_%s.png"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2047
    .local v4, "mImageFileName":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    const-string v9, "/data/easyclip"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2048
    .local v8, "tmpDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 2049
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-nez v9, :cond_0

    .line 2050
    const-string v9, "SPenGesture"

    const-string v10, "Dir creation failed!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    const/4 v9, 0x0

    .line 2094
    :goto_0
    return v9

    .line 2053
    :cond_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/io/File;->setReadable(ZZ)Z

    .line 2054
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/io/File;->setWritable(ZZ)Z

    .line 2055
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 2059
    :cond_1
    const-string v9, "%s/%s/%s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v11, 0x1

    const-string v12, "Screenshots"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v4, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageFilePath:Ljava/lang/String;

    .line 2061
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v9, "/data/easyclip/crop_image.png"

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2062
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2063
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 2064
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Ljava/io/File;->setReadable(ZZ)Z

    .line 2065
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Ljava/io/File;->setWritable(ZZ)Z

    .line 2067
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2068
    .local v7, "outStream":Ljava/io/FileOutputStream;
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v9, v10, v11, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2069
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 2070
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2077
    .end local v1    # "file":Ljava/io/File;
    .end local v7    # "outStream":Ljava/io/FileOutputStream;
    :goto_1
    const-string v9, "%s/%s/tmp%s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v11, 0x1

    const-string v12, "Screenshots"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v4, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageFilePathForAnimation:Ljava/lang/String;

    .line 2079
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v9, "/data/easyclip/crop_image_anim.png"

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2080
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2081
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 2082
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Ljava/io/File;->setReadable(ZZ)Z

    .line 2083
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Ljava/io/File;->setWritable(ZZ)Z

    .line 2085
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2086
    .restart local v7    # "outStream":Ljava/io/FileOutputStream;
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v9, v10, v11, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2087
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 2088
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2093
    .end local v1    # "file":Ljava/io/File;
    .end local v7    # "outStream":Ljava/io/FileOutputStream;
    :goto_2
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFinishSaveImg:Z

    .line 2094
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 2071
    :catch_0
    move-exception v0

    .line 2072
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "SPenGesture"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SaveImage : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 2089
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2090
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v9, "SPenGesture"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SaveImage : anim / "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsFirstMediaScan:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsFirstMediaScan:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsSendingBootMsg:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsSendingBootMsg:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isLockScreenShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isTopActivity(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveScreencapture:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLongPressIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsKeyguardOn:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsEnableDoubleTapOnLockscreen:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveGlanceView:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadBlockTaskList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Ljava/util/ArrayList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isTopActivity(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->sendKeyDownUpSync(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsEnabledHapticFeedback:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Path;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordX:I

    return v0
.end method

.method static synthetic access$3602(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordX:I

    return p1
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordX:I

    return v0
.end method

.method static synthetic access$3702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordX:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordY:I

    return v0
.end method

.method static synthetic access$3802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordY:I

    return p1
.end method

.method static synthetic access$3900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordY:I

    return v0
.end method

.method static synthetic access$3902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordY:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOutofVerticalThresholdToUp:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOutofVerticalThresholdToUp:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Path;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageWidth:I

    return v0
.end method

.method static synthetic access$4202(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageWidth:I

    return p1
.end method

.method static synthetic access$4300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageHeight:I

    return v0
.end method

.method static synthetic access$4302(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageHeight:I

    return p1
.end method

.method static synthetic access$4400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->GetDefaultDisplayBimap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    return v0
.end method

.method static synthetic access$4800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mVerticalMovingSlop:I

    return v0
.end method

.method static synthetic access$5000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    return v0
.end method

.method static synthetic access$5202(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    return p1
.end method

.method static synthetic access$5300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    return v0
.end method

.method static synthetic access$5302(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # F

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    return p1
.end method

.method static synthetic access$5400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    return v0
.end method

.method static synthetic access$5402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # F

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    return p1
.end method

.method static synthetic access$5500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    return v0
.end method

.method static synthetic access$5702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    return p1
.end method

.method static synthetic access$5800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    return v0
.end method

.method static synthetic access$5802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    return p1
.end method

.method static synthetic access$5900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    return v0
.end method

.method static synthetic access$5902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    return v0
.end method

.method static synthetic access$6002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    return p1
.end method

.method static synthetic access$6100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$6102(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$6200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordXForIntent:I

    return v0
.end method

.method static synthetic access$6202(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordXForIntent:I

    return p1
.end method

.method static synthetic access$6300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordXForIntent:I

    return v0
.end method

.method static synthetic access$6302(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordXForIntent:I

    return p1
.end method

.method static synthetic access$6400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordYForIntent:I

    return v0
.end method

.method static synthetic access$6402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordYForIntent:I

    return p1
.end method

.method static synthetic access$6500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordYForIntent:I

    return v0
.end method

.method static synthetic access$6502(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordYForIntent:I

    return p1
.end method

.method static synthetic access$6600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    return-object v0
.end method

.method static synthetic access$6702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    return p1
.end method

.method static synthetic access$6802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    return p1
.end method

.method static synthetic access$6902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startAniForLoadingService()V

    return-void
.end method

.method static synthetic access$7002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    return p1
.end method

.method static synthetic access$7100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->SaveImage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageFilePathForAnimation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    return v0
.end method

.method static synthetic access$7402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    return p1
.end method

.method static synthetic access$7500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Path;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFinishSaveImg:Z

    return v0
.end method

.method static synthetic access$7800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenVibrator:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/view/Display;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->injectionKeyEvent(I)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    return v0
.end method

.method static synthetic access$8302(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveCropThread:Z

    return p1
.end method

.method private checkClosedCurve(III)V
    .locals 7
    .param p1, "resultCoordsX"    # I
    .param p2, "resultCoordsY"    # I
    .param p3, "markNumber"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 1239
    const/4 v2, -0x1

    .line 1242
    .local v2, "markNumberFromMatrix":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x6

    if-ge v1, v3, :cond_2

    .line 1243
    add-int v3, p2, v1

    if-ltz v3, :cond_0

    if-ltz p1, :cond_0

    add-int v3, p2, v1

    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v3, v4, :cond_0

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge p1, v3, :cond_0

    .line 1246
    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    add-int v4, p2, v1

    invoke-virtual {v3, v4, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->getMarked(II)I

    move-result v2

    .line 1252
    :cond_0
    if-eq v2, v5, :cond_8

    add-int/lit8 v3, p3, -0x14

    if-ge v2, v3, :cond_8

    .line 1254
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    add-int/lit8 v3, v3, 0x14

    if-ge v3, p3, :cond_2

    .line 1255
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1259
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    if-eq v3, v5, :cond_1

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    if-ne v3, v5, :cond_7

    .line 1260
    :cond_1
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1261
    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1262
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1263
    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 1269
    :goto_1
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    .line 1307
    :cond_2
    :goto_2
    const/16 v0, 0xc

    .line 1308
    .local v0, "circleRadius":I
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, -0x18

    if-gt v3, p1, :cond_3

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, 0x18

    if-lt v3, p1, :cond_3

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, -0x18

    if-gt v3, p2, :cond_3

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, 0x18

    if-ge v3, p2, :cond_4

    .line 1310
    :cond_3
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEnableCheckClosedCurve:Z

    .line 1313
    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEnableCheckClosedCurve:Z

    if-ne v3, v6, :cond_6

    .line 1314
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, -0xc

    if-gt v3, p1, :cond_6

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, 0xc

    if-lt v3, p1, :cond_6

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, -0xc

    if-gt v3, p2, :cond_6

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, 0xc

    if-lt v3, p2, :cond_6

    .line 1316
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1318
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    if-eq v3, v5, :cond_5

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    if-ne v3, v5, :cond_d

    .line 1319
    :cond_5
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1320
    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1326
    :goto_3
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    .line 1331
    :cond_6
    return-void

    .line 1266
    .end local v0    # "circleRadius":I
    :cond_7
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1267
    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    goto :goto_1

    .line 1276
    :cond_8
    sub-int v3, p2, v1

    if-ltz v3, :cond_9

    if-ltz p1, :cond_9

    sub-int v3, p2, v1

    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v3, v4, :cond_9

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge p1, v3, :cond_9

    .line 1279
    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    sub-int v4, p2, v1

    invoke-virtual {v3, v4, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->getMarked(II)I

    move-result v2

    .line 1282
    :cond_9
    if-eq v2, v5, :cond_c

    add-int/lit8 v3, p3, -0x14

    if-ge v2, v3, :cond_c

    .line 1284
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    add-int/lit8 v3, v3, 0x14

    if-ge v3, p3, :cond_2

    .line 1285
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1289
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    if-eq v3, v5, :cond_a

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    if-ne v3, v5, :cond_b

    .line 1290
    :cond_a
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1291
    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1292
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1293
    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 1299
    :goto_4
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    goto/16 :goto_2

    .line 1296
    :cond_b
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1297
    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    goto :goto_4

    .line 1242
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1323
    .restart local v0    # "circleRadius":I
    :cond_d
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1324
    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    goto :goto_3
.end method

.method private checkDirectionGesture()Z
    .locals 31

    .prologue
    .line 2216
    const-string v25, "SPenGesture"

    const-string v26, "checkDirectionGesture"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    const/4 v5, 0x0

    .line 2218
    .local v5, "distance":I
    const/16 v21, 0x0

    .line 2219
    .local v21, "vertexX":I
    const/16 v22, 0x0

    .line 2220
    .local v22, "vertexY":I
    const/4 v6, 0x0

    .line 2221
    .local v6, "distanceMax":I
    const/4 v7, 0x0

    .line 2222
    .local v7, "distanceStartAndEnd":I
    const/4 v12, 0x0

    .line 2223
    .local v12, "minX":I
    const/4 v13, 0x0

    .line 2224
    .local v13, "minY":I
    const/4 v10, 0x0

    .line 2225
    .local v10, "maxX":I
    const/4 v11, 0x0

    .line 2226
    .local v11, "maxY":I
    const/16 v16, 0x0

    .line 2227
    .local v16, "result1":F
    const/16 v17, 0x0

    .line 2228
    .local v17, "result2":F
    const/16 v18, 0x0

    .line 2229
    .local v18, "slope":F
    const/4 v9, 0x0

    .line 2232
    .local v9, "interceptY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v3, v0

    .line 2233
    .local v3, "Xdistance":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v4, v0

    .line 2237
    .local v4, "Ydistance":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v26, v0

    sub-float v25, v25, v26

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

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v27, v0

    sub-float v26, v26, v27

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

    .line 2239
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-nez v25, :cond_2

    .line 2240
    :cond_0
    const/16 v18, 0x0

    .line 2245
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v26, v0

    mul-float v26, v26, v18

    sub-float v9, v25, v26

    .line 2249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 2250
    .local v19, "totalPointerCount":I
    const/4 v14, 0x0

    .local v14, "p":I
    :goto_1
    move/from16 v0, v19

    if-ge v14, v0, :cond_4

    .line 2251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .line 2252
    .local v15, "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I
    invoke-static {v15}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)I

    move-result v20

    .line 2253
    .local v20, "traceCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    move/from16 v0, v20

    if-ge v8, v0, :cond_3

    .line 2254
    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceX:[F
    invoke-static {v15}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F

    move-result-object v25

    aget v23, v25, v8

    .line 2255
    .local v23, "x":F
    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceY:[F
    invoke-static {v15}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F

    move-result-object v25

    aget v24, v25, v8

    .line 2258
    .local v24, "y":F
    mul-float v25, v18, v23

    const/high16 v26, -0x40800000    # -1.0f

    mul-float v26, v26, v24

    add-float v25, v25, v26

    add-float v25, v25, v9

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 2259
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

    .line 2261
    div-float v25, v16, v17

    move/from16 v0, v25

    float-to-int v5, v0

    .line 2263
    if-ge v6, v5, :cond_1

    .line 2264
    move v6, v5

    .line 2265
    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v21, v0

    .line 2266
    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v22, v0

    .line 2253
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2243
    .end local v8    # "i":I
    .end local v14    # "p":I
    .end local v15    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    .end local v19    # "totalPointerCount":I
    .end local v20    # "traceCount":I
    .end local v23    # "x":F
    .end local v24    # "y":F
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    div-float v18, v25, v26

    goto/16 :goto_0

    .line 2250
    .restart local v8    # "i":I
    .restart local v14    # "p":I
    .restart local v15    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    .restart local v19    # "totalPointerCount":I
    .restart local v20    # "traceCount":I
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 2273
    .end local v8    # "i":I
    .end local v15    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    .end local v20    # "traceCount":I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_6

    .line 2274
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v10, v0

    .line 2275
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v12, v0

    .line 2281
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_7

    .line 2282
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v11, v0

    .line 2283
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v13, v0

    .line 2290
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

    .line 2292
    const/high16 v25, 0x3f800000    # 1.0f

    cmpg-float v25, v18, v25

    if-gtz v25, :cond_c

    const/high16 v25, -0x40800000    # -1.0f

    cmpl-float v25, v18, v25

    if-ltz v25, :cond_c

    .line 2293
    move/from16 v0, v21

    if-gt v10, v0, :cond_8

    .line 2357
    :cond_5
    const/16 v25, 0x0

    :goto_5
    return v25

    .line 2278
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v10, v0

    .line 2279
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v12, v0

    goto :goto_3

    .line 2286
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v11, v0

    .line 2287
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v13, v0

    goto :goto_4

    .line 2297
    :cond_8
    move/from16 v0, v21

    if-le v12, v0, :cond_a

    .line 2300
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v4, v0, :cond_9

    .line 2301
    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    .line 2302
    :cond_9
    const/16 v25, 0x1

    goto :goto_5

    .line 2305
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_5

    .line 2308
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v3, v0, :cond_b

    .line 2309
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    .line 2310
    :cond_b
    const/16 v25, 0x1

    goto :goto_5

    .line 2319
    :cond_c
    move/from16 v0, v22

    if-le v11, v0, :cond_5

    .line 2323
    move/from16 v0, v22

    if-le v13, v0, :cond_e

    .line 2326
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v3, v0, :cond_d

    .line 2327
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    .line 2328
    :cond_d
    const/16 v25, 0x1

    goto/16 :goto_5

    .line 2331
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_5

    .line 2334
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v4, v0, :cond_f

    .line 2335
    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    .line 2336
    :cond_f
    const/16 v25, 0x1

    goto/16 :goto_5
.end method

.method private checkDownGesture()V
    .locals 19

    .prologue
    .line 2365
    const/4 v6, 0x0

    .line 2366
    .local v6, "distanceY":I
    const/4 v5, 0x0

    .line 2367
    .local v5, "distanceX":I
    const/4 v15, 0x0

    .line 2368
    .local v15, "vertexX":I
    const/16 v16, 0x0

    .line 2369
    .local v16, "vertexY":I
    const/4 v3, 0x0

    .line 2370
    .local v3, "distanceMax":I
    const/4 v4, 0x0

    .line 2371
    .local v4, "distanceStartAndEnd":I
    const/4 v10, 0x0

    .line 2372
    .local v10, "minX":I
    const/4 v11, 0x0

    .line 2373
    .local v11, "minY":I
    const/4 v8, 0x0

    .line 2374
    .local v8, "maxX":I
    const/4 v9, 0x0

    .line 2375
    .local v9, "maxY":I
    const/4 v12, 0x0

    .line 2376
    .local v12, "result1":F
    const/4 v13, 0x0

    .line 2377
    .local v13, "result2":F
    const/4 v14, 0x0

    .line 2378
    .local v14, "slope":F
    const/4 v7, 0x0

    .line 2386
    .local v7, "interceptY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v17, v0

    const/high16 v18, 0x44200000    # 640.0f

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v17, v0

    const/high16 v18, 0x44a00000    # 1280.0f

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v17, v0

    const/high16 v18, 0x44200000    # 640.0f

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v17, v0

    const/high16 v18, 0x44a00000    # 1280.0f

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_0

    .line 2389
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v6, v0

    .line 2390
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-int v5, v0

    .line 2393
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-le v6, v0, :cond_0

    .line 2394
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x43960000    # 300.0f

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x43960000    # 300.0f

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_1

    .line 2397
    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    .line 2408
    :cond_0
    :goto_0
    return-void

    .line 2399
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x43fa0000    # 500.0f

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x44480000    # 800.0f

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x43fa0000    # 500.0f

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x44480000    # 800.0f

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_0

    .line 2404
    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    goto :goto_0
.end method

.method private getDegreesForRotation(I)F
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2202
    packed-switch p1, :pswitch_data_0

    .line 2210
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2204
    :pswitch_0
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_0

    .line 2206
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0

    .line 2208
    :pswitch_2
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    .line 2202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getTopActivityComponentName()Landroid/content/ComponentName;
    .locals 5

    .prologue
    .line 932
    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 933
    .local v1, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 934
    .local v0, "Info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 936
    .local v2, "topActivity":Landroid/content/ComponentName;
    return-object v2
.end method

.method private injectionKeyEvent(I)V
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 986
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 991
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$8;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$8;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    .line 1008
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1009
    return-void
.end method

.method private isAvailableCapacity()Z
    .locals 15

    .prologue
    .line 2100
    const-string v13, "SPenGesture"

    const-string v14, "isAvailableCapacity"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 2103
    .local v7, "extStoragePath":Ljava/io/File;
    if-eqz v7, :cond_1

    .line 2106
    :try_start_0
    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2113
    .local v8, "stat":Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v13

    int-to-long v4, v13

    .line 2114
    .local v4, "blockSize":J
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockCount()I

    move-result v13

    int-to-long v9, v13

    .line 2115
    .local v9, "totalBlocks":J
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v13

    int-to-long v0, v13

    .line 2119
    .local v0, "availableBlocks":J
    mul-long v11, v9, v4

    .line 2120
    .local v11, "totalSpace":J
    mul-long v2, v0, v4

    .line 2128
    .local v2, "availableSpace":J
    const-wide/16 v13, 0x2800

    cmp-long v13, v2, v13

    if-gez v13, :cond_0

    .line 2130
    const v13, 0x10401bf

    invoke-direct {p0, v13}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->showToast(I)V

    .line 2131
    const/4 v13, 0x0

    .line 2137
    .end local v0    # "availableBlocks":J
    .end local v2    # "availableSpace":J
    .end local v4    # "blockSize":J
    .end local v8    # "stat":Landroid/os/StatFs;
    .end local v9    # "totalBlocks":J
    .end local v11    # "totalSpace":J
    :goto_0
    return v13

    .line 2107
    :catch_0
    move-exception v6

    .line 2110
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const/4 v13, 0x0

    goto :goto_0

    .line 2133
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "availableBlocks":J
    .restart local v2    # "availableSpace":J
    .restart local v4    # "blockSize":J
    .restart local v8    # "stat":Landroid/os/StatFs;
    .restart local v9    # "totalBlocks":J
    .restart local v11    # "totalSpace":J
    :cond_0
    const/4 v13, 0x1

    goto :goto_0

    .line 2137
    .end local v0    # "availableBlocks":J
    .end local v2    # "availableSpace":J
    .end local v4    # "blockSize":J
    .end local v8    # "stat":Landroid/os/StatFs;
    .end local v9    # "totalBlocks":J
    .end local v11    # "totalSpace":J
    :cond_1
    const/4 v13, 0x0

    goto :goto_0
.end method

.method private isLockScreenShowing()Z
    .locals 3

    .prologue
    .line 2525
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_0

    .line 2527
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2532
    :goto_0
    return v1

    .line 2528
    :catch_0
    move-exception v0

    .line 2529
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SPenGesture"

    const-string v2, "Failed check isLockScreenShowing : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2532
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPossibleCapture()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 913
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v2, :cond_0

    .line 914
    const-string v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 917
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v2, :cond_1

    .line 919
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->isScreenCaptureEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 926
    :cond_1
    :goto_0
    return v1

    .line 920
    :catch_0
    move-exception v0

    .line 921
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SPenGesture"

    const-string v3, "StatusBarService RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private isSecureUnlockEnabled()Z
    .locals 3

    .prologue
    .line 2514
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v1, :cond_0

    .line 2516
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2521
    :goto_0
    return v1

    .line 2517
    :catch_0
    move-exception v0

    .line 2518
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SPenGesture"

    const-string v2, "Failed check isSecureUnlockEnabled : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2521
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTopActivity(Ljava/lang/String;)Z
    .locals 4
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    .line 942
    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 943
    .local v0, "topComponentName":Landroid/content/ComponentName;
    const-string v1, "SPenGesture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TopActivity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isTopActivity(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 950
    .local p1, "findList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 951
    .local v1, "topComponentName":Landroid/content/ComponentName;
    const-string v2, "SPenGesture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TopActivity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 954
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 955
    const/4 v2, 0x1

    .line 957
    :goto_1
    return v2

    .line 953
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 957
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private markMatrixForCropping(FFFFI)V
    .locals 14
    .param p1, "oldCoordsX"    # F
    .param p2, "oldCoordsY"    # F
    .param p3, "newCoordsX"    # F
    .param p4, "newCoordsY"    # F
    .param p5, "markNumber"    # I

    .prologue
    .line 1093
    const/4 v8, 0x0

    .line 1094
    .local v8, "startCoordsX":F
    const/4 v9, 0x0

    .line 1095
    .local v9, "startCoordsY":F
    const/4 v1, 0x0

    .line 1096
    .local v1, "endCoordsX":F
    const/4 v2, 0x0

    .line 1097
    .local v2, "endCoordsY":F
    const/4 v5, 0x0

    .line 1098
    .local v5, "resultCoordsX":F
    const/4 v6, 0x0

    .line 1099
    .local v6, "resultCoordsY":F
    const/4 v7, 0x0

    .line 1100
    .local v7, "slope":F
    const/4 v4, 0x0

    .line 1102
    .local v4, "interceptY":F
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    .line 1103
    :cond_0
    float-to-int v10, p1

    iput v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    .line 1104
    move/from16 v0, p2

    float-to-int v10, v0

    iput v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    .line 1110
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 1111
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move/from16 v0, p2

    invoke-virtual {v10, p1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1114
    :cond_1
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    add-float v11, p3, p1

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float v12, p4, p2

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move/from16 v0, p2

    invoke-virtual {v10, p1, v0, v11, v12}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1116
    cmpl-float v10, p1, p3

    if-nez v10, :cond_2

    cmpl-float v10, p2, p4

    if-eqz v10, :cond_11

    .line 1118
    :cond_2
    move v8, p1

    .line 1119
    move/from16 v9, p2

    .line 1120
    move/from16 v1, p3

    .line 1121
    move/from16 v2, p4

    .line 1123
    sub-float v10, v8, v1

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_5

    .line 1124
    sub-float v10, v2, v9

    sub-float v11, v1, v8

    div-float v7, v10, v11

    .line 1129
    :goto_0
    mul-float v10, v8, v7

    sub-float v4, v9, v10

    .line 1131
    cmpg-float v10, p1, p3

    if-gtz v10, :cond_c

    .line 1132
    :goto_1
    cmpg-float v10, v8, v1

    if-gtz v10, :cond_11

    .line 1133
    move v5, v8

    .line 1134
    mul-float v10, v8, v7

    add-float v6, v10, v4

    .line 1136
    float-to-int v10, v5

    float-to-int v11, v6

    move/from16 v0, p5

    invoke-direct {p0, v10, v11, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->checkClosedCurve(III)V

    .line 1151
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_3

    .line 1152
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    .line 1155
    :cond_3
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_6

    .line 1156
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2
    int-to-float v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v11, v11

    sub-float v11, v6, v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_6

    .line 1157
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v10, v3

    if-ltz v10, :cond_4

    float-to-int v10, v5

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_4

    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_4

    float-to-int v10, v5

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_4

    .line 1160
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v11, v3

    float-to-int v12, v5

    add-int/lit8 v12, v12, -0x1

    move/from16 v0, p5

    invoke-virtual {v10, v11, v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mark(III)V

    .line 1156
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1127
    .end local v3    # "i":I
    :cond_5
    const/4 v7, 0x0

    goto :goto_0

    .line 1164
    :cond_6
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    const/high16 v11, -0x40800000    # -1.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_8

    .line 1165
    const/4 v3, 0x1

    .restart local v3    # "i":I
    :goto_3
    int-to-float v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v11, v11

    sub-float/2addr v11, v6

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_8

    .line 1166
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v10, v3

    if-ltz v10, :cond_7

    float-to-int v10, v5

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_7

    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_7

    float-to-int v10, v5

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_7

    .line 1169
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v11, v3

    float-to-int v12, v5

    add-int/lit8 v12, v12, -0x1

    move/from16 v0, p5

    invoke-virtual {v10, v11, v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mark(III)V

    .line 1165
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1174
    .end local v3    # "i":I
    :cond_8
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    .line 1175
    float-to-int v10, v6

    if-ltz v10, :cond_9

    float-to-int v10, v5

    if-ltz v10, :cond_9

    float-to-int v10, v6

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_9

    float-to-int v10, v5

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_9

    .line 1178
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    float-to-int v11, v6

    float-to-int v12, v5

    move/from16 v0, p5

    invoke-virtual {v10, v11, v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mark(III)V

    .line 1132
    :cond_9
    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v8, v10

    goto/16 :goto_1

    .line 1225
    :cond_a
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    .line 1226
    float-to-int v10, v6

    if-ltz v10, :cond_b

    float-to-int v10, v5

    if-ltz v10, :cond_b

    float-to-int v10, v6

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_b

    float-to-int v10, v5

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_b

    .line 1229
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    float-to-int v11, v6

    float-to-int v12, v5

    move/from16 v0, p5

    invoke-virtual {v10, v11, v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mark(III)V

    .line 1183
    :cond_b
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v8, v10

    :cond_c
    cmpl-float v10, v8, v1

    if-ltz v10, :cond_11

    .line 1184
    move v5, v8

    .line 1185
    mul-float v10, v8, v7

    add-float v6, v10, v4

    .line 1187
    float-to-int v10, v5

    float-to-int v11, v6

    move/from16 v0, p5

    invoke-direct {p0, v10, v11, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->checkClosedCurve(III)V

    .line 1202
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_d

    .line 1203
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    .line 1206
    :cond_d
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_f

    .line 1207
    const/4 v3, 0x1

    .restart local v3    # "i":I
    :goto_4
    int-to-float v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v11, v11

    sub-float v11, v6, v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_f

    .line 1208
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v10, v3

    if-ltz v10, :cond_e

    float-to-int v10, v5

    add-int/lit8 v10, v10, 0x1

    if-ltz v10, :cond_e

    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_e

    float-to-int v10, v5

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_e

    .line 1211
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v11, v3

    float-to-int v12, v5

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, p5

    invoke-virtual {v10, v11, v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mark(III)V

    .line 1207
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1215
    .end local v3    # "i":I
    :cond_f
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    const/high16 v11, -0x40800000    # -1.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_a

    .line 1216
    const/4 v3, 0x1

    .restart local v3    # "i":I
    :goto_5
    int-to-float v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v11, v11

    sub-float/2addr v11, v6

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_a

    .line 1217
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v10, v3

    if-ltz v10, :cond_10

    float-to-int v10, v5

    add-int/lit8 v10, v10, 0x1

    if-ltz v10, :cond_10

    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_10

    float-to-int v10, v5

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_10

    .line 1220
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v11, v3

    float-to-int v12, v5

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, p5

    invoke-virtual {v10, v11, v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mark(III)V

    .line 1216
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1234
    .end local v3    # "i":I
    :cond_11
    return-void
.end method

.method private sendKeyDownUpSync(II)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "source"    # I

    .prologue
    .line 1012
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1013
    .local v0, "eventDown":Landroid/view/KeyEvent;
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent;->setSource(I)V

    .line 1014
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 1016
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1017
    .local v1, "eventUp":Landroid/view/KeyEvent;
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent;->setSource(I)V

    .line 1018
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 1019
    return-void
.end method

.method private setAboutStartingSuggestionService()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 2485
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    if-ne v4, v6, :cond_0

    .line 2486
    iget-object v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2492
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    .line 2495
    .local v1, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2496
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 2498
    .local v3, "runningServiceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.app.SuggestionService.SuggestionAppService"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2500
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    .line 2508
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v3    # "runningServiceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_0
    return-void

    .line 2504
    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    .restart local v1    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .restart local v2    # "iterator":Ljava/util/Iterator;
    .restart local v3    # "runningServiceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    goto :goto_0
.end method

.method private setDisplayDegrees()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2437
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 2438
    .local v3, "point":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 2439
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v2, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2441
    iget v4, v3, Landroid/graphics/Point;->x:I

    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    .line 2442
    iget v4, v3, Landroid/graphics/Point;->y:I

    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    .line 2444
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2445
    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    iget v7, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-le v4, v7, :cond_2

    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    :goto_0
    div-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mVerticalMovingSlop:I

    .line 2450
    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->getDegreesForRotation(I)F

    move-result v1

    .line 2452
    .local v1, "degress":F
    const-string v4, "SPenGesture"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCurrentDisplayWidth: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mCurrentDisplayHeight: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Rot: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", deg: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    const/4 v0, 0x0

    .line 2456
    .local v0, "changed":Z
    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_0

    const/high16 v4, 0x43340000    # 180.0f

    cmpl-float v4, v1, v4

    if-nez v4, :cond_5

    .line 2458
    :cond_0
    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    if-ne v4, v5, :cond_4

    .line 2459
    iput v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    .line 2460
    const/4 v0, 0x1

    .line 2475
    :goto_2
    if-eqz v0, :cond_1

    .line 2476
    iget-object v7, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v4, :cond_7

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->setPortrait(Z)V

    .line 2479
    :cond_1
    return v0

    .line 2445
    .end local v0    # "changed":Z
    .end local v1    # "degress":F
    :cond_2
    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    goto :goto_0

    .line 2447
    :cond_3
    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    div-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mVerticalMovingSlop:I

    goto :goto_1

    .line 2462
    .restart local v0    # "changed":Z
    .restart local v1    # "degress":F
    :cond_4
    iput v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    goto :goto_2

    .line 2467
    :cond_5
    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v4, :cond_6

    .line 2468
    iput v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    .line 2469
    const/4 v0, 0x1

    goto :goto_2

    .line 2471
    :cond_6
    iput v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    goto :goto_2

    :cond_7
    move v4, v6

    .line 2476
    goto :goto_3
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 2144
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2145
    return-void
.end method

.method private startAniForLoadingService()V
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    .line 1876
    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1878
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1879
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080448

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    .line 1880
    .local v11, "tempDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1881
    .local v10, "tempBitmap":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v9, v6, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1882
    .local v9, "rectForAnimation":Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1883
    .local v7, "bitmapForAnimation":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1884
    .local v8, "canvasForAnimation":Landroid/graphics/Canvas;
    const/4 v1, 0x0

    invoke-virtual {v8, v10, v9, v9, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1886
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1887
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1889
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFinishSaveImg:Z

    .line 1891
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 1892
    .local v0, "ani":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1893
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1894
    new-instance v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1913
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1914
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenVibrator:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;->playVibrator()V

    .line 1915
    return-void
.end method

.method private startEffectForGesture(IZ)V
    .locals 8
    .param p1, "key"    # I
    .param p2, "isDownGesture"    # Z

    .prologue
    const-wide/16 v6, 0xc8

    const/high16 v5, 0x41100000    # 9.0f

    const/4 v4, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 2539
    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isLockScreenShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2677
    :cond_0
    :goto_0
    return-void

    .line 2543
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    if-eqz v0, :cond_2

    .line 2544
    const-string v0, "SPenGesture"

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

    .line 2548
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    .line 2550
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2551
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2552
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 2553
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 2554
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2556
    if-eqz p2, :cond_3

    .line 2557
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2558
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x42040000    # 33.0f

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 2560
    packed-switch p1, :pswitch_data_0

    .line 2575
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2576
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$11;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$11;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;ZI)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2669
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2671
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2672
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadBlockTaskList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isTopActivity(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2673
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePad:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2562
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setX(F)V

    goto :goto_1

    .line 2565
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto :goto_1

    .line 2571
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2572
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 2573
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    goto/16 :goto_1

    .line 2675
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePad:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 2560
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addSPenEvent(Landroid/view/MotionEvent;ZZ)V
    .locals 26
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "isKeyguardOn"    # Z
    .param p3, "isLiveGlanceView"    # Z

    .prologue
    .line 1338
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsKeyguardOn:Z

    .line 1339
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsKeyguardOn:Z

    if-nez v2, :cond_2d

    .line 1340
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mBrType:I

    .line 1341
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveGlanceView:Z

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 1345
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 1346
    .local v8, "action":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 1348
    .local v21, "totalPointerSize":I
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1a

    const/16 v2, 0x9

    if-eq v8, v2, :cond_1a

    const/4 v2, 0x7

    if-eq v8, v2, :cond_1a

    const/16 v2, 0xa

    if-eq v8, v2, :cond_1a

    .line 1351
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 1352
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1353
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    .line 1354
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    .line 1355
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidate()V

    .line 1356
    monitor-exit v25

    .line 1871
    .end local v8    # "action":I
    .end local v21    # "totalPointerSize":I
    :cond_0
    :goto_0
    return-void

    .line 1359
    .restart local v8    # "action":I
    .restart local v21    # "totalPointerSize":I
    :cond_1
    if-eqz v8, :cond_2

    and-int/lit16 v2, v8, 0xff

    const/4 v3, 0x5

    if-ne v2, v3, :cond_b

    .line 1364
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->updateRotation()V

    .line 1365
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->setAboutStartingSuggestionService()V

    .line 1367
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    if-eqz v2, :cond_3

    .line 1369
    monitor-exit v25

    goto :goto_0

    .line 1832
    .end local v8    # "action":I
    .end local v21    # "totalPointerSize":I
    :catchall_0
    move-exception v2

    monitor-exit v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1372
    .restart local v8    # "action":I
    .restart local v21    # "totalPointerSize":I
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveCropThread:Z

    if-eqz v2, :cond_4

    .line 1373
    const-string v2, "SPenGesture"

    const-string v3, "CropThread is live!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1375
    monitor-exit v25

    goto :goto_0

    .line 1378
    :cond_4
    const v2, 0xff00

    and-int/2addr v2, v8

    shr-int/lit8 v15, v2, 0x8

    .line 1380
    .local v15, "index":I
    if-nez v8, :cond_6

    .line 1381
    const/16 v18, 0x0

    .local v18, "p":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 1382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .line 1383
    .local v19, "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->clearTrace()V

    .line 1384
    const/4 v2, 0x0

    move-object/from16 v0, v19

    # setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCurDown:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$2802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;Z)Z

    .line 1381
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 1386
    .end local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurDown:Z

    .line 1387
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurNumPointers:I

    .line 1388
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxNumPointers:I

    .line 1392
    .end local v18    # "p":I
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurNumPointers:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurNumPointers:I

    .line 1393
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxNumPointers:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurNumPointers:I

    if-ge v2, v3, :cond_7

    .line 1394
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurNumPointers:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxNumPointers:I

    .line 1397
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 1398
    .local v14, "id":I
    :goto_2
    move/from16 v0, v21

    if-gt v0, v14, :cond_8

    .line 1399
    new-instance v19, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;-><init>()V

    .line 1400
    .restart local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1401
    add-int/lit8 v21, v21, 0x1

    .line 1402
    goto :goto_2

    .line 1404
    .end local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mActivePointerId:I

    if-ltz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mActivePointerId:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCurDown:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$2800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1406
    :cond_9
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mActivePointerId:I

    .line 1409
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .line 1410
    .restart local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    const/4 v2, 0x1

    move-object/from16 v0, v19

    # setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCurDown:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$2802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;Z)Z

    .line 1411
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLastPointer:Z

    .line 1415
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mBrType:I

    .line 1419
    .end local v14    # "id":I
    .end local v15    # "index":I
    .end local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    if-eqz v2, :cond_c

    .line 1421
    monitor-exit v25

    goto/16 :goto_0

    .line 1424
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveCropThread:Z

    if-eqz v2, :cond_d

    .line 1425
    const-string v2, "SPenGesture"

    const-string v3, "CropThread is live!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1427
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    .line 1428
    monitor-exit v25

    goto/16 :goto_0

    .line 1431
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    .line 1436
    .local v10, "eventPointerCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v12

    .line 1438
    .local v12, "histroySize":I
    const/4 v11, 0x0

    .local v11, "historyPos":I
    :goto_3
    if-ge v11, v12, :cond_14

    .line 1439
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    if-ge v13, v10, :cond_13

    .line 1440
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 1441
    .restart local v14    # "id":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurDown:Z

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    move-object/from16 v19, v2

    .line 1442
    .restart local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :goto_5
    if-eqz v19, :cond_12

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$2900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    .line 1443
    .local v9, "coords":Landroid/view/MotionEvent$PointerCoords;
    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v11, v9}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 1445
    if-eqz v19, :cond_10

    .line 1446
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v3, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->addTrace(FF)V

    .line 1447
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_f

    .line 1448
    :cond_e
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    .line 1449
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    .line 1450
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    .line 1451
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    .line 1452
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    .line 1453
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    .line 1454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1459
    :cond_f
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    .line 1460
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    .line 1439
    :cond_10
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 1441
    .end local v9    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .end local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_11
    const/16 v19, 0x0

    goto :goto_5

    .line 1442
    .restart local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_12
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    goto :goto_6

    .line 1438
    .end local v14    # "id":I
    .end local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_13
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 1464
    .end local v13    # "i":I
    :cond_14
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_7
    if-ge v13, v10, :cond_1a

    .line 1465
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 1466
    .restart local v14    # "id":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurDown:Z

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    move-object/from16 v19, v2

    .line 1467
    .restart local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :goto_8
    if-eqz v19, :cond_19

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$2900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    .line 1468
    .restart local v9    # "coords":Landroid/view/MotionEvent$PointerCoords;
    :goto_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v9}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1470
    if-eqz v19, :cond_17

    .line 1471
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v3, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->addTrace(FF)V

    .line 1472
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_16

    .line 1473
    :cond_15
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    .line 1474
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    .line 1475
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    .line 1476
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    .line 1477
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    .line 1478
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    .line 1479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1483
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    iget v6, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    iget v7, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1485
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    .line 1486
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    .line 1487
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    move-object/from16 v0, v19

    # setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mToolType:I
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;I)I

    .line 1464
    :cond_17
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_7

    .line 1466
    .end local v9    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .end local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_18
    const/16 v19, 0x0

    goto/16 :goto_8

    .line 1467
    .restart local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_19
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    goto/16 :goto_9

    .line 1492
    .end local v10    # "eventPointerCount":I
    .end local v11    # "historyPos":I
    .end local v12    # "histroySize":I
    .end local v13    # "i":I
    .end local v14    # "id":I
    .end local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    if-eqz v2, :cond_1b

    .line 1495
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1496
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    .line 1497
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    .line 1501
    :cond_1b
    const/4 v2, 0x1

    if-eq v8, v2, :cond_1c

    and-int/lit16 v2, v8, 0xff

    const/4 v3, 0x6

    if-ne v2, v3, :cond_24

    .line 1504
    :cond_1c
    const-string v2, "SPenGesture"

    const-string v3, "addSPenEvent : release"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 1508
    .local v20, "totalPointerCount":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveScreencapture:Z

    if-nez v2, :cond_2a

    .line 1509
    const/16 v18, 0x0

    .restart local v18    # "p":I
    :goto_a
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_1f

    .line 1510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .line 1511
    .restart local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)I

    move-result v22

    .line 1512
    .local v22, "traceCount":I
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_b
    move/from16 v0, v22

    if-ge v13, v0, :cond_1e

    .line 1513
    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceX:[F
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F

    move-result-object v2

    aget v23, v2, v13

    .line 1514
    .local v23, "x":F
    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceY:[F
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F

    move-result-object v2

    aget v24, v2, v13

    .line 1516
    .local v24, "y":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mExistOldCoords:Z

    if-nez v2, :cond_1d

    .line 1517
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsX:F

    .line 1518
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsY:F

    .line 1519
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mExistOldCoords:Z

    .line 1512
    :goto_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 1522
    :cond_1d
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsX:F

    .line 1523
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsY:F

    .line 1524
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsY:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumberOfAddTrace:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->markMatrixForCropping(FFFFI)V

    .line 1525
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumberOfAddTrace:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumberOfAddTrace:I

    .line 1526
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsX:F

    .line 1527
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsY:F

    goto :goto_c

    .line 1509
    .end local v23    # "x":F
    .end local v24    # "y":F
    :cond_1e
    add-int/lit8 v18, v18, 0x1

    goto :goto_a

    .line 1532
    .end local v13    # "i":I
    .end local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    .end local v22    # "traceCount":I
    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_29

    .line 1534
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->makePathForClosedCurve(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    .line 1542
    :cond_20
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    if-nez v2, :cond_21

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    if-nez v2, :cond_21

    .line 1544
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1545
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1546
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1547
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1548
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 1549
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    .line 1550
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    .line 1551
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    .line 1552
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    .line 1553
    const/high16 v2, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    .line 1554
    const/high16 v2, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    .line 1555
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    .line 1556
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    .line 1557
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    .line 1560
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    if-nez v2, :cond_22

    .line 1562
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->checkDirectionGesture()Z

    .line 1571
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mBrType:I

    .line 1578
    :cond_22
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isPossibleCapture()Z

    move-result v2

    if-nez v2, :cond_23

    .line 1579
    const-string v2, "com.sec.android.app.videoplayer"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isTopActivity(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 1580
    const-string v2, "SPenGesture"

    const-string v3, "crop is not possible now by app!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1582
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1583
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1584
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1585
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 1586
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    .line 1587
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    .line 1588
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    .line 1589
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    .line 1590
    const/high16 v2, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    .line 1591
    const/high16 v2, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    .line 1592
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    .line 1593
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    .line 1594
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    .line 1601
    .end local v18    # "p":I
    :cond_23
    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    .line 1604
    .end local v20    # "totalPointerCount":I
    :cond_24
    const/4 v2, 0x3

    if-ne v8, v2, :cond_25

    .line 1605
    const-string v2, "SPenGesture"

    const-string v3, "addSPenEvent : action_calcel"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    .line 1609
    :cond_25
    const/16 v2, 0xa

    if-ne v8, v2, :cond_26

    .line 1610
    const-string v2, "SPenGesture"

    const-string v3, "addSPenEvent : action is MotionEvent.ACTION_HOVER_EXIT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    .line 1614
    :cond_26
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidate()V

    .line 1616
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    if-eqz v2, :cond_27

    .line 1617
    const-string v2, "SPenGesture"

    const-string v3, "addSPenEvent : mIsClosedCurve is true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1620
    const-string v2, "SPenGesture"

    const-string v3, "duplicated!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 1622
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    .line 1623
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1624
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1625
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1626
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 1627
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    .line 1628
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    .line 1629
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    .line 1630
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    .line 1631
    const/high16 v2, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    .line 1632
    const/high16 v2, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    .line 1633
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    .line 1634
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    .line 1635
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    .line 1636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1830
    :goto_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1832
    :cond_27
    monitor-exit v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1835
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mBrType:I

    packed-switch v2, :pswitch_data_0

    .line 1855
    .end local v8    # "action":I
    .end local v21    # "totalPointerSize":I
    :goto_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    if-nez v2, :cond_0

    .line 1856
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1857
    :cond_28
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :pswitch_0
    goto/16 :goto_0

    .line 1864
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 1536
    .restart local v8    # "action":I
    .restart local v18    # "p":I
    .restart local v20    # "totalPointerCount":I
    .restart local v21    # "totalPointerSize":I
    :cond_29
    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_20

    .line 1538
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->makePathForClosedCurve(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    .line 1539
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->makePathForClosedCurve(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    goto/16 :goto_d

    .line 1598
    .end local v18    # "p":I
    :cond_2a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveScreencapture:Z

    goto/16 :goto_e

    .line 1638
    .end local v20    # "totalPointerCount":I
    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsSendingBootMsg:Z

    if-nez v2, :cond_2c

    .line 1639
    const-string v2, "SPenGesture"

    const-string v3, "media scanning is not finished yet!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    const v2, 0x104097a

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->showToast(I)V

    goto/16 :goto_f

    .line 1644
    :cond_2c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveCropThread:Z

    .line 1646
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    .line 1810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_f

    .line 1839
    :pswitch_2
    new-instance v16, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.videoplayer.VIDEOPLAYER_PAUSE"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1840
    .local v16, "intentForVideoPause":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_10

    .line 1845
    .end local v16    # "intentForVideoPause":Landroid/content/Intent;
    :pswitch_3
    new-instance v17, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.videoplayer.VIDEOPLAYER_PLAY"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1846
    .local v17, "intentForVideoPlay":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_10

    .line 1851
    .end local v8    # "action":I
    .end local v17    # "intentForVideoPlay":Landroid/content/Intent;
    .end local v21    # "totalPointerSize":I
    :cond_2d
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveGlanceView:Z

    .line 1852
    const-string v2, "SPenGesture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSPenEvent : isKeyguardOn is true,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveGlanceView:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1835
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1857
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isShowingGestureEffect()Z
    .locals 1

    .prologue
    .line 2682
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    return v0
.end method

.method public makePathForClosedCurve(IIZ)Z
    .locals 21
    .param p1, "intersectionPointPrev"    # I
    .param p2, "intersectionPointLast"    # I
    .param p3, "isFirstCurve"    # Z

    .prologue
    .line 1920
    const/4 v4, 0x0

    .line 1921
    .local v4, "existOldCoords":Z
    const/4 v9, 0x0

    .line 1922
    .local v9, "oldCoordsX":F
    const/4 v10, 0x0

    .line 1923
    .local v10, "oldCoordsY":F
    const/4 v6, 0x0

    .line 1924
    .local v6, "newCoordsX":F
    const/4 v7, 0x0

    .line 1925
    .local v7, "newCoordsY":F
    const/4 v8, 0x0

    .line 1930
    .local v8, "numberOfAddTrace":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1932
    .local v13, "totalPointerCount":I
    const/4 v11, 0x0

    .local v11, "p":I
    :goto_0
    if-ge v11, v13, :cond_5

    .line 1933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .line 1934
    .local v12, "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I
    invoke-static {v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)I

    move-result v14

    .line 1935
    .local v14, "traceCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v14, :cond_4

    .line 1936
    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceX:[F
    invoke-static {v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F

    move-result-object v17

    aget v15, v17, v5

    .line 1937
    .local v15, "x":F
    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceY:[F
    invoke-static {v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F

    move-result-object v17

    aget v16, v17, v5

    .line 1939
    .local v16, "y":F
    move/from16 v0, p1

    if-gt v0, v8, :cond_0

    add-int/lit8 v17, p2, 0x1

    move/from16 v0, v17

    if-lt v0, v8, :cond_0

    .line 1940
    if-nez v4, :cond_2

    .line 1941
    move v9, v15

    .line 1942
    move/from16 v10, v16

    .line 1943
    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 1944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Path;->reset()V

    .line 1945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1946
    float-to-int v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    .line 1947
    float-to-int v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    .line 1955
    :goto_2
    const/4 v4, 0x1

    .line 1973
    :cond_0
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 1935
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1950
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Path;->reset()V

    .line 1951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1952
    float-to-int v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    .line 1953
    float-to-int v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    goto :goto_2

    .line 1958
    :cond_2
    move v6, v15

    .line 1959
    move/from16 v7, v16

    .line 1960
    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 1961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    add-float v18, v6, v9

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v19, v7, v10

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1969
    :goto_4
    move v9, v15

    .line 1970
    move/from16 v10, v16

    goto :goto_3

    .line 1964
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    add-float v18, v6, v9

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v19, v7, v10

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_4

    .line 1932
    .end local v15    # "x":F
    .end local v16    # "y":F
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 1977
    .end local v5    # "i":I
    .end local v12    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    .end local v14    # "traceCount":I
    :cond_5
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 1978
    .local v3, "boundsOfPath":Landroid/graphics/RectF;
    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 1979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1986
    :goto_5
    iget v0, v3, Landroid/graphics/RectF;->right:F

    move/from16 v17, v0

    iget v0, v3, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    const/high16 v18, 0x42200000    # 40.0f

    cmpg-float v17, v17, v18

    if-gez v17, :cond_7

    iget v0, v3, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    const/high16 v18, 0x42200000    # 40.0f

    cmpg-float v17, v17, v18

    if-gez v17, :cond_7

    .line 1988
    const/16 v17, 0x0

    .line 1991
    :goto_6
    return v17

    .line 1982
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    goto :goto_5

    .line 1991
    :cond_7
    const/16 v17, 0x1

    goto :goto_6
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, -0x2

    .line 964
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080445

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 965
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080446

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080444

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 967
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080447

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108044a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 969
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080449

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 971
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    .line 972
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 973
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 974
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 976
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    .line 977
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 978
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 979
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 980
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 981
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    .line 1077
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    .line 1078
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    iget v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    const/high16 v2, 0x41000000    # 8.0f

    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1085
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_1

    .line 1086
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    iget v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    const/high16 v2, 0x40800000    # 4.0f

    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1088
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1026
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1027
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mHeaderBottom:I

    .line 1028
    return-void
.end method

.method public resetVariable(I)V
    .locals 7
    .param p1, "totalPointerSize"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x0

    .line 1999
    const/4 v0, 0x0

    .local v0, "p":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 2000
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .line 2001
    .local v1, "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->clearTrace()V

    .line 2002
    # setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCurDown:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$2802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;Z)Z

    .line 1999
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2005
    .end local v1    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurDown:Z

    .line 2006
    iput v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurNumPointers:I

    .line 2007
    iput v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxNumPointers:I

    .line 2008
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mExistOldCoords:Z

    .line 2009
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLastPointer:Z

    .line 2010
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsFirstPointer:Z

    .line 2011
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEnableCheckClosedCurve:Z

    .line 2012
    iput v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsX:F

    .line 2013
    iput v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsY:F

    .line 2014
    iput v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsX:F

    .line 2015
    iput v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsY:F

    .line 2017
    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    .line 2018
    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    .line 2019
    iput v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumberOfAddTrace:I

    .line 2020
    iput v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    .line 2021
    iput v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    .line 2022
    iput v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    .line 2024
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 2026
    iget v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    .line 2028
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->reset()V

    .line 2031
    :cond_1
    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    .line 2032
    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    .line 2033
    return-void
.end method

.method public setDoubleTapStateBySettingMenu(Z)V
    .locals 0
    .param p1, "isEnable"    # Z

    .prologue
    .line 843
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsEnableDoubleTapOnLockscreen:Z

    .line 844
    return-void
.end method

.method public setFocusedWindow(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .param p1, "newFocus"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 776
    const-string v0, "SPenGesture"

    const-string v1, "SpenGestureView: setFocusedWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 778
    return-void
.end method

.method public setHapticEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 477
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsEnabledHapticFeedback:Z

    .line 478
    return-void
.end method

.method public setPhoneWindowMangerFlag(Z)V
    .locals 1
    .param p1, "isInvisible"    # Z

    .prologue
    .line 2688
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    if-nez v0, :cond_0

    .line 2689
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    .line 2691
    :cond_0
    return-void
.end method

.method public updateRotation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2414
    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->setDisplayDegrees()Z

    move-result v1

    .line 2416
    .local v1, "result":Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .line 2417
    .local v0, "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)I

    move-result v2

    if-le v2, v4, :cond_1

    .line 2418
    if-ne v1, v4, :cond_0

    .line 2419
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    .line 2431
    :goto_0
    return-void

    .line 2423
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    goto :goto_0

    .line 2428
    :cond_1
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    goto :goto_0
.end method
