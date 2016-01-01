.class public final Landroid/webkitsec/WebViewClassic;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/webkitsec/WebViewProvider$ScrollDelegate;
.implements Landroid/webkitsec/WebViewProvider$ViewDelegate;
.implements Landroid/webkitsec/WebViewProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/WebViewClassic$NoAction;,
        Landroid/webkitsec/WebViewClassic$StylusEventListener;,
        Landroid/webkitsec/WebViewClassic$PictureWrapperView;,
        Landroid/webkitsec/WebViewClassic$InvokeListBox;,
        Landroid/webkitsec/WebViewClassic$PageSwapDelegate;,
        Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;,
        Landroid/webkitsec/WebViewClassic$PrivateHandler;,
        Landroid/webkitsec/WebViewClassic$HoverScrollHandler;,
        Landroid/webkitsec/WebViewClassic$RequestFormData;,
        Landroid/webkitsec/WebViewClassic$DateTimePicker;,
        Landroid/webkitsec/WebViewClassic$ColorPickerAdapter;,
        Landroid/webkitsec/WebViewClassic$ColorPickerDialog;,
        Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;,
        Landroid/webkitsec/WebViewClassic$ViewSizeData;,
        Landroid/webkitsec/WebViewClassic$SaveWebArchiveMessage;,
        Landroid/webkitsec/WebViewClassic$DestroyNativeRunnable;,
        Landroid/webkitsec/WebViewClassic$TitleBarDelegate;,
        Landroid/webkitsec/WebViewClassic$PackageListener;,
        Landroid/webkitsec/WebViewClassic$ProxyReceiver;,
        Landroid/webkitsec/WebViewClassic$TrustStorageListener;,
        Landroid/webkitsec/WebViewClassic$Factory;,
        Landroid/webkitsec/WebViewClassic$CmdVal;,
        Landroid/webkitsec/WebViewClassic$FocusNodeHref;,
        Landroid/webkitsec/WebViewClassic$OnTrimMemoryListener;,
        Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;,
        Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl;,
        Landroid/webkitsec/WebViewClassic$PastePopupWindow;,
        Landroid/webkitsec/WebViewClassic$WebViewInputConnection;
    }
.end annotation


# static fields
.field public static final ACTION_SEC_TRANSLATE:Ljava/lang/String; = "com.sec.android.app.translator.TRANSLATE"

.field public static final ACTION_SEC_TRANSLATE_GET_SUPPORTED_LANGUAGES:Ljava/lang/String; = "com.sec.android.app.translator.GET_SUPPORTED_LANGUAGES"

.field public static final ACTION_SEC_TRANSLATE_NON_ACTIVITY:Ljava/lang/String; = "com.sec.android.app.translator.TRANSLATE_FOR_NON_ACTIVITY"

.field public static final ACTION_SEC_TRANSLATE_RESULT:Ljava/lang/String; = "com.sec.android.app.translator.TRANSLATE_RESULT"

.field private static final APN_CMWAP:Ljava/lang/String; = "cmwap"

.field static final AUTOFILL_COMPLETE:I = 0x85

.field static final AUTOFILL_FORM:I = 0x90

.field private static final AUTO_REDRAW_HACK:Z = false

.field public static final AXT9IME_PRIVATE_CMD_MOVE_FOCUS_NEXT:Ljava/lang/String; = "com.sec.android.inputmethod.axt9.MoveFocusNext"

.field public static final AXT9IME_PRIVATE_CMD_MOVE_FOCUS_PREV:Ljava/lang/String; = "com.sec.android.inputmethod.axt9.MoveFocusPrev"

.field public static final AXT9IME_PRIVATE_CMD_MOVE_FOCUS_PREV_NEXT:Ljava/lang/String; = "com.sec.android.inputmethod.axt9.BrowserPrevNext"

.field private static final CARET_HANDLE_STAMINA_MS:J = 0xbb8L

.field static final CENTER_FIT_RECT:I = 0x7f

.field static final CLEAR_CARET_HANDLE:I = 0x8c

.field static final CLEAR_TEXT_ENTRY:I = 0x6f

.field private static final CMCC:Ljava/lang/String; = "CMCC"

.field private static final COLOR_GRID_COL_WIDTH:I = 0x32

.field static final COPY_TO_CLIPBOARD:I = 0x89

.field private static final CRICKET:Ljava/lang/String; = "Cricket"

.field static final DATE_DIALOG_ID:I = 0x0

.field static final DATE_TIME_DIALOG_ID:I = 0x2

.field private static final DEBUG_TOUCH_HIGHLIGHT:Z = true

.field private static final DEFAULT_SELECT_AUTOSCROLL_VAL:I = 0x28

.field static DEFAULT_VIEWPORT_WIDTH:I = 0x0

.field protected static final DELAY_BEFORE_HANDLE_FADES_OUT:I = 0x1770

.field static final DISPLAY_ACTION_BAR:I = 0xa1

.field static final DISPLAY_KEYBOARD_WITH_DELAY:I = 0xb6

.field private static final DRAG_HELD_MOTIONLESS:I = 0x8

.field private static final DRAG_LAYER_FINGER_DISTANCE:I = 0x4e20

.field private static final DRAW_EXTRAS_CURSOR_RING:I = 0x2

.field private static final DRAW_EXTRAS_NONE:I = 0x0

.field private static final DRAW_EXTRAS_SELECTION:I = 0x1

.field private static final EDIT_RECT_BUFFER:I = 0xa

.field static final EDIT_TEXT_SIZE_CHANGED:I = 0x92

.field private static final ENABLE_LOCAL_PROXY_FOR:Ljava/lang/String;

.field private static ENABLE_SCROLL_PERFORMANCE_PATCH:Z = false

.field private static ENABLE_ZOOM_PERFORMANCE_PATCH:Z = false

.field static final ENTER_FULLSCREEN_VIDEO:I = 0x96

.field static final EXIT_FULLSCREEN_VIDEO:I = 0x88

.field public static final EXTRA_NAME_CALLER:Ljava/lang/String; = "caller"

.field public static final EXTRA_NAME_HTML_SOURCE_TEXT:Ljava/lang/String; = "html_source_text"

.field public static final EXTRA_NAME_MODE:Ljava/lang/String; = "mode"

.field public static final EXTRA_NAME_RESULT_CODE:Ljava/lang/String; = "result_code"

.field public static final EXTRA_NAME_SOURCE_LANGUAGE:Ljava/lang/String; = "source_language"

.field public static final EXTRA_NAME_SOURCE_TEXT:Ljava/lang/String; = "source_text"

.field public static final EXTRA_NAME_SUPPORTED_LANGUAGES:Ljava/lang/String; = "supported_languages"

.field public static final EXTRA_NAME_TARGET_LANGUAGE:Ljava/lang/String; = "target_language"

.field public static final EXTRA_NAME_TARGET_TEXT:Ljava/lang/String; = "target_text"

.field public static final EXTRA_NAME_USE_BROADCAST_RECEIVER:Ljava/lang/String; = "use_broadcast_receiver"

.field public static final EXTRA_VALUE_INPUT_MODE:Ljava/lang/String; = "input"

.field public static final EXTRA_VALUE_VIEWER_MODE:Ljava/lang/String; = "viewer"

.field private static final FIRST_PACKAGE_MSG_ID:I = 0x65

.field private static final FIRST_PRIVATE_MSG_ID:I = 0x1

.field static final FOCUS_NODE_CHANGED:I = 0x8f

.field static final HANDLE_ID_BASE:I = 0x0

.field static final HANDLE_ID_EXTENT:I = 0x1

.field static final HIDE_ACTION_POPUP:I = 0xba

.field static final HIDE_FULLSCREEN:I = 0x79

.field static final HIGHLIGHT_COLOR:I = 0x6633b5e5

.field static final HIT_TEST_RESULT:I = 0x82

.field private static final HOVERSCROLL_DOWN:I = 0x2

.field private static final HOVERSCROLL_LEFT:I = 0x3

.field static final HOVERSCROLL_MOVE:I = 0x1

.field private static final HOVERSCROLL_RIGHT:I = 0x4

.field private static final HOVERSCROLL_UP:I = 0x1

.field static final HandlerPackageDebugString:[Ljava/lang/String;

.field static final HandlerPrivateDebugString:[Ljava/lang/String;

.field static final INIT_EDIT_FIELD:I = 0x8a

.field static final INIT_SELECT_FIELD:I = 0xaa

.field static final INVAL_RECT_MSG_ID:I = 0x75

.field static final KEY_PRESS:I = 0x8d

.field private static final LAST_PACKAGE_MSG_ID:I = 0x82

.field private static final LAST_PRIVATE_MSG_ID:I = 0xb

.field static final LOGTAG:Ljava/lang/String; = "webview"

.field static final LONG_PRESS_CENTER:I = 0x72

.field private static final LONG_PRESS_TIMEOUT:I = 0x3e8

.field static final MAGNIFIER_MOVE:I = 0xa5

.field private static final MAX_DURATION:I = 0x2ee

.field private static final METROPCS:Ljava/lang/String; = "MetroPCS"

.field private static final MINIMUM_VELOCITY_RATIO_FOR_ACCELERATION:F = 0.2f

.field private static final MIN_DISPLAY_CHANABLE_VALUE:I = 0x3

.field private static final MIN_FLING_TIME:I = 0xfa

.field private static final MOTIONLESS_FALSE:I = 0x0

.field private static final MOTIONLESS_IGNORE:I = 0x3

.field private static final MOTIONLESS_PENDING:I = 0x1

.field private static final MOTIONLESS_TIME:I = 0x64

.field private static final MOTIONLESS_TRUE:I = 0x2

.field private static final NEVER_REMEMBER_PASSWORD:I = 0x2

.field static final NEW_PICTURE_MSG_ID:I = 0x69

.field private static final NEW_SELECTION_DONE:I = 0x0

.field private static final NEW_SELECTION_REQUESTING:I = 0x1

.field private static final NEW_SELECTION_SELECTED:I = 0x2

.field static final NO_BOTTOMEDGE:I = -0x1

.field static final NO_LEFTEDGE:I = -0x1

.field static final NO_RIGHTEDGE:I = -0x1

.field static final NO_TOPEDGE:I = -0x1

.field private static ONEWAY_SCROLL_TRIGGER_BOUNDARY:I = 0x0

.field private static final PAGE_SCROLL_OVERLAP:I = 0x18

.field private static final PREVENT_DEFAULT_TIMEOUT:I = 0xa

.field static final PREVENT_TOUCH_ID:I = 0x73

.field private static final PROPERTY_BROWSER_APN:Ljava/lang/String; = "android.com.browser.apn"

.field private static final PROXY_CMRI_HOST:Ljava/lang/String; = "192.168.230.8"

.field private static final PROXY_CMWAP_HOST:Ljava/lang/String; = "10.0.0.172"

.field private static final PROXY_CMWAP_PORT:I = 0x50

.field private static final PROXY_CRICKET_HOST:Ljava/lang/String; = "wap.mycricket.com"

.field private static final PROXY_CRICKET_PORT:I = 0x1f90

.field private static final PROXY_METROPCS_HOST:Ljava/lang/String; = "proxy.metropcs.net"

.field private static final PROXY_METROPCS_PORT:I = 0xc38

.field private static final RELEASE_SINGLE_TAP:I = 0x5

.field static final RELOCATE_AUTO_COMPLETE_POPUP:I = 0x8e

.field private static final REMEMBER_PASSWORD:I = 0x1

.field static final REPLACE_TEXT:I = 0x8b

.field static final REQUEST_COLORPICKER:I = 0x9c

.field static final REQUEST_DATETIMEPICKERS:I = 0x9e

.field private static final REQUEST_FORM_DATA:I = 0x6

.field static final REQUEST_KEYBOARD:I = 0x76

.field static final SAVE_WEBARCHIVE_FINISHED:I = 0x83

.field public static final SCHEME_GEO:Ljava/lang/String; = "geo:0,0?q="

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto:"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel:"

.field static final SCREEN_ON:I = 0x86

.field static final SCREEN_ROTATION_RTE:I = 0xa0

.field private static final SCROLLBAR_ALWAYSOFF:I = 0x1

.field private static final SCROLLBAR_ALWAYSON:I = 0x2

.field private static final SCROLLBAR_AUTO:I = 0x0

.field private static final SCROLL_BITS:I = 0x6

.field static final SCROLL_EDIT_TEXT:I = 0x91

.field static final SCROLL_HANDLE_INTO_VIEW:I = 0x95

.field static final SCROLL_RECT_ON_SCREEN:I = 0xb4

.field private static final SCROLL_SELECT_TEXT:I = 0xb

.field static final SCROLL_TO_MSG_ID:I = 0x65

.field private static final SELECTION_HANDLE_ANIMATION_MS:J = 0x96L

.field private static final SELECT_AUTOSCROLL_DOWN:I = 0x4

.field private static final SELECT_AUTOSCROLL_LEFT:I = 0x1

.field private static final SELECT_AUTOSCROLL_NONE:I = 0x0

.field private static final SELECT_AUTOSCROLL_RIGHT:I = 0x3

.field private static final SELECT_AUTOSCROLL_THRESOLD_H:I = 0x1e

.field private static final SELECT_AUTOSCROLL_THRESOLD_V:I = 0x28

.field private static final SELECT_AUTOSCROLL_UP:I = 0x2

.field private static final SELECT_CURSOR_OFFSET:I = 0x10

.field private static final SELECT_POPUP_TIMEOUT:I = 0x1f4

.field private static final SELECT_SCROLL:I = 0x5

.field private static final SELECT_SCROLL_INTERVAL:J = 0x10L

.field static final SET_AUTOFILLABLE:I = 0x84

.field static final SET_SCROLLBAR_MODES:I = 0x81

.field static final SHOW_ACTION_POPUP:I = 0xb9

.field static final SHOW_CARET_HANDLE:I = 0x93

.field static final SHOW_FULLSCREEN:I = 0x78

.field static final SHOW_RECT_MSG_ID:I = 0x71

.field private static final SNAP_BOUND:I = 0x10

.field private static final SNAP_LOCK:I = 0x1

.field private static final SNAP_NONE:I = 0x0

.field private static final SNAP_X:I = 0x2

.field private static final SNAP_Y:I = 0x4

.field private static final SPEN_TEXT_SELECTION_NONE:I = 0x0

.field private static final SPEN_TEXT_SELECTION_REQUESTING:I = 0x1

.field private static final SPEN_TEXT_SELECTION_SELECTED:I = 0x2

.field static final START_TEXTSELECTION_ACTION_MODE:I = 0xa2

.field private static final STD_SPEED:I = 0x1e0

.field private static final SWITCH_TO_LONGPRESS:I = 0x4

.field private static final SWITCH_TO_SHORTPRESS:I = 0x3

.field static final TAKE_FOCUS:I = 0x6e

.field private static final TAP_TIMEOUT:I = 0x12c

.field private static final TEXT_SCROLL_FIRST_SCROLL_MS:J = 0x10L

.field private static final TEXT_SCROLL_RATE:F = 0.01f

.field public static final THEME_CHOOSER:Ljava/lang/String; = "theme"

.field public static final THEME_DEVICE_DEFAULT:I = 0x1

.field public static final THEME_DEVICE_DEFAULT_LIGHT:I = 0x2

.field public static final THEME_NONE:I = 0x0

.field static final TIME_DIALOG_ID:I = 0x1

.field private static final TOUCH_DONE_MODE:I = 0x7

.field public static final TOUCH_DONE_MODE_SPC:I = 0x7

.field private static final TOUCH_DOUBLE_TAP_MODE:I = 0x6

.field public static final TOUCH_DOUBLE_TAP_MODE_SPC:I = 0x6

.field private static final TOUCH_DRAG_LAYER_MODE:I = 0x9

.field private static final TOUCH_DRAG_MODE:I = 0x3

.field private static final TOUCH_DRAG_START_MODE:I = 0x2

.field private static final TOUCH_DRAG_TEXT_MODE:I = 0xa

.field private static final TOUCH_HIGHLIGHT_ELAPSE_TIME:I = 0x7d0

.field private static final TOUCH_INIT_MODE:I = 0x1

.field private static final TOUCH_PINCH_DRAG:I = 0x8

.field public static final TOUCH_SCROLL_MODE:I = 0xb

.field private static final TOUCH_SENT_INTERVAL:I = 0x0

.field private static final TOUCH_SHORTPRESS_MODE:I = 0x5

.field private static final TOUCH_SHORTPRESS_START_MODE:I = 0x4

.field private static final TRACKBALL_KEY_TIMEOUT:I = 0x3e8

.field private static final TRACKBALL_MOVE_COUNT:I = 0xa

.field private static final TRACKBALL_MULTIPLIER:I = 0x3

.field private static final TRACKBALL_SCALE:I = 0x190

.field private static final TRACKBALL_SCROLL_COUNT:I = 0x5

.field private static final TRACKBALL_TIMEOUT:I = 0xc8

.field private static final TRACKBALL_WAIT:I = 0x64

.field static final UPDATE_CONTENT_BOUNDS:I = 0x94

.field static final UPDATE_MATCH_COUNT:I = 0x7e

.field static final UPDATE_SELECTION_MSG_ID:I = 0x9b

.field static final UPDATE_SELECTION_MSG_ID_BT_KEYBOARD:I = 0x9d

.field static final UPDATE_TEXTFIELD_TEXT_MSG_ID:I = 0x6c

.field static final UPDATE_TEXT_SELECTION_MSG_ID:I = 0x70

.field static final UPDATE_TEXT_SELECTION_START_END:I = 0xb5

.field static final UPDATE_ZOOM_DENSITY:I = 0x87

.field static final UPDATE_ZOOM_RANGE:I = 0x6d

.field static final WEBCORE_INITIALIZED_MSG_ID:I = 0x6b

.field static final WEBCORE_NEED_TOUCH_EVENTS:I = 0x74

.field private static final ZOOM_BITS:I = 0x86

.field private static final bNeedToCheckCustomProxy:Z

.field private static bWebFindDialogEnabled:Z

.field static isRotated:Z

.field private static isSelectedCandidateEditable:Z

.field static mLogEvent:Z

.field private static mOverScrollBackground:Landroid/graphics/Paint;

.field private static mOverScrollBorder:Landroid/graphics/Paint;

.field private static mSelectActionWindow:Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;

.field public static mTouchModeSPC:I

.field private static maxComposerContentHeight:I

.field private static sChannelDistance:I

.field private static sGoogleApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sMaxViewportWidth:I

.field private static sNotificationsEnabled:Z

.field private static sPackageInstallationReceiverAdded:Z

.field private static sProxyReceiver:Landroid/webkitsec/WebViewClassic$ProxyReceiver;

.field private static sTrustStorageListener:Landroid/webkitsec/WebViewClassic$TrustStorageListener;


# instance fields
.field private DRAG_LAYER_INVERSE_DENSITY_SQUARED:F

.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED_STEP_1:I

.field private HOVERSCROLL_SPEED_STEP_2:I

.field private HOVERSCROLL_SPEED_STEP_3:I

.field private HOVERSCROLL_SPEED_STEP_4:I

.field private actionDown_X:I

.field private actionDown_Y:I

.field private bWebSelectDialogIsUp:Z

.field public composerContentHeightArray:[I

.field public currentIndex:I

.field private imageSelectRect:Landroid/graphics/Rect;

.field private mAccessibilityInjector:Landroid/webkitsec/AccessibilityInjector;

.field private mActionMove:Z

.field private mActualHeightHack:Z

.field private mAutoCompletePopup:Landroid/webkitsec/AutoCompletePopup;

.field private mAutoFillData:Landroid/webkitsec/WebViewCore$AutoFillData;

.field private mAutoRedraw:Z

.field private mAutoScrollX:I

.field private mAutoScrollY:I

.field private mAutoSelection:Z

.field protected mAverageAngle:F

.field mAverageSwapFps:D

.field private mAx:I

.field private mAy:I

.field private mBTKeyBoardOn:Z

.field private mBTWebSelectionOn:Z

.field private mBackgroundColor:I

.field private mBaseAlpha:Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;

.field private mBaseHandleAlphaAnimator:Landroid/animation/ObjectAnimator;

.field mBatchedTextChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockRequestLayout:Z

.field private mBlockShowSoftInput:Z

.field private mBlockWebkitViewMessages:Z

.field private mButtonActionOnMouse:Z

.field private mCachedOverlappingActionModeHackRotate:Z

.field private mCachedOverlappingActionModeHeight:I

.field private mCallbackProxy:Landroid/webkitsec/CallbackProxy;

.field private mCertificate:Landroid/net/http/SslCertificate;

.field private mCheckHoverScrollStart:Z

.field private mCheckLongPress:Z

.field private mConfirmMove:Z

.field private mContentHeight:I

.field private mContentSizeListener:Landroid/webkitsec/WebView$ContentSizeListener;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mController:I

.field mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

.field private mCurrentScrollingLayerId:I

.field private mCurrentTouchInterval:I

.field private mDPADCenterLongPress:Z

.field private mDatabase:Landroid/webkitsec/WebViewDatabaseClassic;

.field private mDelaySetPicture:Landroid/webkitsec/WebViewCore$DrawData;

.field private mDialogMove:Z

.field mDisableSelectionPopup:Z

.field private mDistanceX:I

.field private mDistanceY:I

.field private mDoubleTapSlopSquare:I

.field private mDrawCursorRing:Z

.field private mDrawHistory:Z

.field mEditTextContent:Landroid/graphics/Rect;

.field mEditTextContentBounds:Landroid/graphics/Rect;

.field mEditTextLayerId:I

.field mEditTextScroller:Landroid/widget/Scroller;

.field private mEnterKeyLongPress:I

.field private mExtentAlpha:Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;

.field private mExtentHandleAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mFeatureHoverUI:Z

.field private mFieldPointer:I

.field private mFindCallback:Landroid/webkitsec/FindActionModeCallback;

.field private mFindDialogOn:Z

.field private mFindIsUp:Z

.field private mFindListener:Landroid/webkitsec/WebView$FindListener;

.field private mFindRequest:Landroid/webkitsec/WebViewCore$FindAllRequest;

.field private mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

.field private mFirstScaleOccured:Z

.field private mFirstTouchX:I

.field private mFirstTouchY:I

.field private mFocusTransition:Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;

.field private mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

.field mFullScreenHolder:Landroid/webkitsec/PluginFullScreenHolder;

.field private mGlobalVisibleOffset:Landroid/graphics/Point;

.field private mGlobalVisibleRect:Landroid/graphics/Rect;

.field private mGotCenterDown:Z

.field private mHTML5VideoViewProxy:Landroid/webkitsec/HTML5VideoViewProxy;

.field private mHardwareAccelSkia:Z

.field private mHasWindowFocus:Z

.field mHeightCanMeasure:Z

.field private mHeldMotionless:I

.field private mHistoryHeight:I

.field private mHistoryPicture:Landroid/graphics/Picture;

.field private mHistoryWidth:I

.field private mHorizontalScrollBarMode:I

.field private mHoverAreaHeight:I

.field private mHoverBottomAreaHeight:I

.field private mHoverHandler:Landroid/webkitsec/WebViewClassic$HoverScrollHandler;

.field private mHoverIconStatus:I

.field private mHoverRecognitionCurrentTime:I

.field private mHoverRecognitionDurationTime:I

.field private mHoverRecognitionStartTime:I

.field private mHoverScrollDirection:I

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:I

.field private mHoverScrollTimeInterval:I

.field private mHoverTopAreaTop:I

.field mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

.field public mInActionMove:Z

.field private mInOverScrollMode:Z

.field private mInitialHitTestResult:Landroid/webkitsec/WebView$HitTestResult;

.field private mInitialScaleInPercent:I

.field mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

.field private mInputDispatcher:Landroid/webkitsec/WebViewInputDispatcher;

.field private final mInvScreenRect:Landroid/graphics/Rect;

.field mIsBatchingTextChanges:Z

.field private mIsCaretSelection:Z

.field private mIsCtrlPressed:Z

.field mIsEditingText:Z

.field private mIsFitToScreen:Z

.field private mIsNewInputField:Z

.field private mIsOnewayScrollDown:Z

.field private mIsPaused:Z

.field protected mIsPressingHandle:Z

.field private mIsScreenTouch:Z

.field public mIsSelectFieldNext:Z

.field public mIsSelectFieldPrev:Z

.field private mIsSelectionChanged:Z

.field private mIsSelectionResetCalled:Z

.field mIsSoftkeyboardVisible:Z

.field public mIsTextFieldNext:Z

.field public mIsTextFieldPrev:Z

.field private mIsWebViewVisible:Z

.field private mIsZoomScaleBegin:Z

.field private mKeyboardEnterPress:Z

.field private mKeysPressed:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mLastActualHeightSent:I

.field private mLastCursorBounds:Landroid/graphics/Rect;

.field private mLastCursorTime:J

.field private mLastEditScroll:J

.field private mLastGlobalRect:Landroid/graphics/Rect;

.field mLastHeightSent:I

.field private mLastSentTouchTime:J

.field mLastSwapTime:J

.field private mLastTouchTime:J

.field private mLastTouchUpTime:J

.field protected mLastTouchX:I

.field protected mLastTouchY:I

.field private mLastVelX:F

.field private mLastVelY:F

.field private mLastVelocity:F

.field private mLastViewSize:Landroid/graphics/Point;

.field private mLastVisibleRectSent:Landroid/graphics/Rect;

.field mLastWidthSent:I

.field private mListBoxMessage:Landroid/os/Message;

.field private mLoadedPicture:Landroid/webkitsec/WebViewCore$DrawData;

.field private mLongPress:Z

.field private mLongPressSelection:Z

.field protected mMagnifier:Landroid/webkitsec/WebMagnifier;

.field private mMapTrackballToArrowKeys:Z

.field private mMaxAutoScrollX:I

.field private mMaxAutoScrollY:I

.field private mMaximumFling:I

.field private mMaybeScrollDown:Z

.field private mMinAutoScrollX:I

.field private mMinAutoScrollY:I

.field private mMinPrefWidth:I

.field private mNativeClass:I

.field private mNavSlop:I

.field private mOnewayMode:Z

.field private mOnewayScrollTouchDownX:I

.field private mOnewayScrollTouchDownY:I

.field private mOrientation:I

.field private mOverScrollGlow:Landroid/webkitsec/OverScrollGlow;

.field private mOverflingDistance:I

.field private mOverlayHorizontalScrollbar:Z

.field private mOverlayVerticalScrollbar:Z

.field private mOverscrollDistance:I

.field private mPageZoomOnIMELaunch:Z

.field protected mPasteEvent:Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl;

.field private mPasteWindow:Landroid/webkitsec/WebViewClassic$PastePopupWindow;

.field private mPerformLongPress:Z

.field private mPictureListener:Landroid/webkitsec/WebView$PictureListener;

.field private mPictureUpdatePausedForFocusChange:Z

.field public mPinchZoomListener:Landroid/webkitsec/PinchZoomListener;

.field private mPopupLaunchHitTestType:Z

.field private mPrevTouchEventX:I

.field private mPrevTouchEventX_temp:I

.field private mPrevTouchEventY:I

.field private mPrevTouchEventY_temp:I

.field private mPreviousTouchX:I

.field private mPreviousTouchY:I

.field final mPrivateHandler:Landroid/os/Handler;

.field private mPrivateImeOptions:Ljava/lang/String;

.field private mReaderArticle:Z

.field private mReaderFlag:Z

.field private mRequestNewSelection:I

.field private mResumeMsg:Landroid/os/Message;

.field private mSavePasswordDialog:Landroid/app/AlertDialog;

.field private final mScreenRect:Landroid/graphics/Rect;

.field private final mScrollFilter:Landroid/graphics/DrawFilter;

.field private mScrollOffset:Landroid/graphics/Point;

.field mScroller:Landroid/widget/OverScroller;

.field private mScrollingLayerBounds:Landroid/graphics/Rect;

.field private mScrollingLayerRect:Landroid/graphics/Rect;

.field private mSelectAllViaBT:Z

.field private mSelectCallback:Landroid/webkitsec/SelectActionModeCallback;

.field private mSelectCallbackSec:Landroid/webkitsec/SelectActionModeCallbackSec;

.field private mSelectCallbackUser:Landroid/webkitsec/SelectActionModeCallbackSec;

.field mSelectContentBounds:Landroid/graphics/Rect;

.field private mSelectCursorBase:Landroid/graphics/Point;

.field private mSelectCursorBaseLayerId:I

.field private mSelectCursorBaseTextQuad:Landroid/webkitsec/QuadF;

.field private mSelectCursorExtent:Landroid/graphics/Point;

.field private mSelectCursorExtentLayerId:I

.field private mSelectCursorExtentTextQuad:Landroid/webkitsec/QuadF;

.field private mSelectDraggingCursor:Landroid/graphics/Point;

.field private mSelectDraggingTextQuad:Landroid/webkitsec/QuadF;

.field private mSelectFieldPointer:I

.field private mSelectFocusMoved:Z

.field private mSelectHandleBaseBounds:Landroid/graphics/Rect;

.field private mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleExtentBounds:Landroid/graphics/Rect;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field private mSelectOffset:Landroid/graphics/Point;

.field private mSelectPopupInSameInstance:Z

.field mSelectPopupRsrcBG:I

.field mSelectPopupRsrcClipboard:I

.field mSelectPopupRsrcCopy:I

.field mSelectPopupRsrcCut:I

.field mSelectPopupRsrcDict:I

.field mSelectPopupRsrcDivider:I

.field mSelectPopupRsrcFind:I

.field mSelectPopupRsrcPaste:I

.field mSelectPopupRsrcSelectAll:I

.field mSelectPopupRsrcShare:I

.field mSelectPopupRsrcTranslate:I

.field mSelectPopupRsrcWebSearch:I

.field private mSelectX:I

.field private mSelectY:I

.field private mSelectingText:Z

.field private mSelectionClearOnRotation:Z

.field private mSelectionStarted:Z

.field private mSendScrollEvent:Z

.field private mSentAutoScrollMessage:Z

.field private mShowTapHighlight:Z

.field private mShowTextSelectionExtra:Z

.field private mSmartSelection:Z

.field private mSnapPositive:Z

.field private mSnapScrollMode:I

.field private mSpenTextSelectionMode:I

.field private mStartDragTime:J

.field protected mStartTouchX:I

.field protected mStartTouchY:I

.field private mStylusEventListener:Landroid/webkitsec/WebViewClassic$StylusEventListener;

.field private final mTempContentVisibleRect:Landroid/graphics/Rect;

.field private final mTempVisibleRect:Landroid/graphics/Rect;

.field private final mTempVisibleRectOffset:Landroid/graphics/Point;

.field private mTextGeneration:I

.field private mThemeIsDeviceDefault:Z

.field private mTouchCrossHairColor:Landroid/graphics/Paint;

.field private mTouchHighlightRegion:Landroid/graphics/Region;

.field private mTouchHighlightX:I

.field private mTouchHighlightY:I

.field private mTouchHightlightPaint:Landroid/graphics/Paint;

.field private mTouchInEditText:Z

.field private mTouchMode:I

.field private mTouchSlopSquare:I

.field private mTouchSlopSquareForFinger:I

.field private mTouchSlopSquareForSPen:I

.field private mTrackballDown:Z

.field private mTrackballFirstTime:J

.field private mTrackballLastTime:J

.field private mTrackballRemainsX:F

.field private mTrackballRemainsY:F

.field private mTrackballUpTime:J

.field private mTrackballXMove:I

.field private mTrackballYMove:I

.field private mUrl:Ljava/lang/String;

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollBarMode:I

.field mViewManager:Landroid/webkitsec/ViewManager;

.field private final mVisibleContentRect:Landroid/graphics/RectF;

.field private mVisibleRect:Landroid/graphics/Rect;

.field private mWebClipboard:Landroid/webkitsec/WebClipboard;

.field private mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;

.field protected mWebSelectionControls:Landroid/webkitsec/WebTextSelectionControls;

.field private mWebSelectionOn:Z

.field private final mWebView:Landroid/webkitsec/WebView;

.field private mWebViewCore:Landroid/webkitsec/WebViewCore;

.field private final mWebViewPrivate:Landroid/webkitsec/WebView$PrivateAccess;

.field mWidthCanMeasure:Z

.field private mWrapContent:Z

.field private final mZoomFilter:Landroid/graphics/DrawFilter;

.field private mZoomManager:Landroid/webkitsec/ZoomManager;

.field public maxArrayLimit:I

.field private misspelled:Z

.field private spellingOfWord:Landroid/graphics/Point;

.field private textPoint:Landroid/graphics/Point;

.field private textSelected:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    sput-boolean v2, Landroid/webkitsec/WebViewClassic;->isSelectedCandidateEditable:Z

    sput-boolean v2, Landroid/webkitsec/WebViewClassic;->bWebFindDialogEnabled:Z

    sput-boolean v2, Landroid/webkitsec/WebViewClassic;->ENABLE_SCROLL_PERFORMANCE_PATCH:Z

    sput-boolean v2, Landroid/webkitsec/WebViewClassic;->ENABLE_ZOOM_PERFORMANCE_PATCH:Z

    const/16 v0, 0xc8

    sput v0, Landroid/webkitsec/WebViewClassic;->maxComposerContentHeight:I

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Web_EnableMultipleApn4"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/webkitsec/WebViewClassic;->ENABLE_LOCAL_PROXY_FOR:Ljava/lang/String;

    sget-object v0, Landroid/webkitsec/WebViewClassic;->ENABLE_LOCAL_PROXY_FOR:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkitsec/WebViewClassic;->ENABLE_LOCAL_PROXY_FOR:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/webkitsec/WebViewClassic;->bNeedToCheckCustomProxy:Z

    sput v5, Landroid/webkitsec/WebViewClassic;->mTouchModeSPC:I

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "REMEMBER_PASSWORD"

    aput-object v3, v0, v2

    const-string v3, "NEVER_REMEMBER_PASSWORD"

    aput-object v3, v0, v1

    const-string v3, "SWITCH_TO_SHORTPRESS"

    aput-object v3, v0, v6

    const-string v3, "SWITCH_TO_LONGPRESS"

    aput-object v3, v0, v7

    const/4 v3, 0x4

    const-string v4, "RELEASE_SINGLE_TAP"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "REQUEST_FORM_DATA"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "RESUME_WEBCORE_PRIORITY"

    aput-object v4, v0, v3

    const-string v3, "DRAG_HELD_MOTIONLESS"

    aput-object v3, v0, v5

    const/16 v3, 0x8

    const-string v4, ""

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "PREVENT_DEFAULT_TIMEOUT"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "SCROLL_SELECT_TEXT"

    aput-object v4, v0, v3

    sput-object v0, Landroid/webkitsec/WebViewClassic;->HandlerPrivateDebugString:[Ljava/lang/String;

    const/16 v0, 0x2e

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "SCROLL_TO_MSG_ID"

    aput-object v3, v0, v2

    const-string v3, "102"

    aput-object v3, v0, v1

    const-string v3, "103"

    aput-object v3, v0, v6

    const-string v3, "104"

    aput-object v3, v0, v7

    const/4 v3, 0x4

    const-string v4, "NEW_PICTURE_MSG_ID"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "UPDATE_TEXT_ENTRY_MSG_ID"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "WEBCORE_INITIALIZED_MSG_ID"

    aput-object v4, v0, v3

    const-string v3, "UPDATE_TEXTFIELD_TEXT_MSG_ID"

    aput-object v3, v0, v5

    const/16 v3, 0x8

    const-string v4, "UPDATE_ZOOM_RANGE"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "UNHANDLED_NAV_KEY"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "CLEAR_TEXT_ENTRY"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "UPDATE_TEXT_SELECTION_MSG_ID"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string v4, "SHOW_RECT_MSG_ID"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-string v4, "LONG_PRESS_CENTER"

    aput-object v4, v0, v3

    const/16 v3, 0xe

    const-string v4, "PREVENT_TOUCH_ID"

    aput-object v4, v0, v3

    const/16 v3, 0xf

    const-string v4, "WEBCORE_NEED_TOUCH_EVENTS"

    aput-object v4, v0, v3

    const/16 v3, 0x10

    const-string v4, "INVAL_RECT_MSG_ID"

    aput-object v4, v0, v3

    const/16 v3, 0x11

    const-string v4, "REQUEST_KEYBOARD"

    aput-object v4, v0, v3

    const/16 v3, 0x12

    const-string v4, "DO_MOTION_UP"

    aput-object v4, v0, v3

    const/16 v3, 0x13

    const-string v4, "SHOW_FULLSCREEN"

    aput-object v4, v0, v3

    const/16 v3, 0x14

    const-string v4, "HIDE_FULLSCREEN"

    aput-object v4, v0, v3

    const/16 v3, 0x15

    const-string v4, "DOM_FOCUS_CHANGED"

    aput-object v4, v0, v3

    const/16 v3, 0x16

    const-string v4, "REPLACE_BASE_CONTENT"

    aput-object v4, v0, v3

    const/16 v3, 0x17

    const-string v4, "RETURN_LABEL"

    aput-object v4, v0, v3

    const/16 v3, 0x18

    const-string v4, "UPDATE_MATCH_COUNT"

    aput-object v4, v0, v3

    const/16 v3, 0x19

    const-string v4, "CENTER_FIT_RECT"

    aput-object v4, v0, v3

    const/16 v3, 0x1a

    const-string v4, "REQUEST_KEYBOARD_WITH_SELECTION_MSG_ID"

    aput-object v4, v0, v3

    const/16 v3, 0x1b

    const-string v4, "SET_SCROLLBAR_MODES"

    aput-object v4, v0, v3

    const/16 v3, 0x1c

    const-string v4, "SELECTION_STRING_CHANGED"

    aput-object v4, v0, v3

    const/16 v3, 0x1d

    const-string v4, "SET_TOUCH_HIGHLIGHT_RECTS"

    aput-object v4, v0, v3

    const/16 v3, 0x1e

    const-string v4, "SAVE_WEBARCHIVE_FINISHED"

    aput-object v4, v0, v3

    const/16 v3, 0x1f

    const-string v4, "SET_AUTOFILLABLE"

    aput-object v4, v0, v3

    const/16 v3, 0x20

    const-string v4, "AUTOFILL_COMPLETE"

    aput-object v4, v0, v3

    const/16 v3, 0x21

    const-string v4, "SELECT_AT"

    aput-object v4, v0, v3

    const/16 v3, 0x22

    const-string v4, "SCREEN_ON"

    aput-object v4, v0, v3

    const/16 v3, 0x23

    const-string v4, "ENTER_FULLSCREEN_VIDEO"

    aput-object v4, v0, v3

    const/16 v3, 0x24

    const-string v4, "UPDATE_SELECTION"

    aput-object v4, v0, v3

    const/16 v3, 0x25

    const-string v4, "UPDATE_ZOOM_DENSITY"

    aput-object v4, v0, v3

    const/16 v3, 0x26

    const-string v4, "REQUEST_COLORPICKER"

    aput-object v4, v0, v3

    const/16 v3, 0x27

    const-string v4, "REQUEST_DATETIMEPICKERS"

    aput-object v4, v0, v3

    const/16 v3, 0x28

    const-string v4, "MAGNIFIER_MOVE"

    aput-object v4, v0, v3

    const/16 v3, 0x29

    const-string v4, "SCREEN_ROTATION_RTE"

    aput-object v4, v0, v3

    const/16 v3, 0x2a

    const-string v4, "DISPLAY_ACTION_BAR"

    aput-object v4, v0, v3

    const/16 v3, 0x2b

    const-string v4, "INIT_SELECT_FIELD"

    aput-object v4, v0, v3

    const/16 v3, 0x2c

    const-string v4, "SHOW_ACTION_POPUP"

    aput-object v4, v0, v3

    const/16 v3, 0x2d

    const-string v4, "HIDE_ACTION_POPUP"

    aput-object v4, v0, v3

    sput-object v0, Landroid/webkitsec/WebViewClassic;->HandlerPackageDebugString:[Ljava/lang/String;

    const/16 v0, 0x3d4

    sput v0, Landroid/webkitsec/WebViewClassic;->DEFAULT_VIEWPORT_WIDTH:I

    sget v0, Landroid/webkitsec/WebViewClassic;->DEFAULT_VIEWPORT_WIDTH:I

    sput v0, Landroid/webkitsec/WebViewClassic;->sMaxViewportWidth:I

    sput-boolean v1, Landroid/webkitsec/WebViewClassic;->mLogEvent:Z

    sput-boolean v1, Landroid/webkitsec/WebViewClassic;->sNotificationsEnabled:Z

    const/16 v0, 0x50

    sput v0, Landroid/webkitsec/WebViewClassic;->ONEWAY_SCROLL_TRIGGER_BOUNDARY:I

    sput-boolean v2, Landroid/webkitsec/WebViewClassic;->sPackageInstallationReceiverAdded:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/webkitsec/WebViewClassic;->sGoogleApps:Ljava/util/Set;

    sget-object v0, Landroid/webkitsec/WebViewClassic;->sGoogleApps:Ljava/util/Set;

    const-string v1, "com.google.android.youtube"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sput-boolean v2, Landroid/webkitsec/WebViewClassic;->isRotated:Z

    const/16 v0, 0x10

    sput v0, Landroid/webkitsec/WebViewClassic;->sChannelDistance:I

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/webkitsec/WebView;Landroid/webkitsec/WebView$PrivateAccess;)V
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iput-object v4, p0, Landroid/webkitsec/WebViewClassic;->mPasteEvent:Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl;

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mDisableSelectionPopup:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mIsSelectionChanged:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mSelectPopupInSameInstance:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mIsTextFieldNext:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mIsTextFieldPrev:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mIsSelectFieldNext:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mIsSelectFieldPrev:Z

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mSelectFieldPointer:I

    iput-boolean v5, p0, Landroid/webkitsec/WebViewClassic;->mSelectFocusMoved:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->bWebSelectDialogIsUp:Z

    iput-object v4, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectContentBounds:Landroid/graphics/Rect;

    iput-object v4, p0, Landroid/webkitsec/WebViewClassic;->mSavePasswordDialog:Landroid/app/AlertDialog;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mScreenRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mVisibleContentRect:Landroid/graphics/RectF;

    iput-boolean v5, p0, Landroid/webkitsec/WebViewClassic;->mIsWebViewVisible:Z

    iput-object v4, p0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mIsScreenTouch:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mIsNewInputField:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mIsEditingText:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mIsSoftkeyboardVisible:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mBatchedTextChanges:Ljava/util/ArrayList;

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mIsBatchingTextChanges:Z

    iput-wide v7, p0, Landroid/webkitsec/WebViewClassic;->mLastEditScroll:J

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mReaderFlag:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mIsCtrlPressed:Z

    new-instance v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebViewClassic$PrivateHandler;-><init>(Landroid/webkitsec/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->maxArrayLimit:I

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    iput-object v4, p0, Landroid/webkitsec/WebViewClassic;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    iput-object v4, p0, Landroid/webkitsec/WebViewClassic;->mUrl:Ljava/lang/String;

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mCurrentTouchInterval:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    const/4 v0, 0x7

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mPerformLongPress:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mLongPressSelection:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mCheckLongPress:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mKeyboardEnterPress:Z

    iput-boolean v5, p0, Landroid/webkitsec/WebViewClassic;->mDrawCursorRing:Z

    iput-boolean v5, p0, Landroid/webkitsec/WebViewClassic;->mPageZoomOnIMELaunch:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mIsZoomScaleBegin:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mLastViewSize:Landroid/graphics/Point;

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mBlockRequestLayout:Z

    iput-boolean v5, p0, Landroid/webkitsec/WebViewClassic;->mOverlayHorizontalScrollbar:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mOverlayVerticalScrollbar:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mInOverScrollMode:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorBase:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectHandleBaseBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/webkitsec/QuadF;

    invoke-direct {v0}, Landroid/webkitsec/QuadF;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorBaseTextQuad:Landroid/webkitsec/QuadF;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorExtent:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectHandleExtentBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/webkitsec/QuadF;

    invoke-direct {v0}, Landroid/webkitsec/QuadF;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorExtentTextQuad:Landroid/webkitsec/QuadF;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchHightlightPaint:Landroid/graphics/Paint;

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mBlockWebkitViewMessages:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mHardwareAccelSkia:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mPopupLaunchHitTestType:Z

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mInitialScaleInPercent:I

    iput-boolean v5, p0, Landroid/webkitsec/WebViewClassic;->mSendScrollEvent:Z

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mSnapScrollMode:I

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mHorizontalScrollBarMode:I

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mVerticalScrollBarMode:I

    iput-wide v7, p0, Landroid/webkitsec/WebViewClassic;->mLastTouchUpTime:J

    iput v6, p0, Landroid/webkitsec/WebViewClassic;->mBackgroundColor:I

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mAutoScrollX:I

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mAutoScrollY:I

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mMinAutoScrollX:I

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mMaxAutoScrollX:I

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mMinAutoScrollY:I

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mMaxAutoScrollY:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mScrollingLayerBounds:Landroid/graphics/Rect;

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mSentAutoScrollMessage:Z

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mEnterKeyLongPress:I

    iput-object v4, p0, Landroid/webkitsec/WebViewClassic;->mHoverHandler:Landroid/webkitsec/WebViewClassic$HoverScrollHandler;

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mFeatureHoverUI:Z

    const/16 v0, 0x1e

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverAreaHeight:I

    const/16 v0, 0x32

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverBottomAreaHeight:I

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mHoverTopAreaTop:I

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mHoverRecognitionDurationTime:I

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mHoverRecognitionCurrentTime:I

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mHoverRecognitionStartTime:I

    iput v6, p0, Landroid/webkitsec/WebViewClassic;->mHoverScrollDirection:I

    const/16 v0, 0x12c

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverScrollTimeInterval:I

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mCheckHoverScrollStart:Z

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mHoverScrollStartTime:I

    const/16 v0, 0xe

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->HOVERSCROLL_SPEED_STEP_1:I

    const/16 v0, 0x10

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->HOVERSCROLL_SPEED_STEP_2:I

    const/16 v0, 0x12

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->HOVERSCROLL_SPEED_STEP_3:I

    const/16 v0, 0x14

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->HOVERSCROLL_SPEED_STEP_4:I

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mHoverScrollSpeed:I

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->HOVERSCROLL_DELAY:I

    iput v5, p0, Landroid/webkitsec/WebViewClassic;->mHoverIconStatus:I

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mThemeIsDeviceDefault:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mPictureUpdatePausedForFocusChange:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mIsFitToScreen:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mOnewayMode:Z

    iput-boolean v5, p0, Landroid/webkitsec/WebViewClassic;->mIsOnewayScrollDown:Z

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mOnewayScrollTouchDownX:I

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mOnewayScrollTouchDownY:I

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mFirstScaleOccured:Z

    iput v6, p0, Landroid/webkitsec/WebViewClassic;->mCachedOverlappingActionModeHeight:I

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mCachedOverlappingActionModeHackRotate:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mLastVisibleRectSent:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mLastGlobalRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mVisibleRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mScrollOffset:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mGlobalVisibleOffset:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mTempContentVisibleRect:Landroid/graphics/Rect;

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mActualHeightHack:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mFindDialogOn:Z

    iput-object v4, p0, Landroid/webkitsec/WebViewClassic;->mFindRequest:Landroid/webkitsec/WebViewCore$FindAllRequest;

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mOrientation:I

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/16 v1, 0x86

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mZoomFilter:Landroid/graphics/DrawFilter;

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x6

    invoke-direct {v0, v1, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mScrollFilter:Landroid/graphics/DrawFilter;

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mDrawHistory:Z

    iput-object v4, p0, Landroid/webkitsec/WebViewClassic;->mHistoryPicture:Landroid/graphics/Picture;

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mHistoryWidth:I

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mHistoryHeight:I

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mGotCenterDown:Z

    iput-object v4, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iput v6, p0, Landroid/webkitsec/WebViewClassic;->mPreviousTouchX:I

    iput v6, p0, Landroid/webkitsec/WebViewClassic;->mPreviousTouchY:I

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mController:I

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mSmartSelection:Z

    iput-boolean v5, p0, Landroid/webkitsec/WebViewClassic;->mAutoSelection:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->textPoint:Landroid/graphics/Point;

    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->textSelected:Ljava/lang/String;

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mHasWindowFocus:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mTempVisibleRectOffset:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mTempVisibleRect:Landroid/graphics/Rect;

    iput v6, p0, Landroid/webkitsec/WebViewClassic;->mFirstTouchX:I

    iput v6, p0, Landroid/webkitsec/WebViewClassic;->mFirstTouchY:I

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mDistanceX:I

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mDistanceY:I

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mBlockShowSoftInput:Z

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->actionDown_X:I

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->actionDown_Y:I

    iput-wide v7, p0, Landroid/webkitsec/WebViewClassic;->mTrackballFirstTime:J

    iput-wide v7, p0, Landroid/webkitsec/WebViewClassic;->mTrackballLastTime:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mTrackballRemainsX:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mTrackballRemainsY:F

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mTrackballXMove:I

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mTrackballYMove:I

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mSelectingText:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mShowTextSelectionExtra:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mSelectionStarted:Z

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mSelectX:I

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mSelectY:I

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mTrackballDown:Z

    iput-wide v7, p0, Landroid/webkitsec/WebViewClassic;->mTrackballUpTime:J

    iput-wide v7, p0, Landroid/webkitsec/WebViewClassic;->mLastCursorTime:J

    new-instance v0, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;

    invoke-direct {v0, p0, v4}, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;-><init>(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewClassic$1;)V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mBaseAlpha:Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;

    new-instance v0, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;

    invoke-direct {v0, p0, v4}, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;-><init>(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewClassic$1;)V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mExtentAlpha:Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mBaseAlpha:Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;

    const-string v1, "alpha"

    new-array v2, v5, [I

    aput v3, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mBaseHandleAlphaAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mExtentAlpha:Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;

    const-string v1, "alpha"

    new-array v2, v5, [I

    aput v3, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mExtentHandleAlphaAnimator:Landroid/animation/ObjectAnimator;

    iput-boolean v5, p0, Landroid/webkitsec/WebViewClassic;->mMapTrackballToArrowKeys:Z

    iput-object v4, p0, Landroid/webkitsec/WebViewClassic;->mWebClipboard:Landroid/webkitsec/WebClipboard;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->imageSelectRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->spellingOfWord:Landroid/graphics/Point;

    iput-object v4, p0, Landroid/webkitsec/WebViewClassic;->mFocusTransition:Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mIsPressingHandle:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectionOn:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mSelectionClearOnRotation:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mBTWebSelectionOn:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mSelectAllViaBT:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mDPADCenterLongPress:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mLongPress:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mDialogMove:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mActionMove:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mIsSelectionResetCalled:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mBTKeyBoardOn:Z

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mRequestNewSelection:I

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mReaderArticle:Z

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mSpenTextSelectionMode:I

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    iput-object p2, p0, Landroid/webkitsec/WebViewClassic;->mWebViewPrivate:Landroid/webkitsec/WebView$PrivateAccess;

    invoke-virtual {p1}, Landroid/webkitsec/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    return-void
.end method

.method private WebkitSelectionAreaValidate(Landroid/graphics/Rect;)V
    .locals 5

    const/4 v4, 0x0

    iget v1, p0, Landroid/webkitsec/WebViewClassic;->mContentWidth:I

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mContentHeight:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v2}, Landroid/webkitsec/WebViewClassic;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    iget v3, v2, Landroid/graphics/Rect;->right:I

    if-ge v1, v3, :cond_0

    iget v1, v2, Landroid/graphics/Rect;->right:I

    :cond_0
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v3, :cond_1

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    :cond_1
    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_2

    iput v4, p1, Landroid/graphics/Rect;->left:I

    :cond_2
    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_3

    iput v4, p1, Landroid/graphics/Rect;->top:I

    :cond_3
    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-le v3, v1, :cond_4

    iput v1, p1, Landroid/graphics/Rect;->right:I

    :cond_4
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-le v3, v0, :cond_5

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_5
    return-void
.end method

.method private abortAnimation()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mLastVelocity:F

    return-void
.end method

.method static synthetic access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkitsec/WebViewClassic;)I
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mFieldPointer:I

    return v0
.end method

.method static synthetic access$1000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/AutoCompletePopup;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mAutoCompletePopup:Landroid/webkitsec/AutoCompletePopup;

    return-object v0
.end method

.method static synthetic access$10000(IILandroid/graphics/Rect;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/webkitsec/WebViewClassic;->nativeMapLayerRect(IILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$10100(Landroid/webkitsec/WebViewClassic;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->relocateAutoCompletePopup()V

    return-void
.end method

.method static synthetic access$102(Landroid/webkitsec/WebViewClassic;I)I
    .locals 0

    iput p1, p0, Landroid/webkitsec/WebViewClassic;->mFieldPointer:I

    return p1
.end method

.method static synthetic access$10200(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/FindActionModeCallback;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mFindCallback:Landroid/webkitsec/FindActionModeCallback;

    return-object v0
.end method

.method static synthetic access$10300(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore$FindAllRequest;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mFindRequest:Landroid/webkitsec/WebViewCore$FindAllRequest;

    return-object v0
.end method

.method static synthetic access$10400(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView$FindListener;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mFindListener:Landroid/webkitsec/WebView$FindListener;

    return-object v0
.end method

.method static synthetic access$10500(Landroid/webkitsec/WebViewClassic;ILandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewClassic;->nativeScrollRectOnScreen(ILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$10600(Landroid/webkitsec/WebViewClassic;)I
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mSpenTextSelectionMode:I

    return v0
.end method

.method static synthetic access$10602(Landroid/webkitsec/WebViewClassic;I)I
    .locals 0

    iput p1, p0, Landroid/webkitsec/WebViewClassic;->mSpenTextSelectionMode:I

    return p1
.end method

.method static synthetic access$10700(Landroid/webkitsec/WebViewClassic;)Z
    .locals 1

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->setupWebkitSelect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$10800(Landroid/webkitsec/WebViewClassic;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mIsCaretSelection:Z

    return v0
.end method

.method static synthetic access$10900(Landroid/webkitsec/WebViewClassic;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectingText:Z

    return v0
.end method

.method static synthetic access$1100(Landroid/webkitsec/WebViewClassic;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mIsNewInputField:Z

    return v0
.end method

.method static synthetic access$11000(Landroid/webkitsec/WebViewClassic;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->resetCaretTimer()V

    return-void
.end method

.method static synthetic access$1102(Landroid/webkitsec/WebViewClassic;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebViewClassic;->mIsNewInputField:Z

    return p1
.end method

.method static synthetic access$11100(Landroid/webkitsec/WebViewClassic;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->showPasteWindow()V

    return-void
.end method

.method static synthetic access$11200(Landroid/webkitsec/WebViewClassic;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->scrollEditWithCursor()V

    return-void
.end method

.method static synthetic access$11300(Landroid/webkitsec/WebViewClassic;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->scrollDraggedSelectionHandleIntoView()V

    return-void
.end method

.method static synthetic access$11400(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewCore$SelectionCopiedData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewClassic;->updateSelectionInfo(Landroid/webkitsec/WebViewCore$SelectionCopiedData;)V

    return-void
.end method

.method static synthetic access$11500(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewCore$SelectionCopiedData;Landroid/webkitsec/WebViewCore$SelectionCopiedData;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewClassic;->isSelectionChanged(Landroid/webkitsec/WebViewCore$SelectionCopiedData;Landroid/webkitsec/WebViewCore$SelectionCopiedData;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$11600(Landroid/webkitsec/WebViewClassic;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->notifySelectionChanged()V

    return-void
.end method

.method static synthetic access$11700(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewCore$SelectionCopiedData;Landroid/webkitsec/WebViewCore$SelectionCopiedData;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewClassic;->isWebViewSelectionChanged(Landroid/webkitsec/WebViewCore$SelectionCopiedData;Landroid/webkitsec/WebViewCore$SelectionCopiedData;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$11800(Landroid/webkitsec/WebViewClassic;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->updateImageSelectedRect()V

    return-void
.end method

.method static synthetic access$11900(Landroid/webkitsec/WebViewClassic;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->displayColorPicker()V

    return-void
.end method

.method static synthetic access$1200(Landroid/webkitsec/WebViewClassic;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mIsScreenTouch:Z

    return v0
.end method

.method static synthetic access$12000(Landroid/webkitsec/WebViewClassic;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewClassic;->displayDateTimePickers(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12100(Landroid/webkitsec/WebViewClassic;Landroid/view/MotionEvent;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewClassic;->onHandleUiEvent(Landroid/view/MotionEvent;II)V

    return-void
.end method

.method static synthetic access$12200(Landroid/webkitsec/WebViewClassic;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectHandleBaseBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$12300(Landroid/webkitsec/WebViewClassic;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectHandleExtentBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$12400(Landroid/webkitsec/WebViewClassic;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mShowTapHighlight:Z

    return v0
.end method

.method static synthetic access$12402(Landroid/webkitsec/WebViewClassic;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebViewClassic;->mShowTapHighlight:Z

    return p1
.end method

.method static synthetic access$12500(Landroid/webkitsec/WebViewClassic;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchHightlightPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$12600(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mFocusTransition:Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;

    return-object v0
.end method

.method static synthetic access$12602(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;)Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic;->mFocusTransition:Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;

    return-object p1
.end method

.method static synthetic access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$13202(Landroid/webkitsec/WebViewClassic;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebViewClassic;->mActionMove:Z

    return p1
.end method

.method static synthetic access$13300(Landroid/webkitsec/WebViewClassic;)Z
    .locals 1

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->setUpAdvSelect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/webkitsec/WebViewClassic;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mThemeIsDeviceDefault:Z

    return v0
.end method

.method static synthetic access$1500(Landroid/webkitsec/WebViewClassic;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->ensureSelectionHandles()V

    return-void
.end method

.method static synthetic access$1600(Landroid/webkitsec/WebViewClassic;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/webkitsec/WebViewClassic;Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewClassic;->pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/webkitsec/WebViewClassic;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mIsSelectionChanged:Z

    return v0
.end method

.method static synthetic access$1802(Landroid/webkitsec/WebViewClassic;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebViewClassic;->mIsSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1900()Z
    .locals 1

    sget-boolean v0, Landroid/webkitsec/WebViewClassic;->isSelectedCandidateEditable:Z

    return v0
.end method

.method static synthetic access$1902(Z)Z
    .locals 0

    sput-boolean p0, Landroid/webkitsec/WebViewClassic;->isSelectedCandidateEditable:Z

    return p0
.end method

.method static synthetic access$200(Landroid/webkitsec/WebViewClassic;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->beginTextBatch()V

    return-void
.end method

.method static synthetic access$2000(Landroid/webkitsec/WebViewClassic;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mCheckLongPress:Z

    return v0
.end method

.method static synthetic access$2002(Landroid/webkitsec/WebViewClassic;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebViewClassic;->mCheckLongPress:Z

    return p1
.end method

.method static synthetic access$2100()Z
    .locals 1

    sget-boolean v0, Landroid/webkitsec/WebViewClassic;->bWebFindDialogEnabled:Z

    return v0
.end method

.method static synthetic access$2102(Z)Z
    .locals 0

    sput-boolean p0, Landroid/webkitsec/WebViewClassic;->bWebFindDialogEnabled:Z

    return p0
.end method

.method static synthetic access$2300()Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;
    .locals 1

    sget-object v0, Landroid/webkitsec/WebViewClassic;->mSelectActionWindow:Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;

    return-object v0
.end method

.method static synthetic access$2500(I)V
    .locals 0

    invoke-static {p0}, Landroid/webkitsec/WebViewClassic;->nativeOnTrimMemory(I)V

    return-void
.end method

.method static synthetic access$2600()V
    .locals 0

    invoke-static {}, Landroid/webkitsec/WebViewClassic;->handleCertTrustChanged()V

    return-void
.end method

.method static synthetic access$2800(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/webkitsec/WebViewClassic;->handleProxyBroadcast(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Landroid/webkitsec/WebViewClassic;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->commitTextBatch()V

    return-void
.end method

.method static synthetic access$3000()Ljava/util/Set;
    .locals 1

    sget-object v0, Landroid/webkitsec/WebViewClassic;->sGoogleApps:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/webkitsec/WebViewClassic;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mResumeMsg:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$3202(Landroid/webkitsec/WebViewClassic;Landroid/os/Message;)Landroid/os/Message;
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic;->mResumeMsg:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$3302(Landroid/webkitsec/WebViewClassic;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic;->mSavePasswordDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3400(I)V
    .locals 0

    invoke-static {p0}, Landroid/webkitsec/WebViewClassic;->nativeDestroy(I)V

    return-void
.end method

.method static synthetic access$3500(Landroid/webkitsec/WebViewClassic;Landroid/graphics/Picture;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewClassic;->restoreHistoryPictureFields(Landroid/graphics/Picture;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3600(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore$DrawData;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mLoadedPicture:Landroid/webkitsec/WebViewCore$DrawData;

    return-object v0
.end method

.method static synthetic access$3602(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewCore$DrawData;)Landroid/webkitsec/WebViewCore$DrawData;
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic;->mLoadedPicture:Landroid/webkitsec/WebViewCore$DrawData;

    return-object p1
.end method

.method static synthetic access$3700(Landroid/webkitsec/WebViewClassic;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3800(Landroid/webkitsec/WebViewClassic;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3900(Landroid/webkitsec/WebViewClassic;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewClassic;->updateColor(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/webkitsec/WebViewClassic;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mBTWebSelectionOn:Z

    return v0
.end method

.method static synthetic access$402(Landroid/webkitsec/WebViewClassic;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebViewClassic;->mBTWebSelectionOn:Z

    return p1
.end method

.method static synthetic access$4900(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore$AutoFillData;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mAutoFillData:Landroid/webkitsec/WebViewCore$AutoFillData;

    return-object v0
.end method

.method static synthetic access$4902(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewCore$AutoFillData;)Landroid/webkitsec/WebViewCore$AutoFillData;
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic;->mAutoFillData:Landroid/webkitsec/WebViewCore$AutoFillData;

    return-object p1
.end method

.method static synthetic access$500(Landroid/webkitsec/WebViewClassic;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectionOn:Z

    return v0
.end method

.method static synthetic access$5000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewDatabaseClassic;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mDatabase:Landroid/webkitsec/WebViewDatabaseClassic;

    return-object v0
.end method

.method static synthetic access$5200(Landroid/webkitsec/WebViewClassic;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->doHoverScrollMove()V

    return-void
.end method

.method static synthetic access$5400(Landroid/webkitsec/WebViewClassic;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mBlockWebkitViewMessages:Z

    return v0
.end method

.method static synthetic access$5500(Landroid/webkitsec/WebViewClassic;)I
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mAutoScrollX:I

    return v0
.end method

.method static synthetic access$5600(Landroid/webkitsec/WebViewClassic;)I
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mAutoScrollY:I

    return v0
.end method

.method static synthetic access$5702(Landroid/webkitsec/WebViewClassic;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebViewClassic;->mSentAutoScrollMessage:Z

    return p1
.end method

.method static synthetic access$5800(Landroid/webkitsec/WebViewClassic;)I
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mCurrentScrollingLayerId:I

    return v0
.end method

.method static synthetic access$5900(Landroid/webkitsec/WebViewClassic;IIZI)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkitsec/WebViewClassic;->pinScrollBy(IIZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/webkitsec/WebViewClassic;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewClassic;->copySelectionSec(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Landroid/webkitsec/WebViewClassic;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$6100(Landroid/webkitsec/WebViewClassic;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewClassic;->scrollLayerTo(II)V

    return-void
.end method

.method static synthetic access$6200(Landroid/webkitsec/WebViewClassic;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewClassic;->contentScrollTo(IIZ)V

    return-void
.end method

.method static synthetic access$6300(Landroid/webkitsec/WebViewClassic;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->playTouchSound()V

    return-void
.end method

.method static synthetic access$6400(Landroid/webkitsec/WebViewClassic;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->notifySingleTapReleased()V

    return-void
.end method

.method static synthetic access$6500(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/ZoomManager;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    return-object v0
.end method

.method static synthetic access$6600(Landroid/webkitsec/WebViewClassic;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewClassic;->nativeCreate(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$6700(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore$DrawData;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mDelaySetPicture:Landroid/webkitsec/WebViewCore$DrawData;

    return-object v0
.end method

.method static synthetic access$6702(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewCore$DrawData;)Landroid/webkitsec/WebViewCore$DrawData;
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic;->mDelaySetPicture:Landroid/webkitsec/WebViewCore$DrawData;

    return-object p1
.end method

.method static synthetic access$6800(Landroid/webkitsec/WebViewClassic;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$6900(Landroid/webkitsec/WebViewClassic;)I
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    return v0
.end method

.method static synthetic access$700(Landroid/webkitsec/WebViewClassic;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$7000(IZ)V
    .locals 0

    invoke-static {p0, p1}, Landroid/webkitsec/WebViewClassic;->nativeSetPauseDrawing(IZ)V

    return-void
.end method

.method static synthetic access$7100(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewInputDispatcher;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mInputDispatcher:Landroid/webkitsec/WebViewInputDispatcher;

    return-object v0
.end method

.method static synthetic access$7102(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewInputDispatcher;)Landroid/webkitsec/WebViewInputDispatcher;
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic;->mInputDispatcher:Landroid/webkitsec/WebViewInputDispatcher;

    return-object p1
.end method

.method static synthetic access$7200(Landroid/webkitsec/WebViewClassic;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->setAppType()V

    return-void
.end method

.method static synthetic access$7300(Landroid/webkitsec/WebViewClassic;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewClassic;->enabledTouchPerformancePatch(Z)V

    return-void
.end method

.method static synthetic access$7400(Landroid/webkitsec/WebViewClassic;)I
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mTextGeneration:I

    return v0
.end method

.method static synthetic access$7402(Landroid/webkitsec/WebViewClassic;I)I
    .locals 0

    iput p1, p0, Landroid/webkitsec/WebViewClassic;->mTextGeneration:I

    return p1
.end method

.method static synthetic access$7500(Landroid/webkitsec/WebViewClassic;IILandroid/webkitsec/WebViewCore$TextSelectionData;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewClassic;->updateTextSelectionFromMessage(IILandroid/webkitsec/WebViewCore$TextSelectionData;)V

    return-void
.end method

.method static synthetic access$7600(Landroid/webkitsec/WebViewClassic;IILandroid/webkitsec/WebViewCore$TextInputData;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewClassic;->updateTextSelectionStartEndFromMessage(IILandroid/webkitsec/WebViewCore$TextInputData;)V

    return-void
.end method

.method static synthetic access$7700(Landroid/webkitsec/WebViewClassic;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->displaySoftKeyboardWithDelay()V

    return-void
.end method

.method static synthetic access$7800(Landroid/webkitsec/WebViewClassic;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkitsec/WebViewClassic;->viewInvalidate(IIII)V

    return-void
.end method

.method static synthetic access$7902(Landroid/webkitsec/WebViewClassic;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebViewClassic;->mGotCenterDown:Z

    return p1
.end method

.method static synthetic access$800(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    return-object v0
.end method

.method static synthetic access$8002(Landroid/webkitsec/WebViewClassic;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebViewClassic;->mTrackballDown:Z

    return p1
.end method

.method static synthetic access$8102(Landroid/webkitsec/WebViewClassic;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebViewClassic;->mDPADCenterLongPress:Z

    return p1
.end method

.method static synthetic access$8200(Landroid/webkitsec/WebViewClassic;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->showSelectActionWindow()V

    return-void
.end method

.method static synthetic access$8300(Landroid/webkitsec/WebViewClassic;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewClassic;->displaySoftKeyboard(Z)V

    return-void
.end method

.method static synthetic access$8400(Landroid/webkitsec/WebViewClassic;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mBlockShowSoftInput:Z

    return v0
.end method

.method static synthetic access$8502(Landroid/webkitsec/WebViewClassic;I)I
    .locals 0

    iput p1, p0, Landroid/webkitsec/WebViewClassic;->mHeldMotionless:I

    return p1
.end method

.method static synthetic access$8600(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/HTML5VideoViewProxy;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    return-object v0
.end method

.method static synthetic access$8700(Landroid/webkitsec/WebViewClassic;)Z
    .locals 1

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->inFullScreenMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8800(Landroid/webkitsec/WebViewClassic;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->dismissFullScreenMode()V

    return-void
.end method

.method static synthetic access$8900(Landroid/webkitsec/WebViewClassic;)I
    .locals 1

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getVisibleTitleHeightImpl()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/webkitsec/WebViewClassic;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mPrivateImeOptions:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9002(Landroid/webkitsec/WebViewClassic;I)I
    .locals 0

    iput p1, p0, Landroid/webkitsec/WebViewClassic;->mHorizontalScrollBarMode:I

    return p1
.end method

.method static synthetic access$902(Landroid/webkitsec/WebViewClassic;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic;->mPrivateImeOptions:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9102(Landroid/webkitsec/WebViewClassic;I)I
    .locals 0

    iput p1, p0, Landroid/webkitsec/WebViewClassic;->mVerticalScrollBarMode:I

    return p1
.end method

.method static synthetic access$9200(Landroid/webkitsec/WebViewClassic;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->bWebSelectDialogIsUp:Z

    return v0
.end method

.method static synthetic access$9202(Landroid/webkitsec/WebViewClassic;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebViewClassic;->bWebSelectDialogIsUp:Z

    return p1
.end method

.method static synthetic access$9300(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebSelectDialog;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;

    return-object v0
.end method

.method static synthetic access$9302(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebSelectDialog;)Landroid/webkitsec/WebSelectDialog;
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;

    return-object p1
.end method

.method static synthetic access$9400(Landroid/webkitsec/WebViewClassic;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectFocusMoved:Z

    return v0
.end method

.method static synthetic access$9402(Landroid/webkitsec/WebViewClassic;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebViewClassic;->mSelectFocusMoved:Z

    return p1
.end method

.method static synthetic access$9500(Landroid/webkitsec/WebViewClassic;)I
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectFieldPointer:I

    return v0
.end method

.method static synthetic access$9502(Landroid/webkitsec/WebViewClassic;I)I
    .locals 0

    iput p1, p0, Landroid/webkitsec/WebViewClassic;->mSelectFieldPointer:I

    return p1
.end method

.method static synthetic access$9602(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewCore$WebKitHitTest;)Landroid/webkitsec/WebViewCore$WebKitHitTest;
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    return-object p1
.end method

.method static synthetic access$9700(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewCore$WebKitHitTest;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewClassic;->setTouchHighlightRects(Landroid/webkitsec/WebViewCore$WebKitHitTest;)V

    return-void
.end method

.method static synthetic access$9800(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewCore$WebKitHitTest;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewClassic;->setHitTestResult(Landroid/webkitsec/WebViewCore$WebKitHitTest;)V

    return-void
.end method

.method static synthetic access$9900(Landroid/webkitsec/WebViewClassic;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewClassic;->copyToClipboard(Ljava/lang/String;)V

    return-void
.end method

.method private animateHandle(ZLandroid/animation/ObjectAnimator;Landroid/graphics/Point;ILandroid/webkitsec/WebViewClassic$SelectionHandleAlpha;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    iget-boolean v4, p0, Landroid/webkitsec/WebViewClassic;->mSelectingText:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Landroid/webkitsec/WebViewClassic;->mSelectionStarted:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    if-eq v4, p3, :cond_1

    :cond_0
    invoke-direct {p0, p3, p4}, Landroid/webkitsec/WebViewClassic;->isHandleVisible(Landroid/graphics/Point;I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    move v0, v3

    :goto_0
    if-eqz v0, :cond_4

    const/16 v1, 0xff

    :goto_1
    invoke-virtual {p5}, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;->getTargetAlpha()I

    move-result v4

    if-eq v1, v4, :cond_2

    invoke-virtual {p5, v1}, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;->setTargetAlpha(I)V

    new-array v3, v3, [I

    aput v1, v3, v2

    invoke-virtual {p2, v3}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    const-wide/16 v2, 0x96

    invoke-virtual {p2, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method private animateHandles()V
    .locals 9

    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mSelectingText:Z

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectingText:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mIsCaretSelection:Z

    if-nez v0, :cond_0

    const/4 v8, 0x1

    :goto_0
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mBaseHandleAlphaAnimator:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorBase:Landroid/graphics/Point;

    iget v4, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorBaseLayerId:I

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mBaseAlpha:Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkitsec/WebViewClassic;->animateHandle(ZLandroid/animation/ObjectAnimator;Landroid/graphics/Point;ILandroid/webkitsec/WebViewClassic$SelectionHandleAlpha;)V

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mExtentHandleAlphaAnimator:Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorExtent:Landroid/graphics/Point;

    iget v6, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorExtentLayerId:I

    iget-object v7, p0, Landroid/webkitsec/WebViewClassic;->mExtentAlpha:Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;

    move-object v2, p0

    move v3, v8

    invoke-direct/range {v2 .. v7}, Landroid/webkitsec/WebViewClassic;->animateHandle(ZLandroid/animation/ObjectAnimator;Landroid/graphics/Point;ILandroid/webkitsec/WebViewClassic$SelectionHandleAlpha;)V

    return-void

    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private beginScrollEdit()V
    .locals 4

    iget-wide v0, p0, Landroid/webkitsec/WebViewClassic;->mLastEditScroll:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/webkitsec/WebViewClassic;->mLastEditScroll:J

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->scrollEditWithCursor()V

    :cond_0
    return-void
.end method

.method private beginTextBatch()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mIsBatchingTextChanges:Z

    return-void
.end method

.method private calcOurContentVisibleRectF(Landroid/graphics/RectF;)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mTempContentVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebViewClassic;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mTempContentVisibleRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Landroid/webkitsec/WebViewClassic;->viewToContentVisibleRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    return-void
.end method

.method private calculateBaseCaretTop()Landroid/graphics/Point;
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorBase:Landroid/graphics/Point;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorBaseTextQuad:Landroid/webkitsec/QuadF;

    invoke-static {v0, v1}, Landroid/webkitsec/WebViewClassic;->calculateCaretTop(Landroid/graphics/Point;Landroid/webkitsec/QuadF;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method private static calculateCaretTop(Landroid/graphics/Point;Landroid/webkitsec/QuadF;)Landroid/graphics/Point;
    .locals 7

    iget v3, p0, Landroid/graphics/Point;->x:I

    iget v4, p0, Landroid/graphics/Point;->y:I

    iget-object v5, p1, Landroid/webkitsec/QuadF;->p4:Landroid/graphics/PointF;

    iget-object v6, p1, Landroid/webkitsec/QuadF;->p3:Landroid/graphics/PointF;

    invoke-static {v3, v4, v5, v6}, Landroid/webkitsec/WebViewClassic;->scaleAlongSegment(IILandroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    iget-object v3, p1, Landroid/webkitsec/QuadF;->p1:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p1, Landroid/webkitsec/QuadF;->p2:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v3, v4}, Landroid/webkitsec/WebViewClassic;->scaleCoordinate(FFF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v3, p1, Landroid/webkitsec/QuadF;->p1:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p1, Landroid/webkitsec/QuadF;->p2:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v3, v4}, Landroid/webkitsec/WebViewClassic;->scaleCoordinate(FFF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v3
.end method

.method private calculateChannelDistance(Landroid/content/Context;)V
    .locals 8

    const/16 v7, 0x10

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/2addr v3, v4

    int-to-double v3, v3

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v6, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    cmpg-double v3, v1, v3

    if-gez v3, :cond_1

    sput v7, Landroid/webkitsec/WebViewClassic;->sChannelDistance:I

    :goto_0
    sget v3, Landroid/webkitsec/WebViewClassic;->sChannelDistance:I

    int-to-float v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Landroid/webkitsec/WebViewClassic;->sChannelDistance:I

    sget v3, Landroid/webkitsec/WebViewClassic;->sChannelDistance:I

    if-ge v3, v7, :cond_0

    sput v7, Landroid/webkitsec/WebViewClassic;->sChannelDistance:I

    :cond_0
    return-void

    :cond_1
    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    cmpg-double v3, v1, v3

    if-gez v3, :cond_2

    const/16 v3, 0x16

    sput v3, Landroid/webkitsec/WebViewClassic;->sChannelDistance:I

    goto :goto_0

    :cond_2
    const-wide/high16 v3, 0x401c000000000000L    # 7.0

    cmpg-double v3, v1, v3

    if-gez v3, :cond_3

    const/16 v3, 0x1c

    sput v3, Landroid/webkitsec/WebViewClassic;->sChannelDistance:I

    goto :goto_0

    :cond_3
    const/16 v3, 0x22

    sput v3, Landroid/webkitsec/WebViewClassic;->sChannelDistance:I

    goto :goto_0
.end method

.method private calculateDraggingCaretTop()Landroid/graphics/Point;
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkitsec/QuadF;

    invoke-static {v0, v1}, Landroid/webkitsec/WebViewClassic;->calculateCaretTop(Landroid/graphics/Point;Landroid/webkitsec/QuadF;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method private calculateOnewayScrollBoundary(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/16 v1, 0x50

    sput v1, Landroid/webkitsec/WebViewClassic;->ONEWAY_SCROLL_TRIGGER_BOUNDARY:I

    sget v1, Landroid/webkitsec/WebViewClassic;->ONEWAY_SCROLL_TRIGGER_BOUNDARY:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Landroid/webkitsec/WebViewClassic;->ONEWAY_SCROLL_TRIGGER_BOUNDARY:I

    return-void
.end method

.method private canTextScroll(II)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getTextScrollX()I

    move-result v4

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getTextScrollY()I

    move-result v5

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getMaxTextScrollX()I

    move-result v2

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getMaxTextScrollY()I

    move-result v3

    if-lez p1, :cond_3

    if-ge v4, v2, :cond_2

    move v0, v7

    :goto_0
    if-lez p2, :cond_6

    if-ge v5, v3, :cond_5

    move v1, v7

    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v6, v7

    :cond_1
    return v6

    :cond_2
    move v0, v6

    goto :goto_0

    :cond_3
    if-lez v4, :cond_4

    move v0, v7

    goto :goto_0

    :cond_4
    move v0, v6

    goto :goto_0

    :cond_5
    move v1, v6

    goto :goto_1

    :cond_6
    if-lez v5, :cond_7

    move v1, v7

    goto :goto_1

    :cond_7
    move v1, v6

    goto :goto_1
.end method

.method private cancelTouch()V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mInputDispatcher:Landroid/webkitsec/WebViewInputDispatcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mInputDispatcher:Landroid/webkitsec/WebViewInputDispatcher;

    invoke-virtual {v0, v2}, Landroid/webkitsec/WebViewInputDispatcher;->setClickOnSelectHandleCenter(Z)V

    :cond_1
    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    :cond_2
    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectingText:Z

    if-nez v0, :cond_3

    invoke-static {}, Landroid/webkitsec/WebViewCore;->resumePriority()V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-static {v0}, Landroid/webkitsec/WebViewCore;->resumeUpdatePicture(Landroid/webkitsec/WebViewCore;)V

    invoke-direct {p0, v2}, Landroid/webkitsec/WebViewClassic;->nativeSetIsScrolling(Z)V

    :cond_3
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->removeTouchHighlight()V

    const/4 v0, 0x2

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mHeldMotionless:I

    const/4 v0, 0x7

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    return-void
.end method

.method private checkForceSecSelection()V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/String;

    const-string v3, "com.google.android.gm"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/String;

    const-string v3, "com.android.settings"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/String;

    const-string v3, "com.osp.app.signin"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkitsec/WebSettingsClassic;->setAdvancedCopyPasteFeature(Z)V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkitsec/WebSettingsClassic;->setUseDefaultClipboard(Z)V

    :cond_0
    return-void
.end method

.method private checkHoverScrolling(Landroid/view/MotionEvent;)V
    .locals 14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v9, v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v10, v11

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->computeMaxScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->computeMaxScrollY()I

    move-result v4

    const/4 v6, 0x0

    const/4 v5, 0x0

    or-int v11, v3, v4

    if-nez v11, :cond_5

    const/4 v6, 0x0

    const/4 v5, 0x0

    :goto_0
    iget v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverAreaHeight:I

    iget v12, p0, Landroid/webkitsec/WebViewClassic;->mHoverTopAreaTop:I

    add-int/2addr v11, v12

    if-le v10, v11, :cond_0

    iget v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverBottomAreaHeight:I

    sub-int v11, v7, v11

    if-ge v10, v11, :cond_0

    iget v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverAreaHeight:I

    if-le v9, v11, :cond_0

    iget v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverAreaHeight:I

    sub-int v11, v8, v11

    if-lt v9, v11, :cond_1

    :cond_0
    if-nez v6, :cond_8

    if-nez v5, :cond_8

    :cond_1
    iget-object v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverHandler:Landroid/webkitsec/WebViewClassic$HoverScrollHandler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkitsec/WebViewClassic$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverHandler:Landroid/webkitsec/WebViewClassic$HoverScrollHandler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkitsec/WebViewClassic$HoverScrollHandler;->removeMessages(I)V

    :cond_2
    iget v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverIconStatus:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_3

    const/4 v11, 0x1

    const/4 v12, -0x1

    :try_start_0
    invoke-static {v11, v12}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    const/4 v11, 0x1

    iput v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverIconStatus:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0, v11}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0, v11}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v1

    iget-object v11, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v12, 0x87

    invoke-virtual {v11, v12, v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    iget-object v11, p0, Landroid/webkitsec/WebViewClassic;->mWebViewPrivate:Landroid/webkitsec/WebView$PrivateAccess;

    invoke-virtual {v11, p1}, Landroid/webkitsec/WebView$PrivateAccess;->super_onHoverEvent(Landroid/view/MotionEvent;)Z

    :cond_4
    :goto_2
    return-void

    :cond_5
    if-eqz v3, :cond_6

    if-nez v4, :cond_6

    const/4 v6, 0x0

    const/4 v5, 0x1

    goto :goto_0

    :cond_6
    if-nez v3, :cond_7

    if-eqz v4, :cond_7

    const/4 v6, 0x1

    const/4 v5, 0x0

    goto :goto_0

    :cond_7
    const/4 v6, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v11, "webview"

    const-string v12, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    iget v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverTopAreaTop:I

    if-lt v10, v11, :cond_9

    if-nez v6, :cond_b

    if-nez v5, :cond_b

    :cond_9
    iget-object v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverHandler:Landroid/webkitsec/WebViewClassic$HoverScrollHandler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkitsec/WebViewClassic$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverHandler:Landroid/webkitsec/WebViewClassic$HoverScrollHandler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkitsec/WebViewClassic$HoverScrollHandler;->removeMessages(I)V

    :cond_a
    iget v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverIconStatus:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_4

    const/4 v11, 0x1

    const/4 v12, -0x1

    :try_start_1
    invoke-static {v11, v12}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    const/4 v11, 0x1

    iput v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverIconStatus:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    const-string/jumbo v11, "webview"

    const-string v12, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    iget-boolean v11, p0, Landroid/webkitsec/WebViewClassic;->mCheckHoverScrollStart:Z

    if-nez v11, :cond_c

    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/webkitsec/WebViewClassic;->mCheckHoverScrollStart:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    long-to-int v11, v11

    iput v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverScrollStartTime:I

    :cond_c
    iget v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverTopAreaTop:I

    if-lt v10, v11, :cond_e

    iget v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverAreaHeight:I

    iget v12, p0, Landroid/webkitsec/WebViewClassic;->mHoverTopAreaTop:I

    add-int/2addr v11, v12

    if-gt v10, v11, :cond_e

    if-eqz v6, :cond_e

    iget v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverIconStatus:I

    const/16 v12, 0xb

    if-eq v11, v12, :cond_d

    const/16 v11, 0xb

    const/4 v12, -0x1

    :try_start_2
    invoke-static {v11, v12}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    const/16 v11, 0xb

    iput v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverIconStatus:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_d
    :goto_3
    iget-object v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverHandler:Landroid/webkitsec/WebViewClassic$HoverScrollHandler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkitsec/WebViewClassic$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    long-to-int v11, v11

    iput v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverRecognitionStartTime:I

    const/4 v11, 0x1

    iput v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverScrollDirection:I

    iget-object v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverHandler:Landroid/webkitsec/WebViewClassic$HoverScrollHandler;

    iget-object v12, p0, Landroid/webkitsec/WebViewClassic;->mHoverHandler:Landroid/webkitsec/WebViewClassic$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/webkitsec/WebViewClassic$HoverScrollHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/webkitsec/WebViewClassic$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :catch_2
    move-exception v2

    const-string/jumbo v11, "webview"

    const-string v12, "Failed to change Pen Point to HOVERING_SCROLL_UP"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_e
    iget v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverBottomAreaHeight:I

    sub-int v11, v7, v11

    if-lt v10, v11, :cond_10

    if-gt v10, v7, :cond_10

    if-eqz v6, :cond_10

    iget v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverIconStatus:I

    const/16 v12, 0xf

    if-eq v11, v12, :cond_f

    const/16 v11, 0xf

    const/4 v12, -0x1

    :try_start_3
    invoke-static {v11, v12}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    const/16 v11, 0xf

    iput v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverIconStatus:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_f
    :goto_4
    iget-object v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverHandler:Landroid/webkitsec/WebViewClassic$HoverScrollHandler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkitsec/WebViewClassic$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    long-to-int v11, v11

    iput v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverRecognitionStartTime:I

    const/4 v11, 0x2

    iput v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverScrollDirection:I

    iget-object v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverHandler:Landroid/webkitsec/WebViewClassic$HoverScrollHandler;

    iget-object v12, p0, Landroid/webkitsec/WebViewClassic;->mHoverHandler:Landroid/webkitsec/WebViewClassic$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/webkitsec/WebViewClassic$HoverScrollHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/webkitsec/WebViewClassic$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :catch_3
    move-exception v2

    const-string/jumbo v11, "webview"

    const-string v12, "Failed to change Pen Point to HOVERING_SCROLL_DOWN"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_10
    if-ltz v9, :cond_12

    iget v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverAreaHeight:I

    if-gt v9, v11, :cond_12

    if-eqz v5, :cond_12

    iget v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverIconStatus:I

    const/16 v12, 0x11

    if-eq v11, v12, :cond_11

    const/16 v11, 0x11

    const/4 v12, -0x1

    :try_start_4
    invoke-static {v11, v12}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    const/16 v11, 0x11

    iput v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverIconStatus:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_11
    :goto_5
    iget-object v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverHandler:Landroid/webkitsec/WebViewClassic$HoverScrollHandler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkitsec/WebViewClassic$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    long-to-int v11, v11

    iput v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverRecognitionStartTime:I

    const/4 v11, 0x3

    iput v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverScrollDirection:I

    iget-object v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverHandler:Landroid/webkitsec/WebViewClassic$HoverScrollHandler;

    iget-object v12, p0, Landroid/webkitsec/WebViewClassic;->mHoverHandler:Landroid/webkitsec/WebViewClassic$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/webkitsec/WebViewClassic$HoverScrollHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/webkitsec/WebViewClassic$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :catch_4
    move-exception v2

    const-string/jumbo v11, "webview"

    const-string v12, "Failed to change Pen Point to HOVERING_SCROLL_LEFT"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_12
    iget v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverAreaHeight:I

    sub-int v11, v8, v11

    if-lt v9, v11, :cond_14

    if-gt v9, v8, :cond_14

    if-eqz v5, :cond_14

    iget v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverIconStatus:I

    const/16 v12, 0xd

    if-eq v11, v12, :cond_13

    const/16 v11, 0xd

    const/4 v12, -0x1

    :try_start_5
    invoke-static {v11, v12}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    const/16 v11, 0xd

    iput v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverIconStatus:I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_13
    :goto_6
    iget-object v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverHandler:Landroid/webkitsec/WebViewClassic$HoverScrollHandler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkitsec/WebViewClassic$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    long-to-int v11, v11

    iput v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverRecognitionStartTime:I

    const/4 v11, 0x4

    iput v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverScrollDirection:I

    iget-object v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverHandler:Landroid/webkitsec/WebViewClassic$HoverScrollHandler;

    iget-object v12, p0, Landroid/webkitsec/WebViewClassic;->mHoverHandler:Landroid/webkitsec/WebViewClassic$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/webkitsec/WebViewClassic$HoverScrollHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/webkitsec/WebViewClassic$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :catch_5
    move-exception v2

    const-string/jumbo v11, "webview"

    const-string v12, "Failed to change Pen Point to HOVERING_SCROLL_RIGHT"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_14
    iget-object v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverHandler:Landroid/webkitsec/WebViewClassic$HoverScrollHandler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkitsec/WebViewClassic$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_15

    const/4 v11, 0x0

    iput v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverRecognitionStartTime:I

    iget-object v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverHandler:Landroid/webkitsec/WebViewClassic$HoverScrollHandler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkitsec/WebViewClassic$HoverScrollHandler;->removeMessages(I)V

    :cond_15
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/webkitsec/WebViewClassic;->mCheckHoverScrollStart:Z

    iget v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverIconStatus:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_4

    const/4 v11, 0x1

    const/4 v12, -0x1

    :try_start_6
    invoke-static {v11, v12}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    const/4 v11, 0x1

    iput v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverIconStatus:I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_2

    :catch_6
    move-exception v2

    const-string/jumbo v11, "webview"

    const-string v12, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_2
    iget-object v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverHandler:Landroid/webkitsec/WebViewClassic$HoverScrollHandler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkitsec/WebViewClassic$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_16

    iget-object v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverHandler:Landroid/webkitsec/WebViewClassic$HoverScrollHandler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkitsec/WebViewClassic$HoverScrollHandler;->removeMessages(I)V

    :cond_16
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/webkitsec/WebViewClassic;->mCheckHoverScrollStart:Z

    iget v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverIconStatus:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_17

    const/4 v11, 0x1

    const/4 v12, -0x1

    :try_start_7
    invoke-static {v11, v12}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    const/4 v11, 0x1

    iput v11, p0, Landroid/webkitsec/WebViewClassic;->mHoverIconStatus:I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    :cond_17
    :goto_7
    iget-object v11, p0, Landroid/webkitsec/WebViewClassic;->mOverScrollGlow:Landroid/webkitsec/OverScrollGlow;

    if-eqz v11, :cond_4

    iget-object v11, p0, Landroid/webkitsec/WebViewClassic;->mOverScrollGlow:Landroid/webkitsec/OverScrollGlow;

    invoke-virtual {v11}, Landroid/webkitsec/OverScrollGlow;->releaseAll()V

    goto/16 :goto_2

    :catch_7
    move-exception v2

    const-string/jumbo v11, "webview"

    const-string v12, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static clampBetween(III)I
    .locals 1

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private clearHelpers()V
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v0

    instance-of v0, v0, Landroid/webkitsec/HtmlComposerView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->hideSoftKeyboard()V

    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->clearActionModes()V

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->dismissFullScreenMode()V

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->dismissWebSelectDialog()V

    return-void
.end method

.method private commitTextBatch()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mBatchedTextChanges:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessages(Ljava/util/ArrayList;)V

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mBatchedTextChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mIsBatchingTextChanges:Z

    return-void
.end method

.method private static computeDuration(II)I
    .locals 4

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit16 v2, v0, 0x3e8

    div-int/lit16 v1, v2, 0x1e0

    const/16 v2, 0x2ee

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private computeRealHorizontalScrollRange()I
    .locals 2

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mDrawHistory:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mHistoryWidth:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mContentWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v1}, Landroid/webkitsec/ZoomManager;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private computeRealVerticalScrollRange()I
    .locals 2

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mDrawHistory:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mHistoryHeight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mContentHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v1}, Landroid/webkitsec/ZoomManager;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private contentScrollTo(IIZ)V
    .locals 5

    iget-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mDrawHistory:Z

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v3

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getOverlappingActionModeHeight()I

    move-result v4

    sub-int v0, v3, v4

    iget-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mFindIsUp:Z

    if-nez v3, :cond_1

    invoke-virtual {p0, p1}, Landroid/webkitsec/WebViewClassic;->contentToViewX(I)I

    move-result v1

    invoke-virtual {p0, p2}, Landroid/webkitsec/WebViewClassic;->contentToViewY(I)I

    move-result v2

    :goto_1
    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, p3, v3}, Landroid/webkitsec/WebViewClassic;->pinScrollTo(IIZI)Z

    goto :goto_0

    :cond_1
    if-gez v0, :cond_2

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {p0, p1}, Landroid/webkitsec/WebViewClassic;->contentToViewDimension(I)I

    move-result v1

    invoke-virtual {p0, p2}, Landroid/webkitsec/WebViewClassic;->contentToViewDimension(I)I

    move-result v3

    add-int v2, v3, v0

    goto :goto_1
.end method

.method private contentSizeChanged(Z)V
    .locals 3

    iget v1, p0, Landroid/webkitsec/WebViewClassic;->mContentWidth:I

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mContentHeight:I

    or-int/2addr v1, v2

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getViewHeightWithTitle()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v2

    sub-int v0, v1, v2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v1

    instance-of v1, v1, Landroid/webkitsec/HtmlComposerView;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mHeightCanMeasure:Z

    if-nez v1, :cond_2

    iget v1, p0, Landroid/webkitsec/WebViewClassic;->mContentHeight:I

    if-le v1, v0, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mHeightCanMeasure:Z

    :cond_2
    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mHeightCanMeasure:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1}, Landroid/webkitsec/WebView;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mContentHeight:I

    invoke-virtual {p0, v2}, Landroid/webkitsec/WebViewClassic;->contentToViewDimension(I)I

    move-result v2

    if-ne v1, v2, :cond_3

    if-eqz p1, :cond_0

    :cond_3
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1}, Landroid/webkitsec/WebView;->requestLayout()V

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mWidthCanMeasure:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1}, Landroid/webkitsec/WebView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mContentWidth:I

    invoke-virtual {p0, v2}, Landroid/webkitsec/WebViewClassic;->contentToViewDimension(I)I

    move-result v2

    if-ne v1, v2, :cond_5

    if-eqz p1, :cond_0

    :cond_5
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1}, Landroid/webkitsec/WebView;->requestLayout()V

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/webkitsec/WebViewClassic;->sendViewSizeZoom(Z)Z

    goto :goto_0
.end method

.method private copySelectionSec(Z)Z
    .locals 6

    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettingsClassic;->getUseDefaultClipboard()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v1, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v1}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    invoke-virtual {v1, v3}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    const-string v5, "clipboardEx"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    const-string v4, "Copy"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/webkitsec/WebViewClassic;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private copyToClipboard(Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method private destroyJava()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkitsec/CallbackProxy;->blockMessages()V

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->clearHelpers()V

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mAccessibilityInjector:Landroid/webkitsec/AccessibilityInjector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mAccessibilityInjector:Landroid/webkitsec/AccessibilityInjector;

    invoke-virtual {v1}, Landroid/webkitsec/AccessibilityInjector;->destroy()V

    iput-object v2, p0, Landroid/webkitsec/WebViewClassic;->mAccessibilityInjector:Landroid/webkitsec/AccessibilityInjector;

    :cond_0
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mAutoCompletePopup:Landroid/webkitsec/AutoCompletePopup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mAutoCompletePopup:Landroid/webkitsec/AutoCompletePopup;

    invoke-virtual {v1}, Landroid/webkitsec/AutoCompletePopup;->dismissAutoFillPopup()V

    :cond_1
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-eqz v1, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewCore;->destroy()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkitsec/CallbackProxy;->shutdown()V

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private destroyNative()V
    .locals 3

    iget v1, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_1

    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->nativeDestroy(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    new-instance v2, Landroid/webkitsec/WebViewClassic$DestroyNativeRunnable;

    invoke-direct {v2, v0}, Landroid/webkitsec/WebViewClassic$DestroyNativeRunnable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static disablePlatformNotifications()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v2, Landroid/webkitsec/WebViewClassic;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Landroid/webkitsec/WebViewClassic;->sNotificationsEnabled:Z

    invoke-static {}, Landroid/webkitsec/JniUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->disableProxyListener(Landroid/content/Context;)V

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static declared-synchronized disableProxyListener(Landroid/content/Context;)V
    .locals 3

    const-class v1, Landroid/webkitsec/WebViewClassic;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkitsec/WebViewClassic;->sProxyReceiver:Landroid/webkitsec/WebViewClassic$ProxyReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/webkitsec/WebViewClassic;->sProxyReceiver:Landroid/webkitsec/WebViewClassic$ProxyReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-object v0, Landroid/webkitsec/WebViewClassic;->sProxyReceiver:Landroid/webkitsec/WebViewClassic$ProxyReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private dismissFullScreenMode()V
    .locals 1

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->inFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mFullScreenHolder:Landroid/webkitsec/PluginFullScreenHolder;

    invoke-virtual {v0}, Landroid/webkitsec/PluginFullScreenHolder;->hide()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mFullScreenHolder:Landroid/webkitsec/PluginFullScreenHolder;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    :cond_0
    return-void
.end method

.method private dismissWebSelectDialog()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->bWebSelectDialogIsUp:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;

    invoke-virtual {v0}, Landroid/webkitsec/WebSelectDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->bWebSelectDialogIsUp:Z

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0x7c

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    :cond_0
    return-void
.end method

.method private displayColorPicker()V
    .locals 3

    const-string/jumbo v1, "webview"

    const-string v2, "displayColorPicker"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/webkitsec/WebViewClassic$ColorPickerDialog;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/webkitsec/WebViewClassic$ColorPickerDialog;-><init>(Landroid/webkitsec/WebViewClassic;Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic$ColorPickerDialog;->show()V

    return-void
.end method

.method private displayDateTimePickers(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/webkitsec/WebViewClassic$DateTimePicker;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/webkitsec/WebViewClassic$DateTimePicker;-><init>(Landroid/webkitsec/WebViewClassic;Landroid/content/Context;)V

    const-string v1, "date"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/webkitsec/WebViewClassic$DateTimePicker;->show(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "datetime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "datetime-local"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/webkitsec/WebViewClassic$DateTimePicker;->show(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "time"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/webkitsec/WebViewClassic$DateTimePicker;->show(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private displaySoftKeyboard(Z)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v4}, Landroid/webkitsec/ZoomManager;->getScale()F

    move-result v4

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v5}, Landroid/webkitsec/ZoomManager;->getDefaultScale()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    move v1, v2

    :goto_0
    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getPageZoomOnIMELaunch()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    iget v5, p0, Landroid/webkitsec/WebViewClassic;->mLastTouchX:I

    int-to-float v5, v5

    iget v6, p0, Landroid/webkitsec/WebViewClassic;->mLastTouchY:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/webkitsec/ZoomManager;->setZoomCenter(FF)V

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v5}, Landroid/webkitsec/ZoomManager;->getDefaultScale()F

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/webkitsec/ZoomManager;->setZoomScale(FZ)V

    :cond_0
    iget-boolean v4, p0, Landroid/webkitsec/WebViewClassic;->mHasWindowFocus:Z

    if-nez v4, :cond_2

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0xb6

    const-wide/16 v4, 0x1e

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0, v4}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0, v4, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iput-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mIsSoftkeyboardVisible:Z

    goto :goto_1
.end method

.method private displaySoftKeyboardWithDelay()V
    .locals 3

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mIsSoftkeyboardVisible:Z

    return-void
.end method

.method private doDrag(II)Z
    .locals 20

    const/4 v12, 0x1

    sget-boolean v2, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "webview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doDrag deltaX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " deltaY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCurrentScrollingLayerId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/WebViewClassic;->mCurrentScrollingLayerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mTouchMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getInvScale = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v4}, Landroid/webkitsec/ZoomManager;->getInvScale()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    or-int v2, p1, p2

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->computeMaxScrollX()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->computeMaxScrollY()I

    move-result v8

    move/from16 v0, p1

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v3}, Landroid/webkitsec/ZoomManager;->getInvScale()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v13, v2

    move/from16 v0, p2

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v3}, Landroid/webkitsec/ZoomManager;->getInvScale()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v14, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkitsec/WebViewClassic;->mIsEditingText:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkitsec/WebViewClassic;->mTouchInEditText:Z

    if-eqz v2, :cond_4

    invoke-direct/range {p0 .. p2}, Landroid/webkitsec/WebViewClassic;->canTextScroll(II)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getTextScrollX()I

    move-result v5

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getMaxTextScrollX()I

    move-result v7

    move/from16 p1, v13

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getTextScrollY()I

    move-result v6

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getMaxTextScrollY()I

    move-result v8

    move/from16 p2, v14

    const/16 v2, 0xa

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/4 v12, 0x0

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mOverScrollGlow:Landroid/webkitsec/OverScrollGlow;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mOverScrollGlow:Landroid/webkitsec/OverScrollGlow;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Landroid/webkitsec/OverScrollGlow;->setOverScrollDeltas(II)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mWebViewPrivate:Landroid/webkitsec/WebView$PrivateAccess;

    move-object/from16 v0, p0

    iget v9, v0, Landroid/webkitsec/WebViewClassic;->mOverscrollDistance:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/webkitsec/WebViewClassic;->mOverscrollDistance:I

    const/4 v11, 0x1

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v11}, Landroid/webkitsec/WebView$PrivateAccess;->overScrollBy(IIIIIIIIZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mOverScrollGlow:Landroid/webkitsec/OverScrollGlow;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mOverScrollGlow:Landroid/webkitsec/OverScrollGlow;

    invoke-virtual {v2}, Landroid/webkitsec/OverScrollGlow;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v2}, Landroid/webkitsec/ZoomManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v15

    if-eqz v15, :cond_6

    invoke-virtual {v15}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "webview"

    const-string/jumbo v3, "mOverScrollGlow.isAnimating invalidate skip during zooming"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v2}, Landroid/webkitsec/ZoomManager;->keepZoomPickerVisible()V

    return v12

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkitsec/WebViewClassic;->mCurrentScrollingLayerId:I

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v13

    move/from16 v0, v16

    invoke-static {v0, v2, v3}, Landroid/webkitsec/WebViewClassic;->clampBetween(III)I

    move-result v18

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v14

    move/from16 v0, v17

    invoke-static {v0, v2, v3}, Landroid/webkitsec/WebViewClassic;->clampBetween(III)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move/from16 v0, v18

    if-ne v0, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move/from16 v0, v19

    if-ne v0, v2, :cond_5

    or-int v2, v13, v14

    if-nez v2, :cond_1

    :cond_5
    const/16 v2, 0x9

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    move/from16 p1, v13

    move/from16 p2, v14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    move/from16 v7, v16

    move/from16 v8, v17

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    goto :goto_1
.end method

.method private doFling()V
    .locals 27

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->computeMaxScrollX()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->computeMaxScrollY()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkitsec/WebViewClassic;->mMaximumFling:I

    int-to-float v7, v7

    invoke-virtual {v2, v5, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebViewClassic;->mOverscrollDistance:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebViewClassic;->mOverflingDistance:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/16 v5, 0x9

    if-ne v2, v5, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    const/16 v19, 0x0

    move/from16 v23, v19

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkitsec/WebViewClassic;->mSnapScrollMode:I

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkitsec/WebViewClassic;->mSnapScrollMode:I

    and-int/lit8 v2, v2, 0x2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_8

    const/16 v26, 0x0

    :cond_3
    :goto_2
    if-nez v6, :cond_4

    if-eqz v26, :cond_5

    :cond_4
    if-nez v8, :cond_9

    if-nez v25, :cond_9

    :cond_5
    invoke-static {}, Landroid/webkitsec/WebViewCore;->resumePriority()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkitsec/WebViewClassic;->mSelectingText:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->resumeUpdatePicture(Landroid/webkitsec/WebViewCore;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/16 v5, 0xa

    if-ne v2, v5, :cond_2

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getTextScrollX()I

    move-result v3

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getTextScrollY()I

    move-result v4

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getMaxTextScrollX()I

    move-result v6

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getMaxTextScrollY()I

    move-result v8

    const/16 v19, 0x0

    move/from16 v23, v19

    goto :goto_1

    :cond_8
    const/16 v25, 0x0

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v21

    move/from16 v0, v25

    int-to-double v9, v0

    move/from16 v0, v26

    int-to-double v11, v0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v0, v9

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkitsec/WebViewClassic;->mLastVelocity:F

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_b

    const/4 v2, 0x0

    cmpl-float v2, v21, v2

    if-lez v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkitsec/WebViewClassic;->mLastVelocity:F

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v5

    cmpl-float v2, v24, v2

    if-lez v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkitsec/WebViewClassic;->mLastVelY:F

    float-to-double v9, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkitsec/WebViewClassic;->mLastVelX:F

    float-to-double v11, v2

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    move/from16 v0, v26

    int-to-double v11, v0

    move/from16 v0, v25

    int-to-double v13, v0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v11

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    double-to-float v0, v9

    move/from16 v22, v0

    const v20, 0x40c90fdb

    const v2, 0x40b4f4ab

    cmpl-float v2, v22, v2

    if-gtz v2, :cond_a

    const v2, 0x3f20d97c

    cmpg-float v2, v22, v2

    if-gez v2, :cond_b

    :cond_a
    move/from16 v0, v25

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkitsec/WebViewClassic;->mLastVelX:F

    mul-float v5, v5, v21

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkitsec/WebViewClassic;->mLastVelocity:F

    div-float/2addr v5, v7

    add-float/2addr v2, v5

    float-to-int v0, v2

    move/from16 v25, v0

    move/from16 v0, v26

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkitsec/WebViewClassic;->mLastVelY:F

    mul-float v5, v5, v21

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkitsec/WebViewClassic;->mLastVelocity:F

    div-float/2addr v5, v7

    add-float/2addr v2, v5

    float-to-int v0, v2

    move/from16 v26, v0

    move/from16 v0, v25

    int-to-double v9, v0

    move/from16 v0, v26

    int-to-double v11, v0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v0, v9

    move/from16 v24, v0

    :cond_b
    if-eqz v3, :cond_c

    if-ne v3, v6, :cond_d

    :cond_c
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v2, v5, :cond_d

    const/16 v25, 0x0

    :cond_d
    if-eqz v4, :cond_e

    if-ne v4, v8, :cond_f

    :cond_e
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v2, v5, :cond_f

    const/16 v26, 0x0

    :cond_f
    move/from16 v0, v23

    move/from16 v1, v19

    if-ge v0, v1, :cond_15

    if-lez v25, :cond_10

    move/from16 v0, v23

    neg-int v2, v0

    if-eq v3, v2, :cond_11

    :cond_10
    if-gez v25, :cond_12

    add-int v2, v6, v23

    if-ne v3, v2, :cond_12

    :cond_11
    const/16 v25, 0x0

    :cond_12
    if-lez v26, :cond_13

    move/from16 v0, v23

    neg-int v2, v0

    if-eq v4, v2, :cond_14

    :cond_13
    if-gez v26, :cond_15

    add-int v2, v8, v23

    if-ne v4, v2, :cond_15

    :cond_14
    const/16 v26, 0x0

    :cond_15
    move/from16 v0, v25

    int-to-float v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkitsec/WebViewClassic;->mLastVelX:F

    move/from16 v0, v26

    int-to-float v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkitsec/WebViewClassic;->mLastVelY:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic;->mLastVelocity:F

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkitsec/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    move/from16 v0, v25

    neg-int v12, v0

    move/from16 v0, v26

    neg-int v13, v0

    const/4 v14, 0x0

    const/16 v16, 0x0

    if-nez v6, :cond_16

    const/16 v18, 0x0

    :goto_3
    move v10, v3

    move v11, v4

    move v15, v6

    move/from16 v17, v8

    invoke-virtual/range {v9 .. v19}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    goto/16 :goto_0

    :cond_16
    move/from16 v18, v19

    goto :goto_3
.end method

.method private doHoverScrollMove()V
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x4

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v0, v2

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverRecognitionCurrentTime:I

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverRecognitionCurrentTime:I

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mHoverRecognitionStartTime:I

    sub-int/2addr v0, v2

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverRecognitionDurationTime:I

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverRecognitionCurrentTime:I

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mHoverScrollStartTime:I

    sub-int/2addr v0, v2

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mHoverScrollTimeInterval:I

    if-ge v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverRecognitionDurationTime:I

    if-le v0, v11, :cond_5

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverRecognitionDurationTime:I

    if-ge v0, v10, :cond_5

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->HOVERSCROLL_SPEED_STEP_2:I

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverScrollSpeed:I

    :goto_1
    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverScrollDirection:I

    if-ne v0, v4, :cond_8

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverScrollSpeed:I

    mul-int/lit8 v9, v0, -0x1

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverTopAreaTop:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v0

    mul-int/lit8 v9, v0, -0x1

    :cond_2
    :goto_2
    if-gez v9, :cond_3

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverScrollDirection:I

    if-ne v0, v4, :cond_3

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_3
    if-lez v9, :cond_a

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverScrollDirection:I

    if-ne v0, v11, :cond_a

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->computeMaxScrollY()I

    move-result v2

    if-ge v0, v2, :cond_a

    :cond_4
    invoke-direct {p0, v1, v9, v4, v1}, Landroid/webkitsec/WebViewClassic;->pinScrollBy(IIZI)Z

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverHandler:Landroid/webkitsec/WebViewClassic$HoverScrollHandler;

    iget v1, p0, Landroid/webkitsec/WebViewClassic;->HOVERSCROLL_DELAY:I

    int-to-long v1, v1

    invoke-virtual {v0, v4, v1, v2}, Landroid/webkitsec/WebViewClassic$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_5
    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverRecognitionDurationTime:I

    if-lt v0, v10, :cond_6

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverRecognitionDurationTime:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_6

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->HOVERSCROLL_SPEED_STEP_3:I

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverScrollSpeed:I

    goto :goto_1

    :cond_6
    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverRecognitionDurationTime:I

    const/4 v2, 0x5

    if-lt v0, v2, :cond_7

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->HOVERSCROLL_SPEED_STEP_4:I

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverScrollSpeed:I

    goto :goto_1

    :cond_7
    iget v0, p0, Landroid/webkitsec/WebViewClassic;->HOVERSCROLL_SPEED_STEP_1:I

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverScrollSpeed:I

    goto :goto_1

    :cond_8
    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverScrollDirection:I

    if-ne v0, v12, :cond_9

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverScrollSpeed:I

    mul-int/lit8 v9, v0, -0x1

    goto :goto_2

    :cond_9
    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverScrollSpeed:I

    mul-int/lit8 v9, v0, 0x1

    goto :goto_2

    :cond_a
    if-gez v9, :cond_b

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverScrollDirection:I

    if-ne v0, v12, :cond_b

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v0

    if-gtz v0, :cond_c

    :cond_b
    if-lez v9, :cond_d

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverScrollDirection:I

    if-ne v0, v10, :cond_d

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->computeMaxScrollX()I

    move-result v2

    if-ge v0, v2, :cond_d

    :cond_c
    invoke-direct {p0, v9, v1, v4, v1}, Landroid/webkitsec/WebViewClassic;->pinScrollBy(IIZI)Z

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverHandler:Landroid/webkitsec/WebViewClassic$HoverScrollHandler;

    iget v1, p0, Landroid/webkitsec/WebViewClassic;->HOVERSCROLL_DELAY:I

    int-to-long v1, v1

    invoke-virtual {v0, v4, v1, v2}, Landroid/webkitsec/WebViewClassic$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_d
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverTopAreaTop:I

    if-lez v0, :cond_e

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v0

    if-nez v0, :cond_e

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverScrollDirection:I

    if-ne v0, v4, :cond_e

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverScrollSpeed:I

    mul-int/lit8 v9, v0, -0x1

    :cond_e
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v0

    if-nez v0, :cond_f

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverScrollDirection:I

    if-eq v0, v4, :cond_10

    :cond_f
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->computeMaxScrollY()I

    move-result v2

    if-ne v0, v2, :cond_12

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverScrollDirection:I

    if-ne v0, v11, :cond_12

    :cond_10
    move v8, v9

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->computeMaxScrollY()I

    move-result v6

    :cond_11
    :goto_3
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mOverScrollGlow:Landroid/webkitsec/OverScrollGlow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mOverScrollGlow:Landroid/webkitsec/OverScrollGlow;

    invoke-virtual {v0, v7, v8}, Landroid/webkitsec/OverScrollGlow;->setOverScrollDeltas(II)V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mOverScrollGlow:Landroid/webkitsec/OverScrollGlow;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v4

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/webkitsec/OverScrollGlow;->pullGlow(IIIIII)V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v0

    if-nez v0, :cond_13

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverScrollDirection:I

    if-eq v0, v12, :cond_14

    :cond_13
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->computeMaxScrollX()I

    move-result v2

    if-ne v0, v2, :cond_11

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mHoverScrollDirection:I

    if-ne v0, v10, :cond_11

    :cond_14
    move v7, v9

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->computeMaxScrollX()I

    move-result v5

    goto :goto_3
.end method

.method private doTrackball(JI)V
    .locals 25

    move-object/from16 v0, p0

    iget-wide v5, v0, Landroid/webkitsec/WebViewClassic;->mTrackballLastTime:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Landroid/webkitsec/WebViewClassic;->mTrackballFirstTime:J

    sub-long/2addr v5, v7

    long-to-int v12, v5

    if-nez v12, :cond_0

    const/16 v12, 0xc8

    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mTrackballRemainsX:F

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v5

    int-to-float v5, v12

    div-float v22, v3, v5

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mTrackballRemainsY:F

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v5

    int-to-float v5, v12

    div-float v24, v3, v5

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getViewHeight()I

    move-result v18

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v15

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mContentWidth:I

    sub-int v20, v3, v19

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mContentHeight:I

    sub-int v13, v3, v18

    if-gez v20, :cond_1

    const/16 v20, 0x0

    :cond_1
    if-gez v13, :cond_2

    const/4 v13, 0x0

    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mTrackballRemainsX:F

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v9

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mTrackballRemainsY:F

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v15

    const/4 v3, 0x0

    float-to-int v5, v15

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v17

    if-lez v11, :cond_8

    cmpg-float v3, v9, v10

    if-gez v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mTrackballRemainsY:F

    const/4 v5, 0x0

    cmpg-float v3, v3, v5

    if-gez v3, :cond_3

    const/16 v4, 0x13

    :goto_0
    const/16 v3, 0xa

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-eqz v3, :cond_7

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v11, :cond_6

    const/4 v7, 0x1

    move-object/from16 v3, p0

    move-wide/from16 v5, p1

    move/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/webkitsec/WebViewClassic;->letPageHandleNavKey(IJZI)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    const/16 v4, 0x14

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mTrackballRemainsX:F

    const/4 v5, 0x0

    cmpg-float v3, v3, v5

    if-gez v3, :cond_5

    const/16 v4, 0x15

    goto :goto_0

    :cond_5
    const/16 v4, 0x16

    goto :goto_0

    :cond_6
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v5, p1

    move/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/webkitsec/WebViewClassic;->letPageHandleNavKey(IJZI)V

    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mTrackballRemainsY:F

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mTrackballRemainsX:F

    :cond_8
    const/4 v3, 0x5

    if-lt v11, v3, :cond_c

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/webkitsec/WebViewClassic;->scaleTrackballX(FI)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1, v13}, Landroid/webkitsec/WebViewClassic;->scaleTrackballY(FI)I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v3

    sub-int v3, v3, v16

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v3, v5, :cond_9

    const/16 v21, 0x0

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v3

    sub-int v3, v3, v17

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v3, v5, :cond_a

    const/16 v23, 0x0

    :cond_a
    if-nez v21, :cond_b

    if-eqz v23, :cond_c

    :cond_b
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/webkitsec/WebViewClassic;->pinScrollBy(IIZI)Z

    :cond_c
    return-void
.end method

.method private drawContent(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkitsec/WebViewClassic;->mDrawHistory:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v2}, Landroid/webkitsec/ZoomManager;->getScale()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v3}, Landroid/webkitsec/ZoomManager;->getScale()F

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mHistoryPicture:Landroid/graphics/Picture;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v2}, Landroid/webkitsec/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_10

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkitsec/WebViewClassic;->mHeldMotionless:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_10

    :cond_3
    const/4 v10, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkitsec/WebViewClassic;->mHeldMotionless:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkitsec/WebViewClassic;->mHeldMotionless:I

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkitsec/WebViewClassic;->mHeldMotionless:I

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v6, 0x64

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkitsec/WebViewClassic;->mHeldMotionless:I

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v16

    if-eqz v11, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/webkitsec/ZoomManager;->animateZoom(Landroid/graphics/Canvas;)V

    :cond_6
    :goto_2
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-eqz v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkitsec/WebViewClassic;->nativeEvaluateLayersAnimations(I)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v3, 0xc4

    invoke-virtual {v2, v3}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    :cond_7
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkitsec/WebViewClassic;->mFindIsUp:Z

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkitsec/WebViewClassic;->mShowTextSelectionExtra:Z

    if-eqz v2, :cond_8

    const/4 v8, 0x1

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    if-ne v8, v2, :cond_9

    const/4 v8, 0x0

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mVisibleContentRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkitsec/WebViewClassic;->calcOurContentVisibleRectF(Landroid/graphics/RectF;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkitsec/WebViewClassic;->mIsWebViewVisible:Z

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkitsec/WebViewClassic;->mIsWebViewVisible:Z

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkitsec/WebViewClassic;->mScreenRect:Landroid/graphics/Rect;

    :goto_4
    sget-boolean v2, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v2, :cond_a

    const-string/jumbo v2, "webview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start DrawGL functor!! Scale = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScale()F

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "  ScrollX = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "  ScrollY = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkitsec/WebViewClassic;->mVisibleContentRect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScale()F

    move-result v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Landroid/webkitsec/WebViewClassic;->nativeCreateDrawGLFunction(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/RectF;FI)I

    move-result v14

    move-object/from16 v2, p1

    check-cast v2, Landroid/view/HardwareCanvas;

    invoke-virtual {v2, v14}, Landroid/view/HardwareCanvas;->callDrawGLFunction(I)I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkitsec/WebViewClassic;->mHardwareAccelSkia:Z

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->getHardwareAccelSkiaEnabled()Z

    move-result v3

    if-eq v2, v3, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebSettingsClassic;->getHardwareAccelSkiaEnabled()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/webkitsec/WebViewClassic;->mHardwareAccelSkia:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkitsec/WebViewClassic;->mHardwareAccelSkia:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkitsec/WebViewClassic;->nativeUseHardwareAccelSkia(Z)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v2}, Landroid/webkitsec/ZoomManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v12

    if-eqz v12, :cond_c

    invoke-virtual {v12}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkitsec/ZoomManager;->setHandleMoveEvForZooming(Z)V

    :cond_c
    sget-boolean v2, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v2, :cond_d

    const-string/jumbo v2, "webview"

    const-string v3, "Finish DrawGL functor!!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_5
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkitsec/WebViewClassic;->mFindIsUp:Z

    if-nez v2, :cond_e

    invoke-direct/range {p0 .. p1}, Landroid/webkitsec/WebViewClassic;->drawTextSelectionHandles(Landroid/graphics/Canvas;)V

    :cond_e
    const/4 v2, 0x2

    if-ne v8, v2, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_f

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkitsec/WebViewClassic;->mBTKeyBoardOn:Z

    if-eqz v2, :cond_18

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/webkitsec/WebViewClassic;->mBTKeyBoardOn:Z

    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v2

    instance-of v2, v2, Landroid/webkitsec/HtmlComposerView;

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v15

    check-cast v15, Landroid/webkitsec/HtmlComposerView;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/webkitsec/HtmlComposerView;->HtmlComposerDrawContent(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v2}, Landroid/webkitsec/ZoomManager;->getScale()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v3}, Landroid/webkitsec/ZoomManager;->getScale()F

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_2

    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_13
    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_14
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v2}, Landroid/webkitsec/ZoomManager;->isZoomAnimating()Z

    move-result v2

    if-nez v2, :cond_15

    if-eqz v9, :cond_17

    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkitsec/WebViewClassic;->mZoomFilter:Landroid/graphics/DrawFilter;

    :cond_16
    :goto_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mVisibleContentRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mBackgroundColor:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v8}, Landroid/webkitsec/WebViewClassic;->nativeDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;II)V

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    goto/16 :goto_5

    :cond_17
    if-eqz v10, :cond_16

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkitsec/WebViewClassic;->mScrollFilter:Landroid/graphics/DrawFilter;

    goto :goto_7

    :cond_18
    invoke-direct/range {p0 .. p1}, Landroid/webkitsec/WebViewClassic;->drawSelectionHandles(Landroid/graphics/Canvas;)V

    goto :goto_6
.end method

.method private drawHandle(Landroid/graphics/Point;ILandroid/graphics/Rect;ILandroid/graphics/Canvas;)V
    .locals 10

    iget v7, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    invoke-static {v7, p2}, Landroid/webkitsec/WebViewClassic;->nativeIsHandleLeft(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroid/webkitsec/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v7, p0, Landroid/webkitsec/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    mul-int/lit8 v7, v4, 0x3

    div-int/lit8 v3, v7, 0x4

    :goto_0
    iget v7, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v7}, Landroid/webkitsec/WebViewClassic;->contentToViewDimension(I)I

    move-result v5

    iget v7, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v7}, Landroid/webkitsec/WebViewClassic;->contentToViewDimension(I)I

    move-result v6

    sub-int v7, v5, v3

    sub-int v8, v5, v3

    add-int/2addr v8, v4

    add-int v9, v6, v1

    invoke-virtual {p3, v7, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v0, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroid/webkitsec/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v7, p0, Landroid/webkitsec/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v3, v4, 0x4

    goto :goto_0
.end method

.method private drawOverScrollBackground(Landroid/graphics/Canvas;)V
    .locals 10

    sget-object v0, Landroid/webkitsec/WebViewClassic;->mOverScrollBackground:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid/webkitsec/WebViewClassic;->mOverScrollBackground:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10808d7

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    sget-object v0, Landroid/webkitsec/WebViewClassic;->mOverScrollBackground:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v6, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid/webkitsec/WebViewClassic;->mOverScrollBorder:Landroid/graphics/Paint;

    sget-object v0, Landroid/webkitsec/WebViewClassic;->mOverScrollBorder:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Landroid/webkitsec/WebViewClassic;->mOverScrollBorder:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Landroid/webkitsec/WebViewClassic;->mOverScrollBorder:Landroid/graphics/Paint;

    const v1, -0x444445

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    const/4 v9, 0x0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->computeRealHorizontalScrollRange()I

    move-result v8

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->computeRealVerticalScrollRange()I

    move-result v0

    add-int v7, v9, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v0

    neg-int v0, v0

    int-to-float v1, v0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v0

    sub-int v0, v9, v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v0

    sub-int v0, v8, v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v0

    sub-int v0, v7, v0

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    sget-object v0, Landroid/webkitsec/WebViewClassic;->mOverScrollBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v0, -0x1

    int-to-float v2, v0

    int-to-float v3, v8

    int-to-float v4, v7

    sget-object v5, Landroid/webkitsec/WebViewClassic;->mOverScrollBorder:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v9, v8, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    return-void
.end method

.method private drawSelectionHandles(Landroid/graphics/Canvas;)V
    .locals 12

    const/4 v0, 0x1

    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectionOn:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mLongPress:Z

    if-nez v1, :cond_2

    move v9, v0

    :goto_0
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v1

    instance-of v1, v1, Landroid/webkitsec/HtmlComposerView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    check-cast v10, Landroid/webkitsec/HtmlComposerView;

    if-ne v0, v9, :cond_0

    invoke-virtual {v10}, Landroid/webkitsec/HtmlComposerView;->isSelectionHandleShown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v9, 0x0

    :cond_0
    new-instance v11, Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v0, v0, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {p0, v11}, Landroid/webkitsec/WebViewClassic;->WebkitSelectionAreaValidate(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v0, v0, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v11}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectionControls:Landroid/webkitsec/WebTextSelectionControls;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v2, v1, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v3, v1, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mCharacterSelectRegion:Landroid/graphics/Region;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v4, v1, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v5, v1, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget-boolean v6, p0, Landroid/webkitsec/WebViewClassic;->mIsPressingHandle:Z

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget v7, v1, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mGranularity:I

    iget v8, p0, Landroid/webkitsec/WebViewClassic;->mController:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Landroid/webkitsec/WebTextSelectionControls;->DrawSelectionControls(Landroid/graphics/Canvas;Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIZ)V

    :cond_1
    return-void

    :cond_2
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private drawTextSelectionHandles(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mBaseAlpha:Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;->getAlpha()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mExtentAlpha:Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;->getAlpha()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->ensureSelectionHandles()V

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorBase:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebViewClassic;->contentToViewDimension(I)I

    move-result v0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v6, v0, v1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorBase:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebViewClassic;->contentToViewDimension(I)I

    move-result v7

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectHandleBaseBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v1, v6

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v2, v7

    invoke-virtual {v0, v6, v7, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mSelectHandleBaseBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mBaseAlpha:Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorBase:Landroid/graphics/Point;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mSelectHandleBaseBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mBaseAlpha:Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;->getAlpha()I

    move-result v4

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/webkitsec/WebViewClassic;->drawHandle(Landroid/graphics/Point;ILandroid/graphics/Rect;ILandroid/graphics/Canvas;)V

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorExtent:Landroid/graphics/Point;

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mSelectHandleExtentBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mExtentAlpha:Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;->getAlpha()I

    move-result v4

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/webkitsec/WebViewClassic;->drawHandle(Landroid/graphics/Point;ILandroid/graphics/Rect;ILandroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public static enablePlatformNotifications()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v2, Landroid/webkitsec/WebViewClassic;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Landroid/webkitsec/WebViewClassic;->sNotificationsEnabled:Z

    invoke-static {}, Landroid/webkitsec/JniUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->setupProxyListener(Landroid/content/Context;)V

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private enabledTouchPerformancePatch(Z)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->isBrowserApp()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/webkitsec/DebugFlags;->ENABLE_TOUCH_PERFORMANCE_PATCH:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Landroid/webkitsec/WebViewInputDispatcher;->ENABLE_TOUCH_PERFORMANCE_PATCH:Z

    :goto_0
    sget-boolean v0, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enabledTouchPerformancePatch  DebugFlags.ENABLE_TOUCH_PERFORMANCE_PATCH = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/webkitsec/DebugFlags;->ENABLE_TOUCH_PERFORMANCE_PATCH:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WebViewInputDispatcher.ENABLE_TOUCH_PERFORMANCE_PATCH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/webkitsec/WebViewInputDispatcher;->ENABLE_TOUCH_PERFORMANCE_PATCH:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  getSettings().isBrowserApp() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebSettingsClassic;->isBrowserApp()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkitsec/WebViewInputDispatcher;->ENABLE_TOUCH_PERFORMANCE_PATCH:Z

    goto :goto_0
.end method

.method private endScrollEdit()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkitsec/WebViewClassic;->mLastEditScroll:J

    return-void
.end method

.method private endSelectingText()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectingText:Z

    iput-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mShowTextSelectionExtra:Z

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->animateHandles()V

    return-void
.end method

.method private ensureFunctorDetached()V
    .locals 3

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v2}, Landroid/webkitsec/WebView;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    invoke-direct {p0, v2}, Landroid/webkitsec/WebViewClassic;->nativeGetDrawGLFunction(I)I

    move-result v0

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v2}, Landroid/webkitsec/WebView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->detachFunctor(I)V

    :cond_0
    return-void
.end method

.method private ensureSelectionHandles()V
    .locals 3

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mThemeIsDeviceDefault:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080842

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080840

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080843

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080932

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080931

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080934

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    neg-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectOffset:Landroid/graphics/Point;

    goto :goto_0
.end method

.method private extendScroll(I)Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    add-int v3, v0, p1

    invoke-virtual {p0, v3}, Landroid/webkitsec/WebViewClassic;->pinLocY(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3, v1}, Landroid/widget/OverScroller;->setFinalY(I)V

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-static {v2, p1}, Landroid/webkitsec/WebViewClassic;->computeDuration(II)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/OverScroller;->extendDuration(I)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/webkitsec/WebViewClassic;->findAddress(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findAddress(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeFindAddress(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private findAllBody(Ljava/lang/String;Z)I
    .locals 6

    const/16 v4, 0xdd

    const/4 v1, 0x0

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkitsec/WebViewClassic;->mFindRequest:Landroid/webkitsec/WebViewCore$FindAllRequest;

    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v2, v4}, Landroid/webkitsec/WebViewCore;->removeMessages(I)V

    new-instance v2, Landroid/webkitsec/WebViewCore$FindAllRequest;

    invoke-direct {v2, p1}, Landroid/webkitsec/WebViewCore$FindAllRequest;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/webkitsec/WebViewClassic;->mFindRequest:Landroid/webkitsec/WebViewCore$FindAllRequest;

    if-eqz p2, :cond_2

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mFindRequest:Landroid/webkitsec/WebViewCore$FindAllRequest;

    invoke-virtual {v2, v4, v3}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mFindRequest:Landroid/webkitsec/WebViewCore$FindAllRequest;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v4, 0xdd

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mFindRequest:Landroid/webkitsec/WebViewCore$FindAllRequest;

    invoke-virtual {v3, v4, v5}, Landroid/webkitsec/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    :goto_1
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mFindRequest:Landroid/webkitsec/WebViewCore$FindAllRequest;

    iget v3, v3, Landroid/webkitsec/WebViewCore$FindAllRequest;->mMatchCount:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mFindRequest:Landroid/webkitsec/WebViewCore$FindAllRequest;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_3
    :try_start_2
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mFindRequest:Landroid/webkitsec/WebViewCore$FindAllRequest;

    iget v1, v1, Landroid/webkitsec/WebViewCore$FindAllRequest;->mMatchCount:I

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static fromWebView(Landroid/webkitsec/WebView;)Landroid/webkitsec/WebViewClassic;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebViewProvider()Landroid/webkitsec/WebViewProvider;

    move-result-object v0

    check-cast v0, Landroid/webkitsec/WebViewClassic;

    goto :goto_0
.end method

.method private getAccessibilityInjector()Landroid/webkitsec/AccessibilityInjector;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mAccessibilityInjector:Landroid/webkitsec/AccessibilityInjector;

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkitsec/AccessibilityInjector;

    invoke-direct {v0, p0}, Landroid/webkitsec/AccessibilityInjector;-><init>(Landroid/webkitsec/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mAccessibilityInjector:Landroid/webkitsec/AccessibilityInjector;

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mAccessibilityInjector:Landroid/webkitsec/AccessibilityInjector;

    return-object v0
.end method

.method private getCopyParams(IIZZF)Landroid/webkitsec/WebViewCore$CopyParams;
    .locals 2

    new-instance v0, Landroid/webkitsec/WebViewCore$CopyParams;

    invoke-direct {v0}, Landroid/webkitsec/WebViewCore$CopyParams;-><init>()V

    if-eqz v0, :cond_0

    iput p1, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mContentX:I

    iput p2, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mContentY:I

    iput-boolean p3, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mSmartSelection:Z

    iput-boolean p4, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mSelectionMove:Z

    iput p5, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mZoomScale:F

    iget v1, p0, Landroid/webkitsec/WebViewClassic;->mController:I

    iput v1, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mController:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mGranularity:I

    :cond_0
    return-object v0
.end method

.method private getCopyParams(IIZZFI)Landroid/webkitsec/WebViewCore$CopyParams;
    .locals 1

    invoke-direct/range {p0 .. p5}, Landroid/webkitsec/WebViewClassic;->getCopyParams(IIZZF)Landroid/webkitsec/WebViewCore$CopyParams;

    move-result-object v0

    iput p6, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mGranularity:I

    return-object v0
.end method

.method private getMaxTextScrollX()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getMaxTextScrollY()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getMovementDirection(II)I
    .locals 4

    const/4 v2, 0x0

    iget v3, p0, Landroid/webkitsec/WebViewClassic;->mPreviousTouchX:I

    sub-int v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Landroid/webkitsec/WebViewClassic;->mPreviousTouchY:I

    sub-int v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, p0, Landroid/webkitsec/WebViewClassic;->mPreviousTouchX:I

    if-ge p1, v3, :cond_2

    if-lt v0, v1, :cond_2

    const/4 v2, 0x1

    :cond_0
    :goto_0
    iget v3, p0, Landroid/webkitsec/WebViewClassic;->mPreviousTouchY:I

    if-ge p2, v3, :cond_3

    if-le v1, v0, :cond_3

    const/4 v2, 0x2

    :cond_1
    :goto_1
    return v2

    :cond_2
    iget v3, p0, Landroid/webkitsec/WebViewClassic;->mPreviousTouchX:I

    if-le p1, v3, :cond_0

    if-lt v0, v1, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_3
    iget v3, p0, Landroid/webkitsec/WebViewClassic;->mPreviousTouchY:I

    if-le p2, v3, :cond_1

    if-le v1, v0, :cond_1

    const/4 v2, 0x4

    goto :goto_1
.end method

.method private getOverlappingActionModeHeight()I
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mFindCallback:Landroid/webkitsec/FindActionModeCallback;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Landroid/webkitsec/WebViewClassic;->mCachedOverlappingActionModeHeight:I

    if-lez v1, :cond_2

    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mCachedOverlappingActionModeHackRotate:Z

    if-ne v1, v4, :cond_1

    const/4 v1, -0x1

    iput v1, p0, Landroid/webkitsec/WebViewClassic;->mCachedOverlappingActionModeHeight:I

    iput-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mCachedOverlappingActionModeHackRotate:Z

    :cond_1
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mGlobalVisibleOffset:Landroid/graphics/Point;

    invoke-virtual {v1, v2, v3}, Landroid/webkitsec/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mFindCallback:Landroid/webkitsec/FindActionModeCallback;

    invoke-virtual {v1}, Landroid/webkitsec/FindActionModeCallback;->getActionModeGlobalRight()I

    move-result v1

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-eq v1, v2, :cond_2

    iput-boolean v4, p0, Landroid/webkitsec/WebViewClassic;->mCachedOverlappingActionModeHackRotate:Z

    :cond_2
    iget v1, p0, Landroid/webkitsec/WebViewClassic;->mCachedOverlappingActionModeHeight:I

    if-gez v1, :cond_3

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mGlobalVisibleOffset:Landroid/graphics/Point;

    invoke-virtual {v1, v2, v3}, Landroid/webkitsec/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mFindCallback:Landroid/webkitsec/FindActionModeCallback;

    invoke-virtual {v1}, Landroid/webkitsec/FindActionModeCallback;->getActionModeGlobalBottom()I

    move-result v1

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mCachedOverlappingActionModeHeight:I

    :cond_3
    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mCachedOverlappingActionModeHeight:I

    goto :goto_0
.end method

.method private getPageZoomOnIMELaunch()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mPageZoomOnIMELaunch:Z

    return v0
.end method

.method public static declared-synchronized getPluginList()Landroid/webkitsec/PluginList;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v1, Landroid/webkitsec/WebViewClassic;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/webkitsec/PluginList;

    invoke-direct {v0}, Landroid/webkitsec/PluginList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getScaledMaxXScroll()I
    .locals 3

    iget-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mHeightCanMeasure:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x4

    :goto_0
    invoke-virtual {p0, v1}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v2

    return v2

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebViewClassic;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    goto :goto_0
.end method

.method private getScaledMaxYScroll()I
    .locals 4

    iget-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mHeightCanMeasure:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getViewHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x4

    :goto_0
    int-to-float v2, v0

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v3}, Landroid/webkitsec/ZoomManager;->getInvScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1}, Landroid/webkitsec/WebViewClassic;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    goto :goto_0
.end method

.method private static getSelectionCoordinate(III)I
    .locals 1

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getSelectionHandles([I)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorBase:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    aput v1, p1, v0

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorBase:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    aput v1, p1, v0

    const/4 v0, 0x2

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorExtent:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    aput v1, p1, v0

    const/4 v0, 0x3

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorExtent:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    aput v1, p1, v0

    return-void
.end method

.method private static getTextScrollDelta(FJ)I
    .locals 7

    long-to-float v3, p1

    mul-float v0, p0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    int-to-float v3, v1

    sub-float v2, v0, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    float-to-double v5, v2

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    return v1
.end method

.method private static getTextScrollSpeed(III)F
    .locals 2

    const v1, 0x3c23d70a    # 0.01f

    if-ge p0, p1, :cond_0

    sub-int v0, p0, p1

    int-to-float v0, v0

    mul-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    if-lt p0, p2, :cond_1

    sub-int v0, p0, p2

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    mul-float/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTextScrollX()I
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    return v0
.end method

.method private getTextScrollY()I
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    return v0
.end method

.method private getTextSelectedString(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v1, v1, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v1, v1, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    const-string/jumbo v1, "webview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cropRect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "webview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selectionRect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "webview"

    const-string v2, "cropRect and selectionRect does match"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getTextSelected()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getVisibleTitleHeightImpl()I
    .locals 3

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getOverlappingActionModeHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private goBackOrForward(IZ)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->clearHelpers()V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v2, 0x6a

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, p1, v0}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private goBackOrForwardImpl(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkitsec/WebViewClassic;->goBackOrForward(IZ)V

    return-void
.end method

.method private static handleCertTrustChanged()V
    .locals 2

    const/16 v0, 0xdc

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/webkitsec/WebViewCore;->sendStaticMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private static handleProxyBroadcast(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 3

    const/16 v2, 0xc1

    sget-boolean v1, Landroid/webkitsec/WebViewClassic;->bNeedToCheckCustomProxy:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/webkitsec/WebViewClassic;->setLocalProxy(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "proxy"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ProxyProperties;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x0

    invoke-static {v2, v1}, Landroid/webkitsec/WebViewCore;->sendStaticMessage(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {v2, v0}, Landroid/webkitsec/WebViewCore;->sendStaticMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleTextSelectionAutoScroll(II)Z
    .locals 12

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iget-object v9, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectionControls:Landroid/webkitsec/WebTextSelectionControls;

    iget v10, p0, Landroid/webkitsec/WebViewClassic;->mController:I

    iget-object v11, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    invoke-virtual {v9, p1, p2, v10, v11}, Landroid/webkitsec/WebTextSelectionControls;->getHandleExtendPoint(IIILandroid/webkitsec/WebViewCore$SelectionCopiedData;)Landroid/graphics/Point;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v9, 0x0

    :goto_0
    return v9

    :cond_0
    invoke-direct {p0, v8}, Landroid/webkitsec/WebViewClassic;->calcOurContentVisibleRectF(Landroid/graphics/RectF;)V

    invoke-virtual {v8, v7}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    iget-object v9, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectionControls:Landroid/webkitsec/WebTextSelectionControls;

    invoke-virtual {v9}, Landroid/webkitsec/WebTextSelectionControls;->getHandleHeight()I

    move-result v1

    iget-object v9, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectionControls:Landroid/webkitsec/WebTextSelectionControls;

    invoke-virtual {v9}, Landroid/webkitsec/WebTextSelectionControls;->getHandleWidth()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewClassic;->getMovementDirection(II)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    const/4 v6, 0x0

    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    const/4 v9, 0x1

    const/16 v10, 0x190

    invoke-direct {p0, v4, v5, v9, v10}, Landroid/webkitsec/WebViewClassic;->pinScrollBy(IIZI)Z

    :cond_2
    const/4 v9, 0x1

    goto :goto_0

    :pswitch_0
    iget v9, v7, Landroid/graphics/Rect;->left:I

    if-eqz v9, :cond_1

    iget v9, v0, Landroid/graphics/Point;->x:I

    iget v10, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v2

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9}, Landroid/webkitsec/WebViewClassic;->contentToViewDimension(I)I

    move-result v9

    const/16 v10, 0x1e

    if-gt v9, v10, :cond_1

    add-int/lit8 v4, v4, -0x28

    const/4 v6, 0x1

    goto :goto_1

    :pswitch_1
    iget v9, v7, Landroid/graphics/Rect;->top:I

    if-eqz v9, :cond_1

    iget v9, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v1

    iget v10, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9}, Landroid/webkitsec/WebViewClassic;->contentToViewDimension(I)I

    move-result v9

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v10

    add-int/lit8 v10, v10, 0x28

    if-gt v9, v10, :cond_1

    add-int/lit8 v5, v5, -0x28

    const/4 v6, 0x1

    goto :goto_1

    :pswitch_2
    iget v9, v7, Landroid/graphics/Rect;->right:I

    iget v10, v0, Landroid/graphics/Point;->x:I

    add-int/2addr v10, v2

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9}, Landroid/webkitsec/WebViewClassic;->contentToViewDimension(I)I

    move-result v9

    const/16 v10, 0x1e

    if-gt v9, v10, :cond_1

    add-int/lit8 v4, v4, 0x28

    const/4 v6, 0x1

    goto :goto_1

    :pswitch_3
    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    iget v10, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v10, v1

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9}, Landroid/webkitsec/WebViewClassic;->contentToViewDimension(I)I

    move-result v9

    const/16 v10, 0x28

    if-gt v9, v10, :cond_1

    add-int/lit8 v5, v5, 0x28

    const/4 v6, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleTouchEventCommon(Landroid/view/MotionEvent;III)V
    .locals 44

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v3}, Landroid/webkitsec/ZoomManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v24

    sget-boolean v3, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleTouchEventCommon "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mTouchMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  mLastTouchY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkitsec/WebViewClassic;->mLastTouchY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " numPointers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  mConfirmMove = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/webkitsec/WebViewClassic;->mConfirmMove:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, p3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getViewHeightWithTitle()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, p4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result p4

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mLastTouchX:I

    sub-int v20, v3, p3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mLastTouchY:I

    sub-int v21, v3, p4

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v3

    add-int v3, v3, p3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v3

    add-int v3, v3, p4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v7

    packed-switch p2, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mPerformLongPress:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mButtonActionOnMouse:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mKeyboardEnterPress:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mDialogMove:Z

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic;->mPrevTouchEventX_temp:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic;->mFirstTouchX:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic;->mPrevTouchEventY_temp:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic;->mFirstTouchY:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mDistanceY:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mDistanceX:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->getOnewayScrollEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mIsFitToScreen:Z

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic;->mOnewayScrollTouchDownX:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic;->mOnewayScrollTouchDownY:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v3}, Landroid/webkitsec/ZoomManager;->getScale()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v4}, Landroid/webkitsec/ZoomManager;->getMinZoomScale()F

    move-result v4

    sub-float v36, v3, v4

    move/from16 v0, v36

    float-to-double v3, v0

    const-wide v8, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v3, v3, v8

    if-gez v3, :cond_2

    move/from16 v0, v36

    float-to-double v3, v0

    const-wide v8, -0x406b851eb851eb85L    # -0.02

    cmpl-double v3, v3, v8

    if-lez v3, :cond_2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mIsFitToScreen:Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mEditTextScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mEditTextScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_3
    move/from16 v0, p3

    int-to-float v8, v0

    move/from16 v0, p4

    int-to-float v9, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v3 .. v9}, Landroid/webkitsec/WebViewClassic;->textSelectionTouchEvent(Landroid/view/MotionEvent;IIIFF)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mConfirmMove:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/webkitsec/WebViewClassic;->nativeSetIsScrolling(Z)V

    :cond_4
    :goto_1
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mButtonActionOnMouse:Z

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mSelectingText:Z

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    const-wide/16 v8, 0x12c

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    const-wide/16 v8, 0x3e8

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getHitTestResult()Landroid/webkitsec/WebView$HitTestResult;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v3

    instance-of v3, v3, Landroid/webkitsec/HtmlComposerView;

    if-eqz v3, :cond_9

    if-eqz v28, :cond_8

    invoke-virtual/range {v28 .. v28}, Landroid/webkitsec/WebView$HitTestResult;->getType()I

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->performLongClick()Z

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->notifyDoubleTapped()V

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/webkitsec/ZoomManager;->handleDoubleTap(FF)V

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebViewClassic;->mSnapScrollMode:I

    move/from16 v33, v0

    move/from16 v0, p3

    int-to-float v3, v0

    move/from16 v0, p4

    int-to-float v4, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/webkitsec/WebViewClassic;->startTouch(FFJ)V

    sget-boolean v3, Landroid/webkitsec/DebugFlags;->CHANNEL_SCROLL_ENABLE:Z

    if-eqz v3, :cond_b

    if-eqz v33, :cond_b

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    if-ne v3, v4, :cond_b

    or-int/lit8 v3, v33, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mSnapScrollMode:I

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mIsEditingText:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mTouchInEditText:Z

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->removeTouchHighlight()V

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_e

    mul-int v3, v20, v20

    mul-int v4, v21, v21

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/WebViewClassic;->mDoubleTapSlopSquare:I

    mul-int/lit8 v4, v4, 0x10

    if-ge v3, v4, :cond_d

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    goto/16 :goto_1

    :cond_d
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    goto/16 :goto_1

    :cond_e
    mul-int v3, v20, v20

    mul-int v4, v21, v21

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/WebViewClassic;->mDoubleTapSlopSquare:I

    if-ge v3, v4, :cond_f

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    goto/16 :goto_1

    :cond_f
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    goto/16 :goto_1

    :cond_10
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    sget-boolean v3, Landroid/webkitsec/WebViewClassic;->mLogEvent:Z

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/webkitsec/WebViewClassic;->mLastTouchUpTime:J

    sub-long v3, v24, v3

    const-wide/16 v8, 0x3e8

    cmp-long v3, v3, v8

    if-gez v3, :cond_11

    :cond_11
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mSelectionStarted:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mSelectingText:Z

    if-eqz v3, :cond_4

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->ensureSelectionHandles()V

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v3

    sub-int v3, p4, v3

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v4

    add-int v38, v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v3

    add-int v37, p3, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mSelectHandleBaseBounds:Landroid/graphics/Rect;

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mSelectionStarted:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mInputDispatcher:Landroid/webkitsec/WebViewInputDispatcher;

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mInputDispatcher:Landroid/webkitsec/WebViewInputDispatcher;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkitsec/WebViewInputDispatcher;->setClickOnSelectHandleCenter(Z)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mSelectCursorBase:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkitsec/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mSelectCursorBaseTextQuad:Landroid/webkitsec/QuadF;

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkitsec/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkitsec/QuadF;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x8c

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->hidePasteButton()V

    goto/16 :goto_1

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mSelectHandleExtentBounds:Landroid/graphics/Rect;

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mSelectionStarted:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mSelectCursorExtent:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkitsec/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mSelectCursorExtentTextQuad:Landroid/webkitsec/QuadF;

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkitsec/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkitsec/QuadF;

    goto/16 :goto_1

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->selectionDone()V

    goto/16 :goto_1

    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_a

    goto/16 :goto_2

    :pswitch_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mPrevTouchEventX_temp:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mPrevTouchEventX:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mPrevTouchEventY_temp:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mPrevTouchEventY:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic;->mPrevTouchEventX_temp:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic;->mPrevTouchEventY_temp:I

    move/from16 v0, p3

    int-to-float v8, v0

    move/from16 v0, p4

    int-to-float v9, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v3 .. v9}, Landroid/webkitsec/WebViewClassic;->textSelectionTouchEvent(Landroid/view/MotionEvent;IIIFF)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mConfirmMove:Z

    if-nez v3, :cond_17

    mul-int v3, v20, v20

    mul-int v4, v21, v21

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/WebViewClassic;->mTouchSlopSquare:I

    if-lt v3, v4, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mConfirmMove:Z

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_16

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    :cond_16
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->removeTouchHighlight()V

    :cond_17
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mSelectingText:Z

    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mSelectionStarted:Z

    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mIsEditingText:Z

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v3}, Landroid/webkitsec/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v32

    if-eqz v32, :cond_19

    const/4 v3, 0x1

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_19
    if-nez v20, :cond_1a

    if-eqz v21, :cond_1

    :cond_1a
    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mSelectOffset:Landroid/graphics/Point;

    if-eqz v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mSelectOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v42

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mSelectOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v43

    :cond_1b
    add-int v26, v6, v42

    add-int v27, v7, v43

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Point;->set(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkitsec/QuadF;

    move/from16 v0, v26

    int-to-float v4, v0

    move/from16 v0, v27

    int-to-float v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/webkitsec/QuadF;->containsPoint(FF)Z

    move-result v29

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v30

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mIsEditingText:Z

    if-eqz v3, :cond_1f

    if-nez v30, :cond_1f

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->beginScrollEdit()V

    :goto_3
    const/16 v39, 0x0

    if-nez v29, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mIsEditingText:Z

    if-eqz v3, :cond_1d

    if-nez v30, :cond_1d

    :cond_1c
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->snapDraggingCursor()V

    const/16 v39, 0x1

    :cond_1d
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v1}, Landroid/webkitsec/WebViewClassic;->updateWebkitSelection(Z)V

    if-nez v29, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mIsEditingText:Z

    if-eqz v3, :cond_1e

    if-eqz v30, :cond_1e

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->snapDraggingCursor()V

    :cond_1e
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic;->mLastTouchX:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic;->mLastTouchY:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    goto/16 :goto_0

    :cond_1f
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->endScrollEdit()V

    goto :goto_3

    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v3}, Landroid/webkitsec/ZoomManager;->GetIsActionPU()Z

    move-result v3

    if-eqz v3, :cond_21

    sget-boolean v3, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetIsActionPU = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v5}, Landroid/webkitsec/ZoomManager;->GetIsActionPU()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_21
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_25

    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got null mVelocityTracker when  mTouchMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_24

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_24

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/16 v4, 0xa

    if-eq v3, v4, :cond_24

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mConfirmMove:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Landroid/webkitsec/DebugFlags;->CHANNEL_SCROLL_ENABLE:Z

    if-eqz v3, :cond_23

    if-eqz v22, :cond_22

    invoke-virtual/range {v22 .. v22}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v3

    if-nez v3, :cond_23

    :cond_22
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mSnapScrollMode:I

    if-nez v3, :cond_23

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mFirstTouchX:I

    sub-int v3, p3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mFirstTouchY:I

    sub-int v3, p4, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v17

    sget-boolean v3, Landroid/webkitsec/WebViewClassic;->ENABLE_SCROLL_PERFORMANCE_PATCH:Z

    if-eqz v3, :cond_27

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mAx:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_26

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mSnapScrollMode:I

    :cond_23
    :goto_5
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic;->mLastTouchX:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic;->mLastTouchY:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mPrevTouchEventX:I

    sub-int v20, v3, p3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mPrevTouchEventY:I

    sub-int v21, v3, p4

    const/16 v31, 0x1

    move/from16 v0, p3

    int-to-float v3, v0

    move/from16 v0, p4

    int-to-float v4, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/webkitsec/WebViewClassic;->startScrollingLayer(FF)V

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->startDrag()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Landroid/webkitsec/WebViewClassic;->mStartDragTime:J

    :cond_24
    if-nez v20, :cond_2a

    if-nez v21, :cond_2a

    const/16 v31, 0x1

    goto/16 :goto_0

    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_4

    :cond_26
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mAy:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_23

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mSnapScrollMode:I

    goto :goto_5

    :cond_27
    const/16 v3, 0x10

    move/from16 v0, v16

    if-ge v0, v3, :cond_28

    const/16 v3, 0x10

    move/from16 v0, v17

    if-lt v0, v3, :cond_1

    :cond_28
    const/16 v3, 0x10

    move/from16 v0, v16

    if-ge v0, v3, :cond_29

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mSnapScrollMode:I

    goto :goto_5

    :cond_29
    const/16 v3, 0x10

    move/from16 v0, v17

    if-ge v0, v3, :cond_23

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mSnapScrollMode:I

    goto :goto_5

    :cond_2a
    sget-boolean v3, Landroid/webkitsec/DebugFlags;->CHANNEL_SCROLL_ENABLE:Z

    if-eqz v3, :cond_2c

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mSnapScrollMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2b

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mSnapScrollMode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2c

    :cond_2b
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mDistanceX:I

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mDistanceX:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mDistanceY:I

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mDistanceY:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mSnapScrollMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_32

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mDistanceY:I

    sget v4, Landroid/webkitsec/WebViewClassic;->sChannelDistance:I

    if-le v3, v4, :cond_31

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mSnapScrollMode:I

    :cond_2c
    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mSnapScrollMode:I

    if-eqz v3, :cond_2d

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mSnapScrollMode:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_34

    const/16 v21, 0x0

    :cond_2d
    :goto_7
    mul-int v3, v20, v20

    mul-int v4, v21, v21

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/WebViewClassic;->mTouchSlopSquare:I

    if-le v3, v4, :cond_35

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mHeldMotionless:I

    :goto_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mIsFitToScreen:Z

    if-eqz v3, :cond_30

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->getOnewayScrollEnabled()Z

    move-result v3

    if-eqz v3, :cond_30

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mOnewayMode:Z

    if-nez v3, :cond_2f

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mOnewayScrollTouchDownX:I

    sub-int v23, v3, p3

    sget v3, Landroid/webkitsec/WebViewClassic;->ONEWAY_SCROLL_TRIGGER_BOUNDARY:I

    move/from16 v0, v23

    if-gt v0, v3, :cond_2e

    sget v3, Landroid/webkitsec/WebViewClassic;->ONEWAY_SCROLL_TRIGGER_BOUNDARY:I

    neg-int v3, v3

    move/from16 v0, v23

    if-ge v0, v3, :cond_2f

    :cond_2e
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mOnewayMode:Z

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mOnewayScrollTouchDownY:I

    sub-int v3, v3, p4

    if-lez v3, :cond_2f

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mIsOnewayScrollDown:Z

    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mOnewayMode:Z

    if-eqz v3, :cond_30

    mul-int v3, v20, v20

    mul-int v4, v21, v21

    add-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v0, v3

    move/from16 v21, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mIsOnewayScrollDown:Z

    if-eqz v3, :cond_30

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    :cond_30
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkitsec/WebViewClassic;->mLastTouchTime:J

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/webkitsec/WebViewClassic;->doDrag(II)Z

    move-result v15

    if-eqz v15, :cond_36

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic;->mLastTouchX:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic;->mLastTouchY:I

    goto/16 :goto_0

    :cond_31
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mDistanceX:I

    sget v4, Landroid/webkitsec/WebViewClassic;->sChannelDistance:I

    if-le v3, v4, :cond_2c

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mDistanceY:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mDistanceX:I

    goto/16 :goto_6

    :cond_32
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mDistanceX:I

    sget v4, Landroid/webkitsec/WebViewClassic;->sChannelDistance:I

    if-le v3, v4, :cond_33

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mSnapScrollMode:I

    goto/16 :goto_6

    :cond_33
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mDistanceY:I

    sget v4, Landroid/webkitsec/WebViewClassic;->sChannelDistance:I

    if-le v3, v4, :cond_2c

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mDistanceY:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mDistanceX:I

    goto/16 :goto_6

    :cond_34
    const/16 v20, 0x0

    goto/16 :goto_7

    :cond_35
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mHeldMotionless:I

    const/16 v31, 0x1

    goto/16 :goto_8

    :cond_36
    move/from16 v0, v20

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v4}, Landroid/webkitsec/ZoomManager;->getInvScale()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewClassic;->contentToViewDimension(I)I

    move-result v34

    move/from16 v0, v21

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v4}, Landroid/webkitsec/ZoomManager;->getInvScale()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewClassic;->contentToViewDimension(I)I

    move-result v35

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mLastTouchX:I

    sub-int v3, v3, v34

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mLastTouchX:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mLastTouchY:I

    sub-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mLastTouchY:I

    goto/16 :goto_0

    :pswitch_2
    move/from16 v0, p3

    int-to-float v8, v0

    move/from16 v0, p4

    int-to-float v9, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v3 .. v9}, Landroid/webkitsec/WebViewClassic;->textSelectionTouchEvent(Landroid/view/MotionEvent;IIIFF)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/WebViewClassic;->mRequestNewSelection:I

    if-ne v3, v4, :cond_37

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mLongPress:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mDialogMove:Z

    :cond_37
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mIsEditingText:Z

    if-eqz v3, :cond_3a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mSelectingText:Z

    if-eqz v3, :cond_3a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mSelectionStarted:Z

    if-eqz v3, :cond_3a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v3, :cond_3a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-gt v3, v4, :cond_38

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    if-eqz v3, :cond_39

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->isTextArea()Z

    move-result v3

    if-eqz v3, :cond_39

    :cond_38
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->syncSelectionCursors()V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v4, 0x25d

    invoke-virtual {v3, v4}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    :cond_39
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/webkitsec/WebViewClassic;->updateWebkitSelection(Z)V

    :cond_3a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mButtonActionOnMouse:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3d

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getHitTestResult()Landroid/webkitsec/WebView$HitTestResult;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v3

    if-eqz v3, :cond_3c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mAutoSelection:Z

    if-eqz v3, :cond_3c

    if-eqz v28, :cond_3b

    invoke-virtual/range {v28 .. v28}, Landroid/webkitsec/WebView$HitTestResult;->getType()I

    move-result v3

    if-eqz v3, :cond_3b

    invoke-virtual/range {v28 .. v28}, Landroid/webkitsec/WebView$HitTestResult;->getType()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_3c

    :cond_3b
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->selectLastTouchText()Z

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->resetTextSelectionTouchHandleFlag()V

    goto/16 :goto_0

    :cond_3c
    if-eqz v28, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->performLongClick()Z

    goto/16 :goto_0

    :cond_3d
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mFirstTouchX:I

    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mFirstTouchY:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mDistanceX:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mDistanceY:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mIsFitToScreen:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mOnewayMode:Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mIsOnewayScrollDown:Z

    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mOnewayScrollTouchDownX:I

    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mOnewayScrollTouchDownY:I

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->endScrollEdit()V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mConfirmMove:Z

    if-nez v3, :cond_3e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mIsEditingText:Z

    if-eqz v3, :cond_3e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mSelectionStarted:Z

    if-eqz v3, :cond_3e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v3, :cond_3e

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->showPasteWindow()V

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->stopTouch()V

    goto/16 :goto_0

    :cond_3e
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkitsec/WebViewClassic;->mLastTouchUpTime:J

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mSentAutoScrollMessage:Z

    if-eqz v3, :cond_3f

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mAutoScrollY:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mAutoScrollX:I

    :cond_3f
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    packed-switch v3, :pswitch_data_1

    :cond_40
    :goto_9
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->stopTouch()V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    goto :goto_9

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mConfirmMove:Z

    if-nez v3, :cond_44

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mSelectingText:Z

    if-eqz v3, :cond_41

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v3

    if-nez v3, :cond_41

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mSelectionStarted:Z

    if-nez v3, :cond_40

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->selectionDone()V

    goto :goto_9

    :cond_41
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_43

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->canZoomIn()Z

    move-result v3

    if-nez v3, :cond_42

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->canZoomOut()Z

    move-result v3

    if-eqz v3, :cond_43

    :cond_42
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    int-to-long v8, v5

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_9

    :cond_43
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mPerformLongPress:Z

    if-nez v3, :cond_40

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->playTouchSound()V

    goto :goto_9

    :cond_44
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/webkitsec/WebViewClassic;->mLastTouchTime:J

    sub-long v3, v24, v3

    const-wide/16 v8, 0xfa

    cmp-long v3, v3, v8

    if-gtz v3, :cond_46

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_45

    const-string/jumbo v3, "webview"

    const-string v4, "Got null mVelocityTracker"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mHeldMotionless:I

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->doFling()V

    goto/16 :goto_9

    :cond_45
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_a

    :cond_46
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkitsec/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->computeMaxScrollX()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->computeMaxScrollY()I

    move-result v14

    invoke-virtual/range {v8 .. v14}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    :cond_47
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mHeldMotionless:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    :pswitch_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mLastVelocity:F

    invoke-static {}, Landroid/webkitsec/WebViewCore;->resumePriority()V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mSelectingText:Z

    if-nez v3, :cond_40

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-static {v3}, Landroid/webkitsec/WebViewCore;->resumeUpdatePicture(Landroid/webkitsec/WebViewCore;)V

    goto/16 :goto_9

    :pswitch_8
    move/from16 v0, p3

    int-to-float v8, v0

    move/from16 v0, p4

    int-to-float v9, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v3 .. v9}, Landroid/webkitsec/WebViewClassic;->textSelectionTouchEvent(Landroid/view/MotionEvent;IIIFF)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_48

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkitsec/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->computeMaxScrollX()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->computeMaxScrollY()I

    move-result v14

    invoke-virtual/range {v8 .. v14}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    :cond_48
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->cancelTouch()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private hidePasteButton()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mPasteWindow:Landroid/webkitsec/WebViewClassic$PastePopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mPasteWindow:Landroid/webkitsec/WebViewClassic$PastePopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->hide()V

    :cond_0
    return-void
.end method

.method private hideSoftKeyboard()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1}, Landroid/webkitsec/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iput-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mIsSoftkeyboardVisible:Z

    :cond_0
    return-void
.end method

.method private inFullScreenMode()Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mFullScreenHolder:Landroid/webkitsec/PluginFullScreenHolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 8

    const/4 v7, 0x1

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/webkitsec/WebViewClassic$OnTrimMemoryListener;->init(Landroid/content/Context;)V

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkitsec/WebView;->setWillNotDraw(Z)V

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v5, v7}, Landroid/webkitsec/WebView;->setClickable(Z)V

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v5, v7}, Landroid/webkitsec/WebView;->setLongClickable(Z)V

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v5, v7}, Landroid/webkitsec/WebView;->setScrollBarFadeDuration(I)V

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    mul-int v5, v4, v4

    iput v5, p0, Landroid/webkitsec/WebViewClassic;->mTouchSlopSquare:I

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v5, p0, Landroid/webkitsec/WebViewClassic;->mTouchSlopSquare:I

    iput v5, p0, Landroid/webkitsec/WebViewClassic;->mTouchSlopSquareForFinger:I

    add-int/lit8 v4, v4, 0x4

    mul-int v5, v4, v4

    iput v5, p0, Landroid/webkitsec/WebViewClassic;->mTouchSlopSquareForSPen:I

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v5

    div-int/lit8 v4, v5, 0x4

    :goto_0
    mul-int v5, v4, v4

    iput v5, p0, Landroid/webkitsec/WebViewClassic;->mDoubleTapSlopSquare:I

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/webkitsec/WebViewCore;->getFixedDisplayDensity(Landroid/content/Context;)F

    move-result v2

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iput v5, p0, Landroid/webkitsec/WebViewClassic;->mNavSlop:I

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v5, v2}, Landroid/webkitsec/ZoomManager;->init(F)V

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v5

    iput v5, p0, Landroid/webkitsec/WebViewClassic;->mMaximumFling:I

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v6, v2, v2

    div-float/2addr v5, v6

    iput v5, p0, Landroid/webkitsec/WebViewClassic;->DRAG_LAYER_INVERSE_DENSITY_SQUARED:F

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v5

    iput v5, p0, Landroid/webkitsec/WebViewClassic;->mOverscrollDistance:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v5

    iput v5, p0, Landroid/webkitsec/WebViewClassic;->mOverflingDistance:I

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mWebViewPrivate:Landroid/webkitsec/WebView$PrivateAccess;

    invoke-virtual {v5}, Landroid/webkitsec/WebView$PrivateAccess;->super_getScrollBarStyle()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/webkitsec/WebViewClassic;->setScrollBarStyle(I)V

    new-instance v5, Ljava/util/Vector;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/Vector;-><init>(I)V

    iput-object v5, p0, Landroid/webkitsec/WebViewClassic;->mKeysPressed:Ljava/util/Vector;

    const/4 v5, 0x0

    iput-object v5, p0, Landroid/webkitsec/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    new-instance v5, Landroid/webkitsec/WebClipboard;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/webkitsec/WebClipboard;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroid/webkitsec/WebViewClassic;->mWebClipboard:Landroid/webkitsec/WebClipboard;

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mWebClipboard:Landroid/webkitsec/WebClipboard;

    invoke-virtual {v5}, Landroid/webkitsec/WebClipboard;->initWebClipboard()V

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->setAppType()V

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v5

    div-int/lit8 v4, v5, 0x2

    goto :goto_0
.end method

.method private invalidateContentRect(Landroid/graphics/Rect;)V
    .locals 4

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkitsec/WebViewClassic;->viewInvalidate(IIII)V

    return-void
.end method

.method private isAccessibilityInjectionEnabled()Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method private isAirViewEnabled()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "air_view_master_onoff"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isEnterActionKey(I)Z
    .locals 1

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHandleVisible(Landroid/graphics/Point;I)Z
    .locals 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mIsEditingText:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget v1, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-static {v1, p2, v2, v3}, Landroid/webkitsec/WebViewClassic;->nativeIsPointVisible(IIII)Z

    move-result v0

    :cond_1
    return v0
.end method

.method private isHoverScrollOn()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "pen_hovering"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_0

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "pen_hovering_list_scroll"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v0, :cond_1

    :cond_0
    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "mouse_hovering"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_2

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "mouse_hovering_list_scroll"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_2

    :cond_1
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/lang/String;

    const-string v5, "com.sec.readershub"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/String;

    const-string v5, "com.sec.readershub2.store"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_1
    return v3

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v3, v0

    goto :goto_1
.end method

.method private isScrollableForAccessibility()Z
    .locals 3

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getContentWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebViewClassic;->contentToViewX(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v2}, Landroid/webkitsec/WebView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v2}, Landroid/webkitsec/WebView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getContentHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebViewClassic;->contentToViewY(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v2}, Landroid/webkitsec/WebView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v2}, Landroid/webkitsec/WebView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSelectionChanged(Landroid/webkitsec/WebViewCore$SelectionCopiedData;Landroid/webkitsec/WebViewCore$SelectionCopiedData;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    if-eqz p1, :cond_4

    if-nez p2, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p1, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_5

    iget-object v2, p1, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_5

    iget-object v2, p2, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_5

    iget-object v2, p2, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_5

    iget-object v2, p1, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p2, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ne v2, v3, :cond_5

    iget-object v2, p1, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p2, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ne v2, v3, :cond_5

    iget-object v2, p1, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p2, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ne v2, v3, :cond_5

    iget-object v2, p1, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p2, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v3, :cond_5

    iget-object v2, p1, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p2, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ne v2, v3, :cond_5

    iget-object v2, p1, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p2, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ne v2, v3, :cond_5

    iget-object v2, p1, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p2, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ne v2, v3, :cond_5

    iget-object v2, p1, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p2, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_0

    :cond_5
    const-string/jumbo v0, "webview"

    const-string v2, "isSelectionChanged End"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method private isTextSelected()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectionOn:Z

    return v0
.end method

.method private isTextSelectionControlerForward(II)Z
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v0, 0x0

    iget v4, p0, Landroid/webkitsec/WebViewClassic;->mController:I

    if-ne v4, v7, :cond_3

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    if-le p2, v3, :cond_2

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectionControls:Landroid/webkitsec/WebTextSelectionControls;

    invoke-virtual {v4}, Landroid/webkitsec/WebTextSelectionControls;->toggleHandleCrossing()V

    iget v4, p0, Landroid/webkitsec/WebViewClassic;->mController:I

    if-ne v4, v6, :cond_9

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    iput v7, v4, Landroid/webkitsec/WebMagnifier;->mMode:I

    iput v7, p0, Landroid/webkitsec/WebViewClassic;->mController:I

    :cond_1
    :goto_1
    return v0

    :cond_2
    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt p2, v4, :cond_0

    add-int/lit8 v4, v2, 0x5

    if-le p1, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget v4, p0, Landroid/webkitsec/WebViewClassic;->mController:I

    if-ne v4, v6, :cond_5

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->top:I

    if-ge p2, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v4, :cond_0

    add-int/lit8 v4, v2, -0x5

    if-ge p1, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    iget v4, p0, Landroid/webkitsec/WebViewClassic;->mController:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v3, -0x2

    if-ge p2, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    iget v4, p0, Landroid/webkitsec/WebViewClassic;->mController:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v3, 0x2

    if-le p2, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    iget v4, p0, Landroid/webkitsec/WebViewClassic;->mController:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v2, -0x2

    if-ge p1, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_8
    iget v4, p0, Landroid/webkitsec/WebViewClassic;->mController:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v2, 0x2

    if-le p1, v4, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_9
    iget v4, p0, Landroid/webkitsec/WebViewClassic;->mController:I

    if-ne v4, v7, :cond_1

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    iput v6, v4, Landroid/webkitsec/WebMagnifier;->mMode:I

    iput v6, p0, Landroid/webkitsec/WebViewClassic;->mController:I

    goto/16 :goto_1
.end method

.method private isWebViewSelectionChanged(Landroid/webkitsec/WebViewCore$SelectionCopiedData;Landroid/webkitsec/WebViewCore$SelectionCopiedData;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    if-eqz p1, :cond_4

    if-nez p2, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p1, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_5

    iget-object v2, p1, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_5

    iget-object v2, p2, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_5

    iget-object v2, p2, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_5

    iget-object v2, p1, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p2, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ne v2, v3, :cond_5

    iget-object v2, p1, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p2, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ne v2, v3, :cond_5

    iget-object v2, p1, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p2, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ne v2, v3, :cond_5

    iget-object v2, p1, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p2, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v3, :cond_5

    iget-object v2, p1, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p2, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ne v2, v3, :cond_5

    iget-object v2, p1, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p2, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ne v2, v3, :cond_5

    iget-object v2, p1, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p2, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ne v2, v3, :cond_5

    iget-object v2, p1, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p2, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_0

    :cond_5
    const-string/jumbo v0, "webview"

    const-string v2, "isWebViewSelectionChanged End"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method private keyCodeToSoundsEffect(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private letPageHandleNavKey(IJZI)V
    .locals 12

    if-eqz p4, :cond_0

    const/4 v5, 0x0

    :goto_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v7, 0x1

    and-int/lit8 v1, p5, 0x1

    and-int/lit8 v2, p5, 0x2

    or-int/2addr v1, v2

    and-int/lit8 v2, p5, 0x4

    or-int v8, v1, v2

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v1, p2

    move-wide v3, p2

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewClassic;->sendKeyEvent(Landroid/view/KeyEvent;)V

    return-void

    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private loadDataImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "base64"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ";base64"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkitsec/WebViewClassic;->loadUrlImpl(Ljava/lang/String;)V

    return-void
.end method

.method private loadUrlImpl(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkitsec/WebViewClassic;->loadUrlImpl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private loadUrlImpl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x5

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-nez v1, :cond_0

    const-string v0, "WebView"

    const-string v1, "loadUrlImpl: mWebViewCore is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->switchOutDrawHistory()V

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic;->mUrl:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/webkitsec/WebViewClassic;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opening url "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " failed - blocked"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "WebView"

    const-string v2, "loadUrlImpl: called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/webkitsec/WebViewCore$GetUrlData;

    invoke-direct {v6}, Landroid/webkitsec/WebViewCore$GetUrlData;-><init>()V

    iput-object p1, v6, Landroid/webkitsec/WebViewCore$GetUrlData;->mUrl:Ljava/lang/String;

    iput-object p2, v6, Landroid/webkitsec/WebViewCore$GetUrlData;->mExtraHeaders:Ljava/util/Map;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v6}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->clearHelpers()V

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opening url "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " succeeded"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private native nativeCopyBaseContentToPicture(Landroid/graphics/Picture;)V
.end method

.method private native nativeCreate(ILjava/lang/String;Z)V
.end method

.method private native nativeCreateDrawGLFunction(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/RectF;FI)I
.end method

.method private native nativeDebugDump()V
.end method

.method private static native nativeDestroy(I)V
.end method

.method private native nativeDiscardAllTextures()V
.end method

.method private native nativeDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;II)V
.end method

.method private native nativeDumpDisplayTree(Ljava/lang/String;)V
.end method

.method private native nativeDumpLayerContentToPicture(ILjava/lang/String;ILandroid/graphics/Picture;)Z
.end method

.method private native nativeEvaluateLayersAnimations(I)Z
.end method

.method private static native nativeFindMaxVisibleRect(IILandroid/graphics/Rect;)V
.end method

.method private native nativeGetBackgroundColor(I)I
.end method

.method private native nativeGetBaseLayer(I)I
.end method

.method private native nativeGetClosestWordPosition(II)Landroid/graphics/Point;
.end method

.method private native nativeGetDrawGLFunction(I)I
.end method

.method private static native nativeGetHandleLayerId(IILandroid/graphics/Point;Landroid/webkitsec/QuadF;)I
.end method

.method private native nativeGetSelection()Ljava/lang/String;
.end method

.method private native nativeHasContent()Z
.end method

.method private static native nativeIsHandleLeft(II)Z
.end method

.method private static native nativeIsPointVisible(IIII)Z
.end method

.method private static native nativeMapLayerRect(IILandroid/graphics/Rect;)V
.end method

.method private static native nativeOnTrimMemory(I)V
.end method

.method private native nativeScrollLayer(IIII)Z
.end method

.method private native nativeScrollRectOnScreen(ILandroid/graphics/Rect;)V
.end method

.method private native nativeScrollableLayer(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)I
.end method

.method private native nativeSelectableText()Landroid/graphics/Point;
.end method

.method private native nativeSetBaseLayer(IIZZI)Z
.end method

.method private native nativeSetHeightCanMeasure(Z)V
.end method

.method private static native nativeSetHwAccelerated(IZ)I
.end method

.method private native nativeSetIsScrolling(Z)V
.end method

.method private static native nativeSetPauseDrawing(IZ)V
.end method

.method private static native nativeSetTextSelection(II)V
.end method

.method private native nativeStopGL(I)V
.end method

.method private native nativeTileProfilingClear()V
.end method

.method private native nativeTileProfilingGetFloat(IILjava/lang/String;)F
.end method

.method private native nativeTileProfilingGetInt(IILjava/lang/String;)I
.end method

.method private native nativeTileProfilingNumFrames()I
.end method

.method private native nativeTileProfilingNumTilesInFrame(I)I
.end method

.method private native nativeTileProfilingStart()V
.end method

.method private native nativeTileProfilingStop()F
.end method

.method private native nativeUpdateDrawGLFunction(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/RectF;FI)V
.end method

.method private native nativeUseHardwareAccelSkia(Z)V
.end method

.method private notifyDoubleTapped()V
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v0

    instance-of v0, v0, Landroid/webkitsec/HtmlComposerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v0

    check-cast v0, Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView;->onRecieveWebViewDoubleTapped()V

    :cond_0
    return-void
.end method

.method private notifySelectionChanged()V
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v0

    instance-of v0, v0, Landroid/webkitsec/HtmlComposerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v0

    check-cast v0, Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView;->onRecieveWebViewSelectionChanged()V

    :cond_0
    return-void
.end method

.method private notifySingleTapReleased()V
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v0

    instance-of v0, v0, Landroid/webkitsec/HtmlComposerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v0

    check-cast v0, Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView;->onRecieveWebviewShortTouchUp()V

    :cond_0
    return-void
.end method

.method private onHandleUiEvent(Landroid/view/MotionEvent;II)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mButtonActionOnMouse:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getHitTestResult()Landroid/webkitsec/WebView$HitTestResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1}, Landroid/webkitsec/WebView;->performLongClick()Z

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewClassic;->onHandleUiTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_3
    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mButtonActionOnMouse:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget-object v1, v1, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mIntentUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget-object v1, v1, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mIntentUrl:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/webkitsec/WebViewClassic;->overrideLoading(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private onHandleUiTouchEvent(Landroid/view/MotionEvent;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/ZoomManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v8

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic;->mIsScreenTouch:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/ZoomManager;->getTiltListener()Landroid/webkitsec/TiltListener;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/16 v17, 0x6

    move/from16 v0, v17

    if-ne v4, v0, :cond_1

    const/4 v11, 0x1

    :goto_0
    const/16 v17, 0x6

    move/from16 v0, v17

    if-eq v4, v0, :cond_0

    const/16 v17, 0x5

    move/from16 v0, v17

    if-ne v4, v0, :cond_2

    :cond_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v11, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v12

    :goto_2
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v6, :cond_5

    if-ne v12, v10, :cond_4

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    const/4 v12, -0x1

    goto :goto_2

    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    add-float v13, v13, v17

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    add-float v14, v14, v17

    goto :goto_4

    :cond_5
    if-eqz v11, :cond_9

    add-int/lit8 v9, v6, -0x1

    :goto_5
    int-to-float v0, v9

    move/from16 v17, v0

    div-float v15, v13, v17

    int-to-float v0, v9

    move/from16 v17, v0

    div-float v16, v14, v17

    if-eqz v5, :cond_6

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic;->mLastTouchX:I

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic;->mLastTouchY:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkitsec/WebViewClassic;->mLastTouchTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebView;->cancelLongPress()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    if-eqz v8, :cond_c

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v8}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v17

    if-nez v17, :cond_7

    invoke-virtual {v7}, Landroid/webkitsec/TiltListener;->getTiltUse()Z

    move-result v17

    if-eqz v17, :cond_c

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkitsec/WebViewClassic;->mLastTouchTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/ZoomManager;->supportsPanDuringZoom()Z

    move-result v17

    if-nez v17, :cond_a

    :cond_8
    :goto_6
    return-void

    :cond_9
    move v9, v6

    goto :goto_5

    :cond_a
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-nez v17, :cond_b

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/WebViewClassic;->mFirstScaleOccured:Z

    move/from16 v17, v0

    if-nez v17, :cond_c

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic;->mFirstScaleOccured:Z

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->cancelTouch()V

    const/4 v4, 0x0

    :cond_c
    const/16 v17, 0x5

    move/from16 v0, v17

    if-ne v4, v0, :cond_e

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->cancelTouch()V

    const/4 v4, 0x0

    :cond_d
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/webkitsec/WebViewClassic;->handleTouchEventCommon(Landroid/view/MotionEvent;III)V

    goto :goto_6

    :cond_e
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v4, v0, :cond_d

    const/16 v17, 0x0

    cmpg-float v17, v15, v17

    if-ltz v17, :cond_8

    const/16 v17, 0x0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_d

    goto :goto_6
.end method

.method private onSelectionFinished()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectionOn:Z

    return-void
.end method

.method private onSelectionStarted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectionOn:Z

    return-void
.end method

.method private onZoomAnimationEnd()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private onZoomAnimationStart()V
    .locals 0

    return-void
.end method

.method private overrideLoading(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkitsec/CallbackProxy;->uiOverrideUrlLoading(Ljava/lang/String;)Z

    return-void
.end method

.method private pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 7

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_0
    :pswitch_0
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v4, v2}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->replaceSelection(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    const v5, 0x1040b4c

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    :cond_0
    return-void

    :pswitch_1
    move-object v3, p1

    check-cast v3, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    move-object v1, p1

    check-cast v1, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static pinLoc(III)I
    .locals 1

    if-ge p2, p1, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return p0

    :cond_1
    if-gez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    add-int v0, p0, p1

    if-le v0, p2, :cond_0

    sub-int p0, p2, p1

    goto :goto_0
.end method

.method private pinScrollBy(IIZI)Z
    .locals 2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v1

    add-int/2addr v1, p2

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/webkitsec/WebViewClassic;->pinScrollTo(IIZI)Z

    move-result v0

    return v0
.end method

.method private pinScrollTo(IIZI)Z
    .locals 6

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->abortAnimation()V

    invoke-virtual {p0, p1}, Landroid/webkitsec/WebViewClassic;->pinLocX(I)I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/webkitsec/WebViewClassic;->pinLocY(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v0

    sub-int v3, p1, v0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v0

    sub-int v4, p2, v0

    or-int v0, v3, v4

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-eqz p3, :cond_2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v2

    if-lez p4, :cond_1

    move v5, p4

    :goto_1
    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v3, v4}, Landroid/webkitsec/WebViewClassic;->computeDuration(II)I

    move-result v5

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/WebView;->scrollTo(II)V

    goto :goto_2
.end method

.method private playTouchSound()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget-boolean v0, v0, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mEditable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget-object v0, v0, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mTouchRects:[Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget-object v0, v0, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mTouchRects:[Landroid/graphics/Rect;

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebView;->playSoundEffect(I)V

    goto :goto_0
.end method

.method private postInvalidate()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0}, Landroid/webkitsec/WebView;->postInvalidate()V

    return-void
.end method

.method private recordNewContentSize(IIZ)V
    .locals 2

    or-int v0, p1, p2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mContentWidth:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mContentHeight:I

    if-eq v0, p2, :cond_3

    :cond_1
    iput p1, p0, Landroid/webkitsec/WebViewClassic;->mContentWidth:I

    iput p2, p0, Landroid/webkitsec/WebViewClassic;->mContentHeight:I

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mDrawHistory:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebViewClassic;->pinLocX(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/webkitsec/WebViewClassic;->pinLocY(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/WebViewClassic;->updateScrollCoordinates(II)Z

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/webkitsec/WebViewClassic;->pinLocX(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->setFinalX(I)V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/webkitsec/WebViewClassic;->pinLocY(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->setFinalY(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    :cond_3
    invoke-direct {p0, p3}, Landroid/webkitsec/WebViewClassic;->contentSizeChanged(Z)V

    goto :goto_0
.end method

.method private registerForStylusPenEvent()V
    .locals 3

    const-string/jumbo v1, "webview"

    const-string/jumbo v2, "registerForStylusPenEvent START"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1}, Landroid/webkitsec/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mStylusEventListener:Landroid/webkitsec/WebViewClassic$StylusEventListener;

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/webkitsec/WebViewClassic$StylusEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/webkitsec/WebViewClassic$StylusEventListener;-><init>(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewClassic$1;)V

    iput-object v1, p0, Landroid/webkitsec/WebViewClassic;->mStylusEventListener:Landroid/webkitsec/WebViewClassic$StylusEventListener;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mStylusEventListener:Landroid/webkitsec/WebViewClassic$StylusEventListener;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewTreeObserver;->addOnStylusButtonEventListener(Landroid/content/Context;Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;)V

    const-string/jumbo v1, "webview"

    const-string/jumbo v2, "registerForStylusPenEvent END"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private relocateAutoCompletePopup()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mAutoCompletePopup:Landroid/webkitsec/AutoCompletePopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mAutoCompletePopup:Landroid/webkitsec/AutoCompletePopup;

    invoke-virtual {v0}, Landroid/webkitsec/AutoCompletePopup;->resetRect()V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mAutoCompletePopup:Landroid/webkitsec/AutoCompletePopup;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkitsec/AutoCompletePopup;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private removeForStylusPenEvent()V
    .locals 3

    const-string/jumbo v1, "webview"

    const-string/jumbo v2, "removeForStylusPenEvent START"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1}, Landroid/webkitsec/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mStylusEventListener:Landroid/webkitsec/WebViewClassic$StylusEventListener;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mStylusEventListener:Landroid/webkitsec/WebViewClassic$StylusEventListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnStylusButtonEventListener(Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkitsec/WebViewClassic;->mStylusEventListener:Landroid/webkitsec/WebViewClassic$StylusEventListener;

    const-string/jumbo v1, "webview"

    const-string/jumbo v2, "removeForStylusPenEvent END"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeTouchHighlight()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewClassic;->setTouchHighlightRects(Landroid/webkitsec/WebViewCore$WebKitHitTest;)V

    return-void
.end method

.method private resetCaretTimer()V
    .locals 2

    const-wide/16 v0, 0xbb8

    invoke-direct {p0, v0, v1}, Landroid/webkitsec/WebViewClassic;->resetCaretTimer(J)V

    return-void
.end method

.method private resetCaretTimer(J)V
    .locals 2

    const/16 v1, 0x8c

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectionStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private resetTextSelectionTouchHandleFlag()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mLongPress:Z

    iput-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mIsPressingHandle:Z

    iput v1, p0, Landroid/webkitsec/WebViewClassic;->mRequestNewSelection:I

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectionControls:Landroid/webkitsec/WebTextSelectionControls;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebTextSelectionControls;->setHandleCrossing(Z)V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    invoke-virtual {v0}, Landroid/webkitsec/WebMagnifier;->hide()V

    return-void
.end method

.method private restoreHistoryPictureFields(Landroid/graphics/Picture;Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v3, "scrollX"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "scrollY"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mDrawHistory:Z

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic;->mHistoryPicture:Landroid/graphics/Picture;

    invoke-virtual {p0, v1}, Landroid/webkitsec/WebViewClassic;->setScrollXRaw(I)V

    invoke-virtual {p0, v2}, Landroid/webkitsec/WebViewClassic;->setScrollYRaw(I)V

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v3, p2}, Landroid/webkitsec/ZoomManager;->restoreZoomState(Landroid/os/Bundle;)V

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v3}, Landroid/webkitsec/ZoomManager;->getScale()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mHistoryWidth:I

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mHistoryHeight:I

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    return-void
.end method

.method private saveWebArchiveImpl(Ljava/lang/String;ZLandroid/webkitsec/ValueCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/webkitsec/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0x93

    new-instance v2, Landroid/webkitsec/WebViewClassic$SaveWebArchiveMessage;

    invoke-direct {v2, p1, p2, p3}, Landroid/webkitsec/WebViewClassic$SaveWebArchiveMessage;-><init>(Ljava/lang/String;ZLandroid/webkitsec/ValueCallback;)V

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private static scaleAlongSegment(IILandroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 9

    iget v7, p3, Landroid/graphics/PointF;->x:F

    iget v8, p2, Landroid/graphics/PointF;->x:F

    sub-float v2, v7, v8

    iget v7, p3, Landroid/graphics/PointF;->y:F

    iget v8, p2, Landroid/graphics/PointF;->y:F

    sub-float v3, v7, v8

    mul-float v7, v2, v2

    mul-float v8, v3, v3

    add-float v0, v7, v8

    int-to-float v7, p0

    iget v8, p2, Landroid/graphics/PointF;->x:F

    sub-float v4, v7, v8

    int-to-float v7, p1

    iget v8, p2, Landroid/graphics/PointF;->y:F

    sub-float v5, v7, v8

    mul-float v7, v4, v2

    mul-float v8, v5, v3

    add-float v1, v7, v8

    div-float v6, v1, v0

    return v6
.end method

.method private static scaleCoordinate(FFF)F
    .locals 2

    sub-float v0, p2, p1

    mul-float v1, p0, v0

    add-float/2addr v1, p1

    return v1
.end method

.method private scaleTrackballX(FI)I
    .locals 4

    const/high16 v2, 0x43c80000    # 400.0f

    div-float v2, p1, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v1, v2

    move v0, v1

    if-lez v1, :cond_1

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mTrackballXMove:I

    if-le v1, v2, :cond_0

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mTrackballXMove:I

    sub-int/2addr v1, v2

    :cond_0
    :goto_0
    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mTrackballXMove:I

    return v1

    :cond_1
    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mTrackballXMove:I

    if-ge v1, v2, :cond_0

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mTrackballXMove:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private scaleTrackballY(FI)I
    .locals 4

    const/high16 v2, 0x43c80000    # 400.0f

    div-float v2, p1, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v1, v2

    move v0, v1

    if-lez v1, :cond_1

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mTrackballYMove:I

    if-le v1, v2, :cond_0

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mTrackballYMove:I

    sub-int/2addr v1, v2

    :cond_0
    :goto_0
    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mTrackballYMove:I

    return v1

    :cond_1
    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mTrackballYMove:I

    if-ge v1, v2, :cond_0

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mTrackballYMove:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private scrollDraggedSelectionHandleIntoView()V
    .locals 12

    const/4 v11, 0x0

    iget-object v10, p0, Landroid/webkitsec/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v10, p0, Landroid/webkitsec/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    iget v8, v10, Landroid/graphics/Point;->x:I

    iget-object v10, p0, Landroid/webkitsec/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    iget v9, v10, Landroid/graphics/Point;->y:I

    iget-object v10, p0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int v10, v8, v10

    add-int/lit8 v10, v10, -0xa

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v10, p0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int v10, v8, v10

    add-int/lit8 v10, v10, 0xa

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int v2, v4, v5

    iget-object v10, p0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int v10, v9, v10

    add-int/lit8 v10, v10, -0xa

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v10, p0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v10, v9, v10

    add-int/lit8 v10, v10, 0xa

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int v3, v0, v1

    if-nez v2, :cond_2

    if-eqz v3, :cond_0

    :cond_2
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getTextScrollX()I

    move-result v10

    add-int v6, v10, v2

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getTextScrollY()I

    move-result v10

    add-int v7, v10, v3

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getMaxTextScrollX()I

    move-result v10

    invoke-static {v6, v11, v10}, Landroid/webkitsec/WebViewClassic;->clampBetween(III)I

    move-result v6

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getMaxTextScrollY()I

    move-result v10

    invoke-static {v7, v11, v10}, Landroid/webkitsec/WebViewClassic;->clampBetween(III)I

    move-result v7

    invoke-direct {p0, v6, v7}, Landroid/webkitsec/WebViewClassic;->scrollEditText(II)V

    goto :goto_0
.end method

.method private scrollEditIntoView()V
    .locals 12

    const/4 v11, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {p0, v6, v7}, Landroid/webkitsec/WebViewClassic;->resetCaretTimer(J)V

    const/4 v5, 0x0

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v6

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v7

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v8

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0, v8}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v8

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v9

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getViewHeightWithTitle()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0, v9}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v6, p0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->syncSelectionCursors()V

    iget v6, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    iget v7, p0, Landroid/webkitsec/WebViewClassic;->mEditTextLayerId:I

    invoke-static {v6, v7, v5}, Landroid/webkitsec/WebViewClassic;->nativeFindMaxVisibleRect(IILandroid/graphics/Rect;)V

    const/4 v6, 0x1

    const/16 v7, 0xa

    invoke-virtual {p0, v7}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v4, Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v0

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v7, p0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v0

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v0

    iget-object v9, p0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v0

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->calculateBaseCaretTop()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ge v6, v7, :cond_2

    iget-object v6, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorBase:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget v7, v1, Landroid/graphics/Point;->x:I

    if-ge v6, v7, :cond_3

    iget-object v6, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorBase:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v0

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v0

    iput v6, v4, Landroid/graphics/Rect;->right:I

    :cond_2
    :goto_1
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v7, p0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ge v6, v7, :cond_5

    iget v6, v1, Landroid/graphics/Point;->y:I

    if-nez v6, :cond_4

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->revealSelection()V

    goto :goto_0

    :cond_3
    iget v6, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v0

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorBase:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v0

    iput v6, v4, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_4
    iget-object v6, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorBase:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, v1, Landroid/graphics/Point;->y:I

    if-le v6, v7, :cond_8

    iget v6, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v0

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorBase:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v0

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    :cond_5
    :goto_2
    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v2

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    if-le v6, v7, :cond_9

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    add-int/2addr v2, v6

    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v3

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_a

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    add-int/2addr v3, v6

    :cond_7
    :goto_4
    invoke-direct {p0, v2, v3, v11}, Landroid/webkitsec/WebViewClassic;->contentScrollTo(IIZ)V

    goto/16 :goto_0

    :cond_8
    iget-object v6, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorBase:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v0

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v0

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_9
    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    if-ge v6, v7, :cond_6

    iget v6, v4, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    add-int/2addr v2, v6

    goto :goto_3

    :cond_a
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v7, :cond_7

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    add-int/2addr v3, v6

    goto :goto_4
.end method

.method private scrollEditText(II)V
    .locals 6

    const/16 v5, 0x63

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getMaxTextScrollX()I

    move-result v2

    int-to-float v0, v2

    int-to-float v2, p1

    div-float v1, v2, v0

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    neg-int v3, p1

    neg-int v4, p2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v2, v5}, Landroid/webkitsec/WebViewCore;->removeMessages(I)V

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v5, v3, p2, v4}, Landroid/webkitsec/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->animateHandles()V

    return-void
.end method

.method private scrollEditWithCursor()V
    .locals 25

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkitsec/WebViewClassic;->mLastEditScroll:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-eqz v21, :cond_1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mSelectOffset:Landroid/graphics/Point;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mSelectOffset:Landroid/graphics/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v13, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mSelectOffset:Landroid/graphics/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v14, v0, Landroid/graphics/Point;->y:I

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebViewClassic;->mLastTouchX:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v22

    add-int v21, v21, v22

    add-int v21, v21, v13

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/webkitsec/WebViewClassic;->getTextScrollSpeed(III)F

    move-result v9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebViewClassic;->mLastTouchY:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v22

    add-int v21, v21, v22

    add-int v21, v21, v14

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Landroid/webkitsec/WebViewClassic;->getTextScrollSpeed(III)F

    move-result v10

    const/16 v21, 0x0

    cmpl-float v21, v9, v21

    if-nez v21, :cond_2

    const/16 v21, 0x0

    cmpl-float v21, v10, v21

    if-nez v21, :cond_2

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->endScrollEdit()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkitsec/WebViewClassic;->mLastEditScroll:J

    move-wide/from16 v21, v0

    sub-long v17, v3, v21

    move-wide/from16 v0, v17

    invoke-static {v9, v0, v1}, Landroid/webkitsec/WebViewClassic;->getTextScrollDelta(FJ)I

    move-result v5

    move-wide/from16 v0, v17

    invoke-static {v10, v0, v1}, Landroid/webkitsec/WebViewClassic;->getTextScrollDelta(FJ)I

    move-result v6

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getTextScrollX()I

    move-result v21

    add-int v11, v21, v5

    const/16 v21, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getMaxTextScrollX()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v11, v0, v1}, Landroid/webkitsec/WebViewClassic;->clampBetween(III)I

    move-result v11

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getTextScrollY()I

    move-result v21

    add-int v12, v21, v6

    const/16 v21, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getMaxTextScrollY()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v12, v0, v1}, Landroid/webkitsec/WebViewClassic;->clampBetween(III)I

    move-result v12

    move-object/from16 v0, p0

    iput-wide v3, v0, Landroid/webkitsec/WebViewClassic;->mLastEditScroll:J

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getTextScrollX()I

    move-result v21

    move/from16 v0, v21

    if-ne v11, v0, :cond_3

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getTextScrollY()I

    move-result v21

    move/from16 v0, v21

    if-ne v12, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x91

    const-wide/16 v23, 0x10

    invoke-virtual/range {v21 .. v24}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/webkitsec/WebViewClassic;->getSelectionCoordinate(III)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Landroid/webkitsec/WebViewClassic;->getSelectionCoordinate(III)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v7, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v8, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/graphics/Point;->set(II)V

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/webkitsec/WebViewClassic;->updateWebkitSelection(Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Landroid/webkitsec/WebViewClassic;->scrollEditText(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_0
.end method

.method private scrollLayerTo(II)V
    .locals 7

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, p1

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, p2

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mSelectingText:Z

    if-eqz v2, :cond_4

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorBaseLayerId:I

    iget v3, p0, Landroid/webkitsec/WebViewClassic;->mCurrentScrollingLayerId:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorBase:Landroid/graphics/Point;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->offset(II)V

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorBaseTextQuad:Landroid/webkitsec/QuadF;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/webkitsec/QuadF;->offset(FF)V

    :cond_3
    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorExtentLayerId:I

    iget v3, p0, Landroid/webkitsec/WebViewClassic;->mCurrentScrollingLayerId:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorExtent:Landroid/graphics/Point;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->offset(II)V

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorExtentTextQuad:Landroid/webkitsec/QuadF;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/webkitsec/QuadF;->offset(FF)V

    :cond_4
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mAutoCompletePopup:Landroid/webkitsec/AutoCompletePopup;

    if-eqz v2, :cond_5

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mCurrentScrollingLayerId:I

    iget v3, p0, Landroid/webkitsec/WebViewClassic;->mEditTextLayerId:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mAutoCompletePopup:Landroid/webkitsec/AutoCompletePopup;

    invoke-virtual {v2}, Landroid/webkitsec/AutoCompletePopup;->resetRect()V

    :cond_5
    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    iget v3, p0, Landroid/webkitsec/WebViewClassic;->mCurrentScrollingLayerId:I

    invoke-direct {p0, v2, v3, p1, p2}, Landroid/webkitsec/WebViewClassic;->nativeScrollLayer(IIII)Z

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iput p1, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iput p2, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v3, 0xc6

    iget v4, p0, Landroid/webkitsec/WebViewClassic;->mCurrentScrollingLayerId:I

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkitsec/WebViewCore;->sendMessage(IILjava/lang/Object;)V

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebViewPrivate:Landroid/webkitsec/WebView$PrivateAccess;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/webkitsec/WebView$PrivateAccess;->onScrollChanged(IIII)V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    goto :goto_0
.end method

.method private scrollSelectIntoView()V
    .locals 11

    const/4 v10, 0x0

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v6

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v7

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0, v7}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v7

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v8

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getViewHeightWithTitle()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0, v8}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mSelectContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v5, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    iget v6, p0, Landroid/webkitsec/WebViewClassic;->mEditTextLayerId:I

    invoke-static {v5, v6, v4}, Landroid/webkitsec/WebViewClassic;->nativeFindMaxVisibleRect(IILandroid/graphics/Rect;)V

    const/4 v5, 0x1

    const/16 v6, 0xa

    invoke-virtual {p0, v6}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v3, Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mSelectContentBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v0

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, p0, Landroid/webkitsec/WebViewClassic;->mSelectContentBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v0

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v7, p0, Landroid/webkitsec/WebViewClassic;->mSelectContentBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v0

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mSelectContentBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v0

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v1

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->left:I

    if-le v5, v6, :cond_4

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    add-int/2addr v1, v5

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v2

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    if-le v5, v6, :cond_5

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    add-int/2addr v2, v5

    :cond_3
    :goto_2
    invoke-direct {p0, v1, v2, v10}, Landroid/webkitsec/WebViewClassic;->contentScrollTo(IIZ)V

    goto :goto_0

    :cond_4
    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    if-ge v5, v6, :cond_2

    iget v5, v3, Landroid/graphics/Rect;->right:I

    iget v6, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    add-int/2addr v1, v5

    goto :goto_1

    :cond_5
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    if-ge v5, v6, :cond_3

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    add-int/2addr v2, v5

    goto :goto_2
.end method

.method private selectClosestWord(II)Z
    .locals 13

    const/4 v5, 0x0

    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v12, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v0

    instance-of v0, v0, Landroid/webkitsec/HtmlComposerView;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v8

    check-cast v8, Landroid/webkitsec/HtmlComposerView;

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0}, Landroid/webkitsec/WebView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0}, Landroid/webkitsec/WebView;->requestFocus()Z

    :cond_2
    new-instance v9, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v9, v8, v5, v0}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter v9

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0x224

    invoke-virtual {v0, v1, p1, p2, v9}, Landroid/webkitsec/WebViewCore;->sendMessage(IIILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v9}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v12, v0, :cond_3

    invoke-virtual {v9}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v3, v0, :cond_8

    :cond_3
    const-string/jumbo v0, "webview"

    const-string v1, " WebViewCore.ACTION_LONGPRESS(HTML_COMPOSER) : selectClosestWord() is not called "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v3, v0, :cond_0

    const/4 v0, 0x6

    iget v1, p0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    iget-boolean v0, v8, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-ne v0, v12, :cond_4

    invoke-virtual {v8}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v10, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v10, v8, v5, v11}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter v10

    :try_start_3
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x213

    invoke-virtual {v0, v1, v10}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-virtual {v10}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v8, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkitsec/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    if-eqz v0, :cond_5

    iget-boolean v0, v8, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    if-nez v0, :cond_5

    iget-object v0, v8, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkitsec/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    iget-object v1, v8, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkitsec/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/webkitsec/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;->isVisibleCursorHandler(I)V

    :cond_5
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    :cond_6
    invoke-virtual {v8}, Landroid/webkitsec/HtmlComposerView;->onRecieveWebviewLongTouchUp()V

    move v4, v12

    goto/16 :goto_0

    :catch_0
    move-exception v7

    :try_start_6
    const-string/jumbo v0, "webview"

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :cond_7
    :try_start_7
    monitor-exit v10

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :catch_1
    move-exception v7

    :try_start_8
    const-string/jumbo v0, "webview"

    const-string v1, "Caught exception while waiting for overrideUrl"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "webview"

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :cond_8
    iget-boolean v0, v8, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-ne v0, v12, :cond_9

    invoke-virtual {v8}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    :cond_9
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getDisableSelection()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "webview"

    const-string v1, "Selecting is cancelled because selection is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->setUpAdvSelect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mSmartSelection:Z

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScale()F

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/webkitsec/WebViewClassic;->getCopyParams(IIZZF)Landroid/webkitsec/WebViewCore$CopyParams;

    move-result-object v6

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0x2c8

    invoke-virtual {v0, v1, v6}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    iput-boolean v12, p0, Landroid/webkitsec/WebViewClassic;->mLongPress:Z

    iput v12, p0, Landroid/webkitsec/WebViewClassic;->mRequestNewSelection:I

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v0

    instance-of v0, v0, Landroid/webkitsec/HtmlComposerView;

    if-eqz v0, :cond_b

    iput-boolean v4, p0, Landroid/webkitsec/WebViewClassic;->mLongPress:Z

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v0

    check-cast v0, Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView;->onRecieveWebviewLongTouchUp()V

    :cond_b
    move v4, v12

    goto/16 :goto_0
.end method

.method private sendKeyEvent(Landroid/view/KeyEvent;)V
    .locals 9

    const/16 v8, 0x25d

    const/16 v7, 0x101

    const/16 v6, 0x3e

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v5, v1}, Landroid/webkitsec/WebView;->focusSearch(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v1, 0x0

    :cond_0
    const/16 v2, 0x68

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    const/16 v2, 0x67

    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p0, v2, v1, v5, p1}, Landroid/webkitsec/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    iget-boolean v5, p0, Landroid/webkitsec/WebViewClassic;->mIsEditingText:Z

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_2

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v3, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    if-eq v4, v6, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v4

    if-ne v4, v7, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/webkitsec/WebViewClassic;->isNUMPADKey(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v4, v8}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v3, v4}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_2
    iget-boolean v4, p0, Landroid/webkitsec/WebViewClassic;->mIsEditingText:Z

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    if-ne v4, v6, :cond_4

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v3, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v4

    if-ne v4, v7, :cond_3

    and-int/lit8 v4, v0, 0x7

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v4, v8}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->initComposing()V

    :cond_4
    return-void

    :sswitch_0
    const/16 v1, 0x82

    goto/16 :goto_0

    :sswitch_1
    const/16 v1, 0x21

    goto/16 :goto_0

    :sswitch_2
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_3
    const/16 v1, 0x42

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_5

    move v1, v4

    :goto_1
    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_0
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x3d -> :sswitch_4
    .end sparse-switch
.end method

.method private setAppType()V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/String;

    const-string v3, "com.android.browser"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkitsec/WebSettingsClassic;->setBrowserApp(Z)V

    :goto_0
    const-string v2, "com.android.settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkitsec/WebSettingsClassic;->setSkiaPictureEnabled(Z)V

    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v2

    instance-of v2, v2, Landroid/webkitsec/HtmlComposerView;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkitsec/WebSettingsClassic;->setSkiaPictureEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkitsec/WebSettingsClassic;->setBrowserApp(Z)V

    goto :goto_0

    :cond_3
    const-string v2, "com.quicinc.vellamo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkitsec/WebSettingsClassic;->setSkipLayoutForHiddenHorizontalText(Z)V

    goto :goto_1
.end method

.method private setContentScrollBy(IIZ)Z
    .locals 3

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mDrawHistory:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Landroid/webkitsec/WebViewClassic;->contentToViewDimension(I)I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/webkitsec/WebViewClassic;->contentToViewDimension(I)I

    move-result p2

    iget-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mHeightCanMeasure:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mBlockRequestLayout:Z

    if-eqz v2, :cond_4

    :cond_2
    if-eqz p2, :cond_3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebViewClassic;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v2, v0}, Landroid/webkitsec/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    :cond_3
    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, v1, p3, v1}, Landroid/webkitsec/WebViewClassic;->pinScrollBy(IIZI)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/webkitsec/WebViewClassic;->pinScrollBy(IIZI)Z

    move-result v1

    goto :goto_0
.end method

.method private setExtractionResultToSmartClipDataElement(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Ljava/lang/String;)Z
    .locals 27

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v24, 0x0

    const v25, 0xffff

    aput v25, v17, v24

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v5, v0, [I

    const/16 v24, 0x0

    const v25, 0xfffe

    aput v25, v5, v24

    new-instance v18, Ljava/lang/String;

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([III)V

    new-instance v6, Ljava/lang/String;

    const/16 v24, 0x0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v6, v5, v0, v1}, Ljava/lang/String;-><init>([III)V

    if-nez p2, :cond_0

    const/16 v24, 0x0

    :goto_0
    return v24

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScale()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewClassic;->getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v9, p1

    check-cast v9, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    new-instance v24, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v25, "url"

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getUrl()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getTitle()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_1

    new-instance v24, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v25, "title"

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getTitle()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    const/4 v11, 0x0

    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_8

    aget-object v24, v16, v11

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v0, v8

    move/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_7

    aget-object v24, v16, v11

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_7

    const/16 v24, 0x0

    aget-object v24, v8, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    mul-float v24, v24, v19

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v22, v24, v25

    const/16 v24, 0x1

    aget-object v24, v8, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    mul-float v24, v24, v19

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v23, v24, v25

    const/16 v24, 0x2

    aget-object v24, v8, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    mul-float v21, v24, v19

    const/16 v24, 0x3

    aget-object v24, v8, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    mul-float v10, v24, v19

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpg-float v24, v22, v24

    if-gez v24, :cond_2

    const/16 v24, 0x0

    aget-object v24, v8, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    mul-float v24, v24, v19

    add-float v21, v21, v24

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v22, v0

    :cond_2
    add-float v24, v22, v21

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getWidth()I

    move-result v25

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getWidth()I

    move-result v24

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v21, v24, v22

    :cond_3
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpg-float v24, v23, v24

    if-gez v24, :cond_4

    const/16 v24, 0x1

    aget-object v24, v8, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    mul-float v24, v24, v19

    add-float v10, v10, v24

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v23, v0

    :cond_4
    add-float v24, v23, v10

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getHeight()I

    move-result v25

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getHeight()I

    move-result v24

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v10, v24, v23

    :cond_5
    move/from16 v0, v22

    float-to-int v14, v0

    move/from16 v0, v23

    float-to-int v15, v0

    move/from16 v0, v21

    float-to-int v13, v0

    float-to-int v12, v10

    const/4 v7, 0x0

    array-length v0, v8

    move/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_6

    const/16 v24, 0x4

    aget-object v7, v8, v24

    :cond_6
    invoke-virtual {v9}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->newInstance()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    move-result-object v4

    new-instance v24, Landroid/graphics/Rect;

    add-int v25, v14, v13

    add-int v26, v15, v12

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v14, v15, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v24

    invoke-interface {v4, v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;->setMetaAreaRect(Landroid/graphics/Rect;)V

    new-instance v24, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v25, "plain_text"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-interface {v4, v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    invoke-virtual {v9, v4}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addChild(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_8
    const/16 v24, 0x1

    goto/16 :goto_0
.end method

.method private setFindIsUp(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebViewClassic;->mFindIsUp:Z

    return-void
.end method

.method private setHitTestResult(Landroid/webkitsec/WebViewCore$WebKitHitTest;)V
    .locals 5

    const/16 v4, 0x9

    const/4 v3, 0x7

    const/4 v2, 0x5

    if-nez p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mInitialHitTestResult:Landroid/webkitsec/WebView$HitTestResult;

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/webkitsec/WebView$HitTestResult;

    invoke-direct {v0}, Landroid/webkitsec/WebView$HitTestResult;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mInitialHitTestResult:Landroid/webkitsec/WebView$HitTestResult;

    iget-object v0, p1, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mLinkUrl:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mLinkUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewClassic;->setHitTestTypeFromUrl(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mInitialHitTestResult:Landroid/webkitsec/WebView$HitTestResult;

    invoke-virtual {v0}, Landroid/webkitsec/WebView$HitTestResult;->getType()I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p1, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mLinkUrl:Ljava/lang/String;

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mInitialHitTestResult:Landroid/webkitsec/WebView$HitTestResult;

    invoke-virtual {v0, v2}, Landroid/webkitsec/WebView$HitTestResult;->setType(I)V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mInitialHitTestResult:Landroid/webkitsec/WebView$HitTestResult;

    iget-object v1, p1, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mInitialHitTestResult:Landroid/webkitsec/WebView$HitTestResult;

    invoke-virtual {v0}, Landroid/webkitsec/WebView$HitTestResult;->getType()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mInitialHitTestResult:Landroid/webkitsec/WebView$HitTestResult;

    invoke-virtual {v0}, Landroid/webkitsec/WebView$HitTestResult;->getType()I

    move-result v0

    if-eq v0, v4, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mPopupLaunchHitTestType:Z

    goto :goto_0

    :cond_3
    iget-object v0, p1, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mInitialHitTestResult:Landroid/webkitsec/WebView$HitTestResult;

    invoke-virtual {v0}, Landroid/webkitsec/WebView$HitTestResult;->getType()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mInitialHitTestResult:Landroid/webkitsec/WebView$HitTestResult;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebView$HitTestResult;->setType(I)V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mInitialHitTestResult:Landroid/webkitsec/WebView$HitTestResult;

    iget-object v1, p1, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p1, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mInitialHitTestResult:Landroid/webkitsec/WebView$HitTestResult;

    invoke-virtual {v0, v2}, Landroid/webkitsec/WebView$HitTestResult;->setType(I)V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mInitialHitTestResult:Landroid/webkitsec/WebView$HitTestResult;

    iget-object v1, p1, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-boolean v0, p1, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mEditable:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mInitialHitTestResult:Landroid/webkitsec/WebView$HitTestResult;

    invoke-virtual {v0, v4}, Landroid/webkitsec/WebView$HitTestResult;->setType(I)V

    goto :goto_1

    :cond_6
    iget-object v0, p1, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mIntentUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mIntentUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewClassic;->setHitTestTypeFromUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setHitTestTypeFromUrl(Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    const-string v2, "geo:0,0?q="

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mInitialHitTestResult:Landroid/webkitsec/WebView$HitTestResult;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/webkitsec/WebView$HitTestResult;->setType(I)V

    const-string v2, "geo:0,0?q="

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mInitialHitTestResult:Landroid/webkitsec/WebView$HitTestResult;

    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkitsec/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v2, "tel:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mInitialHitTestResult:Landroid/webkitsec/WebView$HitTestResult;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/webkitsec/WebView$HitTestResult;->setType(I)V

    const-string/jumbo v2, "tel:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "mailto:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mInitialHitTestResult:Landroid/webkitsec/WebView$HitTestResult;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/webkitsec/WebView$HitTestResult;->setType(I)V

    const-string/jumbo v2, "mailto:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mInitialHitTestResult:Landroid/webkitsec/WebView$HitTestResult;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/webkitsec/WebView$HitTestResult;->setType(I)V

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mInitialHitTestResult:Landroid/webkitsec/WebView$HitTestResult;

    invoke-virtual {v2, p1}, Landroid/webkitsec/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "webview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to decode URL! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mInitialHitTestResult:Landroid/webkitsec/WebView$HitTestResult;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkitsec/WebView$HitTestResult;->setType(I)V

    goto :goto_1
.end method

.method private static setLocalProxy(Landroid/content/Context;Z)Z
    .locals 15

    const/4 v7, 0x0

    sget-boolean v12, Landroid/webkitsec/WebViewClassic;->bNeedToCheckCustomProxy:Z

    if-nez v12, :cond_0

    move v8, v7

    :goto_0
    return v8

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v12, "com.android.browser"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    move v8, v7

    goto :goto_0

    :cond_1
    const-string v12, "connectivity"

    invoke-virtual {p0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v11

    const/4 v12, 0x7

    invoke-virtual {v2, v12}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v3, 0x1

    :goto_1
    if-eqz v11, :cond_8

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v10, 0x1

    :goto_2
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v0, 0x1

    :goto_3
    const-string/jumbo v12, "webview"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setLocalProxy mobile("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") wifi("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") bluetooth("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getProxy()Landroid/net/ProxyProperties;

    move-result-object v6

    if-eqz v3, :cond_4

    if-nez v10, :cond_4

    if-nez v0, :cond_4

    sget-object v12, Landroid/webkitsec/WebViewClassic;->ENABLE_LOCAL_PROXY_FOR:Ljava/lang/String;

    const-string v13, "CMCC"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const-string v12, "gsm.sim.operator.numeric"

    const-string v13, ""

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    const-string v12, "46000"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "46002"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "46007"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "460078"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "45001"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    :cond_2
    if-eqz v6, :cond_3

    const-string v12, "192.168.230.8"

    invoke-virtual {v6}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    :cond_3
    const-string v12, "cmwap"

    const-string v13, "android.com.browser.apn"

    const-string v14, "cmwap"

    invoke-static {v13, v14}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const-string/jumbo v12, "webview"

    const-string/jumbo v13, "setLocalProxy CMCC"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/net/ProxyProperties;

    const-string v12, "10.0.0.172"

    const/16 v13, 0x50

    const/4 v14, 0x0

    invoke-direct {v6, v12, v13, v14}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v7, 0x1

    :cond_4
    :goto_4
    if-nez v7, :cond_5

    if-eqz p1, :cond_6

    :cond_5
    const/16 v12, 0xc1

    invoke-static {v12, v6}, Landroid/webkitsec/WebViewCore;->sendStaticMessage(ILjava/lang/Object;)V

    :cond_6
    move v8, v7

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_a
    sget-object v12, Landroid/webkitsec/WebViewClassic;->ENABLE_LOCAL_PROXY_FOR:Ljava/lang/String;

    const-string v13, "MetroPCS"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const-string/jumbo v12, "webview"

    const-string/jumbo v13, "setLocalProxy MetroPCS"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/net/ProxyProperties;

    const-string/jumbo v12, "proxy.metropcs.net"

    const/16 v13, 0xc38

    const/4 v14, 0x0

    invoke-direct {v6, v12, v13, v14}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v7, 0x1

    goto :goto_4

    :cond_b
    sget-object v12, Landroid/webkitsec/WebViewClassic;->ENABLE_LOCAL_PROXY_FOR:Ljava/lang/String;

    const-string v13, "Cricket"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const-string/jumbo v12, "webview"

    const-string/jumbo v13, "setLocalProxy Cricket"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/net/ProxyProperties;

    const-string/jumbo v12, "wap.mycricket.com"

    const/16 v13, 0x1f90

    const/4 v14, 0x0

    invoke-direct {v6, v12, v13, v14}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v7, 0x1

    goto :goto_4
.end method

.method public static setShouldMonitorWebCoreThread()V
    .locals 0

    invoke-static {}, Landroid/webkitsec/WebViewCore;->setShouldMonitorWebCoreThread()V

    return-void
.end method

.method private setTouchHighlightRects(Landroid/webkitsec/WebViewCore$WebKitHitTest;)V
    .locals 14

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewClassic;->shouldAnimateTo(Landroid/webkitsec/WebViewCore$WebKitHitTest;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v7, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;

    invoke-direct {v7, p0}, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;-><init>(Landroid/webkitsec/WebViewClassic;)V

    :cond_0
    if-eqz p1, :cond_8

    iget-object v6, p1, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mTouchRects:[Landroid/graphics/Rect;

    :goto_0
    iget-object v9, p0, Landroid/webkitsec/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v9}, Landroid/graphics/Region;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v9}, Landroid/webkitsec/ZoomManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v9

    if-nez v9, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getIsZoomScaleBegin()Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_2
    sget-boolean v9, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v9, :cond_3

    const-string/jumbo v9, "webview"

    const-string/jumbo v10, "skip invalidate of setTouchHighlightRects from remove"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    if-eqz v7, :cond_4

    new-instance v9, Landroid/graphics/Region;

    iget-object v10, p0, Landroid/webkitsec/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-direct {v9, v10}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    iput-object v9, v7, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mPreviousRegion:Landroid/graphics/Region;

    :cond_4
    iget-object v9, p0, Landroid/webkitsec/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v9}, Landroid/graphics/Region;->setEmpty()V

    :cond_5
    if-eqz v6, :cond_b

    iget-object v9, p0, Landroid/webkitsec/WebViewClassic;->mTouchHightlightPaint:Landroid/graphics/Paint;

    const v10, 0x6633b5e5

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    move-object v1, v6

    array-length v4, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_a

    aget-object v5, v1, v3

    invoke-virtual {p0, v5}, Landroid/webkitsec/WebViewClassic;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWidth()I

    move-result v10

    shr-int/lit8 v10, v10, 0x1

    if-lt v9, v10, :cond_6

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getHeight()I

    move-result v10

    shr-int/lit8 v10, v10, 0x1

    if-ge v9, v10, :cond_7

    :cond_6
    iget-object v9, p0, Landroid/webkitsec/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v9, v8}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    goto :goto_0

    :cond_9
    iget-object v9, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    iget-object v10, p0, Landroid/webkitsec/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v10}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/webkitsec/WebView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_a
    iget-object v9, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    iget-object v10, p0, Landroid/webkitsec/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v10}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/webkitsec/WebView;->invalidate(Landroid/graphics/Rect;)V

    if-eqz v7, :cond_b

    iget-object v9, v7, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mPreviousRegion:Landroid/graphics/Region;

    if-eqz v9, :cond_b

    new-instance v9, Landroid/graphics/Region;

    iget-object v10, p0, Landroid/webkitsec/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-direct {v9, v10}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    iput-object v9, v7, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->mNewRegion:Landroid/graphics/Region;

    iput-object v7, p0, Landroid/webkitsec/WebViewClassic;->mFocusTransition:Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;

    iget-object v9, p0, Landroid/webkitsec/WebViewClassic;->mFocusTransition:Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;

    const-string/jumbo v10, "progress"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_b
    return-void
.end method

.method private setUpAdvSelect()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->inFullScreenMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectionOn:Z

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mLongPress:Z

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mController:I

    move v0, v1

    goto :goto_0
.end method

.method private setupPackageListener(Landroid/content/Context;)V
    .locals 5

    const-class v4, Landroid/webkitsec/WebViewClassic;

    monitor-enter v4

    :try_start_0
    sget-boolean v3, Landroid/webkitsec/WebViewClassic;->sPackageInstallationReceiverAdded:Z

    if-eqz v3, :cond_0

    monitor-exit v4

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "package"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Landroid/webkitsec/WebViewClassic$PackageListener;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/webkitsec/WebViewClassic$PackageListener;-><init>(Landroid/webkitsec/WebViewClassic$1;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v3, 0x1

    sput-boolean v3, Landroid/webkitsec/WebViewClassic;->sPackageInstallationReceiverAdded:Z

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Landroid/webkitsec/WebViewClassic$1;

    invoke-direct {v2, p0}, Landroid/webkitsec/WebViewClassic$1;-><init>(Landroid/webkitsec/WebViewClassic;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private static declared-synchronized setupProxyListener(Landroid/content/Context;)V
    .locals 5

    const-class v3, Landroid/webkitsec/WebViewClassic;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/webkitsec/WebViewClassic;->sProxyReceiver:Landroid/webkitsec/WebViewClassic$ProxyReceiver;

    if-nez v2, :cond_0

    sget-boolean v2, Landroid/webkitsec/WebViewClassic;->sNotificationsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PROXY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Landroid/webkitsec/WebViewClassic$ProxyReceiver;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/webkitsec/WebViewClassic$ProxyReceiver;-><init>(Landroid/webkitsec/WebViewClassic$1;)V

    sput-object v2, Landroid/webkitsec/WebViewClassic;->sProxyReceiver:Landroid/webkitsec/WebViewClassic$ProxyReceiver;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Landroid/webkitsec/WebViewClassic;->sProxyReceiver:Landroid/webkitsec/WebViewClassic$ProxyReceiver;

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Landroid/webkitsec/WebViewClassic;->handleProxyBroadcast(Landroid/content/Intent;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static setupTrustStorageListener(Landroid/content/Context;)V
    .locals 4

    sget-object v2, Landroid/webkitsec/WebViewClassic;->sTrustStorageListener:Landroid/webkitsec/WebViewClassic$TrustStorageListener;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.security.STORAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Landroid/webkitsec/WebViewClassic$TrustStorageListener;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/webkitsec/WebViewClassic$TrustStorageListener;-><init>(Landroid/webkitsec/WebViewClassic$1;)V

    sput-object v2, Landroid/webkitsec/WebViewClassic;->sTrustStorageListener:Landroid/webkitsec/WebViewClassic$TrustStorageListener;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/webkitsec/WebViewClassic;->sTrustStorageListener:Landroid/webkitsec/WebViewClassic$TrustStorageListener;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/webkitsec/WebViewClassic;->handleCertTrustChanged()V

    goto :goto_0
.end method

.method private setupWebkitSelect()Z
    .locals 1

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->syncSelectionCursors()V

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mIsCaretSelection:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->startSelectActionMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->selectionDone()V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->startSelectingText()V

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mSpenTextSelectionMode:I

    if-nez v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private shouldAnimateTo(Landroid/webkitsec/WebViewCore$WebKitHitTest;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private shouldDrawHighlightRect()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mInitialHitTestResult:Landroid/webkitsec/WebView$HitTestResult;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget v1, v1, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mTapHighlightColor:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget-boolean v1, v1, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mHasFocus:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1}, Landroid/webkitsec/WebView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mDrawCursorRing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget-boolean v1, v1, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mEditable:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget-boolean v1, v1, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mHasFocus:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget-boolean v1, v1, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mEditable:Z

    if-nez v1, :cond_0

    :cond_3
    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mShowTapHighlight:Z

    goto :goto_0
.end method

.method private showMagnifier(IIZ)V
    .locals 7

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->getEnableMagnifier()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mIsEditingText:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectionControls:Landroid/webkitsec/WebTextSelectionControls;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {p0, v4}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v5

    add-int/2addr v5, p2

    invoke-virtual {p0, v5}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v5

    iget-object v6, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    invoke-virtual {v3, v4, v5, v6}, Landroid/webkitsec/WebTextSelectionControls;->getHandleType(IILandroid/webkitsec/WebViewCore$SelectionCopiedData;)I

    move-result v0

    if-eqz p3, :cond_2

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScale()F

    move-result v5

    invoke-virtual {v3, p1, p2, v4, v5}, Landroid/webkitsec/WebMagnifier;->show(IILandroid/graphics/Rect;F)V

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    if-eqz v3, :cond_2

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v3, v3, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Landroid/webkitsec/WebViewClassic;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v4

    sub-int p2, v3, v4

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/webkitsec/WebMagnifier;->mAdjustY:I

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    const/4 v4, 0x1

    iput v4, v3, Landroid/webkitsec/WebMagnifier;->mMode:I

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectionControls:Landroid/webkitsec/WebTextSelectionControls;

    invoke-virtual {v4}, Landroid/webkitsec/WebTextSelectionControls;->getHandleHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScale()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/lit8 v4, v4, -0x14

    iput v4, v3, Landroid/webkitsec/WebMagnifier;->mHandleHeight:I

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    if-eqz v3, :cond_2

    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v3, v3, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Landroid/webkitsec/WebViewClassic;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v4

    sub-int p2, v3, v4

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/webkitsec/WebMagnifier;->mAdjustY:I

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    const/4 v4, 0x2

    iput v4, v3, Landroid/webkitsec/WebMagnifier;->mMode:I

    goto :goto_1

    :cond_3
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    invoke-virtual {v3, p1, p2}, Landroid/webkitsec/WebMagnifier;->show(II)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showPasteWindow()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkitsec/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    const-string v7, "clipboardEx"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/sec/clipboard/ClipboardExManager;

    move-object v0, v6

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v6

    if-lez v6, :cond_0

    new-instance v1, Landroid/graphics/Point;

    iget-object v6, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorBase:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v6}, Landroid/webkitsec/WebViewClassic;->contentToViewX(I)I

    move-result v6

    iget-object v7, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorBase:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v7}, Landroid/webkitsec/WebViewClassic;->contentToViewY(I)I

    move-result v7

    invoke-direct {v1, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->calculateBaseCaretTop()Landroid/graphics/Point;

    move-result-object v2

    iget v6, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v6}, Landroid/webkitsec/WebViewClassic;->contentToViewX(I)I

    move-result v6

    iget v7, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v7}, Landroid/webkitsec/WebViewClassic;->contentToViewY(I)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Point;->set(II)V

    const/4 v6, 0x2

    new-array v3, v6, [I

    iget-object v6, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v6, v3}, Landroid/webkitsec/WebView;->getLocationInWindow([I)V

    aget v6, v3, v8

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v7

    sub-int v4, v6, v7

    aget v6, v3, v9

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v7

    sub-int v5, v6, v7

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Point;->offset(II)V

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Point;->offset(II)V

    iget-object v6, p0, Landroid/webkitsec/WebViewClassic;->mPasteWindow:Landroid/webkitsec/WebViewClassic$PastePopupWindow;

    if-nez v6, :cond_2

    new-instance v6, Landroid/webkitsec/WebViewClassic$PastePopupWindow;

    invoke-direct {v6, p0}, Landroid/webkitsec/WebViewClassic$PastePopupWindow;-><init>(Landroid/webkitsec/WebViewClassic;)V

    iput-object v6, p0, Landroid/webkitsec/WebViewClassic;->mPasteWindow:Landroid/webkitsec/WebViewClassic$PastePopupWindow;

    :cond_2
    iget-object v6, p0, Landroid/webkitsec/WebViewClassic;->mPasteWindow:Landroid/webkitsec/WebViewClassic$PastePopupWindow;

    aget v7, v3, v8

    aget v8, v3, v9

    invoke-virtual {v6, v1, v2, v7, v8}, Landroid/webkitsec/WebViewClassic$PastePopupWindow;->show(Landroid/graphics/Point;Landroid/graphics/Point;II)V

    goto :goto_0
.end method

.method private showSelectActionWindow()V
    .locals 34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    move-object/from16 v29, v0

    if-eqz v29, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/WebViewClassic;->mDisableSelectionPopup:Z

    move/from16 v29, v0

    if-nez v29, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v29

    if-eqz v29, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/webkitsec/WebSettingsClassic;->getNewActionPopup()Z

    move-result v29

    if-eqz v29, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScale()F

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getWebTextSelectionControls()Landroid/webkitsec/WebTextSelectionControls;

    move-result-object v14

    if-nez v14, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v14}, Landroid/webkitsec/WebTextSelectionControls;->getHandleHeight()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, v11

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v14}, Landroid/webkitsec/WebTextSelectionControls;->getHandleWidth()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, v11

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v14}, Landroid/webkitsec/WebTextSelectionControls;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v14}, Landroid/webkitsec/WebTextSelectionControls;->getSelectionRegionStartRect()Landroid/graphics/Rect;

    move-result-object v16

    invoke-virtual {v14}, Landroid/webkitsec/WebTextSelectionControls;->getSelectionRegionEndRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v29

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v30

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v29

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v30

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v16

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v29

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v30

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->min(II)I

    move-result v29

    move/from16 v0, v29

    iput v0, v15, Landroid/graphics/Rect;->left:I

    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->min(II)I

    move-result v29

    move/from16 v0, v29

    iput v0, v15, Landroid/graphics/Rect;->top:I

    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    iget v0, v5, Landroid/graphics/Rect;->right:I

    move/from16 v30, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->max(II)I

    move-result v29

    move/from16 v0, v29

    iput v0, v15, Landroid/graphics/Rect;->right:I

    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->max(II)I

    move-result v29

    move/from16 v0, v29

    iput v0, v15, Landroid/graphics/Rect;->bottom:I

    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/webkitsec/WebTextSelectionControls;->getHandleState(I)I

    move-result v17

    const/16 v29, 0x2

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/webkitsec/WebTextSelectionControls;->getHandleState(I)I

    move-result v18

    and-int/lit8 v29, v17, 0x1

    if-nez v29, :cond_2

    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v29, v29, v7

    move/from16 v0, v29

    iput v0, v15, Landroid/graphics/Rect;->left:I

    :cond_2
    and-int/lit8 v29, v17, 0x2

    if-nez v29, :cond_3

    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v29, v29, v6

    move/from16 v0, v29

    iput v0, v15, Landroid/graphics/Rect;->top:I

    :cond_3
    and-int/lit8 v29, v18, 0x1

    if-nez v29, :cond_4

    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    add-int v29, v29, v7

    move/from16 v0, v29

    iput v0, v15, Landroid/graphics/Rect;->right:I

    :cond_4
    and-int/lit8 v29, v18, 0x2

    if-nez v29, :cond_5

    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    add-int v29, v29, v6

    move/from16 v0, v29

    iput v0, v15, Landroid/graphics/Rect;->bottom:I

    :cond_5
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/webkitsec/WebViewClassic;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v29

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v30

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v15, v10}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v29

    if-eqz v29, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/webkitsec/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v29, v0

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    mul-int/lit8 v19, v29, 0x19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/webkitsec/WebView;->getContext()Landroid/content/Context;

    move-result-object v29

    const/16 v30, 0x0

    sget-object v31, Landroid/R$styleable;->ActionBar:[I

    const v32, 0x10102ce

    const/16 v33, 0x0

    invoke-virtual/range {v29 .. v33}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v22

    const/16 v29, 0x4

    const/16 v30, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const-string/jumbo v30, "window"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/WindowManager;

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    invoke-interface/range {v24 .. v24}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    sget-object v29, Landroid/webkitsec/WebViewClassic;->mSelectActionWindow:Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;

    if-eqz v29, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->hideSelectActionWindow()V

    :cond_6
    new-instance v29, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;-><init>(Landroid/webkitsec/WebViewClassic;)V

    sput-object v29, Landroid/webkitsec/WebViewClassic;->mSelectActionWindow:Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;

    sget-object v29, Landroid/webkitsec/WebViewClassic;->mSelectActionWindow:Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;

    if-eqz v29, :cond_0

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic;->mSelectPopupInSameInstance:Z

    sget-object v29, Landroid/webkitsec/WebViewClassic;->mSelectActionWindow:Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;

    invoke-virtual/range {v29 .. v29}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->updateMenuVisibility()V

    sget-object v29, Landroid/webkitsec/WebViewClassic;->mSelectActionWindow:Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;

    invoke-virtual/range {v29 .. v29}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->calculateSelectPopupSizes()V

    sget-object v29, Landroid/webkitsec/WebViewClassic;->mSelectActionWindow:Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;

    invoke-virtual/range {v29 .. v29}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->setSelectPopupWidth()V

    sget-object v29, Landroid/webkitsec/WebViewClassic;->mSelectActionWindow:Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;

    invoke-virtual/range {v29 .. v29}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->measureContent()V

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v12, v0, [I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebView;->getLocationInWindow([I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Landroid/webkitsec/WebView;->getLocationOnScreen([I)V

    sget-object v29, Landroid/webkitsec/WebViewClassic;->mSelectActionWindow:Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;

    invoke-virtual/range {v29 .. v29}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->getSelectPopupHeight()I

    move-result v20

    sget-object v29, Landroid/webkitsec/WebViewClassic;->mSelectActionWindow:Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;

    invoke-virtual/range {v29 .. v29}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->getSelectPopupWidth()I

    move-result v21

    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    const/16 v30, 0x0

    aget v30, v12, v30

    add-int v25, v29, v30

    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    const/16 v30, 0x1

    aget v30, v12, v30

    add-int v27, v29, v30

    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    const/16 v30, 0x0

    aget v30, v12, v30

    add-int v26, v29, v30

    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    const/16 v30, 0x1

    aget v30, v12, v30

    add-int v28, v29, v30

    new-instance v9, Landroid/graphics/Point;

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v9, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    sub-int v29, v26, v25

    div-int/lit8 v29, v29, 0x2

    add-int v29, v29, v25

    div-int/lit8 v30, v21, 0x2

    sub-int v29, v29, v30

    const/16 v30, 0x0

    aget v30, v12, v30

    const/16 v31, 0x0

    aget v31, v23, v31

    sub-int v30, v30, v31

    sub-int v29, v29, v30

    move/from16 v0, v29

    iput v0, v9, Landroid/graphics/Point;->x:I

    iget v0, v9, Landroid/graphics/Point;->x:I

    move/from16 v29, v0

    if-gez v29, :cond_7

    const/16 v29, 0xa

    move/from16 v0, v29

    iput v0, v9, Landroid/graphics/Point;->x:I

    :cond_7
    iget v0, v9, Landroid/graphics/Point;->x:I

    move/from16 v29, v0

    add-int v29, v29, v21

    const/16 v30, 0x0

    aget v30, v12, v30

    const/16 v31, 0x0

    aget v31, v23, v31

    sub-int v30, v30, v31

    add-int v29, v29, v30

    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_8

    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v29, v0

    sub-int v29, v29, v21

    const/16 v30, 0x0

    aget v30, v12, v30

    const/16 v31, 0x0

    aget v31, v23, v31

    sub-int v30, v30, v31

    sub-int v29, v29, v30

    add-int/lit8 v29, v29, -0xa

    move/from16 v0, v29

    iput v0, v9, Landroid/graphics/Point;->x:I

    :cond_8
    const/high16 v29, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/webkitsec/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v30

    move-object/from16 v0, v30

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v30, v0

    mul-float v8, v29, v30

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v29, v0

    add-int v30, v20, v19

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v30, v30, v8

    cmpl-float v29, v29, v30

    if-lez v29, :cond_9

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v29, v0

    sub-float v29, v29, v8

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v29, v29, v30

    const/16 v30, 0x1

    aget v30, v12, v30

    const/16 v31, 0x1

    aget v31, v23, v31

    sub-int v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    iput v0, v9, Landroid/graphics/Point;->y:I

    :goto_1
    sget-object v29, Landroid/webkitsec/WebViewClassic;->mSelectActionWindow:Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;

    iget v0, v9, Landroid/graphics/Point;->x:I

    move/from16 v30, v0

    iget v0, v9, Landroid/graphics/Point;->y:I

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->show(II)V

    sget-object v29, Landroid/webkitsec/WebViewClassic;->mSelectActionWindow:Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;

    sget-object v30, Landroid/webkitsec/WebViewClassic;->mSelectActionWindow:Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;

    # getter for: Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I
    invoke-static/range {v30 .. v30}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->access$2400(Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->popupAnimationEffect(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->hideSelectActionWindowAfterDelay()V

    goto/16 :goto_0

    :cond_9
    add-int v29, v28, v20

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v29, v29, v8

    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    cmpg-float v29, v29, v30

    if-gez v29, :cond_a

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v29, v29, v8

    const/16 v30, 0x1

    aget v30, v12, v30

    const/16 v31, 0x1

    aget v31, v23, v31

    sub-int v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    iput v0, v9, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_a
    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v29, v0

    div-int/lit8 v29, v29, 0x2

    div-int/lit8 v30, v20, 0x2

    sub-int v29, v29, v30

    move/from16 v0, v29

    iput v0, v9, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method private snapDraggingCursor()V
    .locals 9

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Landroid/webkitsec/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Landroid/webkitsec/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkitsec/QuadF;

    iget-object v7, v7, Landroid/webkitsec/QuadF;->p4:Landroid/graphics/PointF;

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkitsec/QuadF;

    iget-object v8, v8, Landroid/webkitsec/QuadF;->p3:Landroid/graphics/PointF;

    invoke-static {v5, v6, v7, v8}, Landroid/webkitsec/WebViewClassic;->scaleAlongSegment(IILandroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v2

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkitsec/QuadF;

    iget-object v5, v5, Landroid/webkitsec/QuadF;->p4:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Landroid/webkitsec/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkitsec/QuadF;

    iget-object v6, v6, Landroid/webkitsec/QuadF;->p3:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v5, v6}, Landroid/webkitsec/WebViewClassic;->scaleCoordinate(FFF)F

    move-result v0

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkitsec/QuadF;

    iget-object v5, v5, Landroid/webkitsec/QuadF;->p4:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Landroid/webkitsec/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkitsec/QuadF;

    iget-object v6, v6, Landroid/webkitsec/QuadF;->p3:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v5, v6}, Landroid/webkitsec/WebViewClassic;->scaleCoordinate(FFF)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-boolean v5, p0, Landroid/webkitsec/WebViewClassic;->mIsEditingText:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v5, v6}, Landroid/webkitsec/WebViewClassic;->clampBetween(III)I

    move-result v3

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v5, v6}, Landroid/webkitsec/WebViewClassic;->clampBetween(III)I

    move-result v4

    :cond_0
    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method private startDrag()V
    .locals 4

    const/4 v3, 0x1

    sget-boolean v0, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDrag mCurrentScrollingLayerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mCurrentScrollingLayerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTouchMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/webkitsec/WebViewCore;->reducePriority()V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-static {v0}, Landroid/webkitsec/WebViewCore;->pauseUpdatePicture(Landroid/webkitsec/WebViewCore;)V

    invoke-direct {p0, v3}, Landroid/webkitsec/WebViewClassic;->nativeSetIsScrolling(Z)V

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mHorizontalScrollBarMode:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mVerticalScrollBarMode:I

    if-eq v0, v3, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v0}, Landroid/webkitsec/ZoomManager;->invokeZoomPicker()V

    :cond_2
    return-void
.end method

.method private startPrivateBrowsing()V
    .locals 2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettingsClassic;->setPrivateBrowsingEnabled(Z)V

    return-void
.end method

.method private startScrollingLayer(FF)V
    .locals 6

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    float-to-int v0, p1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v2

    float-to-int v0, p2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v3

    iget v1, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mScrollingLayerBounds:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkitsec/WebViewClassic;->nativeScrollableLayer(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mCurrentScrollingLayerId:I

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mCurrentScrollingLayerId:I

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    goto :goto_0
.end method

.method private startSelectActionMode()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/webkitsec/SelectActionModeCallback;

    invoke-direct {v0}, Landroid/webkitsec/SelectActionModeCallback;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallback:Landroid/webkitsec/SelectActionModeCallback;

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallback:Landroid/webkitsec/SelectActionModeCallback;

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mIsCaretSelection:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/webkitsec/SelectActionModeCallback;->setTextSelected(Z)V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallback:Landroid/webkitsec/SelectActionModeCallback;

    invoke-virtual {v0, p0}, Landroid/webkitsec/SelectActionModeCallback;->setWebView(Landroid/webkitsec/WebViewClassic;)V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallback:Landroid/webkitsec/SelectActionModeCallback;

    invoke-virtual {v0, v3}, Landroid/webkitsec/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->selectionDone()V

    :goto_1
    return v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0, v2}, Landroid/webkitsec/WebView;->performHapticFeedback(I)Z

    move v2, v1

    goto :goto_1
.end method

.method private startSelectingText()V
    .locals 4

    const/4 v1, 0x1

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Landroid/webkitsec/WebViewClassic;->resetCaretTimer(J)V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mSelectingText:Z

    iput-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mShowTextSelectionExtra:Z

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->animateHandles()V

    goto :goto_1
.end method

.method private startTouch(FFJ)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mLastTouchX:I

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mStartTouchX:I

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mLastTouchY:I

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mStartTouchY:I

    iput-wide p3, p0, Landroid/webkitsec/WebViewClassic;->mLastTouchTime:J

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mSnapScrollMode:I

    return-void
.end method

.method private stopTouch()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectingText:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Landroid/webkitsec/WebViewCore;->resumePriority()V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-static {v0}, Landroid/webkitsec/WebViewCore;->resumeUpdatePicture(Landroid/webkitsec/WebViewCore;)V

    invoke-direct {p0, v2}, Landroid/webkitsec/WebViewClassic;->nativeSetIsScrolling(Z)V

    iput-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mFirstScaleOccured:Z

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mInputDispatcher:Landroid/webkitsec/WebViewInputDispatcher;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mInputDispatcher:Landroid/webkitsec/WebViewInputDispatcher;

    invoke-virtual {v0, v2}, Landroid/webkitsec/WebViewInputDispatcher;->setClickOnSelectHandleCenter(Z)V

    :cond_2
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_3
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mOverScrollGlow:Landroid/webkitsec/OverScrollGlow;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mOverScrollGlow:Landroid/webkitsec/OverScrollGlow;

    invoke-virtual {v0}, Landroid/webkitsec/OverScrollGlow;->releaseAll()V

    :cond_4
    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectingText:Z

    if-eqz v0, :cond_6

    iput-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mSelectionStarted:Z

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->syncSelectionCursors()V

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->resetCaretTimer()V

    :cond_5
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    :cond_6
    return-void
.end method

.method private syncSelectionCursors()V
    .locals 4

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorBase:Landroid/graphics/Point;

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorBaseTextQuad:Landroid/webkitsec/QuadF;

    invoke-static {v0, v1, v2, v3}, Landroid/webkitsec/WebViewClassic;->nativeGetHandleLayerId(IILandroid/graphics/Point;Landroid/webkitsec/QuadF;)I

    move-result v0

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorBaseLayerId:I

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorExtent:Landroid/graphics/Point;

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorExtentTextQuad:Landroid/webkitsec/QuadF;

    invoke-static {v0, v1, v2, v3}, Landroid/webkitsec/WebViewClassic;->nativeGetHandleLayerId(IILandroid/graphics/Point;Landroid/webkitsec/QuadF;)I

    move-result v0

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorExtentLayerId:I

    return-void
.end method

.method private textSelectionTouchEvent(Landroid/view/MotionEvent;IIIFF)Z
    .locals 20

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v16, 0x0

    :cond_0
    :goto_0
    return v16

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mWebSelectionOn:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    invoke-virtual {v3}, Landroid/webkitsec/WebMagnifier;->hide()V

    const/16 v16, 0x0

    goto :goto_0

    :cond_2
    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mIsPressingHandle:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mWebSelectionControls:Landroid/webkitsec/WebTextSelectionControls;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v3, v0, v1, v4}, Landroid/webkitsec/WebTextSelectionControls;->getHandleType(IILandroid/webkitsec/WebViewCore$SelectionCopiedData;)I

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/webkitsec/WebViewClassic;->mController:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mIsPressingHandle:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v4, 0x2c6

    invoke-virtual {v3, v4}, Landroid/webkitsec/WebViewCore;->removeMessages(I)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mActionMove:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->getNewActionPopup()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->hideSelectActionWindow()V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v3

    instance-of v3, v3, Landroid/webkitsec/HtmlComposerView;

    if-eqz v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v12

    check-cast v12, Landroid/webkitsec/HtmlComposerView;

    if-eqz v12, :cond_4

    iget-object v3, v12, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    if-eqz v3, :cond_4

    const/4 v3, 0x3

    invoke-virtual {v12, v3}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget v3, v3, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mGranularity:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5

    move/from16 v0, p5

    float-to-int v3, v0

    move/from16 v0, p6

    float-to-int v4, v0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Landroid/webkitsec/WebViewClassic;->showMagnifier(IIZ)V

    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-direct {v0, v1, v2, v10, v11}, Landroid/webkitsec/WebViewClassic;->startTouch(FFJ)V

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/16 v16, 0x1

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic;->mPreviousTouchX:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic;->mPreviousTouchY:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkitsec/ZoomManager;->setEdgeZoom(Z)V

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mIsPressingHandle:Z

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mLongPress:Z

    if-eqz v3, :cond_0

    :cond_6
    if-ltz p3, :cond_7

    if-gez p4, :cond_8

    :cond_7
    const-string/jumbo v3, "webview"

    const-string v4, " textSelectionTouchEvent negative point: validate for Extend selection "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mLongPress:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mDialogMove:Z

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mFindDialogOn:Z

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v4, 0x2c8

    invoke-virtual {v3, v4}, Landroid/webkitsec/WebViewCore;->removeMessages(I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScale()F

    move-result v8

    move-object/from16 v3, p0

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v3 .. v8}, Landroid/webkitsec/WebViewClassic;->getCopyParams(IIZZF)Landroid/webkitsec/WebViewCore$CopyParams;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v4, 0x2c8

    invoke-virtual {v3, v4, v9}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    :cond_9
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-direct {v0, v1, v2, v10, v11}, Landroid/webkitsec/WebViewClassic;->startTouch(FFJ)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->getEnableMagnifier()Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    iget v3, v3, Landroid/webkitsec/WebMagnifier;->mMode:I

    if-nez v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    move/from16 v0, p5

    float-to-int v4, v0

    move/from16 v0, p6

    float-to-int v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/webkitsec/WebMagnifier;->move(II)V

    :cond_b
    :goto_2
    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/WebViewClassic;->mRequestNewSelection:I

    if-eq v3, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v3, v3, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_9

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mWebSelectionControls:Landroid/webkitsec/WebTextSelectionControls;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/WebViewClassic;->mController:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/webkitsec/WebTextSelectionControls;->getHandleExtendPoint(IIILandroid/webkitsec/WebViewCore$SelectionCopiedData;)Landroid/graphics/Point;

    move-result-object v19

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/webkitsec/WebViewClassic;->isTextSelectionControlerForward(II)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_d
    const/4 v14, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->getNewActionPopup()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->hideSelectActionWindow()V

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-boolean v3, v3, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->isMulticol:Z

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget v3, v3, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mGranularity:I

    if-nez v3, :cond_f

    const/4 v14, 0x1

    :cond_f
    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/webkitsec/WebViewClassic;->handleTextSelectionAutoScroll(II)Z

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic;->mPreviousTouchX:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic;->mPreviousTouchY:I

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v19

    iget v5, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/webkitsec/WebViewClassic;->mSmartSelection:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/webkitsec/WebViewClassic;->mActionMove:Z

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScale()F

    move-result v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/webkitsec/WebViewClassic;->getCopyParams(IIZZF)Landroid/webkitsec/WebViewCore$CopyParams;

    move-result-object v9

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mActionMove:Z

    if-nez v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v4, 0x2c9

    invoke-virtual {v3, v4, v9}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    :goto_3
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mActionMove:Z

    goto/16 :goto_1

    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v4, 0x2c6

    invoke-virtual {v3, v4}, Landroid/webkitsec/WebViewCore;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v4, 0x2c6

    invoke-virtual {v3, v4, v9}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_3

    :cond_11
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    iget v4, v4, Landroid/webkitsec/WebMagnifier;->mMode:I

    if-ne v3, v4, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v3, v3, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_b

    new-instance v18, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v3, v3, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkitsec/WebViewClassic;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    move/from16 v0, p5

    float-to-int v4, v0

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/webkitsec/WebMagnifier;->move(II)V

    goto/16 :goto_2

    :cond_12
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    iget v4, v4, Landroid/webkitsec/WebMagnifier;->mMode:I

    if-ne v3, v4, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v3, v3, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_b

    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v3, v3, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkitsec/WebViewClassic;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    move/from16 v0, p5

    float-to-int v4, v0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/webkitsec/WebMagnifier;->move(II)V

    goto/16 :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_13

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_13

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_16

    :cond_13
    const/4 v13, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mIsPressingHandle:Z

    if-nez v3, :cond_17

    if-nez v13, :cond_17

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/WebViewClassic;->mRequestNewSelection:I

    if-eq v3, v4, :cond_17

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_14

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mWebSelectionOn:Z

    if-nez v3, :cond_15

    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mPreviousTouchX:I

    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebViewClassic;->mPreviousTouchY:I

    :cond_15
    :goto_5
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->resetTextSelectionTouchHandleFlag()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mFindDialogOn:Z

    goto/16 :goto_0

    :cond_16
    const/4 v13, 0x0

    goto :goto_4

    :cond_17
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mIsPressingHandle:Z

    if-nez v3, :cond_18

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/WebViewClassic;->mRequestNewSelection:I

    if-ne v3, v4, :cond_15

    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->getNewActionPopup()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v3

    instance-of v3, v3, Landroid/webkitsec/HtmlComposerView;

    if-nez v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mFindCallback:Landroid/webkitsec/FindActionModeCallback;

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mFindCallback:Landroid/webkitsec/FindActionModeCallback;

    invoke-virtual {v3}, Landroid/webkitsec/FindActionModeCallback;->finish()V

    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0xb9

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v3

    instance-of v3, v3, Landroid/webkitsec/HtmlComposerView;

    if-eqz v3, :cond_1b

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v12

    check-cast v12, Landroid/webkitsec/HtmlComposerView;

    if-eqz v12, :cond_1b

    iget-object v3, v12, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    if-eqz v3, :cond_1b

    const/4 v3, 0x4

    invoke-virtual {v12, v3}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    :cond_1b
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->stopTouch()V

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkitsec/ZoomManager;->setEdgeZoom(Z)V

    const/16 v16, 0x1

    goto :goto_5

    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebViewClassic;->mIsPressingHandle:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1c

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/WebViewClassic;->mRequestNewSelection:I

    if-ne v3, v4, :cond_0

    :cond_1c
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->resetTextSelectionTouchHandleFlag()V

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->cancelTouch()V

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkitsec/ZoomManager;->setEdgeZoom(Z)V

    const/16 v16, 0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private touchedOnTextSelectionArea(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v3, 0x0

    iget-boolean v4, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectionOn:Z

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getViewHeightWithTitle()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p0, v4}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v1

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectionControls:Landroid/webkitsec/WebTextSelectionControls;

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    invoke-virtual {v4, v0, v1, v5}, Landroid/webkitsec/WebTextSelectionControls;->getHandleType(IILandroid/webkitsec/WebViewCore$SelectionCopiedData;)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private updateColor(I)V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1, p1}, Landroid/webkitsec/WebViewCore;->sendMessage(II)V

    return-void
.end method

.method private updateHwAccelerated()V
    .locals 4

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v2}, Landroid/webkitsec/WebView;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v2}, Landroid/webkitsec/WebView;->getLayerType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    invoke-static {v2, v0}, Landroid/webkitsec/WebViewClassic;->nativeSetHwAccelerated(IZ)I

    move-result v1

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewCore;->contentDraw()V

    goto :goto_0
.end method

.method private updateImageSelectedRect()V
    .locals 2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v1

    instance-of v1, v1, Landroid/webkitsec/HtmlComposerView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v1

    check-cast v1, Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView;->getSelectedImageRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v1

    check-cast v1, Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v1, v0}, Landroid/webkitsec/HtmlComposerView;->updateOutlineDrawRect(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private updateSelectionInfo(Landroid/webkitsec/WebViewCore$SelectionCopiedData;)V
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    if-eqz v3, :cond_15

    iget-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mLongPressSelection:Z

    if-eqz v3, :cond_0

    iput-boolean v6, p0, Landroid/webkitsec/WebViewClassic;->mLongPressSelection:Z

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v3, v6}, Landroid/webkitsec/WebView;->performHapticFeedback(I)Z

    :cond_0
    iget-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectionOn:Z

    if-nez v3, :cond_3

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->onSelectionStarted()V

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mInputDispatcher:Landroid/webkitsec/WebViewInputDispatcher;

    invoke-virtual {v3, v6}, Landroid/webkitsec/WebViewInputDispatcher;->setWebKitWantsTouchEvents(Z)V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->getNewActionPopup()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallbackUser:Landroid/webkitsec/SelectActionModeCallbackSec;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallbackUser:Landroid/webkitsec/SelectActionModeCallbackSec;

    iput-object v3, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallbackSec:Landroid/webkitsec/SelectActionModeCallbackSec;

    :goto_0
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallbackSec:Landroid/webkitsec/SelectActionModeCallbackSec;

    invoke-virtual {v3, p0}, Landroid/webkitsec/SelectActionModeCallbackSec;->setWebViewClassic(Landroid/webkitsec/WebViewClassic;)V

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v3}, Landroid/webkitsec/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallbackSec:Landroid/webkitsec/SelectActionModeCallbackSec;

    invoke-virtual {v3, v4}, Landroid/webkitsec/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v3

    if-nez v3, :cond_5

    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    :goto_1
    return-void

    :cond_2
    new-instance v3, Landroid/webkitsec/SelectActionModeCallbackSec;

    invoke-direct {v3}, Landroid/webkitsec/SelectActionModeCallbackSec;-><init>()V

    iput-object v3, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallbackSec:Landroid/webkitsec/SelectActionModeCallbackSec;

    goto :goto_0

    :cond_3
    iget-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mLongPress:Z

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->getNewActionPopup()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v3

    instance-of v3, v3, Landroid/webkitsec/HtmlComposerView;

    if-nez v3, :cond_d

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mFindCallback:Landroid/webkitsec/FindActionModeCallback;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mFindCallback:Landroid/webkitsec/FindActionModeCallback;

    invoke-virtual {v3}, Landroid/webkitsec/FindActionModeCallback;->finish()V

    :cond_4
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->hideSelectActionWindow()V

    :cond_5
    :goto_2
    iget v3, p0, Landroid/webkitsec/WebViewClassic;->mRequestNewSelection:I

    if-ne v5, v3, :cond_8

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget v3, v3, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mGranularity:I

    if-ne v3, v5, :cond_8

    if-eqz v1, :cond_6

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v3, v3, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget-object v4, v1, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v3, v3, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget-object v4, v1, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    :cond_6
    iget-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mLongPress:Z

    if-eqz v3, :cond_7

    iget v3, p0, Landroid/webkitsec/WebViewClassic;->mLastTouchX:I

    iget v4, p0, Landroid/webkitsec/WebViewClassic;->mLastTouchY:I

    invoke-direct {p0, v3, v4, v6}, Landroid/webkitsec/WebViewClassic;->showMagnifier(IIZ)V

    :cond_7
    iput v7, p0, Landroid/webkitsec/WebViewClassic;->mRequestNewSelection:I

    :cond_8
    if-eqz v1, :cond_b

    iget v3, v1, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mGranularity:I

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget v4, v4, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mGranularity:I

    if-eq v3, v4, :cond_b

    iget-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mIsPressingHandle:Z

    if-eqz v3, :cond_13

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget v3, v3, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mGranularity:I

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget v3, v3, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mGranularity:I

    if-ne v3, v5, :cond_13

    :cond_9
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget v3, v3, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectionController:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_a

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget v3, v3, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectionController:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_11

    :cond_a
    iput v5, p0, Landroid/webkitsec/WebViewClassic;->mController:I

    :cond_b
    :goto_3
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    if-eqz v3, :cond_c

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v3, v3, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_c

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v3, v3, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_c

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v3, v3, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    if-eqz v3, :cond_c

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v3, v3, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v3, v3, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v3, v3, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->onSelectionFinished()V

    :cond_c
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    goto/16 :goto_1

    :cond_d
    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    if-eqz v3, :cond_e

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->getInputType()I

    move-result v3

    and-int/lit16 v2, v3, 0xff0

    const/16 v3, 0xe0

    if-ne v2, v3, :cond_e

    const/4 v0, 0x1

    :cond_e
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v3

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallbackSec:Landroid/webkitsec/SelectActionModeCallbackSec;

    iget-boolean v4, v4, Landroid/webkitsec/SelectActionModeCallbackSec;->mIsEditable:Z

    if-eq v3, v4, :cond_f

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallbackSec:Landroid/webkitsec/SelectActionModeCallbackSec;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v4

    iput-boolean v4, v3, Landroid/webkitsec/SelectActionModeCallbackSec;->mIsEditable:Z

    iput-boolean v5, p0, Landroid/webkitsec/WebViewClassic;->mIsSelectionResetCalled:Z

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallbackSec:Landroid/webkitsec/SelectActionModeCallbackSec;

    invoke-virtual {v3, v5}, Landroid/webkitsec/SelectActionModeCallbackSec;->finish(Z)V

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallbackSec:Landroid/webkitsec/SelectActionModeCallbackSec;

    invoke-virtual {v3, v4}, Landroid/webkitsec/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    iput-boolean v6, p0, Landroid/webkitsec/WebViewClassic;->mIsSelectionResetCalled:Z

    goto/16 :goto_2

    :cond_f
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v3

    if-ne v3, v5, :cond_5

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallbackSec:Landroid/webkitsec/SelectActionModeCallbackSec;

    iget-boolean v3, v3, Landroid/webkitsec/SelectActionModeCallbackSec;->mIsEditable:Z

    if-ne v3, v5, :cond_5

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallbackSec:Landroid/webkitsec/SelectActionModeCallbackSec;

    invoke-virtual {v3}, Landroid/webkitsec/SelectActionModeCallbackSec;->getSelectTypePassword()Z

    move-result v3

    if-eq v0, v3, :cond_5

    iput-boolean v5, p0, Landroid/webkitsec/WebViewClassic;->mIsSelectionResetCalled:Z

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallbackSec:Landroid/webkitsec/SelectActionModeCallbackSec;

    invoke-virtual {v3, v5}, Landroid/webkitsec/SelectActionModeCallbackSec;->finish(Z)V

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallbackSec:Landroid/webkitsec/SelectActionModeCallbackSec;

    invoke-virtual {v3, v4}, Landroid/webkitsec/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    iput-boolean v6, p0, Landroid/webkitsec/WebViewClassic;->mIsSelectionResetCalled:Z

    goto/16 :goto_2

    :cond_10
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    goto/16 :goto_1

    :cond_11
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget v3, v3, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectionController:I

    if-eq v3, v9, :cond_12

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget v3, v3, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectionController:I

    if-ne v3, v8, :cond_b

    :cond_12
    iput v7, p0, Landroid/webkitsec/WebViewClassic;->mController:I

    goto/16 :goto_3

    :cond_13
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget v3, v3, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mGranularity:I

    if-ne v3, v8, :cond_b

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    invoke-virtual {v3}, Landroid/webkitsec/WebMagnifier;->hide()V

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget v3, v3, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectionController:I

    if-ne v3, v5, :cond_14

    const/4 v3, 0x6

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mController:I

    goto/16 :goto_3

    :cond_14
    iput v9, p0, Landroid/webkitsec/WebViewClassic;->mController:I

    goto/16 :goto_3

    :cond_15
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    goto/16 :goto_1
.end method

.method private updateTextSelectionFromMessage(IILandroid/webkitsec/WebViewCore$TextSelectionData;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mTextGeneration:I

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mFieldPointer:I

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    iget v5, p3, Landroid/webkitsec/WebViewCore$TextSelectionData;->mStart:I

    iget v6, p3, Landroid/webkitsec/WebViewCore$TextSelectionData;->mEnd:I

    invoke-virtual {v2, v5, v6}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    :cond_0
    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    iget v5, p3, Landroid/webkitsec/WebViewCore$TextSelectionData;->mSelectTextPtr:I

    invoke-static {v2, v5}, Landroid/webkitsec/WebViewClassic;->nativeSetTextSelection(II)V

    iget v2, p3, Landroid/webkitsec/WebViewCore$TextSelectionData;->mSelectionReason:I

    if-eq v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mSelectingText:Z

    if-nez v2, :cond_2

    iget v2, p3, Landroid/webkitsec/WebViewCore$TextSelectionData;->mStart:I

    iget v5, p3, Landroid/webkitsec/WebViewCore$TextSelectionData;->mEnd:I

    if-eq v2, v5, :cond_2

    iget v2, p3, Landroid/webkitsec/WebViewCore$TextSelectionData;->mSelectionReason:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->selectionDone()V

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mShowTextSelectionExtra:Z

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    :goto_0
    return-void

    :cond_2
    iget v2, p3, Landroid/webkitsec/WebViewCore$TextSelectionData;->mSelectTextPtr:I

    if-eqz v2, :cond_e

    iget v2, p3, Landroid/webkitsec/WebViewCore$TextSelectionData;->mStart:I

    iget v5, p3, Landroid/webkitsec/WebViewCore$TextSelectionData;->mEnd:I

    if-ne v2, v5, :cond_4

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mFieldPointer:I

    if-ne v2, p1, :cond_3

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mFieldPointer:I

    if-nez v2, :cond_4

    :cond_3
    if-nez p1, :cond_e

    iget v2, p3, Landroid/webkitsec/WebViewCore$TextSelectionData;->mStart:I

    if-nez v2, :cond_e

    iget v2, p3, Landroid/webkitsec/WebViewCore$TextSelectionData;->mEnd:I

    if-nez v2, :cond_e

    :cond_4
    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mFieldPointer:I

    if-ne v2, p1, :cond_7

    if-eqz p1, :cond_7

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mIsEditingText:Z

    iget v2, p3, Landroid/webkitsec/WebViewCore$TextSelectionData;->mStart:I

    iget v5, p3, Landroid/webkitsec/WebViewCore$TextSelectionData;->mEnd:I

    if-ne v2, v5, :cond_8

    if-eqz p1, :cond_8

    :goto_2
    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mIsCaretSelection:Z

    iget-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-nez v2, :cond_9

    :cond_5
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->selectionDone()V

    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    goto :goto_0

    :cond_7
    move v2, v4

    goto :goto_1

    :cond_8
    move v3, v4

    goto :goto_2

    :cond_9
    iget-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mSelectingText:Z

    if-nez v2, :cond_d

    iget-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mIsCaretSelection:Z

    if-nez v2, :cond_a

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->setupWebkitSelect()Z

    :cond_b
    :goto_4
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->animateHandles()V

    iget-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mLongPress:Z

    if-eqz v2, :cond_c

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->showPasteWindow()V

    iput-boolean v4, p0, Landroid/webkitsec/WebViewClassic;->mLongPress:Z

    :cond_c
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->resetCaretTimer()V

    goto :goto_3

    :cond_d
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->syncSelectionCursors()V

    goto :goto_4

    :cond_e
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->selectionDone()V

    goto :goto_3
.end method

.method private updateTextSelectionStartEndFromMessage(IILandroid/webkitsec/WebViewCore$TextInputData;)V
    .locals 4

    const/4 v2, 0x1

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mTextGeneration:I

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mFieldPointer:I

    if-ne v0, p1, :cond_1

    iget v0, p3, Landroid/webkitsec/WebViewCore$TextInputData;->mStart:I

    iget v1, p3, Landroid/webkitsec/WebViewCore$TextInputData;->mEnd:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mBTWebSelectionOn:Z

    :goto_0
    iput-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mSelectAllViaBT:Z

    iget-object v0, p3, Landroid/webkitsec/WebViewCore$TextInputData;->mText:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p3, Landroid/webkitsec/WebViewCore$TextInputData;->mText:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    iget-object v1, p3, Landroid/webkitsec/WebViewCore$TextInputData;->mText:Ljava/lang/String;

    iget v2, p3, Landroid/webkitsec/WebViewCore$TextInputData;->mStart:I

    iget v3, p3, Landroid/webkitsec/WebViewCore$TextInputData;->mEnd:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setTextAndSelectionIfNeeded(Ljava/lang/CharSequence;II)V

    :cond_1
    return-void

    :cond_2
    iput-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mBTWebSelectionOn:Z

    goto :goto_0
.end method

.method private updateWebkitSelection(Z)V
    .locals 7

    const/16 v6, 0xd5

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mSelectCursorBase:Landroid/graphics/Point;

    if-ne v4, v5, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    if-nez v4, :cond_1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    iget v2, v4, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    iget v3, v4, Landroid/graphics/Point;->y:I

    if-eqz p1, :cond_2

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->calculateDraggingCaretTop()Landroid/graphics/Point;

    move-result-object v1

    iget v4, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v4, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    :cond_2
    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v4, v6}, Landroid/webkitsec/WebViewCore;->removeMessages(I)V

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v2, v3, v5}, Landroid/webkitsec/WebViewCore;->sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V

    goto :goto_1
.end method

.method private viewInvalidate()V
    .locals 0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    return-void
.end method

.method private viewInvalidate(IIII)V
    .locals 8

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v2}, Landroid/webkitsec/ZoomManager;->getScale()F

    move-result v1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v0

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    int-to-float v3, p1

    mul-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v4, p2

    mul-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v4, v0

    int-to-float v5, p3

    mul-float/2addr v5, v1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    int-to-float v6, p4

    mul-float/2addr v6, v1

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/2addr v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/webkitsec/WebView;->invalidate(IIII)V

    return-void
.end method

.method private viewInvalidateDelayed(JIIII)V
    .locals 9

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v0}, Landroid/webkitsec/ZoomManager;->getScale()F

    move-result v8

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v7

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    int-to-float v1, p3

    mul-float/2addr v1, v8

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v3, v1

    int-to-float v1, p4

    mul-float/2addr v1, v8

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int v4, v1, v7

    int-to-float v1, p5

    mul-float/2addr v1, v8

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v5, v1

    int-to-float v1, p6

    mul-float/2addr v1, v8

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int v6, v1, v7

    move-wide v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/webkitsec/WebView;->postInvalidateDelayed(JIIII)V

    return-void
.end method

.method private viewToContentVisibleRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 2

    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebViewClassic;->viewToContentXf(I)F

    move-result v0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1}, Landroid/webkitsec/WebView;->getScaleX()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getVisibleTitleHeightImpl()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebViewClassic;->viewToContentYf(I)F

    move-result v0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1}, Landroid/webkitsec/WebView;->getScaleY()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebViewClassic;->viewToContentXf(I)F

    move-result v0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1}, Landroid/webkitsec/WebView;->getScaleX()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebViewClassic;->viewToContentYf(I)F

    move-result v0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1}, Landroid/webkitsec/WebView;->getScaleY()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method


# virtual methods
.method public IsWordMisspelledAtPosition(II)Z
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-nez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->misspelled:Z

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->spellingOfWord:Landroid/graphics/Point;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {p0, v3}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {p0, v3}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v1

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v5, 0xf1

    invoke-virtual {v3, v5, v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->spellingOfWord:Landroid/graphics/Point;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->misspelled:Z

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/webkitsec/WebViewClassic;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/webkitsec/WebViewCore$JSInterfaceData;

    invoke-direct {v0}, Landroid/webkitsec/WebViewCore$JSInterfaceData;-><init>()V

    iput-object p1, v0, Landroid/webkitsec/WebViewCore$JSInterfaceData;->mObject:Ljava/lang/Object;

    iput-object p2, v0, Landroid/webkitsec/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/webkitsec/WebViewCore$JSInterfaceData;->mRequireAnnotation:Z

    :goto_1
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v2, 0x8a

    invoke-virtual {v1, v2, v0}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/webkitsec/WebViewCore$JSInterfaceData;->mRequireAnnotation:Z

    goto :goto_1
.end method

.method adjustDefaultZoomDensity(I)V
    .locals 3

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkitsec/WebViewCore;->getFixedDisplayDensity(Landroid/content/Context;)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    int-to-float v2, p1

    div-float v0, v1, v2

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebViewClassic;->updateDefaultZoomDensity(F)V

    return-void
.end method

.method public applyreadability(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0xd9

    invoke-virtual {v0, v1, p1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method autoFillForm(I)V
    .locals 3

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x90

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method blockWebkitViewMessages()Z
    .locals 3

    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockWebkitViewMessage= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mBlockWebkitViewMessages:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mBlockWebkitViewMessages:Z

    return v0
.end method

.method calcOurContentVisibleRect(Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/webkitsec/WebViewClassic;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getVisibleTitleHeightImpl()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public calcOurVisibleRect(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mGlobalVisibleOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, v1}, Landroid/webkitsec/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mGlobalVisibleOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    neg-int v0, v0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mGlobalVisibleOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    neg-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public canGoBack()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkitsec/CallbackProxy;->getBackForwardList()Landroid/webkitsec/WebBackForwardListClassic;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Landroid/webkitsec/WebBackForwardListClassic;->getClearPending()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/webkitsec/WebBackForwardListClassic;->getCurrentIndex()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canGoBackOrForward(I)Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v3}, Landroid/webkitsec/CallbackProxy;->getBackForwardList()Landroid/webkitsec/WebBackForwardListClassic;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Landroid/webkitsec/WebBackForwardListClassic;->getClearPending()Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/webkitsec/WebBackForwardListClassic;->getCurrentIndex()I

    move-result v3

    add-int v1, v3, p1

    if-ltz v1, :cond_1

    invoke-virtual {v0}, Landroid/webkitsec/WebBackForwardListClassic;->getSize()I

    move-result v3

    if-ge v1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public canGoForward()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkitsec/CallbackProxy;->getBackForwardList()Landroid/webkitsec/WebBackForwardListClassic;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Landroid/webkitsec/WebBackForwardListClassic;->getClearPending()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/webkitsec/WebBackForwardListClassic;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v0}, Landroid/webkitsec/WebBackForwardListClassic;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canZoomIn()Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v0}, Landroid/webkitsec/ZoomManager;->canZoomIn()Z

    move-result v0

    return v0
.end method

.method public canZoomOut()Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v0}, Landroid/webkitsec/ZoomManager;->canZoomOut()Z

    move-result v0

    return v0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 2

    iget v1, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewClassic;->nativeCopyBaseContentToPicture(Landroid/graphics/Picture;)V

    goto :goto_0
.end method

.method centerFitRect(Landroid/graphics/Rect;)V
    .locals 27

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getViewHeightWithTitle()I

    move-result v19

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v12

    move/from16 v25, v0

    div-float v24, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(FF)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkitsec/ZoomManager;->computeScaleWithLimits(F)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkitsec/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v23

    if-nez v23, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    div-int/lit8 v24, v17, 0x2

    add-int v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewClassic;->contentToViewX(I)I

    move-result v23

    div-int/lit8 v24, v20, 0x2

    sub-int v23, v23, v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    div-int/lit8 v25, v12, 0x2

    add-int v24, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewClassic;->contentToViewY(I)I

    move-result v24

    div-int/lit8 v25, v19, 0x2

    sub-int v24, v24, v25

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkitsec/WebViewClassic;->pinScrollTo(IIZI)Z

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/webkitsec/ZoomManager;->getScale()F

    move-result v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v5

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v10, v23, v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v15, v23, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v14, v23, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebViewClassic;->mContentWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v7, v23, v18

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v23, v14

    const/high16 v24, 0x40000000    # 2.0f

    div-float v8, v23, v24

    cmpl-float v23, v8, v15

    if-lez v23, :cond_3

    move v8, v15

    :cond_1
    :goto_1
    mul-float v23, v10, v18

    mul-float v24, v8, v5

    sub-float v23, v23, v24

    sub-float v24, v18, v5

    div-float v21, v23, v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v5

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v23, v23, v24

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v11, v23, v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v18

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v16, v23, v24

    int-to-float v0, v12

    move/from16 v23, v0

    mul-float v13, v23, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebViewClassic;->mContentHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v18

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v6, v23, v24

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v23, v13

    const/high16 v24, 0x40000000    # 2.0f

    div-float v9, v23, v24

    cmpl-float v23, v9, v16

    if-lez v23, :cond_4

    move/from16 v9, v16

    :cond_2
    :goto_2
    mul-float v23, v11, v18

    mul-float v24, v9, v5

    sub-float v23, v23, v24

    sub-float v24, v18, v5

    div-float v22, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/ZoomManager;->setZoomCenter(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v18

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/ZoomManager;->startZoomAnimation(FZ)Z

    goto/16 :goto_0

    :cond_3
    sub-float v23, v7, v15

    sub-float v23, v23, v14

    cmpl-float v23, v8, v23

    if-lez v23, :cond_1

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v24, v7, v15

    sub-float v8, v23, v24

    goto/16 :goto_1

    :cond_4
    sub-float v23, v6, v16

    sub-float v23, v23, v13

    cmpl-float v23, v9, v23

    if-lez v23, :cond_2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v24, v6, v16

    sub-float v9, v23, v24

    goto :goto_2
.end method

.method public clearActionModes()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallback:Landroid/webkitsec/SelectActionModeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallback:Landroid/webkitsec/SelectActionModeCallback;

    invoke-virtual {v0}, Landroid/webkitsec/SelectActionModeCallback;->finish()V

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallbackSec:Landroid/webkitsec/SelectActionModeCallbackSec;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallbackSec:Landroid/webkitsec/SelectActionModeCallbackSec;

    invoke-virtual {v0}, Landroid/webkitsec/SelectActionModeCallbackSec;->finish()V

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mFindCallback:Landroid/webkitsec/FindActionModeCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mFindCallback:Landroid/webkitsec/FindActionModeCallback;

    invoke-virtual {v0}, Landroid/webkitsec/FindActionModeCallback;->finish()V

    :cond_2
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getNewActionPopup()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->hideSelectActionWindow()V

    :cond_3
    return-void
.end method

.method public clearCache(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v3, 0x6f

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public clearFormData()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mAutoCompletePopup:Landroid/webkitsec/AutoCompletePopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mAutoCompletePopup:Landroid/webkitsec/AutoCompletePopup;

    invoke-virtual {v0}, Landroid/webkitsec/AutoCompletePopup;->clearAdapter()V

    :cond_0
    return-void
.end method

.method public clearHistory()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkitsec/CallbackProxy;->getBackForwardList()Landroid/webkitsec/WebBackForwardListClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebBackForwardListClassic;->setClearPending()V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public clearMatches()V
    .locals 3

    const/16 v2, 0xdd

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v0, v2}, Landroid/webkitsec/WebViewCore;->removeMessages(I)V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public clearSelection()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectionOn:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->onSelectionFinished()V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    iget-boolean v0, v0, Landroid/webkitsec/WebMagnifier;->mbShow:Z

    if-ne v9, v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    invoke-virtual {v0}, Landroid/webkitsec/WebMagnifier;->hide()V

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallbackSec:Landroid/webkitsec/SelectActionModeCallbackSec;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "webview"

    const-string v2, "clearSelection : mSelectCallbackSec.finish() called ."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallbackSec:Landroid/webkitsec/SelectActionModeCallbackSec;

    invoke-virtual {v0}, Landroid/webkitsec/SelectActionModeCallbackSec;->finish()V

    :cond_1
    iput-object v7, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallbackSec:Landroid/webkitsec/SelectActionModeCallbackSec;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getNewActionPopup()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/webkitsec/WebViewClassic;->mSelectActionWindow:Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->hideSelectActionWindow()V

    sput-object v7, Landroid/webkitsec/WebViewClassic;->mSelectActionWindow:Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;

    :cond_2
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v0

    instance-of v0, v0, Landroid/webkitsec/HtmlComposerView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v2, 0x22b

    invoke-virtual {v0, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    :cond_3
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v0

    instance-of v0, v0, Landroid/webkitsec/HtmlComposerView;

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_4

    const/4 v5, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v5}, Landroid/webkitsec/WebViewClassic;->getCopyParams(IIZZF)Landroid/webkitsec/WebViewCore$CopyParams;

    move-result-object v6

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0x2c7

    invoke-virtual {v0, v1, v6}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mIsEditingText:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->performSelectionDoneAction()V

    :cond_4
    iput-object v7, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v0

    instance-of v0, v0, Landroid/webkitsec/HtmlComposerView;

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mInputDispatcher:Landroid/webkitsec/WebViewInputDispatcher;

    invoke-virtual {v0, v9}, Landroid/webkitsec/WebViewInputDispatcher;->setWebKitWantsTouchEvents(Z)V

    :cond_5
    iput v8, p0, Landroid/webkitsec/WebViewClassic;->mPreviousTouchX:I

    iput v8, p0, Landroid/webkitsec/WebViewClassic;->mPreviousTouchY:I

    :cond_6
    return-void
.end method

.method public clearSslPreferences()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public clearView()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mContentWidth:I

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mContentHeight:I

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mMinPrefWidth:I

    invoke-virtual {p0, v0, v0, v0}, Landroid/webkitsec/WebViewClassic;->setBaseLayer(IZZ)V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public clearViewState()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mBlockWebkitViewMessages:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mLoadedPicture:Landroid/webkitsec/WebViewCore$DrawData;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    return-void
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 4

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->computeRealHorizontalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->computeMaxScrollX()I

    move-result v0

    if-gez v2, :cond_1

    sub-int/2addr v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-le v2, v0, :cond_0

    sub-int v3, v2, v0

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method computeMaxScrollX()I
    .locals 2

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->computeRealHorizontalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method computeMaxScrollY()I
    .locals 2

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->computeRealVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getViewHeightWithTitle()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method computeReadingLevelScale(F)F
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkitsec/ZoomManager;->computeReadingLevelScale(F)F

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 12

    const/16 v2, 0xa

    const/16 v1, 0x9

    const/4 v9, 0x0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v4

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v10

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v11

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->computeMaxScrollX()I

    move-result v5

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->computeMaxScrollY()I

    move-result v6

    iget v7, p0, Landroid/webkitsec/WebViewClassic;->mOverflingDistance:I

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v7, 0x0

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewPrivate:Landroid/webkitsec/WebView$PrivateAccess;

    sub-int v1, v10, v3

    sub-int v2, v11, v4

    move v8, v7

    invoke-virtual/range {v0 .. v9}, Landroid/webkitsec/WebView$PrivateAccess;->overScrollBy(IIIIIIIIZ)V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mOverScrollGlow:Landroid/webkitsec/OverScrollGlow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mOverScrollGlow:Landroid/webkitsec/OverScrollGlow;

    move v1, v10

    move v2, v11

    invoke-virtual/range {v0 .. v6}, Landroid/webkitsec/OverScrollGlow;->absorbGlow(IIIIII)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getTextScrollX()I

    move-result v3

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getTextScrollY()I

    move-result v4

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getMaxTextScrollX()I

    move-result v5

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getMaxTextScrollY()I

    move-result v6

    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    if-ne v0, v1, :cond_6

    invoke-direct {p0, v10, v11}, Landroid/webkitsec/WebViewClassic;->scrollLayerTo(II)V

    :goto_2
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->abortAnimation()V

    invoke-direct {p0, v9}, Landroid/webkitsec/WebViewClassic;->nativeSetIsScrolling(Z)V

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_4

    invoke-static {}, Landroid/webkitsec/WebViewCore;->resumePriority()V

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectingText:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-static {v0}, Landroid/webkitsec/WebViewCore;->resumeUpdatePicture(Landroid/webkitsec/WebViewCore;)V

    :cond_4
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v0

    if-ne v3, v0, :cond_5

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v0

    if-eq v4, v0, :cond_1

    :cond_5
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->sendOurVisibleRect()Landroid/graphics/Rect;

    goto :goto_1

    :cond_6
    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    if-ne v0, v2, :cond_7

    invoke-direct {p0, v10, v11}, Landroid/webkitsec/WebViewClassic;->scrollEditText(II)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v10}, Landroid/webkitsec/WebViewClassic;->setScrollXRaw(I)V

    invoke-virtual {p0, v11}, Landroid/webkitsec/WebViewClassic;->setScrollYRaw(I)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewPrivate:Landroid/webkitsec/WebView$PrivateAccess;

    invoke-virtual {v0}, Landroid/webkitsec/WebView$PrivateAccess;->super_computeScroll()V

    goto :goto_1
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getViewHeight()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 4

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->computeRealVerticalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->computeMaxScrollY()I

    move-result v0

    if-gez v2, :cond_1

    sub-int/2addr v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-le v2, v0, :cond_0

    sub-int v3, v2, v0

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method protected contentInvalidateAll()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    :cond_0
    return-void
.end method

.method contentToViewDimension(I)I
    .locals 2

    int-to-float v0, p1

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v1}, Landroid/webkitsec/ZoomManager;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Landroid/webkitsec/WebViewClassic;->contentToViewX(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v2}, Landroid/webkitsec/WebViewClassic;->contentToViewY(I)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3}, Landroid/webkitsec/WebViewClassic;->contentToViewX(I)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v4}, Landroid/webkitsec/WebViewClassic;->contentToViewY(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method contentToViewX(I)I
    .locals 1

    invoke-virtual {p0, p1}, Landroid/webkitsec/WebViewClassic;->contentToViewDimension(I)I

    move-result v0

    return v0
.end method

.method contentToViewY(I)I
    .locals 2

    invoke-virtual {p0, p1}, Landroid/webkitsec/WebViewClassic;->contentToViewDimension(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic copyBackForwardList()Landroid/webkitsec/WebBackForwardList;
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->copyBackForwardList()Landroid/webkitsec/WebBackForwardListClassic;

    move-result-object v0

    return-object v0
.end method

.method public copyBackForwardList()Landroid/webkitsec/WebBackForwardListClassic;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkitsec/CallbackProxy;->getBackForwardList()Landroid/webkitsec/WebBackForwardListClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebBackForwardListClassic;->clone()Landroid/webkitsec/WebBackForwardListClassic;

    move-result-object v0

    return-object v0
.end method

.method public copySelection()Z
    .locals 8

    const v7, 0x104064d

    const/4 v6, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, ""

    if-eq v4, v5, :cond_1

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x1

    :cond_0
    const/4 v1, 0x1

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    const-string v6, "clipboard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0, v4}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x4

    new-array v2, v5, [I

    invoke-direct {p0, v2}, Landroid/webkitsec/WebViewClassic;->getSelectionHandles([I)V

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v6, 0xd2

    invoke-virtual {v5, v6, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    return v1
.end method

.method public copySelectionSec()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewClassic;->copySelectionSec(Z)Z

    move-result v0

    return v0
.end method

.method copySelectionSecUseDefaultClipboard()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewClassic;->copySelectionSec(Z)Z

    move-result v0

    return v0
.end method

.method public cutSelection()V
    .locals 3

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->copySelection()Z

    const/4 v1, 0x4

    new-array v0, v1, [I

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewClassic;->getSelectionHandles([I)V

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v2, 0xd3

    invoke-virtual {v1, v2, v0}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public cutSelectionSec()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_0

    const-string v0, "Cut"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/WebViewClassic;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method deleteSelection(II)V
    .locals 5

    const/4 v4, 0x0

    iget v1, p0, Landroid/webkitsec/WebViewClassic;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkitsec/WebViewClassic;->mTextGeneration:I

    new-instance v0, Landroid/webkitsec/WebViewCore$TextSelectionData;

    invoke-direct {v0, p1, p2, v4}, Landroid/webkitsec/WebViewCore$TextSelectionData;-><init>(III)V

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v2, 0x7a

    iget v3, p0, Landroid/webkitsec/WebViewClassic;->mTextGeneration:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/webkitsec/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public destroy()V
    .locals 3

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0}, Landroid/webkitsec/WebView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Error: WebView.destroy() called while still attached!"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->ensureFunctorDetached()V

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->destroyJava()V

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->destroyNative()V

    return-void
.end method

.method public discardAllTextures()V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->nativeDiscardAllTextures()V

    return-void
.end method

.method dismissZoomControl()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v0}, Landroid/webkitsec/ZoomManager;->dismissZoomPicker()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v4, 0xf2

    if-eq v1, v4, :cond_0

    const/16 v4, 0xf3

    if-eq v1, v4, :cond_0

    const/16 v4, 0xf4

    if-eq v1, v4, :cond_0

    const/16 v4, 0xa8

    if-eq v1, v4, :cond_0

    const/16 v4, 0xa9

    if-ne v1, v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mWebViewPrivate:Landroid/webkitsec/WebView$PrivateAccess;

    invoke-virtual {v3, p1}, Landroid/webkitsec/WebView$PrivateAccess;->super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    :pswitch_1
    :try_start_0
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mIsEditingText:Z

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x42

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->initComposing()V

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "webview"

    const-string v4, "Exception handling code : it occured OOM"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_2
    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public documentAsText(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public documentHasImages(Landroid/os/Message;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0x78

    invoke-virtual {v0, v1, p1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method drawHistory()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mDrawHistory:Z

    return v0
.end method

.method public dumpDisplayTree()V
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewClassic;->nativeDumpDisplayTree(Ljava/lang/String;)V

    return-void
.end method

.method public dumpDomTree(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v3, 0xaa

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public dumpRenderTree(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v3, 0xab

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V
    .locals 5

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getBaseLayer()I

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v1, v2, p2}, Landroid/webkitsec/ViewStateSerializer;->dumpLayerHierarchy(ILjava/io/OutputStream;I)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v3, Ljava/lang/String;

    const-string v4, "ascii"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    iget v3, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    new-instance v0, Landroid/webkitsec/WebViewClassic$CmdVal;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebViewClassic$CmdVal;-><init>(Landroid/webkitsec/WebViewClassic;)V

    iput-object p1, v0, Landroid/webkitsec/WebViewClassic$CmdVal;->command:Ljava/lang/String;

    iput-object p2, v0, Landroid/webkitsec/WebViewClassic$CmdVal;->value:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Copy"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Cut"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Delete"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "DeleteForward"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v4, 0x203

    invoke-virtual {v3, v4, v0}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "webview"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "webview"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public externalRepresentation(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public extractSmartClipData(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .locals 13

    const/4 v12, 0x2

    const/4 v7, 0x1

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScale()F

    move-result v3

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {p0, v8}, Landroid/webkitsec/WebViewClassic;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v5

    new-instance v0, Landroid/graphics/Rect;

    invoke-interface {p2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v4, Landroid/graphics/Rect;

    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    iget v10, v0, Landroid/graphics/Rect;->right:I

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v8, v5, Landroid/graphics/Point;->x:I

    neg-int v8, v8

    iget v9, v5, Landroid/graphics/Point;->y:I

    neg-int v9, v9

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    const/high16 v8, 0x3f800000    # 1.0f

    div-float/2addr v8, v3

    invoke-virtual {v4, v8}, Landroid/graphics/Rect;->scale(F)V

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    const/4 v6, 0x0

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v8, v8, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v8, v8, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v8}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getExtractionMode()I

    move-result v8

    if-ne v8, v12, :cond_2

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->isTextSelected()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-direct {p0, v4}, Landroid/webkitsec/WebViewClassic;->getTextSelectedString(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {p1, v8}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;->setMetaAreaRect(Landroid/graphics/Rect;)V

    new-instance v8, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v9, "url"

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v8}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    new-instance v8, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v9, "text_selection"

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getTextSelected()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v8}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getTitle()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    new-instance v8, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v9, "title"

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v8}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    :cond_1
    :goto_0
    return v7

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-lez v8, :cond_3

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-nez v8, :cond_3

    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v4, Landroid/graphics/Rect;->right:I

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-lez v8, :cond_4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-nez v8, :cond_4

    iget v8, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    :cond_4
    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v8, v4}, Landroid/webkitsec/WebViewCore;->extractSmartClipData(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getExtractionMode()I

    move-result v8

    if-eq v8, v12, :cond_6

    :cond_5
    invoke-direct {p0, p1, v2}, Landroid/webkitsec/WebViewClassic;->setExtractionResultToSmartClipDataElement(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Ljava/lang/String;)Z

    goto :goto_0

    :cond_6
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public findAll(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkitsec/WebViewClassic;->findAllBody(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/webkitsec/WebViewClassic;->findAllBody(Ljava/lang/String;Z)I

    return-void
.end method

.method public findHierarchyView(Ljava/lang/String;I)Landroid/view/View;
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    invoke-direct {p0, v2, p1, p2, v0}, Landroid/webkitsec/WebViewClassic;->nativeDumpLayerContentToPicture(ILjava/lang/String;ILandroid/graphics/Picture;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/webkitsec/WebViewClassic$PictureWrapperView;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-direct {v1, v2, v0, v3}, Landroid/webkitsec/WebViewClassic$PictureWrapperView;-><init>(Landroid/content/Context;Landroid/graphics/Picture;Landroid/webkitsec/WebView;)V

    goto :goto_0
.end method

.method public findNext(Z)V
    .locals 4

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mFindRequest:Landroid/webkitsec/WebViewCore$FindAllRequest;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v2, 0xde

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mFindRequest:Landroid/webkitsec/WebViewCore$FindAllRequest;

    invoke-virtual {v1, v2, v0, v3}, Landroid/webkitsec/WebViewCore;->sendMessage(IILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public flingScroll(II)V
    .locals 11

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->computeMaxScrollX()I

    move-result v6

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->computeMaxScrollY()I

    move-result v8

    iget v9, p0, Landroid/webkitsec/WebViewClassic;->mOverflingDistance:I

    iget v10, p0, Landroid/webkitsec/WebViewClassic;->mOverflingDistance:I

    move v3, p1

    move v4, p2

    move v7, v5

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    return-void
.end method

.method focusCandidateIsEditableText()Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget-boolean v0, v0, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mEditable:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public freeMemory()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method getBaseLayer()I
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewClassic;->nativeGetBaseLayer(I)I

    move-result v0

    goto :goto_0
.end method

.method getBlockLeftEdge(IIF)I
    .locals 8

    const/high16 v6, 0x3f800000    # 1.0f

    div-float v1, v6, p3

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    float-to-int v4, v6

    const/4 v2, -0x1

    iget-object v6, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget-object v6, v6, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mEnclosingParentRects:[Landroid/graphics/Rect;

    array-length v3, v6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    iget-object v6, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget-object v6, v6, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mEnclosingParentRects:[Landroid/graphics/Rect;

    aget-object v5, v6, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget v7, v7, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mHitTestSlop:I

    if-ge v6, v7, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-le v6, v4, :cond_2

    :cond_1
    return v2

    :cond_2
    iget v2, v5, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method

.method getBlockRect(IIF)Landroid/graphics/Rect;
    .locals 10

    const/high16 v8, 0x3f800000    # 1.0f

    div-float v2, v8, p3

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v2

    float-to-int v4, v8

    const/4 v3, -0x1

    const/4 v7, -0x1

    const/4 v6, -0x1

    const/4 v0, -0x1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget-object v8, v8, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mEnclosingParentRects:[Landroid/graphics/Rect;

    array-length v8, v8

    if-lez v8, :cond_0

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget-object v8, v8, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mEnclosingParentRects:[Landroid/graphics/Rect;

    const/4 v9, 0x0

    aget-object v5, v8, v9

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getViewHeight()I

    move-result v9

    if-ge v8, v9, :cond_0

    iget v3, v5, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    :cond_0
    iput v3, v1, Landroid/graphics/Rect;->left:I

    iput v7, v1, Landroid/graphics/Rect;->top:I

    iput v6, v1, Landroid/graphics/Rect;->right:I

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    return-object v1
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mCertificate:Landroid/net/http/SslCertificate;

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mContentHeight:I

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mContentWidth:I

    return v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDCHandlerLastHandleType()I
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mController:I

    return v0
.end method

.method getDefaultZoomScale()F
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v0}, Landroid/webkitsec/ZoomManager;->getDefaultScale()F

    move-result v0

    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkitsec/CallbackProxy;->getBackForwardList()Landroid/webkitsec/WebBackForwardListClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebBackForwardListClassic;->getCurrentItem()Landroid/webkitsec/WebHistoryItemClassic;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkitsec/WebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getHeight()I
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0}, Landroid/webkitsec/WebView;->getHeight()I

    move-result v0

    return v0
.end method

.method getHistoryPictureWidth()I
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mHistoryPicture:Landroid/graphics/Picture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mHistoryPicture:Landroid/graphics/Picture;

    invoke-virtual {v0}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHitTestResult()Landroid/webkitsec/WebView$HitTestResult;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mInitialHitTestResult:Landroid/webkitsec/WebView$HitTestResult;

    return-object v0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mDatabase:Landroid/webkitsec/WebViewDatabaseClassic;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/WebViewDatabaseClassic;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageSelectRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->imageSelectRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getIsZoomScaleBegin()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mIsZoomScaleBegin:Z

    return v0
.end method

.method public getNativeClass()I
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    return v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkitsec/CallbackProxy;->getBackForwardList()Landroid/webkitsec/WebBackForwardListClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebBackForwardListClassic;->getCurrentItem()Landroid/webkitsec/WebHistoryItemClassic;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkitsec/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPageBackgroundColor()I
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewClassic;->nativeGetBackgroundColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkitsec/CallbackProxy;->getProgress()I

    move-result v0

    return v0
.end method

.method public getReaderArticle()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mReaderArticle:Z

    return v0
.end method

.method public getReaderFlag()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mReaderFlag:Z

    return v0
.end method

.method public getScale()F
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v0}, Landroid/webkitsec/ZoomManager;->getScale()F

    move-result v0

    return v0
.end method

.method getScaledNavSlop()I
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mNavSlop:I

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v0

    return v0
.end method

.method protected getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;
    .locals 3

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    const/4 v2, 0x2

    new-array v0, v2, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    return-object v1
.end method

.method protected getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p1}, Landroid/webkitsec/WebViewClassic;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    return-object v1
.end method

.method public getScrollDelegate()Landroid/webkitsec/WebViewProvider$ScrollDelegate;
    .locals 0

    return-object p0
.end method

.method getScrollX()I
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0}, Landroid/webkitsec/WebView;->getScrollX()I

    move-result v0

    return v0
.end method

.method getScrollY()I
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0}, Landroid/webkitsec/WebView;->getScrollY()I

    move-result v0

    return v0
.end method

.method getSelection()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->nativeGetSelection()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelectionSec()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getTextSelected()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSettings()Landroid/webkitsec/WebSettings;
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    return-object v0
.end method

.method public getSettings()Landroid/webkitsec/WebSettingsClassic;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewCore;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextSelected()Ljava/lang/String;
    .locals 5

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->textPoint:Landroid/graphics/Point;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v3, 0x2cf

    invoke-virtual {v1, v3}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    const-string v1, "CTC"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Web_SetUserAgent"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->textPoint:Landroid/graphics/Point;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->textSelected:Ljava/lang/String;

    return-object v1

    :cond_1
    :try_start_3
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->textPoint:Landroid/graphics/Point;

    const-wide/16 v3, 0xdac

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkitsec/CallbackProxy;->getBackForwardList()Landroid/webkitsec/WebBackForwardListClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebBackForwardListClassic;->getCurrentItem()Landroid/webkitsec/WebHistoryItemClassic;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkitsec/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getTitleHeight()I
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    instance-of v0, v0, Landroid/webkitsec/WebViewClassic$TitleBarDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    check-cast v0, Landroid/webkitsec/WebViewClassic$TitleBarDelegate;

    invoke-interface {v0}, Landroid/webkitsec/WebViewClassic$TitleBarDelegate;->getTitleHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkitsec/CallbackProxy;->getBackForwardList()Landroid/webkitsec/WebBackForwardListClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebBackForwardListClassic;->getCurrentItem()Landroid/webkitsec/WebHistoryItemClassic;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkitsec/WebHistoryItemClassic;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkitsec/CallbackProxy;->getBackForwardList()Landroid/webkitsec/WebBackForwardListClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebBackForwardListClassic;->getCurrentItem()Landroid/webkitsec/WebHistoryItemClassic;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkitsec/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;
    .locals 0

    return-object p0
.end method

.method getViewHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getViewHeightWithTitle()I

    move-result v0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getVisibleTitleHeightImpl()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method getViewHeightWithTitle()I
    .locals 2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1}, Landroid/webkitsec/WebView;->isHorizontalScrollBarEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mOverlayHorizontalScrollbar:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewPrivate:Landroid/webkitsec/WebView$PrivateAccess;

    invoke-virtual {v1}, Landroid/webkitsec/WebView$PrivateAccess;->getHorizontalScrollbarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method getViewManager()Landroid/webkitsec/ViewManager;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mViewManager:Landroid/webkitsec/ViewManager;

    return-object v0
.end method

.method getViewWidth()I
    .locals 3

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0}, Landroid/webkitsec/WebView;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mOverlayVerticalScrollbar:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v2}, Landroid/webkitsec/WebView;->getVerticalScrollbarWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public getVisibleTitleHeight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getVisibleTitleHeightImpl()I

    move-result v0

    return v0
.end method

.method public getWebBackForwardListClient()Landroid/webkitsec/WebBackForwardListClient;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkitsec/CallbackProxy;->getWebBackForwardListClient()Landroid/webkitsec/WebBackForwardListClient;

    move-result-object v0

    return-object v0
.end method

.method public getWebChromeClient()Landroid/webkitsec/WebChromeClient;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkitsec/CallbackProxy;->getWebChromeClient()Landroid/webkitsec/WebChromeClient;

    move-result-object v0

    return-object v0
.end method

.method public getWebClipboard()Landroid/webkitsec/WebClipboard;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebClipboard:Landroid/webkitsec/WebClipboard;

    return-object v0
.end method

.method public getWebFeedLinks()[Landroid/webkitsec/WebFeedLink;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkitsec/CallbackProxy;->getWebFeedLinks()[Landroid/webkitsec/WebFeedLink;

    move-result-object v0

    return-object v0
.end method

.method public getWebTextSelectionControls()Landroid/webkitsec/WebTextSelectionControls;
    .locals 8

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectionControls:Landroid/webkitsec/WebTextSelectionControls;

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getTextSelected()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    invoke-direct {v1, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    invoke-direct {v0, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectionControls:Landroid/webkitsec/WebTextSelectionControls;

    invoke-virtual {p0, v3}, Landroid/webkitsec/WebViewClassic;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p0, v1}, Landroid/webkitsec/WebViewClassic;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebViewClassic;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/webkitsec/WebTextSelectionControls;->SetTextSelectionData(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectionControls:Landroid/webkitsec/WebTextSelectionControls;

    goto :goto_0
.end method

.method public getWebView()Landroid/webkitsec/WebView;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    return-object v0
.end method

.method public getWebViewClient()Landroid/webkitsec/WebViewClient;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkitsec/CallbackProxy;->getWebViewClient()Landroid/webkitsec/WebViewClient;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getWebViewCore()Landroid/webkitsec/WebViewCore;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getWidth()I
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0}, Landroid/webkitsec/WebView;->getWidth()I

    move-result v0

    return v0
.end method

.method public getZoomControls()Landroid/view/View;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->supportZoom()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "webview"

    const-string v1, "This WebView doesn\'t support zoom."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v0}, Landroid/webkitsec/ZoomManager;->getExternalZoomPicker()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method getZoomOverviewScale()F
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v0}, Landroid/webkitsec/ZoomManager;->getZoomOverviewScale()F

    move-result v0

    return v0
.end method

.method public goBack()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewClassic;->goBackOrForwardImpl(I)V

    return-void
.end method

.method public goBackOrForward(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewClassic;->goBackOrForwardImpl(I)V

    return-void
.end method

.method public goForward()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewClassic;->goBackOrForwardImpl(I)V

    return-void
.end method

.method handleSelectionChangedWebCoreThread(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->isAccessibilityInjectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getAccessibilityInjector()Landroid/webkitsec/AccessibilityInjector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/AccessibilityInjector;->onSelectionStringChangedWebCoreThread(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method hideSelectActionWindow()V
    .locals 2

    const/16 v1, 0xba

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    sget-object v0, Landroid/webkitsec/WebViewClassic;->mSelectActionWindow:Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectPopupInSameInstance:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectPopupInSameInstance:Z

    sget-object v0, Landroid/webkitsec/WebViewClassic;->mSelectActionWindow:Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->hide()V

    const/4 v0, 0x0

    sput-object v0, Landroid/webkitsec/WebViewClassic;->mSelectActionWindow:Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;

    :cond_1
    return-void
.end method

.method hideSelectActionWindowAfterDelay()V
    .locals 4

    const/16 v2, 0xba

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method incrementTextGeneration()V
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mTextGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mTextGeneration:I

    return-void
.end method

.method public init(Ljava/util/Map;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x1

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkitsec/JniUtil;->setContext(Landroid/content/Context;)V

    new-instance v0, Landroid/webkitsec/CallbackProxy;

    invoke-direct {v0, v1, p0}, Landroid/webkitsec/CallbackProxy;-><init>(Landroid/content/Context;Landroid/webkitsec/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    new-instance v0, Landroid/webkitsec/ViewManager;

    invoke-direct {v0, p0}, Landroid/webkitsec/ViewManager;-><init>(Landroid/webkitsec/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mViewManager:Landroid/webkitsec/ViewManager;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkitsec/L10nUtils;->setApplicationContext(Landroid/content/Context;)V

    new-instance v0, Landroid/webkitsec/WebViewCore;

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-direct {v0, v1, p0, v2, p1}, Landroid/webkitsec/WebViewCore;-><init>(Landroid/content/Context;Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/CallbackProxy;Ljava/util/Map;)V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-static {v1}, Landroid/webkitsec/WebViewDatabaseClassic;->getInstance(Landroid/content/Context;)Landroid/webkitsec/WebViewDatabaseClassic;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mDatabase:Landroid/webkitsec/WebViewDatabaseClassic;

    new-instance v0, Landroid/widget/OverScroller;

    const/4 v2, 0x0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    new-instance v0, Landroid/webkitsec/ZoomManager;

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-direct {v0, p0, v2}, Landroid/webkitsec/ZoomManager;-><init>(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/CallbackProxy;)V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->init()V

    invoke-direct {p0, v1}, Landroid/webkitsec/WebViewClassic;->setupPackageListener(Landroid/content/Context;)V

    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->setupProxyListener(Landroid/content/Context;)V

    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->setupTrustStorageListener(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Landroid/webkitsec/WebViewClassic;->updateMultiTouchSupport(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->startPrivateBrowsing()V

    :cond_0
    new-instance v0, Landroid/webkitsec/WebViewCore$AutoFillData;

    invoke-direct {v0}, Landroid/webkitsec/WebViewCore$AutoFillData;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mAutoFillData:Landroid/webkitsec/WebViewCore$AutoFillData;

    new-instance v0, Landroid/webkitsec/WebMagnifier;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebMagnifier;-><init>(Landroid/webkitsec/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    new-instance v0, Landroid/webkitsec/WebTextSelectionControls;

    invoke-direct {v0, v1, p0}, Landroid/webkitsec/WebTextSelectionControls;-><init>(Landroid/content/Context;Landroid/webkitsec/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectionControls:Landroid/webkitsec/WebTextSelectionControls;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/lang/String;

    const-string v2, "com.google.android.gm"

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    sget v0, Landroid/webkitsec/DebugFlags;->ENABLE_SAMSUNG_SELECTION:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/webkitsec/WebSettingsClassic;->forceSetAdvancedCopyPasteFeature(Z)V

    :cond_1
    sget v0, Landroid/webkitsec/DebugFlags;->ENABLE_DRAG:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-static {}, Landroid/webkitsec/WebDragHandler;->getInstance()Landroid/webkitsec/WebDragHandler;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkitsec/WebView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_2
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mEditTextScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v1}, Landroid/webkitsec/WebViewClassic;->calculateChannelDistance(Landroid/content/Context;)V

    invoke-direct {p0, v1}, Landroid/webkitsec/WebViewClassic;->calculateOnewayScrollBoundary(Landroid/content/Context;)V

    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v2, 0x101046c

    invoke-virtual {v0, v2, v7, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v7, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_3

    iput-boolean v9, p0, Landroid/webkitsec/WebViewClassic;->mThemeIsDeviceDefault:Z

    :goto_0
    new-instance v0, Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl;-><init>(Landroid/webkitsec/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mPasteEvent:Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mFeatureHoverUI:Z

    return-void

    :cond_3
    iput-boolean v5, p0, Landroid/webkitsec/WebViewClassic;->mThemeIsDeviceDefault:Z

    goto :goto_0
.end method

.method public initComposing()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "imeAction:initComposing"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method invalidate()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0}, Landroid/webkitsec/WebView;->invalidate()V

    return-void
.end method

.method public invokeZoomPicker()V
    .locals 2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->supportZoom()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "webview"

    const-string v1, "This WebView doesn\'t support zoom."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->clearHelpers()V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v0}, Landroid/webkitsec/ZoomManager;->invokeZoomPicker()V

    goto :goto_0
.end method

.method public isFullScreenVideoMode()Z
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkitsec/HTML5VideoViewProxy;->isFullScreenMode()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "webview"

    const-string v1, "isFullScreenVideoMode:  mHTML5VideoViewProxy is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNUMPADKey(I)Z
    .locals 1

    const/16 v0, 0x99

    if-gt p1, v0, :cond_0

    const/16 v0, 0x90

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mIsPaused:Z

    return v0
.end method

.method public isPrivateBrowsingEnabled()Z
    .locals 2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->isPrivateBrowsingEnabled()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isRectFitOnScreen(Landroid/graphics/Rect;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getViewHeightWithTitle()I

    move-result v3

    int-to-float v5, v4

    int-to-float v6, v1

    div-float/2addr v5, v6

    int-to-float v6, v3

    int-to-float v7, v0

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v5, v2}, Landroid/webkitsec/ZoomManager;->computeScaleWithLimits(F)F

    move-result v2

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v5, v2}, Landroid/webkitsec/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v5}, Landroid/webkitsec/WebViewClassic;->contentToViewX(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v6

    if-lt v5, v6, :cond_0

    iget v5, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v5}, Landroid/webkitsec/WebViewClassic;->contentToViewX(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v6

    add-int/2addr v6, v4

    if-gt v5, v6, :cond_0

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v5}, Landroid/webkitsec/WebViewClassic;->contentToViewY(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v6

    if-lt v5, v6, :cond_0

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v5}, Landroid/webkitsec/WebViewClassic;->contentToViewY(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v6

    add-int/2addr v6, v3

    if-gt v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public isSLongPressSelection()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mLongPressSelection:Z

    return v0
.end method

.method public isSelectionHandleSelected(II)Z
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectionControls:Landroid/webkitsec/WebTextSelectionControls;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    invoke-virtual {v0, p1, p2, v1}, Landroid/webkitsec/WebTextSelectionControls;->getHandleType(IILandroid/webkitsec/WebViewCore$SelectionCopiedData;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSelectionInEditField()Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallbackSec:Landroid/webkitsec/SelectActionModeCallbackSec;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallbackSec:Landroid/webkitsec/SelectActionModeCallbackSec;

    iget-boolean v0, v0, Landroid/webkitsec/SelectActionModeCallbackSec;->mIsEditable:Z

    goto :goto_0
.end method

.method isSelectionResetCalled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mIsSelectionResetCalled:Z

    return v0
.end method

.method isUrlBlocked(Ljava/lang/String;)Z
    .locals 16

    const/4 v12, 0x0

    if-eqz p1, :cond_0

    const/4 v12, 0x1

    :cond_0
    if-eqz v12, :cond_1

    const-string v1, "favicon.ico"

    const-string v2, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkitsec/WebViewClassic;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    if-nez v1, :cond_2

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getFirewallPolicy()Landroid/sec/enterprise/FirewallPolicy;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/webkitsec/WebViewClassic;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    :cond_2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkitsec/WebViewClassic;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    if-eqz v1, :cond_3

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkitsec/WebViewClassic;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/sec/enterprise/FirewallPolicy;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v13

    :cond_3
    :goto_0
    if-eqz v13, :cond_c

    if-nez v12, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkitsec/WebViewClassic;->mUrl:Ljava/lang/String;

    const-string v2, "favicon.ico"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/webkitsec/WebViewClassic;->mUrl:Ljava/lang/String;

    :cond_4
    const-string v3, ""

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v1, 0x1100004

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v11

    new-instance v8, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_8

    if-nez v12, :cond_7

    const-string v1, "%s"

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mUrl:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :goto_2
    const-string v1, "%e"

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    const v4, 0x10402a1

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v7, v8

    :goto_3
    if-eqz v7, :cond_5

    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_5
    :goto_4
    if-nez v12, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mUrl:Ljava/lang/String;

    const-string/jumbo v4, "text/html"

    const-string v5, "UTF-8"

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkitsec/WebViewClassic;->mUrl:Ljava/lang/String;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/webkitsec/WebViewClassic;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    const/4 v1, 0x1

    :goto_6
    return v1

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkitsec/WebViewClassic;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/sec/enterprise/FirewallPolicy;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v13

    goto/16 :goto_0

    :cond_7
    :try_start_3
    const-string v1, "%s"

    move-object/from16 v0, p1

    invoke-virtual {v14, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    :cond_8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v3

    if-eqz v8, :cond_9

    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_9
    :goto_7
    move-object v7, v8

    goto :goto_4

    :catchall_0
    move-exception v1

    :goto_8
    if-eqz v7, :cond_a

    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_a
    :goto_9
    throw v1

    :cond_b
    const-string/jumbo v4, "text/html"

    const-string v5, "UTF-8"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/webkitsec/WebViewClassic;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    const/4 v1, 0x0

    goto :goto_6

    :catch_1
    move-exception v10

    const-string/jumbo v1, "webview"

    const-string v2, "Resource Closing Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_2
    move-exception v10

    const-string/jumbo v2, "webview"

    const-string v4, "Resource Closing Error"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catch_3
    move-exception v10

    const-string/jumbo v1, "webview"

    const-string v2, "Resource Closing Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catchall_1
    move-exception v1

    move-object v7, v8

    goto :goto_8

    :catch_4
    move-exception v1

    goto :goto_3
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewClassic;->loadDataImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p2, p3, p4}, Landroid/webkitsec/WebViewClassic;->loadDataImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->switchOutDrawHistory()V

    new-instance v0, Landroid/webkitsec/WebViewCore$BaseUrlData;

    invoke-direct {v0}, Landroid/webkitsec/WebViewCore$BaseUrlData;-><init>()V

    iput-object p1, v0, Landroid/webkitsec/WebViewCore$BaseUrlData;->mBaseUrl:Ljava/lang/String;

    iput-object p2, v0, Landroid/webkitsec/WebViewCore$BaseUrlData;->mData:Ljava/lang/String;

    iput-object p3, v0, Landroid/webkitsec/WebViewCore$BaseUrlData;->mMimeType:Ljava/lang/String;

    iput-object p4, v0, Landroid/webkitsec/WebViewCore$BaseUrlData;->mEncoding:Ljava/lang/String;

    iput-object p5, v0, Landroid/webkitsec/WebViewCore$BaseUrlData;->mHistoryUrl:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v2, 0x8b

    invoke-virtual {v1, v2, v0}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    :cond_1
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->clearHelpers()V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewClassic;->loadUrlImpl(Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewClassic;->loadUrlImpl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public loadViewState(Ljava/io/InputStream;)V
    .locals 3

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mBlockWebkitViewMessages:Z

    new-instance v0, Landroid/webkitsec/WebViewClassic$8;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebViewClassic$8;-><init>(Landroid/webkitsec/WebViewClassic;)V

    new-array v1, v1, [Ljava/io/InputStream;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewClassic$8;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public loadinitialJs(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mReaderFlag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0xda

    invoke-virtual {v0, v1, p1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method native nativeGetProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method native nativeSetProperty(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public notifyFindDialogDismissed()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mFindCallback:Landroid/webkitsec/FindActionModeCallback;

    const/4 v0, -0x1

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mCachedOverlappingActionModeHeight:I

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->clearMatches()V

    invoke-direct {p0, v2}, Landroid/webkitsec/WebViewClassic;->setFindIsUp(Z)V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v1

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/webkitsec/WebViewClassic;->pinScrollTo(IIZI)Z

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    goto :goto_0
.end method

.method public notifyWebViewUAProfURL(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewCore;->getBrowserFrame()Landroid/webkitsec/BrowserFrame;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewCore;->getBrowserFrame()Landroid/webkitsec/BrowserFrame;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/webkitsec/BrowserFrame;->SetUAProfURL(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0}, Landroid/webkitsec/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/webkitsec/WebViewClassic;->setActive(Z)V

    :cond_0
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->isAccessibilityInjectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getAccessibilityInjector()Landroid/webkitsec/AccessibilityInjector;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkitsec/AccessibilityInjector;->toggleAccessibilityFeedback(Z)V

    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v0

    instance-of v0, v0, Landroid/webkitsec/HtmlComposerView;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_2

    const-string/jumbo v0, "webview"

    const-string/jumbo v1, "registerForStylusPenEvent onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->registerForStylusPenEvent()V

    :cond_2
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->updateHwAccelerated()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/16 v3, 0xb9

    const/4 v2, 0x1

    const/4 v0, -0x1

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mCachedOverlappingActionModeHeight:I

    sput-boolean v2, Landroid/webkitsec/WebViewClassic;->isRotated:Z

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectingText:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->selectionDone()V

    :cond_0
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectionOn:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mSelectionClearOnRotation:Z

    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mOrientation:I

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    iget-boolean v0, v0, Landroid/webkitsec/WebMagnifier;->mbShow:Z

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    invoke-virtual {v0}, Landroid/webkitsec/WebMagnifier;->hide()V

    :cond_2
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallbackSec:Landroid/webkitsec/SelectActionModeCallbackSec;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallbackSec:Landroid/webkitsec/SelectActionModeCallbackSec;

    invoke-virtual {v0, v2}, Landroid/webkitsec/SelectActionModeCallbackSec;->finish(Z)V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallbackSec:Landroid/webkitsec/SelectActionModeCallbackSec;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    :cond_3
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getNewActionPopup()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->hideSelectActionWindow()V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    :cond_6
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getPopUpBrowserState()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->bWebSelectDialogIsUp:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;

    invoke-virtual {v0}, Landroid/webkitsec/WebSelectDialog;->onWebViewSizeChanged()V

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->scrollSelectIntoView()V

    :cond_7
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mAutoCompletePopup:Landroid/webkitsec/AutoCompletePopup;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mAutoCompletePopup:Landroid/webkitsec/AutoCompletePopup;

    invoke-virtual {v0}, Landroid/webkitsec/AutoCompletePopup;->clearAdapter()V

    :cond_8
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;-><init>(Landroid/webkitsec/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    new-instance v0, Landroid/webkitsec/AutoCompletePopup;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/webkitsec/AutoCompletePopup;-><init>(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewClassic$WebViewInputConnection;)V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mAutoCompletePopup:Landroid/webkitsec/AutoCompletePopup;

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setupEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->clearHelpers()V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v0}, Landroid/webkitsec/ZoomManager;->dismissZoomPicker()V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0}, Landroid/webkitsec/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/webkitsec/WebViewClassic;->setActive(Z)V

    :cond_0
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->isAccessibilityInjectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getAccessibilityInjector()Landroid/webkitsec/AccessibilityInjector;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkitsec/AccessibilityInjector;->toggleAccessibilityFeedback(Z)V

    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v0

    instance-of v0, v0, Landroid/webkitsec/HtmlComposerView;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "webview"

    const-string/jumbo v1, "removeForStylusPenEvent onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->removeForStylusPenEvent()V

    :cond_2
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->updateHwAccelerated()V

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->ensureFunctorDetached()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->inFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-nez v0, :cond_2

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mContentWidth:I

    iget v1, p0, Landroid/webkitsec/WebViewClassic;->mContentHeight:I

    or-int/2addr v0, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mHistoryPicture:Landroid/graphics/Picture;

    if-nez v0, :cond_3

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v0}, Landroid/webkitsec/ZoomManager;->setHardwareAccelerated()V

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mInOverScrollMode:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getUseWebViewBackgroundForOverscrollBackground()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewClassic;->drawOverScrollBackground(Landroid/graphics/Canvas;)V

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewClassic;->drawContent(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewCore;->signalRepaintDone()V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mOverScrollGlow:Landroid/webkitsec/OverScrollGlow;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mOverScrollGlow:Landroid/webkitsec/OverScrollGlow;

    invoke-virtual {v0, p1}, Landroid/webkitsec/OverScrollGlow;->drawEdgeGlows(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v0}, Landroid/webkitsec/ZoomManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "webview"

    const-string/jumbo v1, "mOverScrollGlow invalidate skip during zooming"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mFocusTransition:Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mFocusTransition:Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebViewClassic$FocusTransitionDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getNavDump()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchHighlightX:I

    iget v1, p0, Landroid/webkitsec/WebViewClassic;->mTouchHighlightY:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchCrossHairColor:Landroid/graphics/Paint;

    if-nez v0, :cond_7

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchCrossHairColor:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchCrossHairColor:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_7
    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchHighlightX:I

    iget v1, p0, Landroid/webkitsec/WebViewClassic;->mNavSlop:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchHighlightY:I

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mNavSlop:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchHighlightX:I

    iget v3, p0, Landroid/webkitsec/WebViewClassic;->mNavSlop:I

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchHighlightY:I

    iget v4, p0, Landroid/webkitsec/WebViewClassic;->mNavSlop:I

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mTouchCrossHairColor:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchHighlightX:I

    iget v1, p0, Landroid/webkitsec/WebViewClassic;->mNavSlop:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    int-to-float v1, v0

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchHighlightY:I

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mNavSlop:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchHighlightX:I

    iget v3, p0, Landroid/webkitsec/WebViewClassic;->mNavSlop:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchHighlightY:I

    iget v4, p0, Landroid/webkitsec/WebViewClassic;->mNavSlop:I

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mTouchCrossHairColor:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewCore;->resumeWebKitDraw()V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    goto :goto_2

    :cond_a
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->shouldDrawHighlightRect()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v7, Landroid/graphics/RegionIterator;

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-direct {v7, v0}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    :goto_3
    invoke-virtual {v7, v8}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchHightlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_3
.end method

.method public onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v0

    sub-int/2addr p4, v0

    :cond_0
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getVisibleTitleHeightImpl()I

    move-result v0

    add-int/2addr v0, p4

    invoke-virtual {p2, p3, v0, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method onFixedLengthZoomAnimationEnd()V
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectingText:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-static {v0}, Landroid/webkitsec/WebViewCore;->resumeUpdatePicture(Landroid/webkitsec/WebViewCore;)V

    :cond_0
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->onZoomAnimationEnd()V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mPinchZoomListener:Landroid/webkitsec/PinchZoomListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mPinchZoomListener:Landroid/webkitsec/PinchZoomListener;

    invoke-interface {v0}, Landroid/webkitsec/PinchZoomListener;->onDoubletapEnd()V

    :cond_1
    return-void
.end method

.method onFixedLengthZoomAnimationStart()V
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    invoke-static {v0}, Landroid/webkitsec/WebViewCore;->pauseUpdatePicture(Landroid/webkitsec/WebViewCore;)V

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->onZoomAnimationStart()V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mPinchZoomListener:Landroid/webkitsec/PinchZoomListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mPinchZoomListener:Landroid/webkitsec/PinchZoomListener;

    invoke-interface {v0}, Landroid/webkitsec/PinchZoomListener;->onDoubletapBegin()Z

    :cond_0
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mDrawCursorRing:Z

    invoke-virtual {p0, v1}, Landroid/webkitsec/WebViewClassic;->setFocusControllerActive(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebView;->invalidate(Landroid/graphics/Rect;)V

    :cond_1
    return-void

    :cond_2
    iput-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mDrawCursorRing:Z

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebViewClassic;->setFocusControllerActive(Z)V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getNewActionPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectionOn:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/16 v9, 0x9

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_0
    iget-object v6, p0, Landroid/webkitsec/WebViewClassic;->mWebViewPrivate:Landroid/webkitsec/WebView$PrivateAccess;

    invoke-virtual {v6, p1}, Landroid/webkitsec/WebView$PrivateAccess;->super_onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    :goto_0
    return v6

    :pswitch_0
    iget-object v7, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v7}, Landroid/webkitsec/ZoomManager;->getMouseWheelListener()Landroid/webkitsec/MouseWheelListener;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    and-int/lit16 v7, v7, 0x7000

    if-eqz v7, :cond_1

    invoke-virtual {v2, p1}, Landroid/webkitsec/MouseWheelListener;->onDockZoomEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    const/4 v5, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    :goto_1
    cmpl-float v7, v1, v8

    if-nez v7, :cond_2

    cmpl-float v7, v5, v8

    if-eqz v7, :cond_0

    :cond_2
    iget-object v7, p0, Landroid/webkitsec/WebViewClassic;->mWebViewPrivate:Landroid/webkitsec/WebView$PrivateAccess;

    invoke-virtual {v7}, Landroid/webkitsec/WebView$PrivateAccess;->getVerticalScrollFactor()F

    move-result v7

    mul-float/2addr v7, v5

    float-to-int v4, v7

    iget-object v7, p0, Landroid/webkitsec/WebViewClassic;->mWebViewPrivate:Landroid/webkitsec/WebView$PrivateAccess;

    invoke-virtual {v7}, Landroid/webkitsec/WebView$PrivateAccess;->getHorizontalScrollFactor()F

    move-result v7

    mul-float/2addr v7, v1

    float-to-int v0, v7

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->abortAnimation()V

    iget v3, p0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-direct {p0, v7, v8}, Landroid/webkitsec/WebViewClassic;->startScrollingLayer(FF)V

    invoke-direct {p0, v0, v4}, Landroid/webkitsec/WebViewClassic;->doDrag(II)Z

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v7

    neg-float v5, v7

    const/16 v7, 0xa

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    if-ne v4, v3, :cond_1

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->isAirViewEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v4, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebSettingsClassic;->isTitleBarFixed()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v2

    iput v2, p0, Landroid/webkitsec/WebViewClassic;->mHoverTopAreaTop:I

    :goto_1
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mHoverHandler:Landroid/webkitsec/WebViewClassic$HoverScrollHandler;

    if-nez v2, :cond_2

    new-instance v2, Landroid/webkitsec/WebViewClassic$HoverScrollHandler;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Landroid/webkitsec/WebViewClassic$HoverScrollHandler;-><init>(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewClassic$1;)V

    iput-object v2, p0, Landroid/webkitsec/WebViewClassic;->mHoverHandler:Landroid/webkitsec/WebViewClassic$HoverScrollHandler;

    :cond_2
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->isHoverScrollOn()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mFeatureHoverUI:Z

    if-ne v2, v3, :cond_4

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewClassic;->checkHoverScrolling(Landroid/view/MotionEvent;)V

    :goto_2
    move v2, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getVisibleTitleHeight()I

    move-result v2

    iput v2, p0, Landroid/webkitsec/WebViewClassic;->mHoverTopAreaTop:I

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v1

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v4, 0x87

    invoke-virtual {v2, v4, v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    :goto_3
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebViewPrivate:Landroid/webkitsec/WebView$PrivateAccess;

    invoke-virtual {v2, p1}, Landroid/webkitsec/WebView$PrivateAccess;->super_onHoverEvent(Landroid/view/MotionEvent;)Z

    goto :goto_2

    :cond_5
    const-string/jumbo v2, "webview"

    const-string/jumbo v4, "onHoverEvent: mWebViewCore is null"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v4

    instance-of v4, v4, Landroid/webkitsec/HtmlComposerView;

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->isScrollableForAccessibility()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getContentWidth()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/webkitsec/WebViewClassic;->contentToViewX(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v5}, Landroid/webkitsec/WebView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v5}, Landroid/webkitsec/WebView;->getPaddingLeft()I

    move-result v5

    sub-int v1, v4, v5

    sub-int v4, v3, v1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getContentHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/webkitsec/WebViewClassic;->contentToViewY(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v5}, Landroid/webkitsec/WebView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v5}, Landroid/webkitsec/WebView;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    sub-int v4, v2, v0

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v7

    instance-of v7, v7, Landroid/webkitsec/HtmlComposerView;

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v7}, Landroid/webkitsec/WebView;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->isScrollableForAccessibility()Z

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getContentHeight()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/webkitsec/WebViewClassic;->contentToViewY(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getHeight()I

    move-result v7

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v8}, Landroid/webkitsec/WebView;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v8}, Landroid/webkitsec/WebView;->getPaddingBottom()I

    move-result v8

    sub-int v0, v7, v8

    sub-int v7, v3, v0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v7

    if-lez v7, :cond_4

    move v1, v5

    :goto_1
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v7

    sub-int/2addr v7, v4

    if-lez v7, :cond_5

    move v2, v5

    :goto_2
    if-eqz v2, :cond_2

    const/16 v5, 0x1000

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_2
    if-eqz v2, :cond_3

    const/16 v5, 0x2000

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_3
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getAccessibilityInjector()Landroid/webkitsec/AccessibilityInjector;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/webkitsec/AccessibilityInjector;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0

    :cond_4
    move v1, v6

    goto :goto_1

    :cond_5
    move v2, v6

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iput-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mIsScreenTouch:Z

    iput-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mIsNewInputField:Z

    iput-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mKeyboardEnterPress:Z

    iget-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->selectionDone()V

    :cond_0
    iget-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-eqz v3, :cond_2

    move v2, v1

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v3

    if-eqz v3, :cond_3

    iput-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mIsCtrlPressed:Z

    move v2, v1

    goto :goto_0

    :cond_3
    iget v3, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-nez v3, :cond_4

    move v2, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v3, p2}, Landroid/webkitsec/CallbackProxy;->uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    move v2, v1

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->isAccessibilityInjectionEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getAccessibilityInjector()Landroid/webkitsec/AccessibilityInjector;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/webkitsec/AccessibilityInjector;->handleKeyEventIfNecessary(Landroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_7
    const/16 v3, 0x5c

    if-ne p1, v3, :cond_9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0, v1}, Landroid/webkitsec/WebViewClassic;->pageUp(Z)Z

    goto :goto_0

    :cond_8
    invoke-virtual {p2, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0, v2}, Landroid/webkitsec/WebViewClassic;->pageUp(Z)Z

    goto :goto_0

    :cond_9
    const/16 v3, 0x5d

    if-ne p1, v3, :cond_b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p0, v1}, Landroid/webkitsec/WebViewClassic;->pageDown(Z)Z

    goto :goto_0

    :cond_a
    invoke-virtual {p2, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p0, v2}, Landroid/webkitsec/WebViewClassic;->pageDown(Z)Z

    goto :goto_0

    :cond_b
    const/16 v3, 0x7a

    if-ne p1, v3, :cond_c

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p0, v2}, Landroid/webkitsec/WebViewClassic;->pageUp(Z)Z

    goto :goto_0

    :cond_c
    const/16 v3, 0x7b

    if-ne p1, v3, :cond_d

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p0, v2}, Landroid/webkitsec/WebViewClassic;->pageDown(Z)Z

    goto :goto_0

    :cond_d
    const/16 v3, 0x13

    if-lt p1, v3, :cond_e

    const/16 v3, 0x16

    if-gt p1, v3, :cond_e

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->switchOutDrawHistory()V

    :cond_e
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewClassic;->isEnterActionKey(I)Z

    move-result v3

    if-eqz v3, :cond_11

    iput-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mKeyboardEnterPress:Z

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->switchOutDrawHistory()V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_11

    iget-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mSelectingText:Z

    if-nez v3, :cond_1

    iput-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mGotCenterDown:Z

    iget v3, p0, Landroid/webkitsec/WebViewClassic;->mEnterKeyLongPress:I

    if-nez v3, :cond_f

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x72

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput v7, p0, Landroid/webkitsec/WebViewClassic;->mEnterKeyLongPress:I

    :cond_f
    iget-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mIsEditingText:Z

    if-eqz v3, :cond_10

    const/16 v3, 0x17

    if-ne p1, v3, :cond_10

    invoke-direct {p0, v1}, Landroid/webkitsec/WebViewClassic;->displaySoftKeyboard(Z)V

    goto/16 :goto_0

    :cond_10
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    :cond_11
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->getNavDump()Z

    move-result v3

    if-eqz v3, :cond_12

    packed-switch p1, :pswitch_data_0

    :cond_12
    :goto_1
    const/16 v1, 0x70

    if-ne p1, v1, :cond_13

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    if-eqz v1, :cond_13

    iput-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mBTWebSelectionOn:Z

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v1, p2}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_13
    invoke-direct {p0, p2}, Landroid/webkitsec/WebViewClassic;->sendKeyEvent(Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->dumpDisplayTree()V

    goto :goto_1

    :pswitch_1
    const/16 v3, 0xc

    if-ne p1, v3, :cond_14

    move v1, v2

    :cond_14
    invoke-virtual {p0, v1}, Landroid/webkitsec/WebViewClassic;->dumpDomTree(Z)V

    goto :goto_1

    :pswitch_2
    const/16 v3, 0xe

    if-ne p1, v3, :cond_15

    move v1, v2

    :cond_15
    invoke-virtual {p0, v1}, Landroid/webkitsec/WebViewClassic;->dumpRenderTree(Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v1, 0x67

    invoke-virtual {p0, v1, v0, v0, p3}, Landroid/webkitsec/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    const/16 v1, 0x68

    invoke-virtual {p0, v1, v0, v0, p3}, Landroid/webkitsec/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mAutoCompletePopup:Landroid/webkitsec/AutoCompletePopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mAutoCompletePopup:Landroid/webkitsec/AutoCompletePopup;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/AutoCompletePopup;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 10

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x4

    if-ne p1, v7, :cond_1

    iget-boolean v7, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectionOn:Z

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->hideSelectActionWindow()V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-boolean v7, p0, Landroid/webkitsec/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-eqz v7, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    iget v7, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-nez v7, :cond_3

    move v5, v6

    goto :goto_0

    :cond_3
    const/4 v7, 0x5

    if-ne p1, v7, :cond_4

    iget-object v7, p0, Landroid/webkitsec/WebViewClassic;->mInitialHitTestResult:Landroid/webkitsec/WebView$HitTestResult;

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/webkitsec/WebViewClassic;->mInitialHitTestResult:Landroid/webkitsec/WebView$HitTestResult;

    invoke-virtual {v7}, Landroid/webkitsec/WebView$HitTestResult;->getType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    :try_start_0
    iget-object v6, p0, Landroid/webkitsec/WebViewClassic;->mInitialHitTestResult:Landroid/webkitsec/WebView$HitTestResult;

    invoke-virtual {v6}, Landroid/webkitsec/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DIAL"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v6, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v6, "webview"

    const-string v7, "ActivityNotFoundException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "webview"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Landroid/webkitsec/WebViewClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v7, p2}, Landroid/webkitsec/CallbackProxy;->uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_5
    const/16 v7, 0x52

    if-ne p1, v7, :cond_6

    iget-boolean v7, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectionOn:Z

    if-nez v7, :cond_0

    :cond_6
    move v5, v6

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->isAccessibilityInjectionEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getAccessibilityInjector()Landroid/webkitsec/AccessibilityInjector;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/webkitsec/AccessibilityInjector;->handleKeyEventIfNecessary(Landroid/view/KeyEvent;)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_8
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewClassic;->isEnterActionKey(I)Z

    move-result v7

    if-eqz v7, :cond_b

    iput v6, p0, Landroid/webkitsec/WebViewClassic;->mEnterKeyLongPress:I

    iget-object v7, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v8, 0x72

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v6, p0, Landroid/webkitsec/WebViewClassic;->mGotCenterDown:Z

    iget-boolean v7, p0, Landroid/webkitsec/WebViewClassic;->mDPADCenterLongPress:Z

    if-eqz v7, :cond_9

    iput-boolean v6, p0, Landroid/webkitsec/WebViewClassic;->mDPADCenterLongPress:Z

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkitsec/WebSettingsClassic;->getNewActionPopup()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v6

    instance-of v6, v6, Landroid/webkitsec/HtmlComposerView;

    if-nez v6, :cond_0

    iget-object v6, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    iget-object v7, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v8, 0xb9

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_9
    iget-boolean v7, p0, Landroid/webkitsec/WebViewClassic;->mSelectingText:Z

    if-eqz v7, :cond_a

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->copySelection()Z

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->selectionDone()V

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->playTouchSound()V

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->removeTouchHighlight()V

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    :cond_b
    iget-boolean v7, p0, Landroid/webkitsec/WebViewClassic;->mIsCtrlPressed:Z

    if-eqz v7, :cond_e

    iput-boolean v6, p0, Landroid/webkitsec/WebViewClassic;->mIsCtrlPressed:Z

    sparse-switch p1, :sswitch_data_0

    :cond_c
    :goto_1
    invoke-direct {p0, p2}, Landroid/webkitsec/WebViewClassic;->sendKeyEvent(Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    :sswitch_0
    iput-boolean v5, p0, Landroid/webkitsec/WebViewClassic;->mBTWebSelectionOn:Z

    iput-boolean v5, p0, Landroid/webkitsec/WebViewClassic;->mSelectAllViaBT:Z

    iget-object v6, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v7, 0xd7

    invoke-virtual {v6, v7}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_1

    :sswitch_1
    iput-boolean v5, p0, Landroid/webkitsec/WebViewClassic;->mBTKeyBoardOn:Z

    iget-object v6, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v7, 0x2cd

    invoke-virtual {v6, v7}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkitsec/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-direct {p0, v5}, Landroid/webkitsec/WebViewClassic;->copySelectionSec(Z)Z

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    goto/16 :goto_0

    :cond_d
    iget-boolean v6, p0, Landroid/webkitsec/WebViewClassic;->mSelectingText:Z

    if-eqz v6, :cond_c

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->copySelection()Z

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->selectionDone()V

    goto/16 :goto_0

    :sswitch_3
    iget-boolean v7, p0, Landroid/webkitsec/WebViewClassic;->mIsEditingText:Z

    if-eqz v7, :cond_c

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->pasteFromClipboard()V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->selectionDone()V

    iget-boolean v7, p0, Landroid/webkitsec/WebViewClassic;->mSelectAllViaBT:Z

    if-eqz v7, :cond_0

    new-instance v0, Landroid/webkitsec/WebViewClassic$CmdVal;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebViewClassic$CmdVal;-><init>(Landroid/webkitsec/WebViewClassic;)V

    const-string v7, "MoveToEndOfLine"

    iput-object v7, v0, Landroid/webkitsec/WebViewClassic$CmdVal;->command:Ljava/lang/String;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    iput-object v7, v0, Landroid/webkitsec/WebViewClassic$CmdVal;->value:Ljava/lang/String;

    iget-object v7, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v8, 0x203

    invoke-virtual {v7, v8, v0}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    iput-boolean v6, p0, Landroid/webkitsec/WebViewClassic;->mSelectAllViaBT:Z

    goto/16 :goto_0

    :sswitch_4
    iput-boolean v5, p0, Landroid/webkitsec/WebViewClassic;->mIsCtrlPressed:Z

    iget-boolean v6, p0, Landroid/webkitsec/WebViewClassic;->mIsEditingText:Z

    if-eqz v6, :cond_c

    goto :goto_1

    :cond_e
    const/16 v6, 0x70

    if-ne p1, v6, :cond_c

    iget-object v6, p0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    if-eqz v6, :cond_c

    iget-object v6, p0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v6, p2}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x1f -> :sswitch_2
        0x32 -> :sswitch_3
        0x34 -> :sswitch_1
        0x71 -> :sswitch_4
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 14

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    move v8, v6

    move v9, v11

    iget v12, p0, Landroid/webkitsec/WebViewClassic;->mContentHeight:I

    invoke-virtual {p0, v12}, Landroid/webkitsec/WebViewClassic;->contentToViewDimension(I)I

    move-result v0

    iget v12, p0, Landroid/webkitsec/WebViewClassic;->mContentWidth:I

    invoke-virtual {p0, v12}, Landroid/webkitsec/WebViewClassic;->contentToViewDimension(I)I

    move-result v1

    iget-boolean v12, p0, Landroid/webkitsec/WebViewClassic;->mBlockRequestLayout:Z

    if-nez v12, :cond_3

    const/high16 v12, 0x40000000    # 2.0f

    if-eq v5, v12, :cond_3

    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/webkitsec/WebViewClassic;->mHeightCanMeasure:Z

    move v8, v0

    const/high16 v12, -0x80000000

    if-ne v5, v12, :cond_0

    if-le v8, v6, :cond_0

    move v8, v6

    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/webkitsec/WebViewClassic;->mHeightCanMeasure:Z

    const/high16 v12, 0x1000000

    or-int/2addr v8, v12

    :cond_0
    :goto_0
    iget v12, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-eqz v12, :cond_1

    iget-boolean v12, p0, Landroid/webkitsec/WebViewClassic;->mHeightCanMeasure:Z

    invoke-direct {p0, v12}, Landroid/webkitsec/WebViewClassic;->nativeSetHeightCanMeasure(Z)V

    :cond_1
    if-nez v10, :cond_4

    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/webkitsec/WebViewClassic;->mWidthCanMeasure:Z

    move v9, v1

    :goto_1
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v12

    instance-of v12, v12, Landroid/webkitsec/HtmlComposerView;

    if-eqz v12, :cond_2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v7

    check-cast v7, Landroid/webkitsec/HtmlComposerView;

    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Landroid/webkitsec/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v12, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x108075e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int v12, v2, v4

    if-ge v8, v12, :cond_2

    add-int/2addr v8, v4

    :cond_2
    monitor-enter p0

    :try_start_0
    iget-object v12, p0, Landroid/webkitsec/WebViewClassic;->mWebViewPrivate:Landroid/webkitsec/WebView$PrivateAccess;

    invoke-virtual {v12, v9, v8}, Landroid/webkitsec/WebView$PrivateAccess;->setMeasuredDimension(II)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_3
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/webkitsec/WebViewClassic;->mHeightCanMeasure:Z

    goto :goto_0

    :cond_4
    if-ge v9, v1, :cond_5

    const/high16 v12, 0x1000000

    or-int/2addr v9, v12

    :cond_5
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/webkitsec/WebViewClassic;->mWidthCanMeasure:Z

    goto :goto_1

    :catchall_0
    move-exception v12

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12
.end method

.method public onOverScrolled(IIZZ)V
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewClassic;->scrollEditText(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewClassic;->scrollLayerTo(II)V

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->animateHandles()V

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mInOverScrollMode:Z

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->computeMaxScrollX()I

    move-result v5

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->computeMaxScrollY()I

    move-result v6

    if-nez v5, :cond_9

    invoke-virtual {p0, p1}, Landroid/webkitsec/WebViewClassic;->pinLocX(I)I

    move-result p1

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v4

    if-gez p2, :cond_4

    if-lez v4, :cond_5

    :cond_4
    if-le p2, v6, :cond_6

    if-lt v4, v6, :cond_6

    :cond_5
    iput-boolean v7, p0, Landroid/webkitsec/WebViewClassic;->mInOverScrollMode:Z

    :cond_6
    if-gez p2, :cond_c

    const/4 p2, 0x0

    :cond_7
    :goto_2
    if-ne v4, p2, :cond_8

    iput-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mInOverScrollMode:Z

    :cond_8
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewPrivate:Landroid/webkitsec/WebView$PrivateAccess;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/WebView$PrivateAccess;->super_scrollTo(II)V

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->animateHandles()V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mOverScrollGlow:Landroid/webkitsec/OverScrollGlow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mOverScrollGlow:Landroid/webkitsec/OverScrollGlow;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v2

    invoke-virtual/range {v0 .. v6}, Landroid/webkitsec/OverScrollGlow;->pullGlow(IIIIII)V

    goto :goto_0

    :cond_9
    if-ltz p1, :cond_a

    if-le p1, v5, :cond_3

    :cond_a
    iput-boolean v7, p0, Landroid/webkitsec/WebViewClassic;->mInOverScrollMode:Z

    if-gez p1, :cond_b

    const/4 p1, 0x0

    goto :goto_1

    :cond_b
    if-le p1, v5, :cond_3

    move p1, v5

    goto :goto_1

    :cond_c
    if-le p2, v6, :cond_7

    move p2, v6

    goto :goto_2
.end method

.method onPageFinished(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkitsec/ZoomManager;->onPageFinished(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->isAccessibilityInjectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getAccessibilityInjector()Landroid/webkitsec/AccessibilityInjector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkitsec/AccessibilityInjector;->onPageFinished(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method onPageStarted(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebView;->setCertificate(Landroid/net/http/SslCertificate;)V

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->isAccessibilityInjectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getAccessibilityInjector()Landroid/webkitsec/AccessibilityInjector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkitsec/AccessibilityInjector;->onPageStarted(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mIsEditingText:Z

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mAutoCompletePopup:Landroid/webkitsec/AutoCompletePopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mAutoCompletePopup:Landroid/webkitsec/AutoCompletePopup;

    invoke-virtual {v0}, Landroid/webkitsec/AutoCompletePopup;->clearAdapter()V

    :cond_1
    sget-boolean v0, Landroid/webkitsec/WebViewClassic;->bNeedToCheckCustomProxy:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/webkitsec/WebViewClassic;->setLocalProxy(Landroid/content/Context;Z)Z

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mIsPaused:Z

    if-nez v0, :cond_3

    iput-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mIsPaused:Z

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0x8f

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkitsec/HTML5VideoViewProxy;->pauseAndDispatch()V

    :cond_1
    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    invoke-static {v0, v2}, Landroid/webkitsec/WebViewClassic;->nativeSetPauseDrawing(IZ)V

    :cond_2
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->dismissWebSelectDialog()V

    invoke-static {}, Landroid/webkitsec/WebCoreThreadWatchdog;->pause()V

    :cond_3
    return-void
.end method

.method onPinchToZoomAnimationEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->onZoomAnimationEnd()V

    const/16 v0, 0x8

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mConfirmMove:Z

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getNewActionPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0xb9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v1

    iget-wide v2, p0, Landroid/webkitsec/WebViewClassic;->mLastTouchTime:J

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkitsec/WebViewClassic;->startTouch(FFJ)V

    return-void
.end method

.method onPinchToZoomAnimationStart()V
    .locals 1

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->cancelTouch()V

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->onZoomAnimationStart()V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getNewActionPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->hideSelectActionWindow()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mIsPaused:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mIsPaused:Z

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    :cond_0
    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    invoke-static {v0, v2}, Landroid/webkitsec/WebViewClassic;->nativeSetPauseDrawing(IZ)V

    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.hovering_ui"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mFeatureHoverUI:Z

    invoke-static {}, Landroid/webkitsec/WebCoreThreadWatchdog;->resume()V

    return-void
.end method

.method onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    if-nez p4, :cond_0

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mDatabase:Landroid/webkitsec/WebViewDatabaseClassic;

    invoke-virtual {v3, p1, p2, p3}, Landroid/webkitsec/WebViewDatabaseClassic;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move v3, v1

    :goto_1
    return v3

    :cond_0
    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mResumeMsg:Landroid/os/Message;

    if-eqz v4, :cond_1

    const-string/jumbo v4, "webview"

    const-string/jumbo v5, "onSavePassword should not be called while dialog is up"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_1
    iput-object p4, p0, Landroid/webkitsec/WebViewClassic;->mResumeMsg:Landroid/os/Message;

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "username"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "password"

    invoke-virtual {v3, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "username"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "password"

    invoke-virtual {v3, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x10405f5

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040648

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040649

    new-instance v5, Landroid/webkitsec/WebViewClassic$5;

    invoke-direct {v5, p0, p4}, Landroid/webkitsec/WebViewClassic$5;-><init>(Landroid/webkitsec/WebViewClassic;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104064a

    new-instance v5, Landroid/webkitsec/WebViewClassic$4;

    invoke-direct {v5, p0, v2}, Landroid/webkitsec/WebViewClassic$4;-><init>(Landroid/webkitsec/WebViewClassic;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104064b

    new-instance v5, Landroid/webkitsec/WebViewClassic$3;

    invoke-direct {v5, p0, v0}, Landroid/webkitsec/WebViewClassic$3;-><init>(Landroid/webkitsec/WebViewClassic;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Landroid/webkitsec/WebViewClassic$2;

    invoke-direct {v4, p0, p4}, Landroid/webkitsec/WebViewClassic$2;-><init>(Landroid/webkitsec/WebViewClassic;Landroid/os/Message;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Landroid/webkitsec/WebViewClassic;->mSavePasswordDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public onScrollChanged(IIII)V
    .locals 5

    const/16 v4, 0xb9

    const/4 v3, 0x0

    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mInOverScrollMode:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->sendOurVisibleRect()Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v0

    sub-int v1, v0, p2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int v2, v0, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v3}, Landroid/webkitsec/WebViewClassic;->sendViewSizeZoom(Z)Z

    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebSettingsClassic;->getNewActionPopup()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->hideSelectActionWindow()V

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0xb9

    const-string v1, "WebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSizeChanged - w:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Landroid/webkitsec/WebViewClassic;->mInOverScrollMode:Z

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v2}, Landroid/webkitsec/ZoomManager;->getDefaultMinZoomScale()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v0, v1

    sget v1, Landroid/webkitsec/WebViewClassic;->sMaxViewportWidth:I

    if-le v0, v1, :cond_0

    sput v0, Landroid/webkitsec/WebViewClassic;->sMaxViewportWidth:I

    :cond_0
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/webkitsec/ZoomManager;->onSizeChanged(IIII)V

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mLoadedPicture:Landroid/webkitsec/WebViewCore$DrawData;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mDelaySetPicture:Landroid/webkitsec/WebViewCore$DrawData;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mLoadedPicture:Landroid/webkitsec/WebViewCore$DrawData;

    invoke-virtual {p0, v1, v5}, Landroid/webkitsec/WebViewClassic;->setNewPicture(Landroid/webkitsec/WebViewCore$DrawData;Z)V

    :cond_1
    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->bWebSelectDialogIsUp:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;

    invoke-virtual {v1}, Landroid/webkitsec/WebSelectDialog;->onWebViewSizeChanged()V

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->scrollSelectIntoView()V

    :cond_2
    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mIsEditingText:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mIsSoftkeyboardVisible:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->scrollEditIntoView()V

    :cond_3
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->relocateAutoCompletePopup()V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebSettingsClassic;->getNewActionPopup()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->hideSelectActionWindow()V

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    iget v8, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v8}, Landroid/webkitsec/WebView;->isClickable()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v8}, Landroid/webkitsec/WebView;->isLongClickable()Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    const/4 v8, 0x0

    :goto_0
    return v8

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_2

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    invoke-virtual {v8}, Landroid/webkitsec/WebMagnifier;->hide()V

    :cond_2
    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mInputDispatcher:Landroid/webkitsec/WebViewInputDispatcher;

    if-nez v8, :cond_3

    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v8}, Landroid/webkitsec/WebView;->isFocusable()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v8}, Landroid/webkitsec/WebView;->isFocusableInTouchMode()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v8}, Landroid/webkitsec/WebView;->isFocused()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v8}, Landroid/webkitsec/WebView;->requestFocus()Z

    :cond_4
    sget-boolean v8, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v8, :cond_5

    const-string/jumbo v8, "webview"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onTouchEvent "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mTouchMode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " numPointers="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_10

    iget v8, p0, Landroid/webkitsec/WebViewClassic;->mTouchSlopSquareForSPen:I

    iput v8, p0, Landroid/webkitsec/WebViewClassic;->mTouchSlopSquare:I

    :goto_1
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkitsec/WebViewClassic;->mBlockShowSoftInput:Z

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_6

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v1

    and-int/lit8 v8, v1, 0x7

    if-eqz v8, :cond_6

    const-string/jumbo v8, "webview"

    const-string v9, "HW keyboard connected. showSoftInput is blocked."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkitsec/WebViewClassic;->mBlockShowSoftInput:Z

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Landroid/webkitsec/WebViewClassic;->actionDown_X:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Landroid/webkitsec/WebViewClassic;->actionDown_Y:I

    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkitsec/WebViewClassic;->mConfirmMove:Z

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mInputDispatcher:Landroid/webkitsec/WebViewInputDispatcher;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkitsec/WebViewInputDispatcher;->setTouchInputCameHere(Z)V

    const/4 v8, 0x0

    iput v8, p0, Landroid/webkitsec/WebViewClassic;->mAx:I

    const/4 v8, 0x0

    iput v8, p0, Landroid/webkitsec/WebViewClassic;->mAy:I

    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkitsec/WebViewClassic;->mFirstScaleOccured:Z

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mInputDispatcher:Landroid/webkitsec/WebViewInputDispatcher;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/webkitsec/WebViewInputDispatcher;->setClickOnSelectHandleCenter(Z)V

    :cond_7
    const/4 v8, 0x1

    if-ne v2, v8, :cond_8

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/webkitsec/WebViewClassic;->setZoomScaleBegin(Z)V

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/webkitsec/ZoomManager;->SetIsActionPU(Z)V

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v8}, Landroid/webkitsec/ZoomManager;->getTiltListener()Landroid/webkitsec/TiltListener;

    move-result-object v3

    const/4 v8, 0x6

    if-ne v0, v8, :cond_9

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkitsec/ZoomManager;->SetIsActionPU(Z)V

    :cond_9
    const/4 v8, 0x6

    if-eq v0, v8, :cond_a

    const/4 v8, 0x3

    if-ne v0, v8, :cond_b

    :cond_a
    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v8}, Landroid/webkitsec/ZoomManager;->unregisterTiltListener()V

    if-eqz v3, :cond_b

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/webkitsec/TiltListener;->setTiltUse(Z)V

    :cond_b
    const/4 v8, 0x5

    if-ne v0, v8, :cond_d

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    if-eqz v3, :cond_c

    invoke-virtual {v3, v6, v7}, Landroid/webkitsec/TiltListener;->setTiltStartTime(J)V

    :cond_c
    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v8}, Landroid/webkitsec/ZoomManager;->registerTiltListener()V

    :cond_d
    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v8}, Landroid/webkitsec/ZoomManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v8

    if-eqz v8, :cond_e

    const/4 v8, 0x2

    if-ne v2, v8, :cond_e

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkitsec/ZoomManager;->setHandleMoveEvForZooming(Z)V

    :cond_e
    const/4 v8, 0x2

    if-ne v2, v8, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    iget v9, p0, Landroid/webkitsec/WebViewClassic;->actionDown_Y:I

    sub-int/2addr v8, v9

    if-lez v8, :cond_11

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, p0, Landroid/webkitsec/WebViewClassic;->mMaybeScrollDown:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    iget v9, p0, Landroid/webkitsec/WebViewClassic;->mFirstTouchX:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iput v8, p0, Landroid/webkitsec/WebViewClassic;->mAx:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    iget v9, p0, Landroid/webkitsec/WebViewClassic;->mFirstTouchY:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iput v8, p0, Landroid/webkitsec/WebViewClassic;->mAy:I

    :cond_f
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewClassic;->touchedOnTextSelectionArea(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mInputDispatcher:Landroid/webkitsec/WebViewInputDispatcher;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkitsec/WebViewInputDispatcher;->setWebkitShouldSkipEvent(Z)V

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mInputDispatcher:Landroid/webkitsec/WebViewInputDispatcher;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkitsec/WebViewInputDispatcher;->setUIShouldSkipEvent(Z)V

    :goto_3
    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mInputDispatcher:Landroid/webkitsec/WebViewInputDispatcher;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v9

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v10

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v11}, Landroid/webkitsec/ZoomManager;->getInvScale()F

    move-result v11

    invoke-virtual {v8, p1, v9, v10, v11}, Landroid/webkitsec/WebViewInputDispatcher;->postPointerEvent(Landroid/view/MotionEvent;IIF)Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mInputDispatcher:Landroid/webkitsec/WebViewInputDispatcher;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewInputDispatcher;->dispatchUiEvents()V

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_10
    iget v8, p0, Landroid/webkitsec/WebViewClassic;->mTouchSlopSquareForFinger:I

    iput v8, p0, Landroid/webkitsec/WebViewClassic;->mTouchSlopSquare:I

    goto/16 :goto_1

    :cond_11
    const/4 v8, 0x0

    goto :goto_2

    :cond_12
    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mInputDispatcher:Landroid/webkitsec/WebViewInputDispatcher;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/webkitsec/WebViewInputDispatcher;->setWebkitShouldSkipEvent(Z)V

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mInputDispatcher:Landroid/webkitsec/WebViewInputDispatcher;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/webkitsec/WebViewInputDispatcher;->setUIShouldSkipEvent(Z)V

    goto :goto_3

    :cond_13
    const-string/jumbo v8, "webview"

    const-string v9, "mInputDispatcher rejected the event!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const-wide/16 v6, 0xc8

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/webkitsec/WebViewClassic;->pageDown(Z)Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/webkitsec/WebViewClassic;->pageUp(Z)Z

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_5

    iget-boolean v4, p0, Landroid/webkitsec/WebViewClassic;->mSelectingText:Z

    if-nez v4, :cond_1

    iput-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mTrackballDown:Z

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v2}, Landroid/webkitsec/WebView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v2}, Landroid/webkitsec/WebView;->requestFocusFromTouch()Z

    :cond_4
    move v2, v3

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_7

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x72

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mTrackballDown:Z

    iput-wide v0, p0, Landroid/webkitsec/WebViewClassic;->mTrackballUpTime:J

    iget-boolean v4, p0, Landroid/webkitsec/WebViewClassic;->mSelectingText:Z

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->copySelection()Z

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->selectionDone()V

    goto :goto_0

    :cond_6
    move v2, v3

    goto :goto_0

    :cond_7
    iget-boolean v4, p0, Landroid/webkitsec/WebViewClassic;->mMapTrackballToArrowKeys:Z

    if-eqz v4, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_9

    :cond_8
    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    move v2, v3

    goto :goto_0

    :cond_a
    iget-boolean v4, p0, Landroid/webkitsec/WebViewClassic;->mTrackballDown:Z

    if-nez v4, :cond_1

    iget-wide v4, p0, Landroid/webkitsec/WebViewClassic;->mTrackballUpTime:J

    sub-long v4, v0, v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->switchOutDrawHistory()V

    iget-wide v4, p0, Landroid/webkitsec/WebViewClassic;->mTrackballLastTime:J

    sub-long v4, v0, v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_b

    iput-wide v0, p0, Landroid/webkitsec/WebViewClassic;->mTrackballFirstTime:J

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mTrackballYMove:I

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mTrackballXMove:I

    :cond_b
    iput-wide v0, p0, Landroid/webkitsec/WebViewClassic;->mTrackballLastTime:J

    iget v3, p0, Landroid/webkitsec/WebViewClassic;->mTrackballRemainsX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mTrackballRemainsX:F

    iget v3, p0, Landroid/webkitsec/WebViewClassic;->mTrackballRemainsY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/webkitsec/WebViewClassic;->mTrackballRemainsY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    invoke-direct {p0, v0, v1, v3}, Landroid/webkitsec/WebViewClassic;->doTrackball(JI)V

    goto/16 :goto_0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v0}, Landroid/webkitsec/ZoomManager;->dismissZoomPicker()V

    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->updateDrawingState()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6

    const/4 v5, 0x1

    iput-boolean p1, p0, Landroid/webkitsec/WebViewClassic;->mHasWindowFocus:Z

    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->bWebSelectDialogIsUp:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Landroid/webkitsec/WebViewClassic;->setActive(Z)V

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebSettingsClassic;->getNewActionPopup()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0xb9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    invoke-static {p0}, Landroid/webkitsec/JWebCoreJavaBridge;->setActiveWebView(Landroid/webkitsec/WebViewClassic;)V

    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mPictureUpdatePausedForFocusChange:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-static {v1}, Landroid/webkitsec/WebViewCore;->resumeUpdatePicture(Landroid/webkitsec/WebViewCore;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mPictureUpdatePausedForFocusChange:Z

    :cond_3
    :goto_1
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    iget-boolean v1, v1, Landroid/webkitsec/WebMagnifier;->mbShow:Z

    if-ne v5, v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    invoke-virtual {v1}, Landroid/webkitsec/WebMagnifier;->hide()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->hideSelectActionWindow()V

    invoke-static {p0}, Landroid/webkitsec/JWebCoreJavaBridge;->removeActiveWebView(Landroid/webkitsec/WebViewClassic;)V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->enableSmoothTransition()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-static {v1}, Landroid/webkitsec/WebViewCore;->isUpdatePicturePaused(Landroid/webkitsec/WebViewCore;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-static {v1}, Landroid/webkitsec/WebViewCore;->pauseUpdatePicture(Landroid/webkitsec/WebViewCore;)V

    iput-boolean v5, p0, Landroid/webkitsec/WebViewClassic;->mPictureUpdatePausedForFocusChange:Z

    goto :goto_1
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->updateDrawingState()V

    return-void
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mOverlayHorizontalScrollbar:Z

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mOverlayVerticalScrollbar:Z

    return v0
.end method

.method public packageName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pageDown(Z)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget v3, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v3

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->computeRealVerticalScrollRange()I

    move-result v4

    invoke-direct {p0, v3, v4, v5, v2}, Landroid/webkitsec/WebViewClassic;->pinScrollTo(IIZI)Z

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getHeight()I

    move-result v0

    const/16 v3, 0x30

    if-le v0, v3, :cond_2

    add-int/lit8 v1, v0, -0x18

    :goto_1
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v2, v1, v5, v2}, Landroid/webkitsec/WebViewClassic;->pinScrollBy(IIZI)Z

    move-result v2

    goto :goto_0

    :cond_2
    div-int/lit8 v1, v0, 0x2

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Landroid/webkitsec/WebViewClassic;->extendScroll(I)Z

    move-result v2

    goto :goto_0
.end method

.method protected pageSwapCallback(Z)V
    .locals 3

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewCore;->resumeWebKitDraw()V

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v2, 0xc4

    invoke-virtual {v1, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    :cond_0
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    instance-of v1, v1, Landroid/webkitsec/WebViewClassic$PageSwapDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    check-cast v1, Landroid/webkitsec/WebViewClassic$PageSwapDelegate;

    invoke-interface {v1, p1}, Landroid/webkitsec/WebViewClassic$PageSwapDelegate;->onPageSwapOccurred(Z)V

    :cond_1
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mPictureListener:Landroid/webkitsec/WebView$PictureListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_3

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mPictureListener:Landroid/webkitsec/WebView$PictureListener;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/webkitsec/WebView$PictureListener;->onNewPicture(Landroid/webkitsec/WebView;Landroid/graphics/Picture;)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pageUp(Z)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget v3, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v3

    invoke-direct {p0, v3, v2, v4, v2}, Landroid/webkitsec/WebViewClassic;->pinScrollTo(IIZI)Z

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getHeight()I

    move-result v0

    const/16 v3, 0x30

    if-le v0, v3, :cond_2

    neg-int v3, v0

    add-int/lit8 v1, v3, 0x18

    :goto_1
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v2, v1, v4, v2}, Landroid/webkitsec/WebViewClassic;->pinScrollBy(IIZI)Z

    move-result v2

    goto :goto_0

    :cond_2
    neg-int v3, v0

    div-int/lit8 v1, v3, 0x2

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Landroid/webkitsec/WebViewClassic;->extendScroll(I)Z

    move-result v2

    goto :goto_0
.end method

.method passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V
    .locals 6

    const/16 v5, 0x80

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/webkitsec/WebViewCore$JSKeyData;

    invoke-direct {v0}, Landroid/webkitsec/WebViewCore$JSKeyData;-><init>()V

    iput-object p2, v0, Landroid/webkitsec/WebViewCore$JSKeyData;->mEvent:Landroid/view/KeyEvent;

    iput-object p1, v0, Landroid/webkitsec/WebViewCore$JSKeyData;->mCurrentText:Ljava/lang/String;

    iget v1, p0, Landroid/webkitsec/WebViewClassic;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkitsec/WebViewClassic;->mTextGeneration:I

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v2, 0x73

    iget v3, p0, Landroid/webkitsec/WebViewClassic;->mTextGeneration:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/webkitsec/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v1, v5}, Landroid/webkitsec/WebViewCore;->removeMessages(I)V

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/4 v2, 0x0

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/webkitsec/WebViewCore;->sendMessageDelayed(ILjava/lang/Object;J)V

    goto :goto_0
.end method

.method public pasteFromClipboard()V
    .locals 15

    const/4 v11, 0x2

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "clipboardEx"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v12, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v12, v0, v11}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v13

    check-cast v13, Landroid/sec/clipboard/data/list/ClipboardDataText;

    if-eqz v13, :cond_0

    invoke-virtual {v13}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v14

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v0, v14}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->replaceSelection(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v9, -0x1

    move-wide v3, v1

    move v6, v5

    move v7, v5

    move v8, v5

    move v10, v5

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewClassic;->sendKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public pasteFromClipboardEx()V
    .locals 5

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    const-string v3, "clipboardEx"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mPasteEvent:Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl;

    invoke-virtual {v0, v2, v3, v4}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "webview"

    const-string v3, "clip board is not shown"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public pauseTimers()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    :cond_0
    return-void
.end method

.method public pauseVideo()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkitsec/HTML5VideoViewProxy;->pauseAndDispatch()V

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v7

    instance-of v7, v7, Landroid/webkitsec/HtmlComposerView;

    if-eqz v7, :cond_0

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mWebViewPrivate:Landroid/webkitsec/WebView$PrivateAccess;

    invoke-virtual {v5, p1, p2}, Landroid/webkitsec/WebView$PrivateAccess;->super_performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v5

    :goto_0
    return v5

    :cond_0
    iget-object v7, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v7}, Landroid/webkitsec/WebView;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mWebViewPrivate:Landroid/webkitsec/WebView$PrivateAccess;

    invoke-virtual {v5, p1, p2}, Landroid/webkitsec/WebView$PrivateAccess;->super_performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v5

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getAccessibilityInjector()Landroid/webkitsec/AccessibilityInjector;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/webkitsec/AccessibilityInjector;->supportsAccessibilityAction(I)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getAccessibilityInjector()Landroid/webkitsec/AccessibilityInjector;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/webkitsec/AccessibilityInjector;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v5

    goto :goto_0

    :cond_2
    sparse-switch p1, :sswitch_data_0

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mWebViewPrivate:Landroid/webkitsec/WebView$PrivateAccess;

    invoke-virtual {v5, p1, p2}, Landroid/webkitsec/WebView$PrivateAccess;->super_performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v5

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getContentHeight()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/webkitsec/WebViewClassic;->contentToViewY(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getHeight()I

    move-result v7

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v8}, Landroid/webkitsec/WebView;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v8}, Landroid/webkitsec/WebView;->getPaddingBottom()I

    move-result v8

    sub-int v0, v7, v8

    sub-int v7, v3, v0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v7

    if-lez v7, :cond_3

    move v1, v5

    :goto_1
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v7

    sub-int/2addr v7, v4

    if-lez v7, :cond_4

    move v2, v5

    :goto_2
    const/16 v7, 0x2000

    if-ne p1, v7, :cond_5

    if-eqz v1, :cond_5

    iget-object v7, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v7, v6, v0}, Landroid/webkitsec/WebView;->scrollBy(II)V

    goto :goto_0

    :cond_3
    move v1, v6

    goto :goto_1

    :cond_4
    move v2, v6

    goto :goto_2

    :cond_5
    const/16 v7, 0x1000

    if-ne p1, v7, :cond_6

    if-eqz v2, :cond_6

    iget-object v7, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    neg-int v8, v0

    invoke-virtual {v7, v6, v8}, Landroid/webkitsec/WebView;->scrollBy(II)V

    goto :goto_0

    :cond_6
    move v5, v6

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public performLongClick()Z
    .locals 15

    const/4 v14, 0x4

    const/4 v13, -0x1

    const/4 v12, 0x2

    const/4 v6, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkitsec/WebSettingsClassic;->getPopUpBrowserState()Z

    move-result v9

    if-eqz v9, :cond_1

    move v6, v10

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v9, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v9}, Landroid/webkitsec/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-nez v9, :cond_2

    move v6, v10

    goto :goto_0

    :cond_2
    iget-object v9, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v9}, Landroid/webkitsec/ZoomManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v9

    if-eqz v9, :cond_3

    move v6, v10

    goto :goto_0

    :cond_3
    iget-boolean v9, p0, Landroid/webkitsec/WebViewClassic;->mSelectingText:Z

    if-eqz v9, :cond_4

    move v6, v10

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getHitTestResult()Landroid/webkitsec/WebView$HitTestResult;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/webkitsec/WebView$HitTestResult;->getType()I

    move-result v5

    :cond_5
    sget v9, Landroid/webkitsec/DebugFlags;->ENABLE_DRAG:I

    if-eqz v9, :cond_8

    sget v9, Landroid/webkitsec/DebugFlags;->ENABLE_DRAG:I

    if-ne v9, v12, :cond_7

    if-eqz v4, :cond_7

    const/4 v9, 0x5

    if-eq v5, v9, :cond_6

    const/16 v9, 0x8

    if-ne v5, v9, :cond_7

    :cond_6
    invoke-virtual {v4}, Landroid/webkitsec/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v8

    const-string v0, "/data/data/com.android.browser/copyImage.bmp"

    const-string v9, "/data/data/com.android.browser/copyImage.bmp"

    invoke-virtual {p0, v8, v9}, Landroid/webkitsec/WebViewClassic;->saveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v9, "/data/data/com.android.browser/copyImage.bmp"

    invoke-static {p0, v8, v9}, Landroid/webkitsec/WebDragHandler;->startDragSelection(Landroid/webkitsec/WebViewClassic;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-boolean v9, p0, Landroid/webkitsec/WebViewClassic;->mWebSelectionOn:Z

    if-eqz v9, :cond_8

    iget v9, p0, Landroid/webkitsec/WebViewClassic;->mLastTouchX:I

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v11

    add-int/2addr v9, v11

    invoke-virtual {p0, v9}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v1

    iget v9, p0, Landroid/webkitsec/WebViewClassic;->mLastTouchY:I

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v11

    add-int/2addr v9, v11

    invoke-virtual {p0, v9}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v2

    iget-object v9, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v9, v9, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mCharacterSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-static {p0}, Landroid/webkitsec/WebDragHandler;->startDragSelection(Landroid/webkitsec/WebViewClassic;)V

    goto :goto_0

    :cond_8
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/webkitsec/WebView$HitTestResult;->getType()I

    move-result v9

    if-ne v9, v12, :cond_9

    invoke-virtual {v4}, Landroid/webkitsec/WebView$HitTestResult;->getType()I

    move-result v9

    if-eq v9, v14, :cond_a

    :cond_9
    iget-object v9, p0, Landroid/webkitsec/WebViewClassic;->mWebViewPrivate:Landroid/webkitsec/WebView$PrivateAccess;

    invoke-virtual {v9}, Landroid/webkitsec/WebView$PrivateAccess;->super_performLongClick()Z

    move-result v9

    if-eqz v9, :cond_a

    iput v10, p0, Landroid/webkitsec/WebViewClassic;->mEnterKeyLongPress:I

    iput-boolean v6, p0, Landroid/webkitsec/WebViewClassic;->mPerformLongPress:Z

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v9

    if-eqz v9, :cond_e

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkitsec/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v9

    if-eqz v9, :cond_e

    iget-boolean v9, p0, Landroid/webkitsec/WebViewClassic;->mAutoSelection:Z

    if-eqz v9, :cond_e

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroid/webkitsec/WebView$HitTestResult;->getType()I

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v4}, Landroid/webkitsec/WebView$HitTestResult;->getType()I

    move-result v9

    const/16 v11, 0x9

    if-eq v9, v11, :cond_b

    invoke-virtual {v4}, Landroid/webkitsec/WebView$HitTestResult;->getType()I

    move-result v9

    if-eq v9, v12, :cond_b

    invoke-virtual {v4}, Landroid/webkitsec/WebView$HitTestResult;->getType()I

    move-result v9

    if-ne v9, v14, :cond_e

    :cond_b
    iget v9, p0, Landroid/webkitsec/WebViewClassic;->mLastTouchX:I

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v11

    add-int/2addr v9, v11

    invoke-virtual {p0, v9}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v1

    iget v9, p0, Landroid/webkitsec/WebViewClassic;->mLastTouchY:I

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v11

    add-int/2addr v9, v11

    invoke-virtual {p0, v9}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v9

    instance-of v9, v9, Landroid/webkitsec/HtmlComposerView;

    if-eqz v9, :cond_c

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v9

    check-cast v9, Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v9

    check-cast v9, Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9, v6}, Landroid/webkitsec/HtmlComposerView;->setSelectionHandle(Z)V

    :cond_c
    invoke-direct {p0, v1, v2}, Landroid/webkitsec/WebViewClassic;->selectClosestWord(II)Z

    iput-boolean v6, p0, Landroid/webkitsec/WebViewClassic;->mLongPressSelection:Z

    iput-boolean v6, p0, Landroid/webkitsec/WebViewClassic;->mCheckLongPress:Z

    iget-boolean v9, p0, Landroid/webkitsec/WebViewClassic;->mFindIsUp:Z

    if-eqz v9, :cond_d

    iput-boolean v6, p0, Landroid/webkitsec/WebViewClassic;->mFindDialogOn:Z

    :cond_d
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v9

    instance-of v9, v9, Landroid/webkitsec/HtmlComposerView;

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v9

    check-cast v9, Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9, v1, v2}, Landroid/webkitsec/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v7

    iget v9, v7, Landroid/graphics/Rect;->top:I

    if-ne v9, v13, :cond_0

    iget v9, v7, Landroid/graphics/Rect;->left:I

    if-ne v9, v13, :cond_0

    iget-object v9, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v9, v10}, Landroid/webkitsec/WebView;->performHapticFeedback(I)Z

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v9

    if-eqz v9, :cond_f

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkitsec/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v9

    if-eqz v9, :cond_f

    move v6, v10

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->selectText()Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v9, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v9, v10}, Landroid/webkitsec/WebView;->performHapticFeedback(I)Z

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Landroid/webkitsec/SelectActionModeCallback;

    invoke-direct {v9}, Landroid/webkitsec/SelectActionModeCallback;-><init>()V

    iput-object v9, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallback:Landroid/webkitsec/SelectActionModeCallback;

    iget-object v9, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallback:Landroid/webkitsec/SelectActionModeCallback;

    invoke-virtual {v9, p0}, Landroid/webkitsec/SelectActionModeCallback;->setWebView(Landroid/webkitsec/WebViewClassic;)V

    iget-object v9, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallback:Landroid/webkitsec/SelectActionModeCallback;

    invoke-virtual {v9, v10}, Landroid/webkitsec/SelectActionModeCallback;->setTextSelected(Z)V

    iget-object v9, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    iget-object v10, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallback:Landroid/webkitsec/SelectActionModeCallback;

    invoke-virtual {v9, v10}, Landroid/webkitsec/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto/16 :goto_0
.end method

.method public performSelectionDoneAction()V
    .locals 4

    iget-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mIsEditingText:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mSelectionClearOnRotation:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v2, v1, v1}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    invoke-virtual {p0, v1, v1}, Landroid/webkitsec/WebViewClassic;->setSelection(II)V

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v3, 0x25d

    invoke-virtual {v2, v3}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mSelectionClearOnRotation:Z

    return-void
.end method

.method pinLocX(I)I
    .locals 2

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mInOverScrollMode:Z

    if-eqz v0, :cond_0

    :goto_0
    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->computeRealHorizontalScrollRange()I

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/webkitsec/WebViewClassic;->pinLoc(III)I

    move-result p1

    goto :goto_0
.end method

.method pinLocY(I)I
    .locals 3

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mInOverScrollMode:Z

    if-eqz v0, :cond_0

    :goto_0
    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getViewHeightWithTitle()I

    move-result v0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->computeRealVerticalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p1, v0, v1}, Landroid/webkitsec/WebViewClassic;->pinLoc(III)I

    move-result p1

    goto :goto_0
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 3

    invoke-static {p1}, Landroid/webkitsec/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->switchOutDrawHistory()V

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic;->mUrl:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/webkitsec/WebViewClassic;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/webkitsec/WebViewCore$PostUrlData;

    invoke-direct {v0}, Landroid/webkitsec/WebViewCore$PostUrlData;-><init>()V

    iput-object p1, v0, Landroid/webkitsec/WebViewCore$PostUrlData;->mUrl:Ljava/lang/String;

    iput-object p2, v0, Landroid/webkitsec/WebViewCore$PostUrlData;->mPostData:[B

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v2, 0x84

    invoke-virtual {v1, v2, v0}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->clearHelpers()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewClassic;->loadUrlImpl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public preDispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public refreshPlugins(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public reload()V
    .locals 2

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->clearHelpers()V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->switchOutDrawHistory()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebViewClassic;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/webkitsec/WebViewCore$JSInterfaceData;

    invoke-direct {v0}, Landroid/webkitsec/WebViewCore$JSInterfaceData;-><init>()V

    iput-object p1, v0, Landroid/webkitsec/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v2, 0x95

    invoke-virtual {v1, v2, v0}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method replaceTextfieldText(IILjava/lang/String;II)V
    .locals 2

    new-instance v0, Landroid/webkitsec/WebViewCore$ReplaceTextData;

    invoke-direct {v0}, Landroid/webkitsec/WebViewCore$ReplaceTextData;-><init>()V

    iput-object p3, v0, Landroid/webkitsec/WebViewCore$ReplaceTextData;->mReplace:Ljava/lang/String;

    iput p4, v0, Landroid/webkitsec/WebViewCore$ReplaceTextData;->mNewStart:I

    iput p5, v0, Landroid/webkitsec/WebViewCore$ReplaceTextData;->mNewEnd:I

    iget v1, p0, Landroid/webkitsec/WebViewClassic;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkitsec/WebViewClassic;->mTextGeneration:I

    iget v1, p0, Landroid/webkitsec/WebViewClassic;->mTextGeneration:I

    iput v1, v0, Landroid/webkitsec/WebViewCore$ReplaceTextData;->mTextGeneration:I

    const/16 v1, 0x72

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/webkitsec/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 16

    move-object/from16 v0, p0

    iget v11, v0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-nez v11, :cond_0

    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v11}, Landroid/webkitsec/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v13

    sub-int/2addr v12, v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Rect;->offset(II)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getWidth()I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v14}, Landroid/webkitsec/WebView;->getVerticalScrollbarWidth()I

    move-result v14

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic;->getViewHeightWithTitle()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v14

    invoke-direct {v1, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v11, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/webkitsec/WebViewClassic;->contentToViewY(I)I

    move-result v7

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/webkitsec/WebViewClassic;->contentToViewY(I)I

    move-result v4

    sub-int v2, v4, v7

    const/4 v9, 0x0

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    if-le v11, v4, :cond_5

    div-int/lit8 v3, v2, 0x3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v11

    mul-int/lit8 v12, v3, 0x2

    if-le v11, v12, :cond_4

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    sub-int v9, v11, v7

    :cond_2
    :goto_1
    iget v11, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/webkitsec/WebViewClassic;->contentToViewX(I)I

    move-result v5

    iget v11, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/webkitsec/WebViewClassic;->contentToViewX(I)I

    move-result v6

    sub-int v10, v6, v5

    const/4 v8, 0x0

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->right:I

    if-le v11, v6, :cond_7

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->left:I

    if-le v11, v5, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v11

    if-le v11, v10, :cond_6

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v5

    add-int/2addr v8, v11

    :cond_3
    :goto_2
    or-int v11, v9, v8

    if-eqz v11, :cond_9

    if-nez p3, :cond_8

    const/4 v11, 0x1

    :goto_3
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v11, v12}, Landroid/webkitsec/WebViewClassic;->pinScrollBy(IIZI)Z

    move-result v11

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    add-int v12, v7, v3

    sub-int v9, v11, v12

    goto :goto_1

    :cond_5
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    if-ge v11, v7, :cond_2

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    sub-int v9, v11, v7

    goto :goto_1

    :cond_6
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v6

    add-int/2addr v8, v11

    goto :goto_2

    :cond_7
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->left:I

    if-ge v11, v5, :cond_3

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->left:I

    sub-int v11, v5, v11

    sub-int/2addr v8, v11

    goto :goto_2

    :cond_8
    const/4 v11, 0x0

    goto :goto_3

    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mFindIsUp:Z

    if-nez v2, :cond_0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebViewPrivate:Landroid/webkitsec/WebView$PrivateAccess;

    invoke-virtual {v2, p1, p2}, Landroid/webkitsec/WebView$PrivateAccess;->super_requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewCore;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebSettingsClassic;->getNeedInitialFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v2}, Landroid/webkitsec/WebView;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/16 v0, 0x15

    :goto_1
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v3, 0xe0

    invoke-virtual {v2, v3, v0}, Landroid/webkitsec/WebViewCore;->sendMessage(II)V

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x13

    goto :goto_1

    :sswitch_2
    const/16 v0, 0x14

    goto :goto_1

    :sswitch_3
    const/16 v0, 0x16

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_1
        0x42 -> :sswitch_3
        0x82 -> :sswitch_2
    .end sparse-switch
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 5

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget v3, v3, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mHitTestX:I

    invoke-virtual {p0, v3}, Landroid/webkitsec/WebViewClassic;->contentToViewX(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v3

    iput v3, v2, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mHitTestX:I

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget v3, v3, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mHitTestY:I

    invoke-virtual {p0, v3}, Landroid/webkitsec/WebViewClassic;->contentToViewY(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v3

    iput v3, v2, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mHitTestY:I

    :cond_1
    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mLastTouchX:I

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v0

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mLastTouchY:I

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v1

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget v2, v2, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mHitTestX:I

    if-ne v2, v0, :cond_2

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget v2, v2, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mHitTestY:I

    if-eq v2, v1, :cond_3

    :cond_2
    iget-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mKeyboardEnterPress:Z

    if-eqz v2, :cond_4

    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url"

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mLinkUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "title"

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mAnchorText:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "src"

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v3, 0x89

    invoke-virtual {v2, v3, v0, v1, p1}, Landroid/webkitsec/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method requestFormData(Ljava/lang/String;IZZ)V
    .locals 8

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewCore;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebSettingsClassic;->getSaveFormData()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iput p2, v4, Landroid/os/Message;->arg1:I

    new-instance v0, Landroid/webkitsec/WebViewClassic$RequestFormData;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getUrl()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/webkitsec/WebViewClassic$RequestFormData;-><init>(Landroid/webkitsec/WebViewClassic;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;ZZ)V

    new-instance v7, Ljava/lang/Thread;

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .locals 3

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget-object v1, v2, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mImageUrl:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method requestListBox([Ljava/lang/String;[II)V
    .locals 7

    iget-object v6, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    new-instance v0, Landroid/webkitsec/WebViewClassic$InvokeListBox;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/webkitsec/WebViewClassic$InvokeListBox;-><init>(Landroid/webkitsec/WebViewClassic;[Ljava/lang/String;[IILandroid/webkitsec/WebViewClassic$1;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method requestListBox([Ljava/lang/String;[I[I)V
    .locals 7

    iget-object v6, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    new-instance v0, Landroid/webkitsec/WebViewClassic$InvokeListBox;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/webkitsec/WebViewClassic$InvokeListBox;-><init>(Landroid/webkitsec/WebViewClassic;[Ljava/lang/String;[I[ILandroid/webkitsec/WebViewClassic$1;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method resetTrackballTime()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkitsec/WebViewClassic;->mTrackballLastTime:J

    return-void
.end method

.method public restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Landroid/webkitsec/WebViewClassic$7;

    invoke-direct {v4, p0, v2, v0}, Landroid/webkitsec/WebViewClassic$7;-><init>(Landroid/webkitsec/WebViewClassic;Ljava/io/FileInputStream;Landroid/os/Bundle;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkitsec/WebBackForwardList;
    .locals 10

    const/4 v8, 0x0

    const/4 v6, 0x0

    if-nez p1, :cond_0

    move-object v8, v6

    :goto_0
    return-object v8

    :cond_0
    const-string v9, "index"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "history"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "certificate"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-static {v9}, Landroid/net/http/SslCertificate;->restoreState(Landroid/os/Bundle;)Landroid/net/http/SslCertificate;

    move-result-object v9

    iput-object v9, p0, Landroid/webkitsec/WebViewClassic;->mCertificate:Landroid/net/http/SslCertificate;

    iget-object v9, p0, Landroid/webkitsec/WebViewClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v9}, Landroid/webkitsec/CallbackProxy;->getBackForwardList()Landroid/webkitsec/WebBackForwardListClassic;

    move-result-object v5

    const-string v9, "index"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    monitor-enter v5

    :try_start_0
    const-string v9, "history"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ltz v3, :cond_1

    if-lt v3, v7, :cond_2

    :cond_1
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v7, :cond_4

    const/4 v9, 0x0

    :try_start_1
    invoke-interface {v1, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_3

    monitor-exit v5

    goto :goto_0

    :cond_3
    new-instance v4, Landroid/webkitsec/WebHistoryItemClassic;

    invoke-direct {v4, v0}, Landroid/webkitsec/WebHistoryItemClassic;-><init>([B)V

    invoke-virtual {v5, v4}, Landroid/webkitsec/WebBackForwardListClassic;->addHistoryItem(Landroid/webkitsec/WebHistoryItem;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->copyBackForwardList()Landroid/webkitsec/WebBackForwardListClassic;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/webkitsec/WebBackForwardListClassic;->setCurrentIndex(I)V

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v8, "privateBrowsingEnabled"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkitsec/WebSettingsClassic;->setPrivateBrowsingEnabled(Z)V

    :cond_5
    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v8, p1}, Landroid/webkitsec/ZoomManager;->restoreZoomState(Landroid/os/Bundle;)V

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewCore;->removeMessages()V

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->isAccessibilityInjectionEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getAccessibilityInjector()Landroid/webkitsec/AccessibilityInjector;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkitsec/AccessibilityInjector;->addAccessibilityApisIfNecessary()V

    :cond_6
    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v9, 0x6c

    invoke-virtual {v8, v9, v3}, Landroid/webkitsec/WebViewCore;->sendMessage(II)V

    :cond_7
    move-object v8, v6

    goto/16 :goto_0
.end method

.method public resumeTimers()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method revealSelection()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    :cond_0
    return-void
.end method

.method public saveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/WebViewCore;->saveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mDatabase:Landroid/webkitsec/WebViewDatabaseClassic;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkitsec/WebViewDatabaseClassic;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".writing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Landroid/webkitsec/WebViewClassic$6;

    invoke-direct {v3, p0, v1, v0, p2}, Landroid/webkitsec/WebViewClassic$6;-><init>(Landroid/webkitsec/WebViewClassic;Ljava/io/File;Landroid/graphics/Picture;Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const-string/jumbo v2, "scrollX"

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "scrollY"

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v2, p1}, Landroid/webkitsec/ZoomManager;->saveZoomState(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkitsec/WebBackForwardList;
    .locals 10

    const/4 v7, 0x0

    if-nez p1, :cond_0

    move-object v5, v7

    :goto_0
    return-object v5

    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->copyBackForwardList()Landroid/webkitsec/WebBackForwardListClassic;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkitsec/WebBackForwardListClassic;->getCurrentIndex()I

    move-result v0

    invoke-virtual {v5}, Landroid/webkitsec/WebBackForwardListClassic;->getSize()I

    move-result v6

    if-ltz v0, :cond_1

    if-ge v0, v6, :cond_1

    if-nez v6, :cond_2

    :cond_1
    move-object v5, v7

    goto :goto_0

    :cond_2
    const-string v8, "index"

    invoke-virtual {p1, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_5

    invoke-virtual {v5, v3}, Landroid/webkitsec/WebBackForwardListClassic;->getItemAtIndex(I)Landroid/webkitsec/WebHistoryItemClassic;

    move-result-object v4

    if-nez v4, :cond_3

    const-string/jumbo v8, "webview"

    const-string/jumbo v9, "saveState: Unexpected null history item."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v7

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Landroid/webkitsec/WebHistoryItemClassic;->getFlattenedData()[B

    move-result-object v1

    if-nez v1, :cond_4

    move-object v5, v7

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const-string v7, "history"

    invoke-virtual {p1, v7, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v7, p0, Landroid/webkitsec/WebViewClassic;->mCertificate:Landroid/net/http/SslCertificate;

    if-eqz v7, :cond_6

    const-string v7, "certificate"

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mCertificate:Landroid/net/http/SslCertificate;

    invoke-static {v8}, Landroid/net/http/SslCertificate;->saveState(Landroid/net/http/SslCertificate;)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_6
    const-string/jumbo v7, "privateBrowsingEnabled"

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->isPrivateBrowsingEnabled()Z

    move-result v8

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v7, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v7, p1}, Landroid/webkitsec/ZoomManager;->saveZoomState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public saveViewState(Ljava/io/OutputStream;Landroid/webkitsec/ValueCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Landroid/webkitsec/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/webkitsec/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0xe1

    new-instance v2, Landroid/webkitsec/WebViewCore$SaveViewStateRequest;

    invoke-direct {v2, p1, p2}, Landroid/webkitsec/WebViewCore$SaveViewStateRequest;-><init>(Ljava/io/OutputStream;Landroid/webkitsec/ValueCallback;)V

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public saveWebArchive(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/webkitsec/WebViewClassic;->saveWebArchiveImpl(Ljava/lang/String;ZLandroid/webkitsec/ValueCallback;)V

    return-void
.end method

.method public saveWebArchive(Ljava/lang/String;ZLandroid/webkitsec/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/webkitsec/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewClassic;->saveWebArchiveImpl(Ljava/lang/String;ZLandroid/webkitsec/ValueCallback;)V

    return-void
.end method

.method public scrollSelectPopup()V
    .locals 4

    const/16 v2, 0xb9

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getNewActionPopup()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v0

    instance-of v0, v0, Landroid/webkitsec/HtmlComposerView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->hideSelectActionWindow()V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method public selectAll()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0xd7

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public selectAllSec()Z
    .locals 8

    const/4 v0, 0x0

    iget v1, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->setUpAdvSelect()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    const/4 v4, 0x1

    iget v1, v7, Landroid/graphics/Point;->x:I

    iget v2, v7, Landroid/graphics/Point;->y:I

    iget-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mSmartSelection:Z

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v0}, Landroid/webkitsec/ZoomManager;->getScale()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkitsec/WebViewClassic;->getCopyParams(IIZZF)Landroid/webkitsec/WebViewCore$CopyParams;

    move-result-object v6

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0x2cc

    invoke-virtual {v0, v1, v6}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public selectLastTouchText()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->setUpAdvSelect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget-boolean v0, v0, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mHasFocus:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0}, Landroid/webkitsec/WebView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget-boolean v0, v0, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mEditable:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget-object v0, v0, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mTouchRects:[Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget-object v0, v0, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mTouchRects:[Landroid/graphics/Rect;

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget-object v0, v0, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mTouchRects:[Landroid/graphics/Rect;

    aget-object v0, v0, v4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget-object v3, v3, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mTouchRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v3

    div-int/lit8 v1, v0, 0x2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget-object v0, v0, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mTouchRects:[Landroid/graphics/Rect;

    aget-object v0, v0, v4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;

    iget-object v3, v3, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mTouchRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    div-int/lit8 v2, v0, 0x2

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->removeTouchHighlight()V

    :goto_1
    iget-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mSmartSelection:Z

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v0}, Landroid/webkitsec/ZoomManager;->getScale()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkitsec/WebViewClassic;->getCopyParams(IIZZF)Landroid/webkitsec/WebViewCore$CopyParams;

    move-result-object v6

    iput v7, p0, Landroid/webkitsec/WebViewClassic;->mRequestNewSelection:I

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v3, 0x2c8

    invoke-virtual {v0, v3, v6}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->isBrowserApp()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->resetTextSelectionTouchHandleFlag()V

    :cond_2
    move v4, v7

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mLastTouchX:I

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v1

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mLastTouchY:I

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v2

    goto :goto_1
.end method

.method public selectText()Z
    .locals 4

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mLastTouchX:I

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v0

    iget v2, p0, Landroid/webkitsec/WebViewClassic;->mLastTouchY:I

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/WebViewClassic;->selectText(II)Z

    move-result v2

    return v2
.end method

.method selectText(II)Z
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0xd6

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method selectionDone()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectingText:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->hidePasteButton()V

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->endSelectingText()V

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mSpenTextSelectionMode:I

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Landroid/webkitsec/WebViewClassic;->updateWebkitSelection(Z)V

    iput v1, p0, Landroid/webkitsec/WebViewClassic;->mSpenTextSelectionMode:I

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallback:Landroid/webkitsec/SelectActionModeCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallback:Landroid/webkitsec/SelectActionModeCallback;

    invoke-virtual {v0}, Landroid/webkitsec/SelectActionModeCallback;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallback:Landroid/webkitsec/SelectActionModeCallback;

    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    iput v1, p0, Landroid/webkitsec/WebViewClassic;->mAutoScrollX:I

    iput v1, p0, Landroid/webkitsec/WebViewClassic;->mAutoScrollY:I

    iput-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mSentAutoScrollMessage:Z

    :cond_2
    return-void
.end method

.method sendBatchableInputMessage(IIILjava/lang/Object;)V
    .locals 2

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mIsBatchingTextChanges:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mBatchedTextChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v1, v0}, Landroid/webkitsec/WebViewCore;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method sendOurVisibleRect()Landroid/graphics/Rect;
    .locals 7

    const/16 v6, 0x6b

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v3}, Landroid/webkitsec/ZoomManager;->isPreventingWebkitUpdates()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mLastVisibleRectSent:Landroid/graphics/Rect;

    :goto_0
    return-object v2

    :cond_0
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Landroid/webkitsec/WebViewClassic;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mVisibleRect:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mLastVisibleRectSent:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v3, "com.android.email"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mScrollOffset:Landroid/graphics/Point;

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mVisibleRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Point;->set(II)V

    :goto_1
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v3, v6}, Landroid/webkitsec/WebViewCore;->removeMessages(I)V

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    iget-boolean v4, p0, Landroid/webkitsec/WebViewClassic;->mSendScrollEvent:Z

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mScrollOffset:Landroid/graphics/Point;

    invoke-virtual {v3, v6, v2, v4}, Landroid/webkitsec/WebViewCore;->sendMessage(IILjava/lang/Object;)V

    :cond_2
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mLastVisibleRectSent:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/webkitsec/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mLastGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-nez v2, :cond_4

    :try_start_0
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v3, 0x74

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mLastGlobalRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_5
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mVisibleRect:Landroid/graphics/Rect;

    goto :goto_0

    :cond_6
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mScrollOffset:Landroid/graphics/Point;

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mVisibleRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mVisibleRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "webview"

    const-string/jumbo v3, "mWebViewCore was null at sendOurVisibleRect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method sendViewSizeZoom(Z)Z
    .locals 14

    iget-boolean v11, p0, Landroid/webkitsec/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-eqz v11, :cond_0

    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_0
    iget-object v11, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v11}, Landroid/webkitsec/ZoomManager;->isPreventingWebkitUpdates()Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v10

    int-to-float v11, v10

    iget-object v12, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v12}, Landroid/webkitsec/ZoomManager;->getInvScale()F

    move-result v12

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget-object v11, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v11}, Landroid/webkitsec/WebView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    const-string v11, "com.android.email"

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    int-to-float v11, v7

    iget-object v12, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v12}, Landroid/webkitsec/ZoomManager;->getScale()F

    move-result v12

    mul-float/2addr v11, v12

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v12

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_2

    int-to-float v11, v10

    iget-object v12, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v12}, Landroid/webkitsec/ZoomManager;->getInvScale()F

    move-result v12

    mul-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v7, v11

    :cond_2
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getViewHeightWithTitle()I

    move-result v11

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v12

    sub-int v9, v11, v12

    int-to-float v11, v9

    iget-object v12, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v12}, Landroid/webkitsec/ZoomManager;->getInvScale()F

    move-result v12

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v11, v9

    int-to-float v12, v10

    div-float v2, v11, v12

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getViewHeight()I

    move-result v11

    int-to-float v11, v11

    iget-object v12, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v12}, Landroid/webkitsec/ZoomManager;->getInvScale()F

    move-result v12

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v11, p0, Landroid/webkitsec/WebViewClassic;->mLastWidthSent:I

    if-le v7, v11, :cond_3

    iget-boolean v11, p0, Landroid/webkitsec/WebViewClassic;->mWrapContent:Z

    if-eqz v11, :cond_3

    const/4 v6, 0x0

    const/4 v2, 0x0

    :cond_3
    iget-boolean v11, p0, Landroid/webkitsec/WebViewClassic;->mActualHeightHack:Z

    if-eqz v11, :cond_4

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getContentHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getContentWidth()I

    move-result v11

    if-lez v11, :cond_4

    int-to-float v11, v0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getContentWidth()I

    move-result v12

    int-to-float v12, v12

    div-float v2, v11, v12

    :cond_4
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v11

    instance-of v4, v11, Landroid/webkitsec/HtmlComposerView;

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    const/4 v3, 0x0

    :goto_1
    iget v11, p0, Landroid/webkitsec/WebViewClassic;->currentIndex:I

    if-ge v3, v11, :cond_5

    iget v11, p0, Landroid/webkitsec/WebViewClassic;->maxArrayLimit:I

    if-ge v3, v11, :cond_5

    iget-object v11, p0, Landroid/webkitsec/WebViewClassic;->composerContentHeightArray:[I

    aget v11, v11, v3

    if-ne v11, v6, :cond_9

    const/4 v5, 0x1

    :cond_5
    iget v11, p0, Landroid/webkitsec/WebViewClassic;->mLastHeightSent:I

    sget v12, Landroid/webkitsec/WebViewClassic;->maxComposerContentHeight:I

    if-le v11, v12, :cond_6

    if-nez v5, :cond_6

    iget v11, p0, Landroid/webkitsec/WebViewClassic;->currentIndex:I

    iget v12, p0, Landroid/webkitsec/WebViewClassic;->maxArrayLimit:I

    if-ge v11, v12, :cond_6

    iget-object v11, p0, Landroid/webkitsec/WebViewClassic;->composerContentHeightArray:[I

    iget v12, p0, Landroid/webkitsec/WebViewClassic;->currentIndex:I

    iget v13, p0, Landroid/webkitsec/WebViewClassic;->mLastHeightSent:I

    aput v13, v11, v12

    iget v11, p0, Landroid/webkitsec/WebViewClassic;->currentIndex:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Landroid/webkitsec/WebViewClassic;->currentIndex:I

    :cond_6
    if-nez v5, :cond_b

    iget v11, p0, Landroid/webkitsec/WebViewClassic;->mLastWidthSent:I

    if-ne v7, v11, :cond_7

    iget v11, p0, Landroid/webkitsec/WebViewClassic;->mLastHeightSent:I

    if-ne v6, v11, :cond_7

    if-nez p1, :cond_7

    iget v11, p0, Landroid/webkitsec/WebViewClassic;->mLastActualHeightSent:I

    if-eq v0, v11, :cond_b

    :cond_7
    new-instance v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;

    invoke-direct {v1}, Landroid/webkitsec/WebViewClassic$ViewSizeData;-><init>()V

    iput v7, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mWidth:I

    iput v6, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mHeight:I

    iput v2, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mHeightWidthRatio:F

    iput v0, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mActualViewHeight:I

    int-to-float v11, v10

    iget-object v12, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v12}, Landroid/webkitsec/ZoomManager;->getTextWrapScale()F

    move-result v12

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iput v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mTextWrapWidth:I

    iget-object v11, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v11}, Landroid/webkitsec/ZoomManager;->getScale()F

    move-result v11

    iput v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mScale:F

    iget-object v11, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v11}, Landroid/webkitsec/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v11

    if-eqz v11, :cond_a

    iget-boolean v11, p0, Landroid/webkitsec/WebViewClassic;->mHeightCanMeasure:Z

    if-nez v11, :cond_a

    const/4 v11, 0x1

    :goto_2
    iput-boolean v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mIgnoreHeight:Z

    iget-object v11, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v11}, Landroid/webkitsec/ZoomManager;->getDocumentAnchorX()I

    move-result v11

    iput v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mAnchorX:I

    iget-object v11, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v11}, Landroid/webkitsec/ZoomManager;->getDocumentAnchorY()I

    move-result v11

    iput v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mAnchorY:I

    iget-object v11, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-eqz v11, :cond_8

    iget-object v11, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v12, 0x69

    invoke-virtual {v11, v12, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    :cond_8
    iput v7, p0, Landroid/webkitsec/WebViewClassic;->mLastWidthSent:I

    iput v6, p0, Landroid/webkitsec/WebViewClassic;->mLastHeightSent:I

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mLastActualHeightSent:I

    iget-object v11, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v11}, Landroid/webkitsec/ZoomManager;->clearDocumentAnchor()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_a
    const/4 v11, 0x0

    goto :goto_2

    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method setActive(Z)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0}, Landroid/webkitsec/WebView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mDrawCursorRing:Z

    invoke-virtual {p0, v1}, Landroid/webkitsec/WebViewClassic;->setFocusControllerActive(Z)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    return-void

    :cond_1
    iput-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mDrawCursorRing:Z

    invoke-virtual {p0, v2}, Landroid/webkitsec/WebViewClassic;->setFocusControllerActive(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v0}, Landroid/webkitsec/ZoomManager;->isZoomPickerVisible()Z

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mDrawCursorRing:Z

    :cond_3
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x7

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mPopupLaunchHitTestType:Z

    if-nez v0, :cond_4

    invoke-virtual {p0, v2}, Landroid/webkitsec/WebViewClassic;->setFocusControllerActive(Z)V

    :goto_1
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0}, Landroid/webkitsec/WebView;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/webkitsec/WebViewClassic;->setFocusControllerActive(Z)V

    goto :goto_0

    :cond_4
    iput-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mPopupLaunchHitTestType:Z

    goto :goto_1
.end method

.method public setActualHeightHack(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebViewClassic;->mActualHeightHack:Z

    return-void
.end method

.method public setAutoTextSelection(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebViewClassic;->mAutoSelection:Z

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    iput p1, p0, Landroid/webkitsec/WebViewClassic;->mBackgroundColor:I

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1, p1}, Landroid/webkitsec/WebViewCore;->sendMessage(II)V

    return-void
.end method

.method setBaseLayer(IZZ)V
    .locals 7

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    iget v5, p0, Landroid/webkitsec/WebViewClassic;->mCurrentScrollingLayerId:I

    :goto_1
    iget v1, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/webkitsec/WebViewClassic;->nativeSetBaseLayer(IIZZI)Z

    move-result v6

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-eqz v0, :cond_2

    if-eqz v6, :cond_4

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewCore;->pauseWebKitDraw()V

    :cond_2
    :goto_2
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v0, p1}, Landroid/webkitsec/HTML5VideoViewProxy;->setBaseLayer(I)V

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewCore;->resumeWebKitDraw()V

    goto :goto_2
.end method

.method public setBlockRequestLayout(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebViewClassic;->mBlockRequestLayout:Z

    return-void
.end method

.method public setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic;->mCertificate:Landroid/net/http/SslCertificate;

    return-void
.end method

.method public setConfirmMove()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mConfirmMove:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mConfirmMove:Z

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iput v2, p0, Landroid/webkitsec/WebViewClassic;->mTouchMode:I

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    :cond_1
    return-void
.end method

.method public setContentSizeListener(Landroid/webkitsec/WebView$ContentSizeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic;->mContentSizeListener:Landroid/webkitsec/WebView$ContentSizeListener;

    return-void
.end method

.method public setDefaultViewport(I)V
    .locals 1

    sput p1, Landroid/webkitsec/WebViewClassic;->DEFAULT_VIEWPORT_WIDTH:I

    sget v0, Landroid/webkitsec/WebViewClassic;->DEFAULT_VIEWPORT_WIDTH:I

    sput v0, Landroid/webkitsec/WebViewClassic;->sMaxViewportWidth:I

    return-void
.end method

.method public setDownloadListener(Landroid/webkitsec/DownloadListener;)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkitsec/CallbackProxy;->setDownloadListener(Landroid/webkitsec/DownloadListener;)V

    return-void
.end method

.method public setFindListener(Landroid/webkitsec/WebView$FindListener;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic;->mFindListener:Landroid/webkitsec/WebView$FindListener;

    return-void
.end method

.method setFocusControllerActive(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v3, 0x8e

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mListBoxMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mListBoxMessage:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(Landroid/os/Message;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mListBoxMessage:Landroid/os/Message;

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public setFrame(IIII)Z
    .locals 2

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewPrivate:Landroid/webkitsec/WebView$PrivateAccess;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/webkitsec/WebView$PrivateAccess;->super_setFrame(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mDialogMove:Z

    :cond_0
    if-nez v0, :cond_1

    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mHeightCanMeasure:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/webkitsec/WebViewClassic;->sendViewSizeZoom(Z)Z

    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->updateRectsForGL()V

    return v0
.end method

.method public setHTML5VideoViewProxy(Landroid/webkitsec/HTML5VideoViewProxy;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    return-void
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebViewClassic;->mOverlayHorizontalScrollbar:Z

    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mDatabase:Landroid/webkitsec/WebViewDatabaseClassic;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkitsec/WebViewDatabaseClassic;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setInitialScale(I)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkitsec/ZoomManager;->setInitialScaleInPercent(I)V

    return-void
.end method

.method public setJsFlags(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0xae

    invoke-virtual {v0, v1, p1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->updateHwAccelerated()V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mWrapContent:Z

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewPrivate:Landroid/webkitsec/WebView$PrivateAccess;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebView$PrivateAccess;->super_setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setMapTrackballToArrowKeys(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebViewClassic;->mMapTrackballToArrowKeys:Z

    return-void
.end method

.method public setMockDeviceOrientation(ZDZDZD)V
    .locals 10

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/webkitsec/WebViewCore;->setMockDeviceOrientation(ZDZDZD)V

    return-void
.end method

.method public setMockGeolocationError(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/WebViewCore;->setMockGeolocationError(ILjava/lang/String;)V

    return-void
.end method

.method public setMockGeolocationPermission(Z)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebViewCore;->setMockGeolocationPermission(Z)V

    return-void
.end method

.method public setMockGeolocationPosition(DDD)V
    .locals 7

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/webkitsec/WebViewCore;->setMockGeolocationPosition(DDD)V

    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v3, 0x77

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "subtype"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v2, 0xb7

    invoke-virtual {v1, v2, v0}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method setNewPicture(Landroid/webkitsec/WebViewCore$DrawData;Z)V
    .locals 14

    iget v10, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-nez v10, :cond_2

    iget-object v10, p0, Landroid/webkitsec/WebViewClassic;->mDelaySetPicture:Landroid/webkitsec/WebViewCore$DrawData;

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Tried to setNewPicture with a delay picture already set! (memory leak)"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    iput-object p1, p0, Landroid/webkitsec/WebViewClassic;->mDelaySetPicture:Landroid/webkitsec/WebViewCore$DrawData;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v9, p1, Landroid/webkitsec/WebViewCore$DrawData;->mViewState:Landroid/webkitsec/WebViewCore$ViewState;

    if-eqz v9, :cond_10

    const/4 v2, 0x1

    :goto_1
    if-eqz p2, :cond_3

    iget v10, p1, Landroid/webkitsec/WebViewCore$DrawData;->mBaseLayer:I

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkitsec/WebSettingsClassic;->getShowVisualIndicator()Z

    move-result v11

    invoke-virtual {p0, v10, v11, v2}, Landroid/webkitsec/WebViewClassic;->setBaseLayer(IZZ)V

    :cond_3
    iget-object v8, p1, Landroid/webkitsec/WebViewCore$DrawData;->mViewSize:Landroid/graphics/Point;

    iget v10, v8, Landroid/graphics/Point;->x:I

    iget v11, p0, Landroid/webkitsec/WebViewClassic;->mLastWidthSent:I

    if-ne v10, v11, :cond_11

    iget v10, v8, Landroid/graphics/Point;->y:I

    iget v11, p0, Landroid/webkitsec/WebViewClassic;->mLastHeightSent:I

    if-ne v10, v11, :cond_11

    const/4 v6, 0x1

    :goto_2
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/webkitsec/WebViewClassic;->mSendScrollEvent:Z

    iget-object v10, p0, Landroid/webkitsec/WebViewClassic;->mContentSizeListener:Landroid/webkitsec/WebView$ContentSizeListener;

    if-eqz v10, :cond_5

    iget v10, p0, Landroid/webkitsec/WebViewClassic;->mMinPrefWidth:I

    iget v11, p1, Landroid/webkitsec/WebViewCore$DrawData;->mMinPrefWidth:I

    if-ne v10, v11, :cond_4

    iget v10, p0, Landroid/webkitsec/WebViewClassic;->mContentHeight:I

    iget-object v11, p1, Landroid/webkitsec/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    if-eq v10, v11, :cond_5

    :cond_4
    iget-object v10, p0, Landroid/webkitsec/WebViewClassic;->mContentSizeListener:Landroid/webkitsec/WebView$ContentSizeListener;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v11

    iget v12, p1, Landroid/webkitsec/WebViewCore$DrawData;->mMinPrefWidth:I

    iget-object v13, p1, Landroid/webkitsec/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    invoke-interface {v10, v11, v12, v13}, Landroid/webkitsec/WebView$ContentSizeListener;->onContentSize(Landroid/webkitsec/WebView;II)V

    iget v10, p1, Landroid/webkitsec/WebViewCore$DrawData;->mMinPrefWidth:I

    iput v10, p0, Landroid/webkitsec/WebViewClassic;->mMinPrefWidth:I

    :cond_5
    iget-object v10, p1, Landroid/webkitsec/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget-object v11, p1, Landroid/webkitsec/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v10, v11, v6}, Landroid/webkitsec/WebViewClassic;->recordNewContentSize(IIZ)V

    if-eqz v2, :cond_8

    const/4 v10, 0x0

    iput v10, p0, Landroid/webkitsec/WebViewClassic;->mLastWidthSent:I

    iget-object v10, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v10, p1}, Landroid/webkitsec/ZoomManager;->onFirstLayout(Landroid/webkitsec/WebViewCore$DrawData;)V

    iget-boolean v10, v9, Landroid/webkitsec/WebViewCore$ViewState;->mMobileSite:Z

    if-eqz v10, :cond_12

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->canZoomIn()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->canZoomOut()Z

    move-result v10

    if-eqz v10, :cond_12

    :cond_6
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Landroid/webkitsec/WebViewClassic;->enabledTouchPerformancePatch(Z)V

    :goto_3
    iget-boolean v10, v9, Landroid/webkitsec/WebViewCore$ViewState;->mShouldStartScrolledRight:Z

    if-eqz v10, :cond_13

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getContentWidth()I

    move-result v4

    :goto_4
    iget v5, v9, Landroid/webkitsec/WebViewCore$ViewState;->mScrollY:I

    const/4 v10, 0x0

    invoke-direct {p0, v4, v5, v10}, Landroid/webkitsec/WebViewClassic;->contentScrollTo(IIZ)V

    iget-boolean v10, p0, Landroid/webkitsec/WebViewClassic;->mDrawHistory:Z

    if-nez v10, :cond_8

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    instance-of v10, v10, Landroid/webkitsec/HtmlComposerView;

    if-nez v10, :cond_7

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->hideSoftKeyboard()V

    :cond_7
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->dismissWebSelectDialog()V

    :cond_8
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/webkitsec/WebViewClassic;->mSendScrollEvent:Z

    const/4 v1, 0x0

    move v0, v2

    iget-object v10, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v10}, Landroid/webkitsec/WebView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v7

    iget-object v10, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v10}, Landroid/webkitsec/WebView;->isHardwareAccelerated()Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v10}, Landroid/webkitsec/WebView;->getLayerType()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_a

    if-eqz v7, :cond_a

    iget v10, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    invoke-direct {p0, v10}, Landroid/webkitsec/WebViewClassic;->nativeGetDrawGLFunction(I)I

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v7, v1}, Landroid/view/ViewRootImpl;->attachFunctor(I)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Landroid/webkitsec/WebViewClassic;->mLastViewSize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget v11, v8, Landroid/graphics/Point;->x:I

    if-ne v10, v11, :cond_9

    iget-object v10, p0, Landroid/webkitsec/WebViewClassic;->mLastViewSize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    iget v11, v8, Landroid/graphics/Point;->y:I

    if-eq v10, v11, :cond_14

    :cond_9
    const/4 v10, 0x1

    :goto_5
    or-int/2addr v0, v10

    :cond_a
    iget-object v10, p0, Landroid/webkitsec/WebViewClassic;->mLastViewSize:Landroid/graphics/Point;

    iget v11, v8, Landroid/graphics/Point;->x:I

    iget v12, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Point;->set(II)V

    if-eqz v1, :cond_b

    if-nez v0, :cond_b

    iget-object v10, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v10}, Landroid/webkitsec/WebView;->getLayerType()I

    move-result v10

    if-eqz v10, :cond_c

    :cond_b
    iget-object v10, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v10}, Landroid/webkitsec/WebView;->invalidate()V

    :cond_c
    iget-object v10, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v10, p1}, Landroid/webkitsec/ZoomManager;->onNewPicture(Landroid/webkitsec/WebViewCore$DrawData;)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    :cond_d
    if-eqz v2, :cond_e

    iget-object v10, p0, Landroid/webkitsec/WebViewClassic;->mViewManager:Landroid/webkitsec/ViewManager;

    invoke-virtual {v10}, Landroid/webkitsec/ViewManager;->postReadyToDrawAll()V

    :cond_e
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->scrollEditWithCursor()V

    iget-object v10, p0, Landroid/webkitsec/WebViewClassic;->mPictureListener:Landroid/webkitsec/WebView$PictureListener;

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v10}, Landroid/webkitsec/WebView;->isHardwareAccelerated()Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v10}, Landroid/webkitsec/WebView;->getLayerType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    :cond_f
    iget-object v10, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v11, 0x12

    if-ge v10, v11, :cond_15

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->capturePicture()Landroid/graphics/Picture;

    move-result-object v3

    :goto_6
    iget-object v10, p0, Landroid/webkitsec/WebViewClassic;->mPictureListener:Landroid/webkitsec/WebView$PictureListener;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v11

    invoke-interface {v10, v11, v3}, Landroid/webkitsec/WebView$PictureListener;->onNewPicture(Landroid/webkitsec/WebView;Landroid/graphics/Picture;)V

    goto/16 :goto_0

    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_12
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Landroid/webkitsec/WebViewClassic;->enabledTouchPerformancePatch(Z)V

    goto/16 :goto_3

    :cond_13
    iget v4, v9, Landroid/webkitsec/WebViewCore$ViewState;->mScrollX:I

    goto/16 :goto_4

    :cond_14
    const/4 v10, 0x0

    goto :goto_5

    :cond_15
    const/4 v3, 0x0

    goto :goto_6
.end method

.method public setOverScrollMode(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mOverScrollGlow:Landroid/webkitsec/OverScrollGlow;

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkitsec/OverScrollGlow;

    invoke-direct {v0, p0}, Landroid/webkitsec/OverScrollGlow;-><init>(Landroid/webkitsec/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mOverScrollGlow:Landroid/webkitsec/OverScrollGlow;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mOverScrollGlow:Landroid/webkitsec/OverScrollGlow;

    goto :goto_0
.end method

.method public setPageZoomOnIMELaunch(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebViewClassic;->mPageZoomOnIMELaunch:Z

    return-void
.end method

.method public setPictureListener(Landroid/webkitsec/WebView$PictureListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic;->mPictureListener:Landroid/webkitsec/WebView$PictureListener;

    return-void
.end method

.method public setPinchZoomListener(Landroid/webkitsec/PinchZoomListener;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic;->mPinchZoomListener:Landroid/webkitsec/PinchZoomListener;

    return-void
.end method

.method public setReaderArticle(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mReaderArticle:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/webkitsec/WebViewClassic;->mReaderArticle:Z

    :cond_0
    return-void
.end method

.method public setReaderFlag(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mReaderFlag:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/webkitsec/WebViewClassic;->mReaderFlag:Z

    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1

    const/high16 v0, 0x1000000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x3000000

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mOverlayVerticalScrollbar:Z

    iput-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mOverlayHorizontalScrollbar:Z

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mOverlayVerticalScrollbar:Z

    iput-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mOverlayHorizontalScrollbar:Z

    goto :goto_0
.end method

.method setScrollXRaw(I)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewPrivate:Landroid/webkitsec/WebView$PrivateAccess;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebView$PrivateAccess;->setScrollXRaw(I)V

    return-void
.end method

.method setScrollYRaw(I)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewPrivate:Landroid/webkitsec/WebView$PrivateAccess;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebView$PrivateAccess;->setScrollYRaw(I)V

    return-void
.end method

.method setSelectedText(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->textPoint:Landroid/graphics/Point;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Landroid/webkitsec/WebViewClassic;->textSelected:Ljava/lang/String;

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->textPoint:Landroid/graphics/Point;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setSelection(II)V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    :cond_0
    return-void
.end method

.method public setSelectionCallback(Landroid/webkitsec/SelectActionModeCallbackSec;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/webkitsec/SelectActionModeCallbackSec;->setWebViewClassic(Landroid/webkitsec/WebViewClassic;)V

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic;->mSelectCallbackUser:Landroid/webkitsec/SelectActionModeCallbackSec;

    return-void
.end method

.method public setSelectionRemovalPatterns([Ljava/util/regex/Pattern;)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebClipboard:Landroid/webkitsec/WebClipboard;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebClipboard:Landroid/webkitsec/WebClipboard;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebClipboard;->setSelectionRemovalPatterns([Ljava/util/regex/Pattern;)V

    goto :goto_0
.end method

.method setSpellCheckResult(Z)V
    .locals 2

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->spellingOfWord:Landroid/graphics/Point;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Landroid/webkitsec/WebViewClassic;->misspelled:Z

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->spellingOfWord:Landroid/graphics/Point;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTextSelecitonAt(II)Z
    .locals 4

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mAutoSelection:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p0, v2}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/webkitsec/WebViewClassic;->selectClosestWord(II)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setTextSelecitonManualAtContentPoint(II)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v0

    if-ne v0, v7, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mAutoSelection:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->setUpAdvSelect()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mSmartSelection:Z

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScale()F

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/webkitsec/WebViewClassic;->getCopyParams(IIZZF)Landroid/webkitsec/WebViewCore$CopyParams;

    move-result-object v6

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0x2c8

    invoke-virtual {v0, v1, v6}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v0

    instance-of v0, v0, Landroid/webkitsec/HtmlComposerView;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->onSelectionStarted()V

    :cond_2
    iput v7, p0, Landroid/webkitsec/WebViewClassic;->mRequestNewSelection:I

    move v4, v7

    goto :goto_0
.end method

.method public setTouchInterval(I)V
    .locals 0

    iput p1, p0, Landroid/webkitsec/WebViewClassic;->mCurrentTouchInterval:I

    return-void
.end method

.method public setUseMockDeviceOrientation()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public setUseMockGeolocation()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0xe2

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebViewClassic;->mOverlayVerticalScrollbar:Z

    return-void
.end method

.method public setWebBackForwardListClient(Landroid/webkitsec/WebBackForwardListClient;)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkitsec/CallbackProxy;->setWebBackForwardListClient(Landroid/webkitsec/WebBackForwardListClient;)V

    return-void
.end method

.method public setWebChromeClient(Landroid/webkitsec/WebChromeClient;)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkitsec/CallbackProxy;->setWebChromeClient(Landroid/webkitsec/WebChromeClient;)V

    return-void
.end method

.method public setWebViewClient(Landroid/webkitsec/WebViewClient;)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkitsec/CallbackProxy;->setWebViewClient(Landroid/webkitsec/WebViewClient;)V

    return-void
.end method

.method public setZoomManagerInit(F)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkitsec/ZoomManager;->init(F)V

    :cond_0
    return-void
.end method

.method public setZoomScaleBegin(Z)V
    .locals 3

    sget-boolean v0, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setZoomScaleBegin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Landroid/webkitsec/WebViewClassic;->mIsZoomScaleBegin:Z

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showFindDialog(Ljava/lang/String;Z)Z
    .locals 4

    const/4 v1, 0x1

    new-instance v0, Landroid/webkitsec/FindActionModeCallback;

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/webkitsec/FindActionModeCallback;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v2}, Landroid/webkitsec/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v2, v0}, Landroid/webkitsec/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v2, -0x1

    iput v2, p0, Landroid/webkitsec/WebViewClassic;->mCachedOverlappingActionModeHeight:I

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic;->mFindCallback:Landroid/webkitsec/FindActionModeCallback;

    invoke-direct {p0, v1}, Landroid/webkitsec/WebViewClassic;->setFindIsUp(Z)V

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mFindCallback:Landroid/webkitsec/FindActionModeCallback;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkitsec/FindActionModeCallback;->setWebView(Landroid/webkitsec/WebView;)V

    if-eqz p2, :cond_5

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mFindCallback:Landroid/webkitsec/FindActionModeCallback;

    invoke-virtual {v2}, Landroid/webkitsec/FindActionModeCallback;->showSoftInput()V

    :cond_3
    if-nez p1, :cond_4

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mFindRequest:Landroid/webkitsec/WebViewCore$FindAllRequest;

    if-nez v2, :cond_6

    const/4 p1, 0x0

    :cond_4
    :goto_1
    if-eqz p1, :cond_1

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mFindCallback:Landroid/webkitsec/FindActionModeCallback;

    invoke-virtual {v2, p1}, Landroid/webkitsec/FindActionModeCallback;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mFindCallback:Landroid/webkitsec/FindActionModeCallback;

    invoke-virtual {v2}, Landroid/webkitsec/FindActionModeCallback;->findAll()V

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_3

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mFindCallback:Landroid/webkitsec/FindActionModeCallback;

    invoke-virtual {v2, p1}, Landroid/webkitsec/FindActionModeCallback;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mFindCallback:Landroid/webkitsec/FindActionModeCallback;

    invoke-virtual {v2}, Landroid/webkitsec/FindActionModeCallback;->findAll()V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mFindRequest:Landroid/webkitsec/WebViewCore$FindAllRequest;

    iget-object p1, v2, Landroid/webkitsec/WebViewCore$FindAllRequest;->mSearchText:Ljava/lang/String;

    goto :goto_1
.end method

.method public stopLoading()V
    .locals 2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->switchOutDrawHistory()V

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    :cond_0
    return-void
.end method

.method public stopScroll()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mLastVelocity:F

    return-void
.end method

.method switchOutDrawHistory()V
    .locals 5

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mDrawHistory:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getProgress()I

    move-result v2

    const/16 v3, 0x64

    if-eq v2, v3, :cond_2

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->nativeHasContent()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mDrawHistory:Z

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkitsec/WebViewClassic;->mHistoryPicture:Landroid/graphics/Picture;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/webkitsec/WebViewClassic;->pinLocX(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/webkitsec/WebViewClassic;->setScrollXRaw(I)V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/webkitsec/WebViewClassic;->pinLocY(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/webkitsec/WebViewClassic;->setScrollYRaw(I)V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v2

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v2

    if-eq v1, v2, :cond_4

    :cond_3
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebViewPrivate:Landroid/webkitsec/WebView$PrivateAccess;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/webkitsec/WebView$PrivateAccess;->onScrollChanged(IIII)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->sendOurVisibleRect()Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public tileProfilingClear()V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->nativeTileProfilingClear()V

    return-void
.end method

.method public tileProfilingGetFloat(IILjava/lang/String;)F
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewClassic;->nativeTileProfilingGetFloat(IILjava/lang/String;)F

    move-result v0

    return v0
.end method

.method public tileProfilingGetInt(IILjava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewClassic;->nativeTileProfilingGetInt(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public tileProfilingNumFrames()I
    .locals 1

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->nativeTileProfilingNumFrames()I

    move-result v0

    return v0
.end method

.method public tileProfilingNumTilesInFrame(I)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewClassic;->nativeTileProfilingNumTilesInFrame(I)I

    move-result v0

    return v0
.end method

.method public tileProfilingStart()V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->nativeTileProfilingStart()V

    return-void
.end method

.method public tileProfilingStop()F
    .locals 1

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->nativeTileProfilingStop()F

    move-result v0

    return v0
.end method

.method public unmarkWord(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0xf0

    invoke-virtual {v0, v1, p1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method updateDefaultZoomDensity(F)V
    .locals 1

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Landroid/webkitsec/WebViewClassic;->mNavSlop:I

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkitsec/ZoomManager;->updateDefaultZoomDensity(F)V

    return-void
.end method

.method updateDoubleTapZoom(I)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkitsec/ZoomManager;->updateDoubleTapZoom(I)V

    return-void
.end method

.method updateDrawingState()V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic;->mIsPaused:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0}, Landroid/webkitsec/WebView;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    invoke-static {v0, v1}, Landroid/webkitsec/WebViewClassic;->nativeSetPauseDrawing(IZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0}, Landroid/webkitsec/WebView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    invoke-static {v0, v1}, Landroid/webkitsec/WebViewClassic;->nativeSetPauseDrawing(IZ)V

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/webkitsec/WebViewClassic;->nativeSetPauseDrawing(IZ)V

    goto :goto_0
.end method

.method updateJavaScriptEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->isAccessibilityInjectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getAccessibilityInjector()Landroid/webkitsec/AccessibilityInjector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkitsec/AccessibilityInjector;->updateJavaScriptEnabled(Z)V

    :cond_0
    return-void
.end method

.method updateMultiTouchSupport(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkitsec/ZoomManager;->updateMultiTouchSupport(Landroid/content/Context;)V

    return-void
.end method

.method updateRectsForGL()V
    .locals 11

    const/4 v0, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mTempVisibleRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mTempVisibleRectOffset:Landroid/graphics/Point;

    invoke-virtual {v1, v2, v3}, Landroid/webkitsec/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v10

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v10, :cond_1

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1}, Landroid/webkitsec/WebView;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mScreenRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v2, v8, v2

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic;->getVisibleTitleHeightImpl()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    sub-int v2, v8, v9

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iput-boolean v4, p0, Landroid/webkitsec/WebViewClassic;->mIsWebViewVisible:Z

    :goto_0
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mTempVisibleRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mTempVisibleRectOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    neg-int v2, v2

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mTempVisibleRectOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mVisibleContentRect:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2}, Landroid/webkitsec/WebViewClassic;->viewToContentVisibleRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v1

    if-eqz v1, :cond_2

    if-ne v6, v4, :cond_0

    const/4 v6, 0x0

    :cond_0
    :goto_1
    iget v1, p0, Landroid/webkitsec/WebViewClassic;->mNativeClass:I

    iget-boolean v2, p0, Landroid/webkitsec/WebViewClassic;->mIsWebViewVisible:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    :goto_2
    iget-boolean v3, p0, Landroid/webkitsec/WebViewClassic;->mIsWebViewVisible:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic;->mScreenRect:Landroid/graphics/Rect;

    :goto_3
    iget-object v4, p0, Landroid/webkitsec/WebViewClassic;->mVisibleContentRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScale()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkitsec/WebViewClassic;->nativeUpdateDrawGLFunction(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/RectF;FI)V

    return-void

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mIsWebViewVisible:Z

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mFindIsUp:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic;->mShowTextSelectionExtra:Z

    if-eqz v1, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    move-object v2, v0

    goto :goto_2

    :cond_4
    move-object v3, v0

    goto :goto_3
.end method

.method updateScrollCoordinates(II)Z
    .locals 5

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/webkitsec/WebViewClassic;->setScrollXRaw(I)V

    invoke-virtual {p0, p2}, Landroid/webkitsec/WebViewClassic;->setScrollYRaw(I)V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic;->mWebViewPrivate:Landroid/webkitsec/WebView$PrivateAccess;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/webkitsec/WebView$PrivateAccess;->onScrollChanged(IIII)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updateSelectPopupRsrc(Landroid/util/AttributeSet;I)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/webkitsec/WebSettings;->getNewActionPopup()Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    const v8, 0x101046c

    invoke-virtual {v6, v8, v3, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v8, v3, Landroid/util/TypedValue;->data:I

    if-nez v8, :cond_2

    invoke-virtual {v7, v9}, Landroid/webkitsec/WebSettings;->setNewActionPopup(Z)V

    goto :goto_0

    :cond_2
    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;

    instance-of v8, v8, Landroid/app/Activity;

    if-nez v8, :cond_3

    iget-object v8, p0, Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v8}, Landroid/webkitsec/WebView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v8, "com.android.email"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7, v10}, Landroid/webkitsec/WebSettings;->setNewActionPopup(Z)V

    :cond_3
    sget-object v8, Lcom/android/internal/R$styleable;->TextView:[I

    invoke-virtual {v6, p1, v8, p2, v9}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v0, 0x0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_5

    invoke-virtual {v5, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_2
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v7, v9}, Landroid/webkitsec/WebSettings;->setNewActionPopup(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v5, v0, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, p0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcBG:I

    goto :goto_2

    :pswitch_2
    invoke-virtual {v5, v0, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, p0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcDivider:I

    goto :goto_2

    :pswitch_3
    invoke-virtual {v5, v0, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, p0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcSelectAll:I

    goto :goto_2

    :pswitch_4
    invoke-virtual {v5, v0, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, p0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcCopy:I

    goto :goto_2

    :pswitch_5
    invoke-virtual {v5, v0, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, p0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcCut:I

    goto :goto_2

    :pswitch_6
    invoke-virtual {v5, v0, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, p0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcPaste:I

    goto :goto_2

    :pswitch_7
    invoke-virtual {v5, v0, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, p0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcTranslate:I

    goto :goto_2

    :pswitch_8
    invoke-virtual {v5, v0, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, p0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcShare:I

    goto :goto_2

    :pswitch_9
    invoke-virtual {v5, v0, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, p0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcClipboard:I

    goto :goto_2

    :pswitch_a
    invoke-virtual {v5, v0, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, p0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcWebSearch:I

    goto :goto_2

    :pswitch_b
    invoke-virtual {v5, v0, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, p0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcFind:I

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    const v8, 0x108099b

    iput v8, p0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcSelectAll:I

    const v8, 0x108098c

    iput v8, p0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcCopy:I

    const v8, 0x108098e

    iput v8, p0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcCut:I

    const v8, 0x1080999

    iput v8, p0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcPaste:I

    const v8, 0x108099f

    iput v8, p0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcTranslate:I

    const v8, 0x108099d

    iput v8, p0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcShare:I

    const v8, 0x108098a

    iput v8, p0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcClipboard:I

    const v8, 0x1080992

    iput v8, p0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcFind:I

    const v8, 0x10809a1

    iput v8, p0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcWebSearch:I

    const v8, 0x1080994

    iput v8, p0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcBG:I

    const v8, 0x1080996

    iput v8, p0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcDict:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method viewToContentDimension(I)I
    .locals 2

    int-to-float v0, p1

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v1}, Landroid/webkitsec/ZoomManager;->getInvScale()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method viewToContentX(I)I
    .locals 1

    invoke-virtual {p0, p1}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v0

    return v0
.end method

.method viewToContentXf(I)F
    .locals 2

    int-to-float v0, p1

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v1}, Landroid/webkitsec/ZoomManager;->getInvScale()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method viewToContentY(I)I
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v0

    return v0
.end method

.method viewToContentYf(I)F
    .locals 2

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v1}, Landroid/webkitsec/ZoomManager;->getInvScale()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public zoomIn()Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v0}, Landroid/webkitsec/ZoomManager;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v0}, Landroid/webkitsec/ZoomManager;->zoomOut()Z

    move-result v0

    return v0
.end method
